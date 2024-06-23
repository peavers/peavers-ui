function ApplyLsGlassSettings()
    local lsGlassSettings = {
        ["dock"] = {
            ["font"] = {
                ["size"] = 10,
            },
            ["edit"] = {
                ["position"] = "top",
            },
        },
        ["version"] = 10020602,
        ["chat"] = {
            ["font"] = {
                ["size"] = 10,
            },
            ["tooltips"] = false,
            ["alpha"] = 0,
        },
    }

    AddonProfileManager:ApplySettings("ls_Glass", "LS_GLASS_GLOBAL_CONFIG", lsGlassSettings)
end
