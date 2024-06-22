local PeaversUI = CreateFrame("Frame")
PeaversUI:RegisterEvent("ADDON_LOADED")
PeaversUI:RegisterEvent("PLAYER_LOGIN")

local profiles = {
    default = {
        Bartender4 = true,
        SexyMap = true,
        Details = true,
        LsGlass = true,
        OmniCD = true,
        TipTac = true,
    }
}

PeaversUI:SetScript("OnEvent", function(self, event, arg1)
    if event == "ADDON_LOADED" and arg1 == "PeaversUI" then
        if not PeaversUIDB then
            PeaversUIDB = { profile = "default" }
        end
    elseif event == "PLAYER_LOGIN" then
        PeaversUI:ApplyProfile(PeaversUIDB.profile)
    end
end)

function PeaversUI:ApplyProfile(profileName)
    local profile = profiles[profileName]
    if not profile then
        print("Profile not found: " .. profileName)
        return
    end

    if profile.Bartender4 then
        ApplyBartenderSettings()
    end

    if profile.SexyMap then
        ApplySexyMapSettings()
    end

    if profile.Details then
        ApplyDetailsSettings()
    end

    if profile.LsGlass then
        ApplyLSGlassSettings()
    end

    if profile.OmniCD then
        ApplyOmniCDSettings()
    end

    if profile.TipTac then
        ApplyTipTacSettings()
     end

    print("Applied profile: " .. profileName)
end

SLASH_PEAVERSUI1 = "/peaversui"
SlashCmdList["PEAVERSUI"] = function(msg)
    if profiles[msg] then
        PeaversUIDB.profile = msg
        PeaversUI:ApplyProfile(msg)
        ShowReloadUIPopup()
    else
        print("Profile not found: " .. msg)
    end
end
