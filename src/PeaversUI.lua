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
		description = "Action bar addon",
		settingsFunc = GetBartender4Settings,
		postApplyCallback = ApplyBartender4Settings
	},
	{
		name = "Cell",
		description = "Unit frame addon",
		settingsFunc = GetCellSettings,
		postApplyCallback = ApplyCellSettings
	},
	--{
	--	name = "Details! Damage Meter",
	--	description = "Damage meter addon",
	--	settings = AddonProfileManager.GetDetailsSettings(),
	--	postApplyCallback = function(settings)
	--		AddonProfileManager.ApplyDetailsSettings(settings)
	--	end
	--},
	--{
	--	name = "LS Glass",
	--	description = "Chat frame addon",
	--	settings = AddonProfileManager.GetLsGlassSettings(),
	--	postApplyCallback = function(settings)
	--		AddonProfileManager.ApplyLsGlassSettings(settings)
	--	end
	--},
	--{
	--	name = "OmniCD",
	--	description = "Cooldown tracker addon",
	--	settings = AddonProfileManager.GetOmniCDSettings(),
	--	postApplyCallback = function(settings)
	--		AddonProfileManager.ApplyOmniCDSettings(settings)
	--	end
	--},
	--{
	--	name = "Plater",
	--	description = "Nameplate addon",
	--	settings = AddonProfileManager.GetPlaterSettings(),
	--	postApplyCallback = function(settings)
	--		AddonProfileManager.ApplyPlaterSettings(settings)
	--	end
	--},
	{
		name = "SexyMap",
		description = "Minimap addon",
		settingsFunc = GetSexyMapSettings,
		postApplyCallback = ApplySexyMapSettings
	},
	--{
	--	name = "TipTac",
	--	description = "Tooltip addon",
	--	settings = AddonProfileManager.GetTipTacSettings(),
	--	postApplyCallback = function(settings)
	--		AddonProfileManager.ApplyTipTacSettings(settings)
	--	end
	--},
	--{
	--	name = "Titan Panel",
	--	description = "Information bar addon",
	--	settings = AddonProfileManager.GetTitanSettings(),
	--	postApplyCallback = function(settings)
	--		AddonProfileManager.ApplyTitanSettings(settings)
	--	end
	--},
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
	Utils.GetPlayerInfoWithRetry(5, function(fullPlayerName, playerClass, playerClassID, specName) end)
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
