local addonName, addonTable = ...
addonTable.Utils = addonTable.Utils or {}
addonTable.UI = addonTable.UI or {}

---Creates a header for a panel with a title and subtitle
---@param panel Frame The frame to which the header will be added
---@param titleText string The text for the main title
---@param subtitleText string The text for the subtitle
---@return number The vertical offset for positioning elements below the header
local function CreatePanelHeader(panel, titleText, subtitleText)
	local title = panel:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
	title:SetPoint("TOPLEFT", 16, -16)
	title:SetText(titleText)

	local subtitle = panel:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
	subtitle:SetPoint("TOPLEFT", 16, -36)
	subtitle:SetText(subtitleText)

	return -56
end

---Retrieves the player's class and current specialization
---@return string, string The lowercase player class and the current specialization name
local function GetPlayerInfo()
	local _, playerClass = UnitClass("player")
	local currentSpecIndex = GetSpecialization()
	local currentSpecID, currentSpecName

	if currentSpecIndex then
		currentSpecID, currentSpecName = GetSpecializationInfo(currentSpecIndex)
	else
		currentSpecName = "Spec"
	end

	return string.lower(playerClass), currentSpecName
end

---Capitalizes the first letter of a string
---@param str string The input string
---@return string The string with its first letter capitalized
local function CapitalizeFirstLetter(str)
	return str:sub(1, 1):upper() .. str:sub(2):lower()
end

---Converts a string to lowercase and replaces whitespace with hyphens
---@param input string The input string
---@return string The processed string in lowercase with hyphens instead of spaces
local function ToLowercaseAndReplaceWhitespace(input)
	local lowercased = string.lower(input)
	local result = string.gsub(lowercased, "%s+", "-")
	return result
end

addonTable.Utils.CreatePanelHeader = CreatePanelHeader
addonTable.Utils.GetPlayerInfo = GetPlayerInfo
addonTable.Utils.CapitalizeFirstLetter = CapitalizeFirstLetter
addonTable.Utils.ToLowercaseAndReplaceWhitespace = ToLowercaseAndReplaceWhitespace
