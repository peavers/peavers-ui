local addonName, addonTable = ...

local Profiles = addonTable.Profiles

function addonTable.UI.CreateCheckbox(parent, label, addonName, x, y)
    local checkbox = CreateFrame("CheckButton", nil, parent, "ChatConfigCheckButtonTemplate")
    checkbox:SetPoint("TOPLEFT", x, y)
    checkbox.Text:SetText(label)
    checkbox:SetChecked(addonTable.selectedAddons[addonName] or addonTable.defaultSelectedAddons[addonName])
    checkbox:SetScript("OnClick", function(self)
        addonTable.selectedAddons[addonName] = self:GetChecked()
        PeaversUIExportDB.selectedAddons = addonTable.selectedAddons
    end)
    return checkbox
end

function addonTable.UI.ReloadUIAfterApplying()
    StaticPopup_Show("PEAVERSUI_RELOAD")
end

StaticPopupDialogs["PEAVERSUI_RELOAD"] = {
    text = "Profiles applied. Would you like to reload your UI now?",
    button1 = "Yes",
    button2 = "No",
    OnAccept = function()
        ReloadUI()
    end,
    timeout = 0,
    whileDead = true,
    hideOnEscape = true,
    preferredIndex = 3,
}

local panel = CreateFrame("Frame")
panel.name = "PeaversUI"
InterfaceOptions_AddCategory(panel)

local title = panel:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
title:SetPoint("TOPLEFT", 16, -16)
title:SetText("PeaversUI")

local subtitle = panel:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
subtitle:SetPoint("TOPLEFT", 16, -36)
subtitle:SetText("Select the addons you want to apply profiles to:")

local yOffset = -56
local checkboxes = {}
for _, addonInfo in ipairs(addonTable.supportedAddons) do
    checkboxes[addonInfo.name] = addonTable.UI.CreateCheckbox(panel, addonInfo.name, addonInfo.name, 16, yOffset)
    yOffset = yOffset - 24
end

local applyButton = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
applyButton:SetSize(120, 22)
applyButton:SetPoint("TOPLEFT", 16, yOffset - 16)
applyButton:SetText("Apply Profiles")
applyButton:SetScript("OnClick", Profiles.ApplySelectedProfiles)

panel:RegisterEvent("ADDON_LOADED")
panel:SetScript("OnEvent", function(self, event, arg1)
    if event == "ADDON_LOADED" and arg1 == addonName then
        Profiles.InitializeSelectedAddons()
        -- Update the checkboxes with the correct state
        for addonName, checkbox in pairs(checkboxes) do
            checkbox:SetChecked(addonTable.selectedAddons[addonName])
        end
        self:UnregisterEvent("ADDON_LOADED")
    end
end)

-- Slash command to open the options panel
SLASH_PEAVERSUI1 = "/peaversui"
SlashCmdList["PEAVERSUI"] = function()
    InterfaceOptionsFrame_OpenToCategory(panel)
    InterfaceOptionsFrame_OpenToCategory(panel)  -- Calling twice due to Blizzard bug
end
