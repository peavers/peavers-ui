local PeaversUI = CreateFrame("Frame")
local ADDON_NAME = "PeaversUI"

-- Config
local profiles = {
    default = {
        Bartender4 = true,
        Cell = true,
        Details = true,
        LsGlass = true,
        OmniCD = true,
        Plater = true,
        SexyMap = true,
        TipTac = true,
    }
}

-- Helper functions
local function ApplyAddonSettings(addonName)
    local functionName = "Apply" .. addonName .. "Settings"
    if _G[functionName] then
        _G[functionName]()
    else
        print("Warning: " .. functionName .. " not found")
    end
end

-- Main functions
local function InitializeDB()
    if not PeaversUIDB then
        PeaversUIDB = { profile = "default" }
    end
end

local function ApplyProfile(profileName)
    local profile = profiles[profileName]
    if not profile then
        print("Profile not found: " .. profileName)
        return
    end

    for addonName, isEnabled in pairs(profile) do
        if isEnabled then
            ApplyAddonSettings(addonName)
        end
    end

    print("Applied profile: " .. profileName)
end

-- Event handling
local function OnEvent(self, event, arg1)
    if event == "ADDON_LOADED" and arg1 == ADDON_NAME then
        InitializeDB()
    elseif event == "PLAYER_LOGIN" then
        ApplyProfile(PeaversUIDB.profile)
    end
end

PeaversUI:SetScript("OnEvent", OnEvent)
PeaversUI:RegisterEvent("ADDON_LOADED")
PeaversUI:RegisterEvent("PLAYER_LOGIN")

-- Slash command
SLASH_PEAVERSUI1 = "/peaversui"
SlashCmdList["PEAVERSUI"] = function(msg)
    if profiles[msg] then
        PeaversUIDB.profile = msg
        ApplyProfile(msg)
        ShowReloadUIPopup()
    else
        print("Profile not found: " .. msg)
    end
end