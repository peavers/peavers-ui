local addonName, addonTable = ...

-- Initialize any tables or variables needed for the addon
addonTable.selectedAddons = addonTable.selectedAddons or {}
addonTable.defaultSelectedAddons = addonTable.defaultSelectedAddons or {}
addonTable.supportedAddons = addonTable.supportedAddons or {}

-- Initialize Profiles module
addonTable.Profiles = addonTable.Profiles or {}

-- Utility functions
addonTable.Utils = addonTable.Utils or {}

-- Load the UI functions (make sure these are defined in their respective files)
addonTable.UI = addonTable.UI or {}

-- Initialize checkboxes table
addonTable.checkboxes = {}

-- Initialize default values and state
addonTable.defaultSelectedAddons = {
    ["Bartender4"] = true,
    ["Cell"] = true,
    ["Details! Damage Meter"] = true,
    ["LS Glass"] = true,
    ["OmniCD"] = true,
    ["Plater"] = true,
    ["SexyMap"] = true,
    ["TipTac"] = true,
	["Titan"] = true,
}

addonTable.selectedAddons = addonTable.selectedAddons or {}

addonTable.supportedAddons = {
    { name = "Bartender4", func = "ApplyBartender4Settings" },
    { name = "Cell", func = "ApplyCellSettings" },
    { name = "Details! Damage Meter", func = "ApplyDetailsSettings" },
    { name = "LS Glass", func = "ApplyLsGlassSettings" },
    { name = "OmniCD", func = "ApplyOmniCDSettings" },
    { name = "Plater", func = "ApplyPlaterSettings" },
    { name = "SexyMap", func = "ApplySexyMapSettings" },
    { name = "TipTac", func = "ApplyTipTacSettings" },
    { name = "Titan Panel", func = "ApplyTitanSettings" },
}

function addonTable.Profiles.InitializeSelectedAddons()
    if not PeaversUIExportDB then
        PeaversUIExportDB = {}
    end

    if not PeaversUIExportDB.selectedAddons then
        PeaversUIExportDB.selectedAddons = addonTable.defaultSelectedAddons
    end

    addonTable.selectedAddons = PeaversUIExportDB.selectedAddons
end

function addonTable.Profiles.ApplySelectedProfiles()
    for addon, isSelected in pairs(addonTable.selectedAddons) do
        if isSelected then
            for _, addonInfo in ipairs(addonTable.supportedAddons) do
                if addonInfo.name == addon then
                    local funcName = addonInfo.func
                    if funcName and _G[funcName] then
                        _G[funcName]()
                    else
                        print("Function " .. funcName .. " not found for " .. addon)
                    end
                end
            end
        end
    end
    addonTable.UI.ReloadUIAfterApplying()
end

-- Create the main panel (parent frame)
local mainPanel = CreateFrame("Frame")
mainPanel.name = "PeaversUI"
InterfaceOptions_AddCategory(mainPanel)
addonTable.mainPanel = mainPanel

-- Load Panels
function addonTable.LoadPanels()
    addonTable.UI.LoadProfilesPanel()
    addonTable.UI.LoadWeakAurasPanel()
    addonTable.UI.LoadAboutPanel()
end

-- Event handling
mainPanel:RegisterEvent("ADDON_LOADED")
mainPanel:SetScript("OnEvent", function(self, event, arg1)
    if event == "ADDON_LOADED" and arg1 == addonName then
        addonTable.Profiles.InitializeSelectedAddons()
        addonTable.LoadPanels()  -- Load panels after addon is loaded
        -- Update the checkboxes with the correct state
        for addonName, checkbox in pairs(addonTable.checkboxes) do
            checkbox:SetChecked(addonTable.selectedAddons[addonName])
        end
        self:UnregisterEvent("ADDON_LOADED")
    end
end)

-- Slash command to open the options panel
SLASH_PEAVERSUI1 = "/peaversui"
SlashCmdList["PEAVERSUI"] = function()
    InterfaceOptionsFrame_OpenToCategory(mainPanel)
    InterfaceOptionsFrame_OpenToCategory(mainPanel)  -- Calling twice due to Blizzard bug
end
