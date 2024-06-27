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

    local title = aboutPanel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
    title:SetPoint("TOPLEFT", 16, -16)
    title:SetText("PeaversUI")

    local version = aboutPanel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    version:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -8)
    version:SetText("Version: " .. GetAddOnMetadata("PeaversUI", "Version"))

    local description = aboutPanel:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
    description:SetPoint("TOPLEFT", version, "BOTTOMLEFT", 0, -16)
    description:SetJustifyH("LEFT")
    description:SetJustifyV("TOP")
    description:SetWidth(aboutPanel:GetWidth() - 32)
    description:SetText("PeaversUI is an addon that helps you manage profiles for other addons.")

    local githubButton = CreateFrame("Button", nil, aboutPanel, "UIPanelButtonTemplate")
    githubButton:SetSize(100, 22)
    githubButton:SetPoint("TOPLEFT", description, "BOTTOMLEFT", 0, -16)
    githubButton:SetText("GitHub")
    githubButton:SetScript("OnClick", function()
        -- Use your actual GitHub URL here
        addonTable.ShowLinkCopyPopup("https://github.com/peavers/peavers-ui")
    end)

    local curseForgeButton = CreateFrame("Button", nil, aboutPanel, "UIPanelButtonTemplate")
    curseForgeButton:SetSize(100, 22)
    curseForgeButton:SetPoint("LEFT", githubButton, "RIGHT", 8, 0)
    curseForgeButton:SetText("CurseForge")
    curseForgeButton:SetScript("OnClick", function()
        -- Use your actual CurseForge URL here
        addonTable.ShowLinkCopyPopup("https://www.curseforge.com/wow/addons/peaversui")
    end)
end

-- Add this function to your addon table
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
