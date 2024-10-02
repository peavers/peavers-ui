local addonName, addonTable = ...
addonTable.UI = addonTable.UI or {}
local UI = addonTable.UI

function UI.LoadWeakAurasPanel(parentCategory)
	local panel = CreateFrame("Frame")
	panel.name = "WeakAuras"
	panel.parent = parentCategory.name

	local weakAuraDB = addonTable.WeakAuraDB

	-- Set primary title
	local titleText = panel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
	titleText:SetPoint("TOPLEFT", 16, -16)
	titleText:SetText("WeakAuras")

	local subtitleText = panel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	subtitleText:SetPoint("TOPLEFT", titleText, "BOTTOMLEFT", 0, -8)
	subtitleText:SetText("Import pre-configured WeakAura setups")

	-- Create a scroll frame
	local scrollFrame = CreateFrame("ScrollFrame", nil, panel, "UIPanelScrollFrameTemplate")
	scrollFrame:SetPoint("TOPLEFT", subtitleText, "BOTTOMLEFT", 0, -16)
	scrollFrame:SetPoint("BOTTOMRIGHT", panel, "BOTTOMRIGHT", -26, 16)

	local contentFrame = CreateFrame("Frame", nil, scrollFrame)
	scrollFrame:SetScrollChild(contentFrame)

	-- Get player's class
	local _, playerClass = UnitClass("player")
	playerClass = string.lower(playerClass)

	local yOffset = -16  -- Start below the subtitle
	for _, waInfo in ipairs(weakAuraDB) do
		if waInfo.class == "all" or waInfo.class == playerClass then
			local frame, frameHeight = UI.CreateSectionFrame(
				contentFrame,
				waInfo,
				32,
				yOffset,
				function(info)
					if C_AddOns.IsAddOnLoaded("WeakAuras") then
						if WeakAuras and WeakAuras.Import then
							local success, msg = WeakAuras.Import(info.importString)
							if success then
								print("WeakAura import successful: " .. info.title)
							else
								print("WeakAura import failed: " .. (msg or "Unknown error"))
							end
						else
							print("WeakAuras import function is not available.")
						end
					else
						print("WeakAuras addon is not loaded.")
					end
				end
			)
			yOffset = yOffset - frameHeight
		end
	end

	-- Adjust the content frame size to fit all sections
	contentFrame:SetSize(scrollFrame:GetWidth() - 30, math.abs(yOffset) + 20)

	panel.OnRefresh = function()
	end
	panel.OnCommit = function()
	end
	panel.OnDefault = function()
	end

	return panel
end
