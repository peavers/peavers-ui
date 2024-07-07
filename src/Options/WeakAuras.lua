local addonName, addonTable = ...
addonTable.UI = addonTable.UI or {}
local UI = addonTable.UI

function UI.LoadWeakAurasPanel()
	local mainPanel = addonTable.mainPanel
	local weakAuraDB = addonTable.WeakAuraDB

	-- Create sub-panel
	local childPanel = CreateFrame("Frame")
	childPanel.name = "WeakAuras"
	childPanel.parent = mainPanel.name
	InterfaceOptions_AddCategory(childPanel)

	-- Set primary title
	local titleText = "WeakAuras"
	local subtitleText = "Import pre-configured WeakAura setups"
	local subtitle = addonTable.Utils.CreatePanelHeader(childPanel, titleText, subtitleText)

	-- Function to create a WeakAura import section
	local function CreateWeakAuraImportSection(parent, title, description, importString, x, y)
		local frame = CreateFrame("Frame", nil, parent)
		frame:SetSize(550, 70) -- Increased height to accommodate description
		frame:SetPoint("TOPLEFT", x, y)

		local titleText = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
		titleText:SetPoint("TOPLEFT", 0, 0)
		titleText:SetText(title)

		local descriptionText = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
		descriptionText:SetPoint("TOPLEFT", 0, -20)
		descriptionText:SetText(description)
		descriptionText:SetWidth(450)
		descriptionText:SetJustifyH("LEFT")

		local button = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
		button:SetSize(80, 22)
		button:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0, 5)
		button:SetText("Apply")
		button:SetScript("OnClick", function()
			if IsAddOnLoaded("WeakAuras") then
				if WeakAuras and WeakAuras.Import then
					local success, msg = WeakAuras.Import(importString)
					if success then
						print("WeakAura import successful: " .. title)
					else
						print("WeakAura import failed: " .. (msg or "Unknown error"))
					end
				else
					print("WeakAuras import function is not available.")
				end
			else
				print("WeakAuras addon is not loaded.")
			end
		end)

		-- Create horizontal line
		local line = frame:CreateLine()
		line:SetColorTexture(0.5, 0.5, 0.5, 0.5)
		line:SetStartPoint("BOTTOMLEFT", 0, 0)
		line:SetEndPoint("BOTTOMRIGHT", 0, 0)
		line:SetThickness(0.5)

		return frame
	end

	-- Get player's class
	local _, playerClass = UnitClass("player")
	playerClass = string.lower(playerClass)

	-- Create sections for each WeakAura import
	local yOffset = -60 -- Start below the subtitle
	for _, waInfo in ipairs(weakAuraDB) do
		if waInfo.class == "all" or waInfo.class == playerClass then
			CreateWeakAuraImportSection(childPanel, waInfo.title, waInfo.description, waInfo.importString, 16, yOffset)
			yOffset = yOffset - 80 -- Increase this value if you want more space between sections
		end
	end
end
