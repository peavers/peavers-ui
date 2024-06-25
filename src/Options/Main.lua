local addonName, addonTable = ...
addonTable.UI = addonTable.UI or {}

local UI = addonTable.UI

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

-- Function to create the main panel (if any additional setup is needed)
function UI.CreateMainPanel()

end
