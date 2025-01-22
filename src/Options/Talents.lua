local addonName, addonTable = ...
addonTable.UI = addonTable.UI or {}
local UI = addonTable.UI

-- Constants
local ICON_ALPHA = 0.1

function UI.LoadTalentsPanel(parentCategory)
	local panel = CreateFrame("Frame")
	panel.name = "Talents"
	panel.parent = parentCategory.name

	local titleText = panel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
	titleText:SetPoint("TOPLEFT", 16, -16)
	titleText:SetText("Talents")

	local additionalInfo = panel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	additionalInfo:SetPoint("CENTER", panel, "CENTER", 0, 0)
	additionalInfo:SetJustifyH("CENTER")
	additionalInfo:SetText("Talents are now a standalone addon, PeaversTalents. Get it on CurseForge!")

	local largeIcon = panel:CreateTexture(nil, "BACKGROUND")
	largeIcon:SetTexture("Interface\\AddOns\\PeaversUI\\src\\Media\\Icon")
	largeIcon:SetPoint("TOPLEFT", panel, "TOPLEFT", 0, 0)
	largeIcon:SetPoint("BOTTOMRIGHT", panel, "BOTTOMRIGHT", 0, 0)
	largeIcon:SetAlpha(ICON_ALPHA)

	panel.OnRefresh = function()
	end
	panel.OnCommit = function()
	end
	panel.OnDefault = function()
	end

	return panel
end
