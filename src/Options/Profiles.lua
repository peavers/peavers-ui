local addonName, addonTable = ...
addonTable.UI = addonTable.UI or {}
addonTable.Profiles = addonTable.Profiles or {}
local UI = addonTable.UI
local Profiles = addonTable.Profiles

function UI.LoadProfilesPanel(parentCategory)
	local panel = CreateFrame("Frame")
	panel.name = "Profiles"
	panel.parent = parentCategory.name

	local titleText = panel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
	titleText:SetPoint("TOPLEFT", 16, -16)
	titleText:SetText("Profiles")

	local subtitleText = panel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	subtitleText:SetPoint("TOPLEFT", titleText, "BOTTOMLEFT", 0, -8)
	subtitleText:SetText("Select the addons you want to apply profiles to")

	-- Create a scroll frame
	local scrollFrame = CreateFrame("ScrollFrame", nil, panel, "UIPanelScrollFrameTemplate")
	scrollFrame:SetPoint("TOPLEFT", subtitleText, "BOTTOMLEFT", 0, -16)
	scrollFrame:SetPoint("BOTTOMRIGHT", panel, "BOTTOMRIGHT", -26, 16)

	local contentFrame = CreateFrame("Frame", nil, scrollFrame)
	scrollFrame:SetScrollChild(contentFrame)

	local yOffset = -16  -- Start below the subtitle
	for index, addonInfo in ipairs(addonTable.supportedAddons) do
		local frame, frameHeight = UI.CreateSectionFrame(
			contentFrame,
			addonInfo,
			32,
			yOffset,
			function(info)
				Profiles.ApplyProfile(info.name)
			end
		)
		yOffset = yOffset - frameHeight
	end

	-- Adjust the content frame size to fit all profile sections
	contentFrame:SetSize(scrollFrame:GetWidth() - 30, math.abs(yOffset) + 20)

	panel.OnRefresh = function() end
	panel.OnCommit = function() end
	panel.OnDefault = function() end

	return panel
end

local function FindAddonInfo(addonName)
	for _, addonInfo in ipairs(addonTable.supportedAddons) do
		if addonInfo.name == addonName then
			return addonInfo
		end
	end
	return nil
end

function Profiles.ApplyProfile(addonName)
	local addonInfo = FindAddonInfo(addonName)
	if not addonInfo then
		print("Addon information not found for: " .. addonName)
		return
	end

	print("Applying profile for: " .. addonName)

	addonInfo.apply()
end
