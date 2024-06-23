local addonName, addonTable = ...

-- Default values for selected addons
local defaultSelectedAddons = {
    ["Bartender4"] = true,
    ["Cell"] = true,
    ["Details! Damage Meter"] = true,
    ["LS Glass"] = true,
    ["OmniCD"] = true,
    ["Plater"] = true,
    ["SexyMap"] = true,
    ["TipTac"] = true,
}

local selectedAddons = {}

local supportedAddons = {
    { name = "Bartender4", func = "ApplyBartender4Settings" },
    { name = "Cell", func = "ApplyCellSettings" },
    { name = "Details! Damage Meter", func = "ApplyDetailsSettings" },
    { name = "LS Glass", func = "ApplyLSGlassSettings" },
    { name = "OmniCD", func = "ApplyOmniCDSettings" },
    { name = "Plater", func = "ApplyPlaterSettings" },
    { name = "SexyMap", func = "ApplySexyMapSettings" },
    { name = "TipTac", func = "ApplyTipTacSettings" },
}

local function CreateCheckbox(parent, label, addonName, x, y)
    local checkbox = CreateFrame("CheckButton", nil, parent, "ChatConfigCheckButtonTemplate")
    checkbox:SetPoint("TOPLEFT", x, y)
    checkbox.Text:SetText(label)
    checkbox:SetChecked(selectedAddons[addonName] or defaultSelectedAddons[addonName])
    checkbox:SetScript("OnClick", function(self)
        selectedAddons[addonName] = self:GetChecked()
        PeaversUIExportDB.selectedAddons = selectedAddons
    end)
    return checkbox
end

local function ReloadUIAfterApplying()
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

local function ApplySelectedProfiles()
    for addon, isSelected in pairs(selectedAddons) do
        if isSelected then
            for _, addonInfo in ipairs(supportedAddons) do
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
    ReloadUIAfterApplying()
end

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
for _, addonInfo in ipairs(supportedAddons) do
    checkboxes[addonInfo.name] = CreateCheckbox(panel, addonInfo.name, addonInfo.name, 16, yOffset)
    yOffset = yOffset - 24
end

local applyButton = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
applyButton:SetSize(120, 22)
applyButton:SetPoint("TOPLEFT", 16, yOffset - 16)
applyButton:SetText("Apply Profiles")
applyButton:SetScript("OnClick", ApplySelectedProfiles)

-- Event handler to initialize selectedAddons with default values
local function InitializeSelectedAddons()
    if not PeaversUIExportDB then
        PeaversUIExportDB = {}
    end

    if not PeaversUIExportDB.selectedAddons then
        PeaversUIExportDB.selectedAddons = defaultSelectedAddons
    end

    selectedAddons = PeaversUIExportDB.selectedAddons
end

panel:RegisterEvent("ADDON_LOADED")
panel:SetScript("OnEvent", function(self, event, arg1)
    if event == "ADDON_LOADED" and arg1 == addonName then
        InitializeSelectedAddons()
        -- Update the checkboxes with the correct state
        for addonName, checkbox in pairs(checkboxes) do
            checkbox:SetChecked(selectedAddons[addonName])
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
