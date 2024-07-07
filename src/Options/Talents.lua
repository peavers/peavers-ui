local addonName, addonTable = ...
addonTable.UI = addonTable.UI or {}
addonTable.Talents = addonTable.Talents or {}

local UI = addonTable.UI
local Talents = addonTable.Talents
local TalentDB = addonTable.TalentDB


function UI.LoadTalentsPanel()
	local mainPanel = addonTable.mainPanel

	-- Create sub-panel
	local childPanel = CreateFrame("Frame")
	childPanel.name = "Talents"
	childPanel.parent = mainPanel.name
	InterfaceOptions_AddCategory(childPanel)

	-- Get player's class and specialization
	local playerClass, specName = addonTable.Utils.GetPlayerInfo()

	-- Set primary title
	local titleText = addonTable.Utils.CapitalizeFirstLetter(playerClass) .. " - " .. specName .. " talents"
	local subtitleText = "Updated every day to be the best talent choices based on data from Archon"
	addonTable.Utils.CreatePanelHeader(childPanel, titleText, subtitleText)

	-- Fetch data from the database
	local classData = TalentDB[playerClass]
	local specData = classData and classData[addonTable.Utils.ToLowercaseAndReplaceWhitespace(specName)]

	local function CreateStyledSection(parent, sectionTitle, hps, dps, popularity, keystone, applyFunc, x, y)
		local frame = CreateFrame("Frame", nil, parent)
		frame:SetSize(550, 70)
		frame:SetPoint("TOPLEFT", x, y)

		local titleText = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
		titleText:SetPoint("TOPLEFT", 0, 0)
		titleText:SetText(sectionTitle)

		local descriptionText = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
		descriptionText:SetPoint("TOPLEFT", 0, -20)
		local description = "Popularity: " .. popularity
		if hps then description = description .. ", HPS: " .. hps end
		if dps then description = description .. ", DPS: " .. dps end
		if keystone then description = description .. ", Keystone level: " .. keystone end
		descriptionText:SetText(description)
		descriptionText:SetWidth(450)
		descriptionText:SetJustifyH("LEFT")

		local button = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
		button:SetSize(80, 22)
		button:SetPoint("BOTTOMRIGHT", 0, 5)
		button:SetText("Apply")
		button:SetScript("OnClick", applyFunc)

		-- Create horizontal line
		local line = frame:CreateLine()
		line:SetColorTexture(0.5, 0.5, 0.5, 0.5)
		line:SetStartPoint("BOTTOMLEFT", 0, 0)
		line:SetEndPoint("BOTTOMRIGHT", 0, 0)
		line:SetThickness(0.5)

		return frame
	end

	if specData then
		local currentYPosition = -60

		-- Mythic+ Section
		local mythicPlusData = specData.MythicPlus
		local mythicPlusSection = CreateStyledSection(
			childPanel,
			"Mythic+",
			mythicPlusData.hps,
			mythicPlusData.dps,
			mythicPlusData.popularity,
			mythicPlusData.keystone,
			function()
				Talents:ImportAndApplyTalents(mythicPlusData.talentString)
			end, 16, currentYPosition)

		currentYPosition = currentYPosition - (mythicPlusSection:GetHeight() + 10)

		-- Raiding Section
		local raidingData = specData.Raiding
		local raidingSection = CreateStyledSection(
			childPanel,
			"Raiding",
			raidingData.hps,
			raidingData.dps,
			raidingData.popularity,
			nil,
			function()
				Talents:ImportAndApplyTalents(raidingData.talentString)
			end, 16, currentYPosition)

		currentYPosition = currentYPosition - (raidingSection:GetHeight() + 10)
	else
		print("Error: Spec data not found in the database.")
	end
end
