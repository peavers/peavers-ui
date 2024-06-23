AddonProfileManager = {
    DEFAULT_PROFILE_NAME = "PeaversUI"
}

function AddonProfileManager:ApplySettings(addonName, savedVariablesName, settings, callback)
    local profileName = profileName or self.DEFAULT_PROFILE_NAME

    if not IsAddOnLoaded(addonName) then
        print("Addon not loaded: " .. addonName)
        return
    end

    local savedVariables = _G[savedVariablesName]
    if not savedVariables then
        print(addonName .. " saved variables not found")
        return
    end

    -- Standard profile handling
    if not savedVariables["profiles"] then
        savedVariables["profiles"] = {}
    end
    savedVariables["profiles"][profileName] = settings

    if not savedVariables["profileKeys"] then
        savedVariables["profileKeys"] = {}
    end
    local characterKey = UnitName("player") .. " - " .. GetRealmName()
    savedVariables["profileKeys"][characterKey] = profileName

    -- Call the addon-specific callback if provided
    if callback and type(callback) == "function" then
        callback(savedVariables, profileName, settings)
    end

    print(addonName .. " settings applied successfully")
end
