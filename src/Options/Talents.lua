local addonName, addonTable = ...
addonTable.UI = addonTable.UI or {}
addonTable.Talents = addonTable.Talents or {}

local UI = addonTable.UI
local Talents = addonTable.Talents
local DB = addonTable.DB

function UI.LoadTalentsPanel()
	print("LoadTalentsPanel function is being called.") -- Debug print
	local mainPanel = addonTable.mainPanel

	-- Create the Talents sub-panel
	local talentsPanel = CreateFrame("Frame")
	talentsPanel.name = "Talents"
	talentsPanel.parent = mainPanel.name
	InterfaceOptions_AddCategory(talentsPanel)

	local function GetPlayerInfo()
		local _, playerClass = UnitClass("player")
		local currentSpecIndex = GetSpecialization()
		local currentSpecID, currentSpecName
		if currentSpecIndex then
			currentSpecID, currentSpecName = GetSpecializationInfo(currentSpecIndex)
		else
			currentSpecName = "Spec"
		end

		return string.lower(playerClass), string.lower(currentSpecName)
	end

	local function capitalizeFirstLetter(str)
		return str:sub(1, 1):upper() .. str:sub(2):lower()
	end

	-- Get player's class and specialization
	local playerClass, specName = GetPlayerInfo()
	local titleText = capitalizeFirstLetter(playerClass) .. " " .. capitalizeFirstLetter(specName) .. " Talents"

	-- Talents panel content
	local title = talentsPanel:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
	title:SetPoint("TOPLEFT", 16, -16)
	title:SetText(titleText)

	-- Fetch data from the database
	local classData = DB[playerClass]
	local specData = classData and classData[specName]

	-- Function to create a styled section
	local function CreateStyledSection(parent, sectionTitle, hps, dps, popularity, applyFunc, x, y)
		local frame = CreateFrame("Frame", nil, parent)
		frame:SetSize(550, 80)
		frame:SetPoint("TOPLEFT", x, y)

		local titleText = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
		titleText:SetPoint("TOPLEFT", 0, 0)
		titleText:SetText(sectionTitle)

		local popularityText = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
		popularityText:SetPoint("TOPLEFT", 0, -20)
		popularityText:SetText("Spec Tree Popularity: " .. popularity)
		popularityText:SetWidth(450)
		popularityText:SetJustifyH("LEFT")

		local hpsText = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
		hpsText:SetPoint("TOPLEFT", 0, -40)
		hpsText:SetText("HPS: " .. hps)
		hpsText:SetWidth(450)
		hpsText:SetJustifyH("LEFT")

		local dpsText = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
		dpsText:SetPoint("TOPLEFT", 0, -60)
		dpsText:SetText("DPS: " .. dps)
		dpsText:SetWidth(450)
		dpsText:SetJustifyH("LEFT")

		local button = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
		button:SetSize(80, 22)
		button:SetPoint("RIGHT", 0, -20) -- Adjusted position to move up 1 cm
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
		-- Mythic+ Section
		local mythicPlusData = specData.MythicPlus
		local mythicPlusSection = CreateStyledSection(talentsPanel, "Mythic+", mythicPlusData.hps, mythicPlusData.dps,
			mythicPlusData.popularity, function()
				Talents:ImportAndApplyTalents(mythicPlusData.talentString)
			end, 16, -50)

		-- Raiding Section
		local raidingData = specData.Raiding
		local raidingSection = CreateStyledSection(talentsPanel, "Raiding", raidingData.hps, raidingData.dps,
			raidingData.popularity, function()
				Talents:ImportAndApplyTalents(raidingData.talentString)
			end, 16, -150)
	else
		print("Error: Spec data not found in the database.")
	end
end

print("Talents.lua loaded.") -- Debug print
