local addonName, addonTable = ...
addonTable.UI = addonTable.UI or {}
addonTable.Profiles = addonTable.Profiles or {}
local UI = addonTable.UI
local Profiles = addonTable.Profiles
local Utils = addonTable.Utils

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

    local contentFrame = CreateFrame("Frame", nil, panel)
    contentFrame:SetPoint("TOPLEFT", subtitleText, "BOTTOMLEFT", 0, -16)
    contentFrame:SetPoint("BOTTOMRIGHT", panel, "BOTTOMRIGHT", -16, 16)

    local yOffset = 0
    local checkboxes = {}

    for _, addonInfo in ipairs(addonTable.supportedAddons) do
        local checkbox = CreateFrame("CheckButton", nil, contentFrame, "UICheckButtonTemplate")
        checkbox:SetPoint("TOPLEFT", 0, yOffset)
        checkbox.text:SetText(addonInfo.name)
        checkbox:SetChecked(addonTable.selectedAddons[addonInfo.name])
        checkbox:SetScript("OnClick", function(self)
            local checked = self:GetChecked()
            addonTable.selectedAddons[addonInfo.name] = checked
        end)
        table.insert(checkboxes, checkbox)
        yOffset = yOffset - 24
    end

    local applyButton = CreateFrame("Button", nil, contentFrame, "UIPanelButtonTemplate")
    applyButton:SetSize(100, 22)
    applyButton:SetPoint("TOPLEFT", 0, yOffset - 16)
    applyButton:SetText("Apply")
    applyButton:SetScript("OnClick", Profiles.ApplySelectedProfiles)

    panel.OnRefresh = function()
        for _, checkbox in ipairs(checkboxes) do
            checkbox:SetChecked(addonTable.selectedAddons[checkbox.text:GetText()])
        end
    end
    panel.OnCommit = function() end
    panel.OnDefault = function()
        for addonName, defaultValue in pairs(addonTable.defaultSelectedAddons) do
            addonTable.selectedAddons[addonName] = defaultValue
        end
        panel.OnRefresh()
    end

    return panel
end

function Profiles.ApplySelectedProfiles()
    for addon, isSelected in pairs(addonTable.selectedAddons) do
        if isSelected then
            for _, addonInfo in ipairs(addonTable.supportedAddons) do
                if addonInfo.name == addon then
                    local funcName = addonInfo.func
                    if funcName and _G[funcName] then
                        _G[funcName]()
                    else
                        print("Function " .. funcName .. " not found for " .. addon)
                    end
                end
            end
        end
    end
    print("Profiles applied. You may need to reload your UI for changes to take effect.")
end

-- Initialize selected addons
function Profiles.InitializeSelectedAddons()
    if not PeaversUIExportDB then
        PeaversUIExportDB = {}
    end

    if not PeaversUIExportDB.selectedAddons then
        PeaversUIExportDB.selectedAddons = addonTable.defaultSelectedAddons
    end

    addonTable.selectedAddons = PeaversUIExportDB.selectedAddons
end

-- Call this function when the addon is loaded
Profiles.InitializeSelectedAddons()
