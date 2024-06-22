function ApplySexyMapSettings()
    if IsAddOnLoaded("SexyMap") then
        if not SexyMap2DB then
            print("SexyMap saved variables not found")
            return
        end

        local profileName = "PeaversUI"

        if not SexyMap2DB["profiles"] then
            SexyMap2DB["profiles"] = {}
        end

        SexyMap2DB[profileName] = nil

        local settings = {
            ["core"] = {
                ["clamp"] = true,
                ["point"] = "TOPRIGHT",
                ["relpoint"] = "TOPRIGHT",
                ["autoZoom"] = 5,
                ["northTag"] = true,
                ["y"] = 0,
                ["x"] = 0,
                ["lock"] = true,
                ["shape"] = 130871,
                ["rightClickToConfig"] = false
            },
            ["coordinates"] = {
                ["enabled"] = false,
                ["fontColor"] = {},
                ["xOffset"] = 0,
                ["monochrome"] = false,
                ["updateRate"] = 1,
                ["yOffset"] = 10,
                ["font"] = "Friz Quadrata TT",
                ["borderColor"] = {},
                ["coordPrecision"] = "%d,%d",
                ["backgroundColor"] = {},
                ["outline"] = "NONE"
            },
            ["buttons"] = {
                ["radius"] = 10,
                ["lockDragging"] = false,
                ["allowDragging"] = true,
                ["scale"] = 1,
                ["dragPositions"] = {
                    ["MiniMapTracking"] = 189.4623620122587,
                    ["MiniMapInstanceDifficulty"] = -59.87084452252854,
                    ["LibDBIcon10_TipTac"] = 181.3169389955744
                },
                ["visibilitySettings"] = {
                    ["LibDBIcon10_MoveAnyMinimapIcon"] = "never",
                    ["AddonCompartmentFrame"] = "never",
                    ["LibDBIcon10_RaiderIO"] = "never",
                    ["LibDBIcon10_BigWigs"] = "never",
                    ["CraftingOrder"] = "never",
                    ["LibDBIcon10_SavedInstances"] = "never",
                    ["LibDBIcon10_WeakAuras"] = "never",
                    ["MinimapZoomOut"] = "never",
                    ["LibDBIcon10_Details"] = "never",
                    ["LibDBIcon10_BugSack"] = "never",
                    ["LibDBIcon10_Masque"] = "never",
                    ["LibDBIcon10_Bartender4"] = "never",
                    ["MinimapZoomIn"] = "never",
                    ["MiniMapMailFrame"] = "always",
                    ["TimeManagerClockButton"] = "always",
                    ["MiniMapInstanceDifficulty"] = "never",
                    ["LibDBIcon10_Leatrix_Maps"] = "never",
                    ["GameTimeFrame"] = "never",
                    ["MiniMapTracking"] = "never",
                    ["LibDBIcon10_AutoLooter"] = "never",
                    ["SexyMapZoneTextButton"] = "never",
                    ["MiniMapWorldMapButton"] = "never",
                    ["LibDBIcon10_SimulationCraft"] = "never",
                    ["LibDBIcon10_DetailsStreamer"] = "never",
                    ["GarrisonLandingPageMinimapButton"] = "never",
                    ["LibDBIcon10_Plater"] = "never",
                    ["LibDBIcon10_Leatrix_Plus"] = "never",
                    ["LibDBIcon10_O Item Level"] = "never"
                },
                ["controlVisibility"] = true
            },
            ["movers"] = {
                ["lockTopWidget"] = false,
                ["moveTopWidget"] = false,
                ["lockCaptureBar"] = false,
                ["moveCaptureBar"] = false,
                ["moverPositions"] = {}
            },
            ["clock"] = {
                ["bgColor"] = {
                    ["a"] = 1,
                    ["b"] = 0,
                    ["g"] = 0,
                    ["r"] = 0
                },
                ["font"] = "Friz Quadrata TT",
                ["fontColor"] = {},
                ["borderColor"] = {
                    ["a"] = 1,
                    ["b"] = 0,
                    ["g"] = 0,
                    ["r"] = 0
                },
                ["xOffset"] = 0,
                ["monochrome"] = false,
                ["outline"] = "NONE",
                ["yOffset"] = 0
            },
            ["borders"] = {
                ["applyPreset"] = false,
                ["borders"] = {},
                ["backdrop"] = {
                    ["show"] = false,
                    ["textureColor"] = {
                        ["r"] = 0,
                        ["g"] = 0,
                        ["b"] = 0
                    },
                    ["settings"] = {
                        ["bgFile"] = 137056,
                        ["edgeFile"] = 137057,
                        ["edgeSize"] = 17,
                        ["tile"] = false,
                        ["insets"] = {
                            ["top"] = 4,
                            ["right"] = 4,
                            ["left"] = 4,
                            ["bottom"] = 4
                        }
                    },
                    ["borderColor"] = {},
                    ["scale"] = 1.07
                },
                ["hideBlizzard"] = true
            },
            ["zonetext"] = {
                ["outline"] = "NONE",
                ["fontColor"] = {},
                ["xOffset"] = 0,
                ["monochrome"] = false,
                ["yOffset"] = 0,
                ["bgColor"] = {
                    ["a"] = 1,
                    ["b"] = 0,
                    ["g"] = 0,
                    ["r"] = 0
                },
                ["font"] = "Friz Quadrata TT",
                ["useSecureButton"] = false,
                ["borderColor"] = {
                    ["a"] = 1,
                    ["b"] = 0,
                    ["g"] = 0,
                    ["r"] = 0
                }
            },
            ["ping"] = {
                ["showPing"] = true,
                ["showAt"] = "map"
            }
        }

        SexyMap2DB[UnitName("player") .. "-" .. GetRealmName()] = settings
    else
        print("Addon not loaded: SexyMap")
    end
end
