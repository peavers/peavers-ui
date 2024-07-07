local addonName, addonTable = ...
addonTable.UI = addonTable.UI or {}

UI = addonTable.UI

function UI.LoadProfilesPanel()
	local Profiles = addonTable.Profiles
	local mainPanel = addonTable.mainPanel

	-- Create the Profiles sub-panel
	local childPanel = CreateFrame("Frame")
	childPanel.name = "Profiles"
	childPanel.parent = mainPanel.name
	InterfaceOptions_AddCategory(childPanel)

	-- Set primary title
	local titleText = "Profiles"
	local subtitleText = "Select the addons you want to apply profiles to"
	addonTable.Utils.CreatePanelHeader(childPanel, titleText, subtitleText)

	local yOffset = -56
	local checkboxes = {}
	for _, addonInfo in ipairs(addonTable.supportedAddons) do
		checkboxes[addonInfo.name] = UI.CreateCheckbox(childPanel, addonInfo.name, addonInfo.name, 16, yOffset)
		yOffset = yOffset - 24
	end

	local applyButton = CreateFrame("Button", nil, childPanel, "UIPanelButtonTemplate")
	applyButton:SetSize(120, 22)
	applyButton:SetPoint("TOPLEFT", 16, yOffset - 16)
	applyButton:SetText("Apply")
	applyButton:SetScript("OnClick", Profiles.ApplySelectedProfiles)

	addonTable.checkboxes = checkboxes
end
