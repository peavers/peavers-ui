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

addonTable.Utils.CreateStyledSection = function(parent, sectionTitle, hps, dps, popularity, keystone, applyFunc, x, y)
	local frame = CreateFrame("Frame", nil, parent)
	frame:SetSize(550, 70)
	frame:SetPoint("TOPLEFT", x, y)

	local titleText = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	titleText:SetPoint("TOPLEFT", 0, 0)
	titleText:SetText(sectionTitle)

	local descriptionText = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
	descriptionText:SetPoint("TOPLEFT", 0, -20)

	local description = ""
	local hasData = false
	if popularity then
		description = "Popularity: " .. popularity
		hasData = true
	end
	if hps then
		description = description .. (description ~= "" and ", " or "") .. "HPS: " .. hps
		hasData = true
	end
	if dps then
		description = description .. (description ~= "" and ", " or "") .. "DPS: " .. dps
		hasData = true
	end
	if keystone then
		description = description .. (description ~= "" and ", " or "") .. "Keystone level: " .. keystone
		hasData = true
	end

	if not hasData then
		description = "No data available"
	end

	descriptionText:SetText(description)
	descriptionText:SetWidth(450)
	descriptionText:SetJustifyH("LEFT")

	local button = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
	button:SetSize(80, 22)
	button:SetPoint("BOTTOMRIGHT", 0, 5)
	button:SetText("Apply")
	button:SetScript("OnClick", applyFunc)
	button:SetEnabled(hasData) -- Disable the button if there's no data

	-- Create horizontal line
	local line = frame:CreateLine()
	line:SetColorTexture(0.5, 0.5, 0.5, 0.5)
	line:SetStartPoint("BOTTOMLEFT", 0, 0)
	line:SetEndPoint("BOTTOMRIGHT", 0, 0)
	line:SetThickness(0.5)

	return frame
end

addonTable.Utils.CreateProfileSection = function(parent, addonName, description, isSelected, applyFunc, x, y)
	local frame = CreateFrame("Frame", nil, parent)
	frame:SetSize(parent:GetWidth(), 90)  -- Set width to parent's width
	frame:SetPoint("TOPLEFT", x, y)

	local titleText = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	titleText:SetPoint("TOPLEFT", 10, -10)  -- Added padding
	titleText:SetText(addonName)

	local descriptionText = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
	descriptionText:SetPoint("TOPLEFT", titleText, "BOTTOMLEFT", 0, -5)
	descriptionText:SetText(description)
	descriptionText:SetWidth(frame:GetWidth() - 20)  -- Adjusted width
	descriptionText:SetJustifyH("LEFT")

	local statusText = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
	statusText:SetPoint("TOPLEFT", descriptionText, "BOTTOMLEFT", 0, -5)
	statusText:SetText(isSelected and "Profile is applied" or "Profile is not applied")
	statusText:SetWidth(frame:GetWidth() - 20)  -- Adjusted width
	statusText:SetJustifyH("LEFT")

	local button = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
	button:SetSize(80, 22)
	button:SetPoint("BOTTOMRIGHT", -10, 10)  -- Added padding
	button:SetText("Apply")
	button:SetScript("OnClick", applyFunc)

	-- Create horizontal line
	local line = frame:CreateLine()
	line:SetColorTexture(0.5, 0.5, 0.5, 0.5)
	line:SetStartPoint("BOTTOMLEFT", 0, 0)
	line:SetEndPoint("BOTTOMRIGHT", 0, 0)
	line:SetThickness(0.5)

	frame.titleText = titleText
	frame.descriptionText = descriptionText
	frame.statusText = statusText
	frame.button = button

	return frame

end
