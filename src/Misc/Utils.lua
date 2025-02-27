local addonName, addonTable = ...
addonTable.Utils = addonTable.Utils or {}

addonTable.Utils.CreatePanelHeader = function(panel, titleText, subtitleText)
	local title = panel:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
	title:SetPoint("TOPLEFT", 16, -16)
	title:SetText(titleText)

	local subtitle = panel:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
	subtitle:SetPoint("TOPLEFT", 16, -36)
	subtitle:SetText(subtitleText)

	return -56
end

addonTable.Utils.GetPlayerInfo = function()
	local playerName, playerRealm = UnitFullName("player")
	playerRealm = playerRealm or GetRealmName()
	local fullPlayerName = playerName .. "-" .. playerRealm
	local _, playerClass, playerClassID = UnitClass("player")

	local specIndex = GetSpecialization()
	local specName = specIndex and select(2, GetSpecializationInfo(specIndex)) or "None"

	return fullPlayerName, playerClass, playerClassID, specName
end

addonTable.Utils.GetPlayerInfoWithRetry = function(maxAttempts, callback)
	local attempts = 0
	local function retry()
		attempts = attempts + 1
		local fullPlayerName, playerClass, playerClassID, specName = addonTable.Utils.GetPlayerInfo()

		if specName ~= "None" or attempts >= maxAttempts then
			callback(fullPlayerName, playerClass, playerClassID, specName)
		else
			C_Timer.After(1, retry)
		end
	end
	retry()
end

addonTable.Utils.CapitalizeFirstLetter = function(str)
	return str:sub(1, 1):upper() .. str:sub(2):lower()
end

addonTable.Utils.ToLowercaseAndReplaceWhitespace = function(input)
	local lowercased = string.lower(input)
	local result = string.gsub(lowercased, "%s+", "-")
	return result
end

addonTable.Utils.ShowLinkCopyPopup = function(link)
	StaticPopupDialogs["PEAVERSUI_LINK_COPY"] = {
		text = "Copy this link:",
		button1 = "Close",
		hasEditBox = true,
		editBoxWidth = 280,
		OnShow = function(self, data)
			self.editBox:SetText(link)
			self.editBox:SetFocus()
			self.editBox:HighlightText()
		end,
		OnHide = function(self)
			self.editBox:SetText("")
		end,
		EditBoxOnEnterPressed = function(self)
			self:GetParent():Hide()
		end,
		EditBoxOnEscapePressed = function(self)
			self:GetParent():Hide()
		end,
		timeout = 0,
		whileDead = true,
		hideOnEscape = true,
		preferredIndex = 3,
	}
	StaticPopup_Show("PEAVERSUI_LINK_COPY")
end

addonTable.Utils.GetProfileName = function()
	local addonName = "PeaversUI"
	local version = C_AddOns.GetAddOnMetadata(addonName, "Version")
	if version then
		return addonName .. " - " .. version
	else
		return addonName
	end
end

addonTable.Utils.RequireAddon = function(addonNameToCheck)
	if not C_AddOns.IsAddOnLoaded(addonNameToCheck) then
		print(addonNameToCheck .. " not loaded or enabled.")
		return false
	end

	return true
end

addonTable.Utils.LoadComplete = function(addonNameToLoad, profileName)
	print(addonNameToLoad .. " profile '" .. profileName .. "' has been applied. Reload required.")
end
