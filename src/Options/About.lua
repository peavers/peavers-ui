local addonName, addonTable = ...
addonTable.UI = addonTable.UI or {}
local UI = addonTable.UI
local Utils = addonTable.Utils

-- Constants
local BUTTON_WIDTH = 100
local BUTTON_HEIGHT = 22
local ICON_ALPHA = 0.1

function UI.LoadAboutPanel(parentCategory)
    local panel = CreateFrame("Frame")
    panel.name = "About"
    panel.parent = parentCategory.name

    local titleText = panel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
    titleText:SetPoint("TOPLEFT", 16, -16)
    titleText:SetText("About PeaversUI")

    local version = GetAddOnMetadata("PeaversUI", "Version") or "Unknown"
    local versionText = panel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    versionText:SetPoint("TOPLEFT", titleText, "BOTTOMLEFT", 0, -8)
    versionText:SetText("Version: " .. version)

    local largeIcon = panel:CreateTexture(nil, "BACKGROUND")
    largeIcon:SetTexture("Interface\\AddOns\\PeaversUI\\src\\Media\\Icon")
    largeIcon:SetPoint("TOPLEFT", panel, "TOPLEFT", 0, 0)
    largeIcon:SetPoint("BOTTOMRIGHT", panel, "BOTTOMRIGHT", 0, 0)
    largeIcon:SetAlpha(ICON_ALPHA)

    local githubButton = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
    githubButton:SetSize(BUTTON_WIDTH, BUTTON_HEIGHT)
    githubButton:SetPoint("BOTTOMLEFT", panel, "BOTTOMLEFT", 16, 16)
    githubButton:SetText("GitHub")
    githubButton:SetScript("OnClick", function()
        Utils.ShowLinkCopyPopup("https://github.com/peavers/peavers-ui")
    end)

    local curseForgeButton = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
    curseForgeButton:SetSize(BUTTON_WIDTH, BUTTON_HEIGHT)
    curseForgeButton:SetPoint("LEFT", githubButton, "RIGHT", 8, 0)
    curseForgeButton:SetText("CurseForge")
    curseForgeButton:SetScript("OnClick", function()
        Utils.ShowLinkCopyPopup("https://www.curseforge.com/wow/addons/peaversui")
    end)

    local additionalInfo = panel:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
    additionalInfo:SetPoint("BOTTOMRIGHT", -16, 16)
    additionalInfo:SetJustifyH("RIGHT")
    additionalInfo:SetText("Created by Peavers\nLast updated: " .. date("%B %d, %Y"))

    panel.OnRefresh = function() end
    panel.OnCommit = function() end
    panel.OnDefault = function() end

    return panel
end
