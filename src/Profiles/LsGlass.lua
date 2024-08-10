function GetLsGlassSettings()
	return {
		["dock"] = {
			["font"] = {
				["size"] = 10,
			},
			["edit"] = {
				["position"] = "top",
			},
		},
		["version"] = 10020602,
		["chat"] = {
			["font"] = {
				["size"] = 10,
			},
			["tooltips"] = false,
			["alpha"] = 0,
		},
	}
end

function ApplyLsGlassSettings()
	local settings = GetLsGlassSettings()
	local profileName = "PeaversUI"

	-- Ensure the global saved variables exist
	if not _G.LS_GLASS_GLOBAL_CONFIG then
		_G.LS_GLASS_GLOBAL_CONFIG = {}
	end

	-- Ensure the profiles table exists
	if not _G.LS_GLASS_GLOBAL_CONFIG.profiles then
		_G.LS_GLASS_GLOBAL_CONFIG.profiles = {}
	end

	-- Create or update the PeaversUI profile
	_G.LS_GLASS_GLOBAL_CONFIG.profiles[profileName] = settings

	-- Set the current profile
	_G.LS_GLASS_GLOBAL_CONFIG.profileKeys = _G.LS_GLASS_GLOBAL_CONFIG.profileKeys or {}
	_G.LS_GLASS_GLOBAL_CONFIG.profileKeys[UnitName("player") .. " - " .. GetRealmName()] = profileName

	print("PeaversUI LS:Glass settings applied directly to saved variables")

	-- Attempt to refresh the addon if possible
	if _G.Glass and _G.Glass.E then
		local E = _G.Glass.E
		if E.UpdateEditBoxFont then
			E:UpdateEditBoxFont()
		end
		if E.UpdateMessageFonts then
			E:UpdateMessageFonts()
		end
		if E.UpdateTabAlpha then
			E:UpdateTabAlpha()
		end
		if E.UpdateScrollButtonAlpha then
			E:UpdateScrollButtonAlpha()
		end
		if E.UpdateButtonAlpha then
			E:UpdateButtonAlpha()
		end

		for i = 1, 10 do
			if E.ForMessageLinePool then
				E:ForMessageLinePool(i, "UpdateWidth")
			end
			if E.ForMessageLinePool then
				E:ForMessageLinePool(i, "UpdateHeight")
			end
			if E.ForMessageLinePool then
				E:ForMessageLinePool(i, "UpdateGradientBackgroundAlpha")
			end
			if E.ForMessageLinePool then
				E:ForMessageLinePool(i, "UpdatePadding")
			end

			if E.ForChatFrame then
				E:ForChatFrame(i, "ToggleScrollButtons")
			end
			if E.ForChatFrame then
				E:ForChatFrame(i, "FadeInChatWidgets")
			end
			if E.ForChatFrame then
				E:ForChatFrame(i, "FadeInMessages")
			end
		end

		print("LS:Glass settings refreshed")
	else
		print("LS:Glass addon object not found for refresh. You may need to reload your UI.")
	end
end
