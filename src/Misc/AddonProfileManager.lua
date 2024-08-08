AddonProfileManager = {
	DEFAULT_PROFILE_NAME = "PeaversUI"
}

function AddonProfileManager:ApplySettings(addonName, settings, postApplyCallback)
	local profileName = self.DEFAULT_PROFILE_NAME

	-- Ensure the addon's saved variables exist
	if not _G[addonName .. "DB"] then
		_G[addonName .. "DB"] = {}
	end
	local savedVariables = _G[addonName .. "DB"]

	-- Standard profile handling
	if not savedVariables.profiles then
		savedVariables.profiles = {}
	end

	savedVariables.profiles[profileName] = settings

	if not savedVariables.profileKeys then
		savedVariables.profileKeys = {}
	end

	local characterKey = UnitName("player") .. " - " .. GetRealmName()
	savedVariables.profileKeys[characterKey] = profileName

	-- Call the addon-specific post-apply callback if provided
	if postApplyCallback and type(postApplyCallback) == "function" then
		postApplyCallback(savedVariables, profileName, settings)
	end

	print("Profile applied for " .. addonName)
end

function AddonProfileManager:GetSettings(addonName)
	if self[addonName .. "Settings"] then
		return self[addonName .. "Settings"]()
	else
		print("Settings for " .. addonName .. " not found")
		return nil
	end
end
