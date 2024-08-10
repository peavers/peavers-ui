local addonName, addonTable = ...

-- Initialize tables
addonTable.UI = addonTable.UI or {}
addonTable.Profiles = addonTable.Profiles or {}
addonTable.selectedAddons = addonTable.selectedAddons or {}
addonTable.supportedAddons = addonTable.supportedAddons or {}
addonTable.checkboxes = addonTable.checkboxes or {}
addonTable.WeakAuraDB = addonTable.WeakAuraDB or {}
addonTable.TalentDB = addonTable.TalentDB or {}

local Utils = addonTable.Utils
local UI = addonTable.UI

-- Create the main panel
local mainPanel = CreateFrame("Frame")
mainPanel.name = "PeaversUI"
addonTable.mainPanel = mainPanel

addonTable.supportedAddons = {
	{
		name = "Bartender4",
		description =
		"Sets primary action bars at the bottom of the screen, as well as a 'hidden' bar on the left for bindings and non-important buttons.",
		apply = ApplyBartender4Settings
	},
	{
		name = "Cell",
		description =
		"Replacement for raid, party, and unitframes. Combine with Plater and no need for target frames either.",
		apply = ApplyCellSettings
	},
	{
		name = "Details! Damage Meter",
		description = "Damage meter addon",
		apply = ApplyDetailsSettings
	},
	{
		name = "Plater",
		description = "Replacement for ",
		apply = ApplyPlaterSettings
	},
	{
		name = "SexyMap",
		description = "Clean up the minimap with a 'ElvUI' style.",
		apply = ApplySexyMapSettings
	},
	{
		name = "LS Glass",
		description = "Minimal and beautiful chat frame replacement",
		apply = ApplyLsGlassSettings
	},
	{
		name = "Hekili",
		description = "Cheat your way to the top of the DPS meter",
		apply = ApplyHekiliSettings
	},
	{
		name = "Titan Panel",
		description = "Minimal bar in the top left with information such as gold, gear durability, experience.",
		apply = ApplyTitanPanelSettings
	},
}

-- Register the addon with the Settings API
local mainCategory
if Settings and Settings.RegisterCanvasLayoutCategory then
	mainCategory = Settings.RegisterCanvasLayoutCategory(mainPanel, mainPanel.name)
	mainCategory.ID = mainPanel.name
	Settings.RegisterAddOnCategory(mainCategory)

	if UI.LoadProfilesPanel then
		local profilesPanel = UI.LoadProfilesPanel(mainCategory)
		local profilesCategory = Settings.RegisterCanvasLayoutSubcategory(mainCategory, profilesPanel, profilesPanel
			.name)
		profilesCategory.ID = profilesPanel.name
	else
		print("Warning: UI.LoadProfilesPanel is not available")
	end

	if UI.LoadWeakAurasPanel then
		local weakAurasPanel = UI.LoadWeakAurasPanel(mainCategory)
		local weakAurasCategory = Settings.RegisterCanvasLayoutSubcategory(mainCategory, weakAurasPanel,
			weakAurasPanel.name)
		weakAurasCategory.ID = weakAurasPanel.name
	else
		print("Warning: UI.LoadWeakAurasPanel is not available")
	end

	if UI.LoadTalentsPanel then
		local talentsPanel = UI.LoadTalentsPanel(mainCategory)
		local talentsCategory = Settings.RegisterCanvasLayoutSubcategory(mainCategory, talentsPanel, talentsPanel.name)
		talentsCategory.ID = talentsPanel.name
	else
		print("Warning: UI.LoadTalentsPanel is not available")
	end

	if UI.LoadAboutPanel then
		local aboutPanel = UI.LoadAboutPanel(mainCategory)
		local aboutCategory = Settings.RegisterCanvasLayoutSubcategory(mainCategory, aboutPanel, aboutPanel.name)
		aboutCategory.ID = aboutPanel.name
	else
		print("Warning: UI.LoadAboutPanel is not available")
	end
end

-- Initialize the addon
local function InitializeAddon()
	Utils.GetPlayerInfoWithRetry(5, function(fullPlayerName, playerClass, playerClassID, specName)
	end)
end

-- Event handling
local eventFrame = CreateFrame("Frame")
eventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
eventFrame:SetScript("OnEvent", function(self, event)
	self:UnregisterEvent("PLAYER_ENTERING_WORLD")
	InitializeAddon()
end)

-- Slash command to open the options panel
SLASH_PEAVERSUI1 = "/peaversui"
SlashCmdList["PEAVERSUI"] = function()
	Settings.OpenToCategory(mainCategory.ID)
end
