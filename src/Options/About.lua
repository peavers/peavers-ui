local addonName, addonTable = ...
addonTable.UI = addonTable.UI or {}
local UI = addonTable.UI

function UI.LoadAboutPanel()
    local mainPanel = addonTable.mainPanel
    -- Create the About sub-panel
    local aboutPanel = CreateFrame("Frame")
    aboutPanel.name = "About"
    aboutPanel.parent = mainPanel.name
    InterfaceOptions_AddCategory(aboutPanel)

    -- aboutPanel panel content
    local title = aboutPanel:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    title:SetPoint("TOPLEFT", 16, -16)
    title:SetText("About")

    local subtitle = aboutPanel:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    subtitle:SetPoint("TOPLEFT", 16, -36)
    subtitle:SetText("Addon version: " .. GetAddOnMetadata("PeaversUI", "Version"))

    local largeIcon = aboutPanel:CreateTexture(nil, "BACKGROUND")
    largeIcon:SetTexture("Interface\\AddOns\\PeaversUI\\src\\Media\\Icon")
    largeIcon:SetPoint("TOPLEFT", aboutPanel, "TOPLEFT", 0, 0)
    largeIcon:SetPoint("BOTTOMRIGHT", aboutPanel, "BOTTOMRIGHT", 0, 0)
    largeIcon:SetAlpha(0.1)

    local githubButton = CreateFrame("Button", nil, aboutPanel, "UIPanelButtonTemplate")
    githubButton:SetSize(100, 22)
    githubButton:SetPoint("BOTTOMLEFT", aboutPanel, "BOTTOMLEFT", 16, 16)
    githubButton:SetText("GitHub")
    githubButton:SetScript("OnClick", function()
        addonTable.ShowLinkCopyPopup("https://github.com/peavers/peavers-ui")
    end)

    local curseForgeButton = CreateFrame("Button", nil, aboutPanel, "UIPanelButtonTemplate")
    curseForgeButton:SetSize(100, 22)
    curseForgeButton:SetPoint("LEFT", githubButton, "RIGHT", 8, 0)
    curseForgeButton:SetText("CurseForge")
    curseForgeButton:SetScript("OnClick", function()
        addonTable.ShowLinkCopyPopup("https://www.curseforge.com/wow/addons/peaversui")
    end)

    -- Add some additional information
    local additionalInfo = aboutPanel:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
    additionalInfo:SetPoint("BOTTOMRIGHT", -16, 16)
    additionalInfo:SetJustifyH("RIGHT")
    additionalInfo:SetText("Created by Peavers\nLast updated: " .. date("%B %d, %Y"))
end

function addonTable.ShowLinkCopyPopup(link)
    StaticPopupDialogs["PEAVERSUI_LINK_COPY"] = {
        text = "Copy this link:",
        button1 = "Close",
        hasEditBox = true,
        editBoxWidth = 280,
        OnShow = function(self, data)
            self.editBox:SetText(link)
            self.editBox:SetFocus()
            self.editBox:HighlightText()
        end,
        OnHide = function(self)
            self.editBox:SetText("")
        end,
        EditBoxOnEnterPressed = function(self)
            self:GetParent():Hide()
        end,
        EditBoxOnEscapePressed = function(self)
            self:GetParent():Hide()
        end,
        timeout = 0,
        whileDead = true,
        hideOnEscape = true,
        preferredIndex = 3,
    }
    StaticPopup_Show("PEAVERSUI_LINK_COPY")
end
