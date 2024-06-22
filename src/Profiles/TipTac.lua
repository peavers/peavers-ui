function ApplyTipTacSettings()
    if IsAddOnLoaded("TipTac") then

        if not TipTac_Config then
            print("TipTac saved variables not found")
            return
        end

        local settings = {
            ["gttScale"] = 0.8500000238418579,
            ["showCurrentUnitSpeed"] = false,
            ["colorGuildByReaction"] = false,
            ["left"] = 2016.332153320313,
            ["tipBackdropEdge"] = "nil",
            ["optionsLeft"] = 770.9444580078125,
            ["optionsBottom"] = 622.6668090820312,
            ["enableCustomClassColors"] = false,
            ["enableColorName"] = true,
            ["showMinimapIcon"] = false,
            ["showPlayerGender"] = false,
            ["enableBackdrop"] = true,
            ["tipColor"] = {
                0,
                0,
                0,
                1,
            },
            ["colorNameByClass"] = true,
            ["colorNameByReaction"] = true,
            ["classColoredBorder"] = false,
            ["pixelPerfectBackdrop"] = true,
            ["showUnitTip"] = true,
            ["enableBars"] = false,
            ["minimapConfig"] = {},
            ["top"] = 177.5553131103516,
            ["enableAuras"] = false,
            ["gradientTip"] = false,
            ["reactText"] = false,
            ["factionText"] = false,
            ["showBattlePetTip"] = false,
            ["reactColoredBackdrop"] = false,
            ["showGuild"] = false,
        }

        for k, v in pairs(settings) do
            TipTac_Config[k] = v
        end

    else
        print("Addon not loaded: TipTac")
    end
end
