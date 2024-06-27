local addonName, addonTable = ...
addonTable.UI = addonTable.UI or {}

UI = addonTable.UI

function UI.LoadProfilesPanel()
    local Profiles = addonTable.Profiles
    local mainPanel = addonTable.mainPanel

    -- Create the Profiles sub-panel
    local profilesPanel = CreateFrame("Frame")
    profilesPanel.name = "Profiles"
    profilesPanel.parent = mainPanel.name
    InterfaceOptions_AddCategory(profilesPanel)

    -- Profiles panel content
    local title = profilesPanel:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    title:SetPoint("TOPLEFT", 16, -16)
    title:SetText("Profiles")

    local subtitle = profilesPanel:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    subtitle:SetPoint("TOPLEFT", 16, -36)
    subtitle:SetText("Select the addons you want to apply profiles to:")

    local yOffset = -56
    local checkboxes = {}
    for _, addonInfo in ipairs(addonTable.supportedAddons) do
        checkboxes[addonInfo.name] = UI.CreateCheckbox(profilesPanel, addonInfo.name, addonInfo.name, 16, yOffset)
        yOffset = yOffset - 24
    end

    local applyButton = CreateFrame("Button", nil, profilesPanel, "UIPanelButtonTemplate")
    applyButton:SetSize(120, 22)
    applyButton:SetPoint("TOPLEFT", 16, yOffset - 16)
    applyButton:SetText("Apply")
    applyButton:SetScript("OnClick", Profiles.ApplySelectedProfiles)

    addonTable.checkboxes = checkboxes
end
