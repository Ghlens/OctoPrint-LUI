$(function ()  {
    function UpdateViewModel(parameters) {
        var self = this;

        self.loginState = parameters[0];
        self.system = parameters[1];
        self.flyout = parameters[2];
        self.files = parameters[3];
        self.settings = parameters[4];
        self.printerState = parameters[5];
        self.flashArduino = parameters[6];
        self.networkManager = parameters[7];

        self.initialCheck = false;
        self.updateinfo = ko.observableArray([]);
        self.refreshing = ko.observable(false);
        self.update_needed = ko.observable(false);
        self.updateCounter = 0;
        self.updateTarget = 0;
        self.update_warning = undefined;
        self.firmware_update_warning = undefined;
        self.lpfrg_software_version = ko.observable(undefined);

        self.fileNameToFlash = ko.observable(undefined); // Can either be a local (USB) file name or a filename to be uploaded

        self.modelName = ko.observable(undefined);
        self.firmwareVersion = ko.observable(undefined);
        self.firmwareUpdateAvailable = ko.observable(false);
        self.firmwareUpdateRequired = ko.observable(false);
        self.firmwareVersionRequirement = ko.observable(undefined);
        self.firmwareRefreshing = ko.observable(false);
        self.firmwareUpdating = ko.observable(false);

        self.flashingAllowed = ko.computed(function ()  {
            return self.printerState.isOperational() && self.printerState.isReady() && !self.printerState.isPrinting() && self.loginState.isUser();
        });

        self.getUpdateText = function (data) {
            if (data.update()) {
                return gettext("Update");
            } else {
                return gettext("Up-to-date");
            }
        };

        self.getFirmwareUpdateText = function () {
            if (self.firmwareUpdateAvailable()) {
                return gettext("Update");
            } else {
                return gettext("Up-to-date");
            }
        };

        self.getUpdateIcon = function (data) {
            if (data.update()) {
                return "fa-refresh"
            } else {
                return "fa-check"
            }
        };

        self.getFirmwareUpdateIcon = function () {
            if (self.firmwareUpdateAvailable()) {
                return "fa-refresh"
            } else {
                return "fa-check"
            }
        };

        self.getUpdateAllText = ko.pureComputed(function () {
            if (self.update_needed() > 0) {
                return gettext("Update");
            } else {
                return gettext("Up-to-date");
            }
        });

        self.getUpdateAllIcon = ko.pureComputed(function () {
            if (self.update_needed() > 0) {
                return "fa-refresh"
            } else {
                return "fa-check"
            }
        });

        self.getUpdateButtonClass = function (data) {
            if (data.update()) {
                return ""
            } else {
                return "ok-button disabled"
            }
        };

        self.getFirmwareUpdateButtonClass = function () {
            if (self.firmwareUpdateAvailable()) {
                return ""
            } else {
                return "ok-button disabled"
            }
        };

        self.getUpdateAllButtonClass = ko.pureComputed(function ()  {
            if (self.update_needed() > 0) {
                return ""
            } else {
                return "ok-button disabled"
            }
        });

        self.browseForFirmware = function ()  {

            self.files.browseUsbForFirmware();

            self.flyout.showFlyout('firmware_file')
                .done(function ()  {
                    file = self.files.selectedFirmwareFile();
                    self.flashArduino.onLocalFileSelected(file);
                })
                .fail(function ()  { })
                .always(function ()  {
                    self.files.browseLocal(); // Reset file list to local gcodes
                });
        };

        self.update = function (plugin) {
            var url = OctoPrint.getBlueprintUrl("lui") + "update";

            var text, question, title, name = "";
            if (_.isObject(plugin)) {
                name = plugin.name();
            } else {
                name = plugin;
            }
            // Standar behaviour
            if (name == "all") {
                title = gettext("Update software");
                text = gettext("You are about to update the printer software. This will take some time and will restart the printer background service when completed.");
                question = gettext("Do you want to continue?");
            } else { // Development behaviour
                title = gettext("Update: ") + name;
                text = gettext("You are about to update a component of the User Interface. This will take some time and will restart the printer background service when completed.");
                question = gettext("Do want to update ") + name + "?";
            }
            var dialog = { 'title': title, 'text': text, 'question': question };
            self.flyout.showConfirmationFlyout(dialog)
                .done(function () {
                    OctoPrint.postJson(url, {"plugin":name})
                        .done(function () {
                            self.showUpdateWarning();
                         }).fail(function () {
                            $.notify({
                                title: gettext("Update failed."),
                                text: _.sprintf(gettext('Please check the logs.'), {})
                            },
                                "error"
                            )
                         })
                });
        };

        self.firmwareUpdate = function()
        {
            self.firmwareUpdating(true);
            var url = OctoPrint.getBlueprintUrl("lui") + "firmware/update";
            OctoPrint.postJson(url)
                .done(function () {
                    self.firmwareUpdateAvailable(false);
                }).fail(function () {
                    $.notify({
                        title: gettext("Update failed."),
                        text: _.sprintf(gettext('Please check the logs.'), {})
                    }, "error")
                }).always(function () {
                    self.firmwareUpdating(false);
                });
        }

        self.showFirmwareUpdateWarning = function () {
            if (self.firmware_update_warning === undefined) {
                self.firmware_update_warning = self.flyout.showWarning(
                    gettext("Updating firmware"),
                    gettext("The firmware is updating, please wait until the update is completed..."),
                    true);
            }
        }

        self.hideFirmwareUpdateWarning = function (success) {
            if (self.firmware_update_warning !== undefined) {
                self.flyout.closeWarning(self.firmware_update_warning);
                self.firmware_update_warning = undefined;
            }

            // We're actively clcosing the update_required flyout here for improved user experience.
            // If the auto-update for whatever reason flashed the wrong version, the flyout will automatically pop-up again
            if (success)
                self.hideFirmwareUpdateRequiredFlyout();
        }

        self.showFirmwareUpdateRequiredFlyout = function () {
            self.flyout.showFlyout('firmware_update_required', true);
        }

        self.hideFirmwareUpdateRequiredFlyout = function () {
            self.flyout.closeFlyoutAccept("firmware_update_required");
        }

        self.showUpdateFlyout = function()
        {
            self.settings.showSettingsTopic('update');
        }

        self.showUpdateWarning = function () 
        {
            self.update_warning = self.flyout.showWarning(
                gettext("Updating"), 
                gettext("System is updating, please wait until the updates are completed..."), 
                true);
        }

        self.hideUpdateWarning = function () 
        {
            if (self.update_warning)
                self.flyout.closeWarning(self.update_warning);
        }

        self.fromResponse = function (data) {
            var info = ko.mapping.fromJS(data.update);
            var updates = 0;
            _.each(info(), function (i) {
                if (i.update()) updates++
            });
            self.update_needed(updates);
            self.updateinfo(info());


            var lui_update = info().find(function (x) { return x.name() === "Leapfrog UI" })

            if (lui_update !== undefined)
                self.lpfrg_software_version(lui_update.version());

            self.modelName(data.machine_info.machine_type);
        };

        self.fromFirmwareResponse = function (data)
        {
            self.firmwareUpdateRequired(data.update_required);
            self.firmwareVersionRequirement(data.version_requirement);
            self.firmwareVersion(data.current_version);

            if (data.update_required)
                self.showFirmwareUpdateRequiredFlyout();
            else
                self.hideFirmwareUpdateRequiredFlyout();

            if (data.auto_update_started)
                self.showFirmwareUpdateWarning();
            else
                self.hideFirmwareUpdateWarning();
        }

        self.fromFirmwareUpdateResponse = function (data, silent)
        {
            if(data.new_firmware)
            {
                // New firmware found
                if (data.requires_lui_update) {
                    self.firmwareUpdateAvailable(false);

                    if(!silent && self.update_needed() > 0)
                    {
                        var title = gettext("Firmware update found");
                        var text = _.sprintf(gettext('A firmware update has been found, but this requires a software update first.'), {  });
                        var question = gettext("Would you like to update the printer software?");

                        var dialog = { 'title': title, 'text': text, 'question': question };

                        self.flyout.showConfirmationFlyout(dialog)
                            .done(function () {
                                self.update('all');
                            });
                    }
                }
                else {
                    self.firmwareUpdateAvailable(true);
                }
            }
            else if (data.error && !silent)
            {
                // Could not retrieve latest version information
                $.notify({
                    title: gettext("Could not retrieve update information"),
                    text: _.sprintf(gettext('The printer seems not connected to the internet. Please make sure the network has internet capabilities. '), {})
                },
                        "error"
                    );
            }
            else
            {
                // No new firmware found
                self.firmwareUpdateAvailable(false);
            }
        }

        self.requestData = function (force) {
            var force = force || false;
            var url = OctoPrint.getBlueprintUrl("lui") + "update";
            OctoPrint.getWithQuery(url, {force: force})
                .done(function(response){
                    self.fromResponse(response);
                });
        };

        self.requestFirmwareData = function ()
        {
            var url = OctoPrint.getBlueprintUrl("lui") + "firmware";
            OctoPrint.get(url)
                .done(function (response) {
                    self.fromFirmwareResponse(response);
                });
        }

        self.requestFirmwareUpdateData = function (silent) {
            var url = OctoPrint.getBlueprintUrl("lui") + "firmware/update";
            OctoPrint.get(url)
                .done(function (response) {
                    self.fromFirmwareUpdateResponse(response, silent);
                }).always(function () { self.firmwareUpdateDoneOrError(); })
        };

        self.onFirmwareUpdateFound = function (file) {

            if ((!self.flyout.isOpen() || !self.flyout.blocking)) {
                var title = gettext("Firmware update found")
                var text = _.sprintf(gettext('The USB drive you inserted contains a firmware update with filename "%(filename)s".'), { filename: file["name"] });
                var question = gettext("Would you like to install this update?");

                var dialog = { 'title': title, 'text': text, 'question': question };

                self.flyout.showConfirmationFlyout(dialog)
                    .done(function ()  {
                        self.settings.showSettingsTopic('update');
                        self.flashArduino.onLocalFileSelected(file);
                    });
            }
        };

        self.refreshUpdateInfo = function () {
            if (!self.refreshing()) {
                self.refreshing(true);
                $('#update_spinner').addClass('fa-spin');
                self.requestData(true);
            }
        }

        self.refreshFirmwareUpdateInfo = function () {
            if (!self.firmwareRefreshing()) {
                self.firmwareRefreshing(true);
                $('#firmware_update_spinner').addClass('fa-spin');
                self.requestFirmwareUpdateData();
            }
        }

        self.onHexPathChanged = function(hex_path)
        {
            self.fileNameToFlash(hex_path);
        }

        self.onUpdateSettingsShown = function ()  {
            self.requestData();
        };

        self.onSettingsHidden = function ()  {
            self.flashArduino.resetFile();
        }

        self.onStartup = function ()  {
            self.requestFirmwareData();
        };

        self.onOnline = function(online)
        {
            // Check for software and firmware update as soon as we're online for the first time
            if (!self.initialCheck && online) {
                self.initialCheck = true; // Only do this automatic check once
                self.requestData();
                self.requestFirmwareUpdateData(true);  // Request firmware info silently (no notification on failure)
            }
        }

        self.onAfterBinding = function () 
        {
            self.flashArduino.hex_path.subscribe(self.onHexPathChanged);
            self.flashArduino.flashing_begin_callback = self.onFlashingBegin;
            self.flashArduino.flashing_complete_callback = self.onFlashingComplete;

            // Communicate to the plugin wheter he's allowed to flash
            self.flashingAllowed.subscribe(function (allowed) { self.flashArduino.flashingAllowed(allowed); });

            // Wait for connection to be up so we can perform an initial software and firmware check
            self.networkManager.status.connection.wifi.subscribe(self.onOnline);
            self.networkManager.status.connection.ethernet.subscribe(self.onOnline);
        }

        self.onFlashingBegin = function()
        {
            self._sendApi({ command: 'notify_intended_disconnect' });
        }

        self.onFlashingComplete = function(success)
        {
            // Check if a firmware update is still required
            // Can't check new firmware version yet. Requires OctoPrint to reconnect and send a M115 first
            //if (success) {
            //    self.requestFirmwareData(true); // Silent check
            //}
        }

        self.updateDoneOrError = function() {
            self.refreshing(false);
            $('#update_spinner').removeClass('fa-spin');
        }

        self.firmwareUpdateDoneOrError = function () {
            self.firmwareRefreshing(false);
            $('#firmware_update_spinner').removeClass('fa-spin');
        }

        self._sendApi = function (data) {
            url = OctoPrint.getSimpleApiUrl('lui');
            return OctoPrint.postJson(url, data);
        };

        self.onDataUpdaterPluginMessage = function (plugin, data) {
            if (plugin != "lui") {
                return;
            }

            var messageType = data['type'];
            var messageData = data['data'];
            switch (messageType) {
                case "firmware_update_required":
                    self.showFirmwareUpdateRequired();
                    break;
                case "forced_update":
                    self.showUpdateWarning();
                    break;
                case "auto_firmware_update_started":
                    self.showFirmwareUpdateWarning();
                    break;
                case "auto_firmware_update_failed":
                    self.hideFirmwareUpdateWarning(false);
                    break;
                case "auto_firmware_update_finished":
                    self.hideFirmwareUpdateWarning(true);
                    break;
                case "firmware_update_found":
                    if(DEBUG_LUI) {
                        self.onFirmwareUpdateFound(messageData.file);
                    }
                    break;
                case "machine_info_updated":
                    //This is fired whenever an M115 update has taken place. Useful after a firmware flash.
                    self.requestFirmwareData(); // Check if lui <> firmware requirement is met (and show/hide matching flyout)
                    break;
                case "internet_offline":
                    $.notify({
                        title: gettext("Printer offline"),
                        text: _.sprintf(gettext('The printer seems not connected to the internet. Please make sure the network has internet capabilities. '), {})
                    },
                        "error"
                    )
                    self.updateDoneOrError();
                    break;
                case "github_offline":
                    $.notify({
                        title: gettext("Update server offline"),
                        text: _.sprintf(gettext('The update server seems to be offline. Please retry updating after or check the status at github.com/Leapfrog3DPrinters'), {})
                    },
                        "error"
                    )
                    self.updateDoneOrError();
                    break;
                case "update_fetch_error":
                    $.notify({
                        title: gettext("Update fetching failed."),
                        text: _.sprintf(gettext('Please check the logs.'), {})
                    },
                        "error"
                    )
                    self.updateDoneOrError();
                    break;
                case "update_fetch_success":
                    self.fromResponse(messageData);
                    self.updateDoneOrError();
                    break;
                case "update_error":
                    self.hideUpdateWarning();
                    $.notify({
                        title: gettext("Update failed."),
                        text: _.sprintf(gettext('Please check the logs.'), {})
                    },
                        "error"
                    )
                    self.updateDoneOrError();
                    break;
                case "update_success":
                    $.notify({
                        title: gettext("Update completed."),
                        text: _.sprintf(gettext('Going to restart the service to finish the updates.'), {})
                    },
                    { 
                        className: "success",
                        autoHide: false
                    }
                    )
                    self.hideUpdateWarning();
                    
                    var title = "";
                    var message = "";
                    
                    if (IS_LOCAL) {
                        title = gettext("Service restarting");
                        message = gettext("The background service of the printer is restarting. This is common after a software update. Printer will be available in a couple of minutes.")
                    } else {
                        title = gettext("Server disconnected");
                        message = gettext("The browser has been disconnected from the printer. Either the printer is turned off or the network connection failed. Trying to reconnect in the coming minutes.")
                    }

                    showOfflineFlyout(
                        title,
                        message
                    );
                    break;
            }
        }
    }

    OCTOPRINT_VIEWMODELS.push([
      UpdateViewModel,
      ["loginStateViewModel", "systemViewModel", "flyoutViewModel", "gcodeFilesViewModel", "settingsViewModel", "printerStateViewModel", "flashArduinoViewModel", "networkmanagerViewModel"],
      ['#update', '#update_icon', '#firmware_update_required']
    ]);

});
