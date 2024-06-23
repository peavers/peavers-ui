function ApplyBartender4Settings()
    local bartender4Settings = {
        ["StatusTrackingBar"] = {
            enabled = false,
            version = 3,
            position = {
                y = 29,
                x = -289.5,
                point = "BOTTOM"
            }
        },
        ["QueueStatus"] = {
            version = 3,
            position = {
                y = -142.0228774595889,
                x = -166.3402283626638,
                point = "TOPRIGHT",
                scale = 0.550000011920929
            }
        },
        ["ActionBars"] = {
            actionbars = {
                {
                    showgrid = true,
                    version = 3,
                    WoW10Layout = true,
                    position = {
                        y = 71,
                        x = -170.9999633789062,
                        point = "BOTTOM",
                        scale = 0.6
                    }
                },
                {
                    enabled = false,
                    version = 3,
                    WoW10Layout = true,
                    position = {
                        y = -224,
                        x = -284.5000305175781,
                        point = "CENTER"
                    }
                },
                {
                    flyoutDirection = "LEFT",
                    showgrid = true,
                    rows = 12,
                    fadeout = true,
                    fadeoutdelay = 0,
                    position = {
                        y = 285,
                        x = -2.999997854232788,
                        point = "LEFT",
                        scale = 0.6
                    },
                    visibility = {
                        always = false
                    },
                    version = 3,
                    WoW10Layout = true,
                    fadeoutalpha = 0.05
                },
                {
                    enabled = false,
                    flyoutDirection = "LEFT",
                    position = {
                        y = 193,
                        x = -104,
                        point = "RIGHT"
                    },
                    rows = 12,
                    WoW10Layout = true,
                    version = 3
                },
                {
                    enabled = false,
                    version = 3,
                    WoW10Layout = true,
                    position = {
                        y = 184,
                        x = -285,
                        point = "BOTTOM"
                    }
                },
                {
                    showgrid = true,
                    version = 3,
                    WoW10Layout = true,
                    position = {
                        y = 44,
                        x = -170.9999633789062,
                        point = "BOTTOM",
                        scale = 0.6
                    }
                },
                {
                    WoW10Layout = true
                },
                {
                    WoW10Layout = true
                },
                {
                    WoW10Layout = true
                },
                {
                    WoW10Layout = true
                },
                [14] = {
                    WoW10Layout = true
                },
                [13] = {
                    WoW10Layout = true
                },
                [15] = {
                    WoW10Layout = true
                }
            }
        },
        ["ExtraActionBar"] = {
            position = {
                y = -270.8555145263672,
                x = 472.0531616210938,
                point = "LEFT"
            },
            version = 3,
            hideArtwork = true
        },
        ["MicroMenu"] = {
            enabled = false,
            version = 3,
            position = {
                y = 34,
                x = -229,
                point = "BOTTOMRIGHT"
            }
        },
        ["BagBar"] = {
            enabled = false,
            version = 3,
            position = {
                y = 34.0000114440918,
                x = -208,
                point = "BOTTOMRIGHT"
            }
        },
        ["BlizzardArt"] = {
            artLayout = "MODERN",
            version = 3,
            position = {
                y = 87,
                x = -288.5,
                point = "BOTTOM"
            }
        },
        ["StanceBar"] = {
            version = 3,
            position = {
                y = 90.20000968774184,
                x = 169,
                point = "BOTTOM",
                scale = 0.6000000238418579,
                growHorizontal = "LEFT"
            }
        },
        ["PetBar"] = {
            version = 3,
            position = {
                y = 102.9386444091797,
                x = -162.4998779296875,
                point = "BOTTOM"
            }
        },
        ["Vehicle"] = {
            version = 3,
            position = {
                y = 153,
                x = -337,
                point = "BOTTOM"
            }
        }
    }

    AddonProfileManager:ApplySettings("Bartender4", "Bartender4DB", bartender4Settings)
end