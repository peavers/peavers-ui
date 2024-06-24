local addonName, addonTable = ...

addonTable.Profiles = {}
addonTable.UI = {}

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
}

addonTable.selectedAddons = addonTable.selectedAddons or {}

addonTable.supportedAddons = {
    { name = "Bartender4", func = "ApplyBartender4Settings" },
    { name = "Cell", func = "ApplyCellSettings" },
    { name = "Details! Damage Meter", func = "ApplyDetailsSettings" },
    { name = "LS Glass", func = "ApplyLSGlassSettings" },
    { name = "OmniCD", func = "ApplyOmniCDSettings" },
    { name = "Plater", func = "ApplyPlaterSettings" },
    { name = "SexyMap", func = "ApplySexyMapSettings" },
    { name = "TipTac", func = "ApplyTipTacSettings" },
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

addonTable.Profiles.InitializeSelectedAddons()
