local addonName, addonTable = ...
addonTable.UI = addonTable.UI or {}
local UI = addonTable.UI

function UI.CreateSectionFrame(parent, info, x, y, onApplyClick)
	local frameWidth = 550
	local frameHeight = 80

	local frame = CreateFrame("Frame", nil, parent)
	frame:SetSize(frameWidth, frameHeight)
	frame:SetPoint("TOPLEFT", x, y)

	local titleText = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	titleText:SetPoint("TOPLEFT", 0, -10)
	titleText:SetText(info.title or info.name or "")

	local descriptionText = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
	descriptionText:SetPoint("TOPLEFT", 0, -25)
	descriptionText:SetText(info.description or "")
	descriptionText:SetWidth(450)
	descriptionText:SetJustifyH("LEFT")

	local button = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
	button:SetSize(80, 22)
	button:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0, 5)
	button:SetText("Apply")
	button:SetScript("OnClick", function()
		if onApplyClick then
			onApplyClick(info)
		end
	end)

	local line = frame:CreateLine()
	line:SetColorTexture(0.5, 0.5, 0.5, 0.5)
	line:SetStartPoint("BOTTOMLEFT", 0, 0)
	line:SetEndPoint("BOTTOMRIGHT", 0, 0)
	line:SetThickness(1)

	return frame, frameHeight
end
