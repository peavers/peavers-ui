function ApplyLSGlassSettings()
    if IsAddOnLoaded("ls_Glass") then
        if not LS_GLASS_GLOBAL_CONFIG then
            print("LS Glass saved variables not found")
            return
        end

        local profileName = "PeaversUI"

        if not LS_GLASS_GLOBAL_CONFIG["profiles"] then
            LS_GLASS_GLOBAL_CONFIG["profiles"] = {}
        end

        LS_GLASS_GLOBAL_CONFIG["profiles"][profileName] = nil

        local settings = {
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

        LS_GLASS_GLOBAL_CONFIG["profiles"][profileName] = settings

        if not LS_GLASS_GLOBAL_CONFIG["profileKeys"] then
            LS_GLASS_GLOBAL_CONFIG["profileKeys"] = {}
        end

        LS_GLASS_GLOBAL_CONFIG["profileKeys"][UnitName("player") .. " - " .. GetRealmName()] = profileName

    else
        print("Addon not loaded: LS Glass")
    end
end
