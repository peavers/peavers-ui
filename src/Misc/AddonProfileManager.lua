AddonProfileManager = {
    DEFAULT_PROFILE_NAME = "PeaversUI"
}

function AddonProfileManager:CheckAddonAndVariables(addonName, savedVariablesName)
	if not IsAddOnLoaded(addonName) then
		print("Addon not loaded: " .. addonName)
		return nil
	end
	local savedVariables = _G[savedVariablesName]
	if not savedVariables then
		print(addonName .. " saved variables not found")
		return nil
	end
	return savedVariables
end

function AddonProfileManager:ApplySettings(addonName, savedVariablesName, settings, postSaveCallback)
	local savedVariables = self:CheckAddonAndVariables(addonName, savedVariablesName)
	if not savedVariables then return end

	local profileName = self.DEFAULT_PROFILE_NAME

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

    -- Call the addon-specific post-save callback if provided
    if postSaveCallback and type(postSaveCallback) == "function" then
        postSaveCallback(savedVariables, profileName, settings)
    end
end
