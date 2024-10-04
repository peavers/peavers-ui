local addonName, addonTable = ...
local Utils = addonTable.Utils

function GetBartender4Settings()
	local playerName = UnitName("player")
	local realmName = GetRealmName()
	local fullName = playerName .. " - " .. realmName
	local profileName = Utils.GetProfileName()

	return {
		["namespaces"] = {
			["StatusTrackingBar"] = {
				["profiles"] = {
					[profileName] = {
						["enabled"] = false,
						["version"] = 3,
						["position"] = {
							["y"] = 29,
							["x"] = -289.5,
							["point"] = "BOTTOM",
						},
					},
				},
			},
			["QueueStatus"] = {
				["profiles"] = {
					[profileName] = {
						["version"] = 3,
						["position"] = {
							["y"] = -142.0228774595889,
							["x"] = -166.3402283626638,
							["point"] = "TOPRIGHT",
							["scale"] = 0.550000011920929,
						},
					},
				},
			},
			["ActionBars"] = {
				["profiles"] = {
					[profileName] = {
						["actionbars"] = {
							{
								["showgrid"] = true,
								["version"] = 3,
								["WoW10Layout"] = true,
								["position"] = {
									["y"] = 71,
									["x"] = -170.9999633789062,
									["point"] = "BOTTOM",
									["scale"] = 0.6
								}
							},
							{
								["enabled"] = false,
								["version"] = 3,
								["WoW10Layout"] = true,
								["position"] = {
									["y"] = -224,
									["x"] = -284.5000305175781,
									["point"] = "CENTER"
								}
							},
							{
								["flyoutDirection"] = "LEFT",
								["showgrid"] = true,
								["rows"] = 12,
								["fadeout"] = true,
								["fadeoutdelay"] = 0,
								["position"] = {
									["y"] = 285,
									["x"] = -2.999997854232788,
									["point"] = "LEFT",
									["scale"] = 0.6
								},
								["visibility"] = {
									["always"] = false
								},
								["version"] = 3,
								["WoW10Layout"] = true,
								["fadeoutalpha"] = 0.05
							},
							{
								["enabled"] = false,
								["flyoutDirection"] = "LEFT",
								["position"] = {
									["y"] = 193,
									["x"] = -104,
									["point"] = "RIGHT"
								},
								["rows"] = 12,
								["WoW10Layout"] = true,
								["version"] = 3
							},
							{
								["enabled"] = false,
								["version"] = 3,
								["WoW10Layout"] = true,
								["position"] = {
									["y"] = 184,
									["x"] = -285,
									["point"] = "BOTTOM"
								}
							},
							{
								["showgrid"] = true,
								["version"] = 3,
								["WoW10Layout"] = true,
								["position"] = {
									["y"] = 44,
									["x"] = -170.9999633789062,
									["point"] = "BOTTOM",
									["scale"] = 0.6
								}
							},
							{
								["WoW10Layout"] = true
							},
							{
								["WoW10Layout"] = true
							},
							{
								["WoW10Layout"] = true
							},
							{
								["WoW10Layout"] = true
							},
							[14] = {
								["WoW10Layout"] = true
							},
							[13] = {
								["WoW10Layout"] = true
							},
							[15] = {
								["WoW10Layout"] = true
							}
						}
					}
				}
			},
			["ExtraActionBar"] = {
				["profiles"] = {
					[profileName] = {
						["position"] = {
							["y"] = -270.8555145263672,
							["x"] = 472.0531616210938,
							["point"] = "LEFT",
						},
						["version"] = 3,
						["hideArtwork"] = true,
					},
				},
			},
			["MicroMenu"] = {
				["profiles"] = {
					[profileName] = {
						["enabled"] = false,
						["version"] = 3,
						["position"] = {
							["y"] = 34,
							["x"] = -229,
							["point"] = "BOTTOMRIGHT",
						},
					},
				},
			},
			["BagBar"] = {
				["profiles"] = {
					[profileName] = {
						["enabled"] = false,
						["version"] = 3,
						["position"] = {
							["y"] = 34.0000114440918,
							["x"] = -208,
							["point"] = "BOTTOMRIGHT",
						},
					},
				},
			},
			["BlizzardArt"] = {
				["profiles"] = {
					[profileName] = {
						["artLayout"] = "MODERN",
						["version"] = 3,
						["position"] = {
							["y"] = 87,
							["x"] = -288.5,
							["point"] = "BOTTOM",
						},
					},
				},
			},
			["StanceBar"] = {
				["profiles"] = {
					[profileName] = {
						["version"] = 3,
						["position"] = {
							["y"] = 90.20000968774184,
							["x"] = 169,
							["point"] = "BOTTOM",
							["scale"] = 0.6000000238418579,
							["growHorizontal"] = "LEFT",
						},
					},
				},
			},
			["PetBar"] = {
				["profiles"] = {
					[profileName] = {
						["version"] = 3,
						["position"] = {
							["y"] = 102.9386444091797,
							["x"] = -162.4998779296875,
							["point"] = "BOTTOM",
						},
					},
				},
			},
			["Vehicle"] = {
				["profiles"] = {
					[profileName] = {
						["version"] = 3,
						["position"] = {
							["y"] = 153,
							["x"] = -337,
							["point"] = "BOTTOM",
						},
					},
				},
			},
		},
		["profileKeys"] = {
			[fullName] = profileName,
		},
		["profiles"] = {
			[profileName] = {
				["focuscastmodifier"] = false,
				["blizzardVehicle"] = true,
				["outofrange"] = "hotkey",
			},
		},
	}
end

function ApplyBartender4Settings()
	local addon = "Bartender4"

	if not Utils.RequireAddon(addon) then
		return
	end

	local profileName = Utils.GetProfileName()

	local settings = GetBartender4Settings()

	-- Merge our settings into the existing Bartender4DB
	for namespace, data in pairs(settings.namespaces) do
		Bartender4DB.namespaces[namespace] = Bartender4DB.namespaces[namespace] or {}
		Bartender4DB.namespaces[namespace].profiles = Bartender4DB.namespaces[namespace].profiles or {}
		Bartender4DB.namespaces[namespace].profiles[profileName] = data.profiles[profileName]
	end

	-- Set the profile keys
	for key, value in pairs(settings.profileKeys) do
		Bartender4DB.profileKeys[key] = value
	end

	-- Set the profiles
	Bartender4DB.profiles = Bartender4DB.profiles or {}
	Bartender4DB.profiles[profileName] = settings.profiles[profileName]

	-- Force Bartender4 to update
	if Bartender4 and Bartender4.db then
		Bartender4.db:SetProfile(profileName)
	end

	-- Refresh the Bartender4 UI
	if Bartender4 and Bartender4.Bar then
		for i = 1, 10 do
			if Bartender4.Bar[i] and Bartender4.Bar[i].ApplyConfig then
				Bartender4.Bar[i]:ApplyConfig()
			end
		end
	end

	Utils.LoadComplete(addon, profileName)
end
