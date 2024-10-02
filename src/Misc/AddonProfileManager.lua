AddonProfileManager = {
	DEFAULT_PROFILE_NAME = "PeaversUI"
}

function ApplyDetailsSettings()
	local settings = GetDetailsSettings()

	local addonName = "Details"
	local profileName = "PeaversUI"

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

	-- Additional Details-specific settings
	if _G["_detalhes"] then
		_G["_detalhes"].always_use_profile = true
		_G["_detalhes"].always_use_profile_name = profileName
	end

	-- If there's a need to refresh or update the UI, do it here
	if _G["_detalhes"] and _G["_detalhes"].RefreshMainWindow then
		_G["_detalhes"]:RefreshMainWindow()
	end

	print("Profile applied for " .. addonName)
end
