local addonName, addonTable = ...
addonTable.UI = addonTable.UI or {}
addonTable.Talents = addonTable.Talents or {}

local UI = addonTable.UI
local Talents = addonTable.Talents
local DB = addonTable.DB

function UI.LoadTalentsPanel()
    print("LoadTalentsPanel function is being called.") -- Debug print
    local mainPanel = addonTable.mainPanel

    -- Create the Talents sub-panel
    local talentsPanel = CreateFrame("Frame")
    talentsPanel.name = "Talents"
    talentsPanel.parent = mainPanel.name
    InterfaceOptions_AddCategory(talentsPanel)

    local function GetPlayerInfo()
        local _, playerClass = UnitClass("player")
        local currentSpecIndex = GetSpecialization()
        local currentSpecID, currentSpecName
        if currentSpecIndex then
            currentSpecID, currentSpecName = GetSpecializationInfo(currentSpecIndex)
        else
            currentSpecName = "Spec"
        end

        return string.lower(playerClass), currentSpecName
    end

    local function capitalizeFirstLetter(str)
        return str:sub(1, 1):upper() .. str:sub(2):lower()
    end

    -- Get player's class and specialization
    local playerClass, specName = GetPlayerInfo()
    local titleText = capitalizeFirstLetter(playerClass) .. " - " .. specName .. " talents"

    -- Talents panel content
    local title = talentsPanel:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    title:SetPoint("TOPLEFT", 16, -16)
    title:SetText(titleText)

    local function toLowercaseAndReplaceWhitespace(input)
        -- Convert the string to lowercase
        local lowercased = string.lower(input)

        -- Replace all whitespace with hyphens
        local result = string.gsub(lowercased, "%s+", "-")

        return result
    end

    -- Fetch data from the database
    local classData = DB[playerClass]
    local specData = classData and classData[toLowercaseAndReplaceWhitespace(specName)]

    local function CreateStyledSection(parent, sectionTitle, hps, dps, popularity, keystone, applyFunc, x, y)
        local frame = CreateFrame("Frame", nil, parent)
        frame:SetPoint("TOPLEFT", x, y)

        local titleText = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
        titleText:SetPoint("TOPLEFT", 0, 0)
        titleText:SetText(sectionTitle)

        local currentYOffset = -20

        local popularityText = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
        popularityText:SetPoint("TOPLEFT", 0, currentYOffset)
        popularityText:SetText("Popularity: " .. popularity)
        popularityText:SetWidth(450)
        popularityText:SetJustifyH("LEFT")
        currentYOffset = currentYOffset - 20

        if hps then
            local hpsText = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
            hpsText:SetPoint("TOPLEFT", 0, currentYOffset)
            hpsText:SetText("HPS: " .. hps)
            hpsText:SetWidth(450)
            hpsText:SetJustifyH("LEFT")
            currentYOffset = currentYOffset - 20
        end

        if dps then
            local dpsText = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
            dpsText:SetPoint("TOPLEFT", 0, currentYOffset)
            dpsText:SetText("DPS: " .. dps)
            dpsText:SetWidth(450)
            dpsText:SetJustifyH("LEFT")
            currentYOffset = currentYOffset - 20
        end

        if keystone then
            local keystoneText = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
            keystoneText:SetPoint("TOPLEFT", 0, currentYOffset)
            keystoneText:SetText("Keystone level: " .. keystone)
            keystoneText:SetWidth(450)
            keystoneText:SetJustifyH("LEFT")
            currentYOffset = currentYOffset - 20
        end

        -- Position the Apply button
        local button = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
        button:SetSize(80, 22)
        button:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -10, currentYOffset)
        button:SetText("Apply")
        button:SetScript("OnClick", applyFunc)

        -- Adjust frame size based on content
        local frameHeight = -currentYOffset + 30 -- Add some padding for the button and line
        frame:SetSize(550, frameHeight)

        -- Create horizontal line below the button
        local line = frame:CreateLine()
        line:SetColorTexture(0.5, 0.5, 0.5, 0.5)
        line:SetStartPoint("TOPLEFT", 0, currentYOffset - 30)
        line:SetEndPoint("TOPRIGHT", 0, currentYOffset - 30)
        line:SetThickness(0.5)

        return frame
    end

    if specData then
        local currentYPosition = -50 -- Initial Y position

        -- Mythic+ Section
        local mythicPlusData = specData.MythicPlus
        local mythicPlusSection = CreateStyledSection(talentsPanel, "Mythic+", mythicPlusData.hps, mythicPlusData.dps, mythicPlusData.popularity, mythicPlusData.keystone, function()
                Talents:ImportAndApplyTalents(mythicPlusData.talentString)
            end, 16, currentYPosition)

        currentYPosition = currentYPosition - (mythicPlusSection:GetHeight() + 20) -- Update Y position with spacing

        -- Raiding Section
        local raidingData = specData.Raiding
        local raidingSection = CreateStyledSection(talentsPanel, "Raiding", raidingData.hps, raidingData.dps, raidingData.popularity, nil, function()
                Talents:ImportAndApplyTalents(raidingData.talentString)
            end, 16, currentYPosition)

        currentYPosition = currentYPosition - (raidingSection:GetHeight() + 20) -- Update Y position with spacing

    else
        print("Error: Spec data not found in the database.")
    end
end

print("Talents.lua loaded.") -- Debug print
