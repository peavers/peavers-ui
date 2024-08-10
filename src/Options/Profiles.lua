local addonName, addonTable = ...
addonTable.UI = addonTable.UI or {}
addonTable.Profiles = addonTable.Profiles or {}
local UI = addonTable.UI
local Profiles = addonTable.Profiles

function UI.LoadProfilesPanel(parentCategory)
	local panel = CreateFrame("Frame")
	panel.name = "Profiles"
	panel.parent = parentCategory.name

	local titleText = panel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
	titleText:SetPoint("TOPLEFT", 16, -16)
	titleText:SetText("Profiles")

	local subtitleText = panel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	subtitleText:SetPoint("TOPLEFT", titleText, "BOTTOMLEFT", 0, -8)
	subtitleText:SetText("Select the addons you want to apply profiles to")

	-- Create a scroll frame
	local scrollFrame = CreateFrame("ScrollFrame", nil, panel, "UIPanelScrollFrameTemplate")
	scrollFrame:SetPoint("TOPLEFT", subtitleText, "BOTTOMLEFT", 0, -16)
	scrollFrame:SetPoint("BOTTOMRIGHT", panel, "BOTTOMRIGHT", -26, 16)

	local contentFrame = CreateFrame("Frame", nil, scrollFrame)
	scrollFrame:SetScrollChild(contentFrame)

	-- Function to create a Profile section
	local function CreateProfileSection(parent, addonInfo, x, y)
		local frame = CreateFrame("Frame", nil, parent)
		frame:SetSize(550, 70)
		frame:SetPoint("TOPLEFT", x, y)

		local titleText = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
		titleText:SetPoint("TOPLEFT", 0, 0)
		titleText:SetText(addonInfo.name)

		local descriptionText = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
		descriptionText:SetPoint("TOPLEFT", 0, -20)
		descriptionText:SetText(addonInfo.description)
		descriptionText:SetWidth(450)
		descriptionText:SetJustifyH("LEFT")

		local button = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
		button:SetSize(80, 22)
		button:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0, 5)
		button:SetText("Apply")
		button:SetScript("OnClick", function()
			Profiles.ApplyProfile(addonInfo.name)
		end)

		local line = frame:CreateLine()
		line:SetColorTexture(0.5, 0.5, 0.5, 0.5)
		line:SetStartPoint("BOTTOMLEFT", 0, 0)
		line:SetEndPoint("BOTTOMRIGHT", 0, 0)
		line:SetThickness(0.5)

		return frame
	end

	local yOffset = 0
	for _, addonInfo in ipairs(addonTable.supportedAddons) do
		CreateProfileSection(
			contentFrame,
			addonInfo,
			32,
			yOffset
		)
		yOffset = yOffset - 90
	end

	contentFrame:SetSize(scrollFrame:GetWidth() - 30, math.abs(yOffset) + 20)

	panel.OnRefresh = function()
	end
	panel.OnCommit = function()
	end
	panel.OnDefault = function()
	end

	return panel
end

local function FindAddonInfo(addonName)
	for _, addonInfo in ipairs(addonTable.supportedAddons) do
		if addonInfo.name == addonName then
			return addonInfo
		end
	end
	return nil
end

function Profiles.ApplyProfile(addonName)
	local addonInfo = FindAddonInfo(addonName)
	if not addonInfo then
		print("Addon information not found for: " .. addonName)
		return
	end

	print("Applying profile for: " .. addonName)

	addonInfo.apply()
end
