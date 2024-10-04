local addonName, addonTable = ...
addonTable.UI = addonTable.UI or {}
addonTable.Talents = addonTable.Talents or {}

local UI = addonTable.UI
local Talents = addonTable.Talents
local TalentDB = addonTable.DB
local Utils = addonTable.Utils

function UI.LoadTalentsPanel(parentCategory)
	local panel = CreateFrame("Frame")
	panel.name = "Talents"
	panel.parent = parentCategory.name

	local titleText = panel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
	titleText:SetPoint("TOPLEFT", 16, -16)
	titleText:SetText("Profiles")

	local subtitleText = panel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	subtitleText:SetPoint("TOPLEFT", titleText, "BOTTOMLEFT", 0, -8)
	subtitleText:SetText("Updated daily to be the best talent choices based on data from Archon")

	-- Create a scroll frame
	local scrollFrame = CreateFrame("ScrollFrame", nil, panel, "UIPanelScrollFrameTemplate")
	scrollFrame:SetPoint("TOPLEFT", subtitleText, "BOTTOMLEFT", 0, -16)
	scrollFrame:SetPoint("BOTTOMRIGHT", panel, "BOTTOMRIGHT", -26, 16)

	local contentFrame = CreateFrame("Frame", nil, scrollFrame)
	scrollFrame:SetScrollChild(contentFrame)

	local function BuildDescription(data)
		local descParts = {}
		if data.popularity then table.insert(descParts, "Popularity: " .. data.popularity) end
		if data.hps then table.insert(descParts, "HPS: " .. data.hps) end
		if data.dps then table.insert(descParts, "DPS: " .. data.dps) end
		if data.keystone then table.insert(descParts, "Keystone Level: " .. data.keystone) end
		return table.concat(descParts, ", ")
	end

	Utils.GetPlayerInfoWithRetry(5, function(fullPlayerName, playerClass, playerClassID, specName)
		if specName and specName ~= "None" then

			titleText:SetText(Utils.CapitalizeFirstLetter(playerClass) .. " - " .. specName .. " talents")

			local classKey = Utils.ToLowercaseAndReplaceWhitespace(playerClass)
			local specKey = Utils.ToLowercaseAndReplaceWhitespace(specName)
			local classData = TalentDB[classKey]
			local specData = classData and classData[specKey]

			if specData then
				local yOffset = -16

				-- Mythic+ Section
				local mythicPlusData = specData.MythicPlus
				if mythicPlusData then
					local description = BuildDescription(mythicPlusData)
					local info = {
						title = "Mythic+",
						description = description
					}

					local frame, frameHeight = UI.CreateSectionFrame(
						contentFrame,
						info,
						32,
						yOffset,
						function()
							Talents:ShowImportDialog(mythicPlusData.talentString)
						end
					)

					yOffset = yOffset - frameHeight
				end

				-- Raiding Section
				local raidingData = specData.Raiding
				if raidingData then
					local description = BuildDescription(raidingData)
					local info = {
						title = "Raiding",
						description = description
					}

					local frame, frameHeight = UI.CreateSectionFrame(
						contentFrame,
						info,
						32,
						yOffset,
						function()
							Talents:ShowImportDialog(raidingData.talentString)
						end
					)

					yOffset = yOffset - frameHeight
				end

				contentFrame:SetSize(scrollFrame:GetWidth() - 30, math.abs(yOffset) + 20)
			end
		end
	end)

	panel.OnRefresh = function()
	end
	panel.OnCommit = function()
	end
	panel.OnDefault = function()
	end

	return panel
end
