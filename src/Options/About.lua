local addonName, addonTable = ...
addonTable.UI = addonTable.UI or {}
local UI = addonTable.UI

function UI.LoadAboutPanel()
	local mainPanel = addonTable.mainPanel

	local childPanel = CreateFrame("Frame")
	childPanel.name = "About"
	childPanel.parent = mainPanel.name
	InterfaceOptions_AddCategory(childPanel)

	-- Set primary title
	local titleText = "About"
	local subtitleText = "Addon version: " .. GetAddOnMetadata("PeaversUI", "Version")
	addonTable.Utils.CreatePanelHeader(childPanel, titleText, subtitleText)

	local largeIcon = childPanel:CreateTexture(nil, "BACKGROUND")
	largeIcon:SetTexture("Interface\\AddOns\\PeaversUI\\src\\Media\\Icon")
	largeIcon:SetPoint("TOPLEFT", childPanel, "TOPLEFT", 0, 0)
	largeIcon:SetPoint("BOTTOMRIGHT", childPanel, "BOTTOMRIGHT", 0, 0)
	largeIcon:SetAlpha(0.1)

	local githubButton = CreateFrame("Button", nil, childPanel, "UIPanelButtonTemplate")
	githubButton:SetSize(100, 22)
	githubButton:SetPoint("BOTTOMLEFT", childPanel, "BOTTOMLEFT", 16, 16)
	githubButton:SetText("GitHub")
	githubButton:SetScript("OnClick", function()
		addonTable.ShowLinkCopyPopup("https://github.com/peavers/peavers-ui")
	end)

	local curseForgeButton = CreateFrame("Button", nil, childPanel, "UIPanelButtonTemplate")
	curseForgeButton:SetSize(100, 22)
	curseForgeButton:SetPoint("LEFT", githubButton, "RIGHT", 8, 0)
	curseForgeButton:SetText("CurseForge")
	curseForgeButton:SetScript("OnClick", function()
		addonTable.ShowLinkCopyPopup("https://www.curseforge.com/wow/addons/peaversui")
	end)

	-- Add some additional information
	local additionalInfo = childPanel:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
	additionalInfo:SetPoint("BOTTOMRIGHT", -16, 16)
	additionalInfo:SetJustifyH("RIGHT")
	additionalInfo:SetText("Created by Peavers of Kel'Thuzad\nLast updated: " .. date("%B %d, %Y"))
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
