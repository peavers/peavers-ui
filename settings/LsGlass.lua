function ApplyLSGlassSettings()
    if IsAddOnLoaded("ls_Glass") then
        if not LS_GLASS_GLOBAL_CONFIG then
            print("LS Glass saved variables not found")
            return
        end

        local profileName = "PeaversUI"

        -- Ensure profiles table exists
        if not LS_GLASS_GLOBAL_CONFIG["profiles"] then
            LS_GLASS_GLOBAL_CONFIG["profiles"] = {}
        end

        -- Clear existing profile settings if they exist
        LS_GLASS_GLOBAL_CONFIG["profiles"][profileName] = nil

        -- Hardcoded settings
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

        -- Apply the hardcoded settings under the new profile
        LS_GLASS_GLOBAL_CONFIG["profiles"][profileName] = settings

        -- Assign the new profile to the current character
        if not LS_GLASS_GLOBAL_CONFIG["profileKeys"] then
            LS_GLASS_GLOBAL_CONFIG["profileKeys"] = {}
        end
        LS_GLASS_GLOBAL_CONFIG["profileKeys"][UnitName("player") .. " - " .. GetRealmName()] = profileName
    else
        print("Addon not loaded: LS Glass")
    end
end
