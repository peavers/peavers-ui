local addonName, addonTable = ...

-- Initialize any tables or variables needed for the addon
addonTable.selectedAddons = addonTable.selectedAddons or {}
addonTable.defaultSelectedAddons = addonTable.defaultSelectedAddons or {}
addonTable.supportedAddons = addonTable.supportedAddons or {}
addonTable.Profiles = addonTable.Profiles or {}
addonTable.Utils = addonTable.Utils or {}
addonTable.UI = addonTable.UI or {}
addonTable.checkboxes = {}

-- Define LoadPanels early to ensure it's available
function addonTable.LoadPanels()
    print("LoadPanels function is being called.") -- Debug print
    if addonTable.UI.LoadProfilesPanel then
        addonTable.UI.LoadProfilesPanel()
    else
        print("Error: LoadProfilesPanel is not available.") -- Debug print
    end

    if addonTable.UI.LoadWeakAurasPanel then
        addonTable.UI.LoadWeakAurasPanel()
    else
        print("Error: LoadWeakAurasPanel is not available.") -- Debug print
    end

    if addonTable.UI.LoadTalentsPanel then
        addonTable.UI.LoadTalentsPanel()
    else
        print("Error: LoadTalentsPanel is not available.") -- Debug print
    end

    if addonTable.UI.LoadAboutPanel then
        addonTable.UI.LoadAboutPanel()
    else
        print("Error: LoadAboutPanel is not available.") -- Debug print
    end
end

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

-- Event handling
local function OnEvent(self, event, arg1)
    if event == "ADDON_LOADED" and arg1 == addonName then
        print("ADDON_LOADED event for " .. addonName) -- Debug print
        addonTable.Profiles.InitializeSelectedAddons()
    elseif event == "PLAYER_LOGIN" or event == "PLAYER_ENTERING_WORLD" then
        if addonTable.LoadPanels then
            addonTable.LoadPanels() -- Load panels after player info is ready
        else
            print("Error: LoadPanels function is not available.") -- Debug print
        end
        -- Update the checkboxes with the correct state
        for addonName, checkbox in pairs(addonTable.checkboxes) do
            checkbox:SetChecked(addonTable.selectedAddons[addonName])
        end
        self:UnregisterEvent("PLAYER_LOGIN")
        self:UnregisterEvent("PLAYER_ENTERING_WORLD")
    end
end

mainPanel:RegisterEvent("ADDON_LOADED")
mainPanel:RegisterEvent("PLAYER_LOGIN")
mainPanel:RegisterEvent("PLAYER_ENTERING_WORLD")
mainPanel:SetScript("OnEvent", OnEvent)

-- Slash command to open the options panel
SLASH_PEAVERSUI1 = "/peaversui"
SlashCmdList["PEAVERSUI"] = function()
    InterfaceOptionsFrame_OpenToCategory(mainPanel)
    InterfaceOptionsFrame_OpenToCategory(mainPanel)  -- Calling twice due to Blizzard bug
end

print("PeaversUI.lua loaded.") -- Debug print
