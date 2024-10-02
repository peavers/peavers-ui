local addonName, addonTable = ...

addonTable.Talents = addonTable.Talents or {}
local Talents = addonTable.Talents

function Talents:OpenTalentFrame()
	if not ClassTalentFrame or not ClassTalentFrame:IsShown() then
		ToggleTalentFrame()
	end
end

function Talents:ShowImportDialog(importString)
	StaticPopupDialogs["TALENT_IMPORT_DIALOG"] = {
		text = "Import Talents",
		button1 = "Close",
		hasEditBox = true,
		editBoxWidth = 350,
		OnShow = function(self, data)
			-- Set the import string in the edit box
			self.editBox:SetText(data.importString)
			self.editBox:SetFocus()
			self.editBox:HighlightText()

			-- Adjust the height of the dialog to fit the content
			local titleHeight = self.text:GetHeight() or 0
			local editBoxHeight = self.editBox:GetHeight() or 0
			local buttonHeight = self.button1:GetHeight() or 0

			-- Calculate total height with padding
			local totalHeight = 16 + titleHeight + 8 + editBoxHeight + 10 + buttonHeight + 16
			self:SetHeight(totalHeight)

			-- Adjust the position of the Close button
			self.button1:ClearAllPoints()
			self.button1:SetPoint("BOTTOM", self, "BOTTOM", 0, 16)
		end,
		OnHide = function(self)
			self.editBox:SetText("")
		end,
		EditBoxOnEscapePressed = function(self)
			self:GetParent():Hide()
		end,
		timeout = 0,
		whileDead = true,
		hideOnEscape = true,
		preferredIndex = 3, -- avoid taint issues
	}

	StaticPopup_Show("TALENT_IMPORT_DIALOG", nil, nil, { importString = importString })
end

function Talents:ImportAndApplyTalents(importString)
	self:OpenTalentFrame()
	self:ShowImportDialog(importString)
end
