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
    titleText:SetText("Talents")

    local subtitleText = panel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    subtitleText:SetPoint("TOPLEFT", titleText, "BOTTOMLEFT", 0, -8)
    subtitleText:SetText("Updated every day to be the best talent choices based on data from Archon")

    local contentFrame = CreateFrame("Frame", nil, panel)
    contentFrame:SetPoint("TOPLEFT", subtitleText, "BOTTOMLEFT", 0, -16)
    contentFrame:SetPoint("BOTTOMRIGHT", panel, "BOTTOMRIGHT", -16, 16)

    local loadingText = contentFrame:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
    loadingText:SetPoint("CENTER")
    loadingText:SetText("Loading...")

    local function LoadTalentInfo(fullPlayerName, playerClass, playerClassID, specName)
        -- Clear previous content
        contentFrame:SetHeight(1)
        for _, child in pairs({ contentFrame:GetChildren() }) do
            child:Hide()
            child:SetParent(nil)
        end

        titleText:SetText(Utils.CapitalizeFirstLetter(playerClass) .. " - " .. specName .. " talents")

        local classData = TalentDB[Utils.ToLowercaseAndReplaceWhitespace(playerClass)]
        local specData = classData and classData[Utils.ToLowercaseAndReplaceWhitespace(specName)]

        if specData then
            local currentYPosition = 0

            -- Mythic+ Section
            local mythicPlusData = specData.MythicPlus
            local mythicPlusSection = Utils.CreateStyledSection(
                contentFrame,
                "Mythic+",
                mythicPlusData.hps,
                mythicPlusData.dps,
                mythicPlusData.popularity,
                mythicPlusData.keystone,
                function()
                    Talents:ImportAndApplyTalents(mythicPlusData.talentString)
                end, 0, currentYPosition)
            currentYPosition = currentYPosition - (mythicPlusSection:GetHeight() + 10)

            -- Raiding Section
            local raidingData = specData.Raiding
            local raidingSection = Utils.CreateStyledSection(
                contentFrame,
                "Raiding",
                raidingData.hps,
                raidingData.dps,
                raidingData.popularity,
                nil,
                function()
                    Talents:ImportAndApplyTalents(raidingData.talentString)
                end, 0, currentYPosition)
            currentYPosition = currentYPosition - (raidingSection:GetHeight() + 10)

            contentFrame:SetHeight(-currentYPosition)
        else
            local errorText = contentFrame:CreateFontString(nil, "ARTWORK", "GameFontRed")
            errorText:SetPoint("CENTER")
            errorText:SetText("Error: Spec data not found in the database.")
        end
    end

    Utils.GetPlayerInfoWithRetry(5, function(fullPlayerName, playerClass, playerClassID, specName)
        loadingText:Hide()
        if specName and specName ~= "None" then
            LoadTalentInfo(fullPlayerName, playerClass, playerClassID, specName)
        else
            local errorText = contentFrame:CreateFontString(nil, "ARTWORK", "GameFontRed")
            errorText:SetPoint("CENTER")
            errorText:SetText("Unable to retrieve specialization information. Please try reloading the UI.")
        end
    end)

    panel.OnRefresh = function()
        -- Clear content and show loading text
        contentFrame:SetHeight(1)
        for _, child in pairs({ contentFrame:GetChildren() }) do
            child:Hide()
            child:SetParent(nil)
        end
        loadingText:Show()

        -- Retry getting player info
        Utils.GetPlayerInfoWithRetry(5, function(fullPlayerName, playerClass, playerClassID, specName)
            loadingText:Hide()
            if specName and specName ~= "None" then
                LoadTalentInfo(fullPlayerName, playerClass, playerClassID, specName)
            else
                local errorText = contentFrame:CreateFontString(nil, "ARTWORK", "GameFontRed")
                errorText:SetPoint("CENTER")
                errorText:SetText("Unable to retrieve specialization information. Please try reloading the UI.")
            end
        end)
    end
    panel.OnCommit = function() end
    panel.OnDefault = function() end

    return panel
end
