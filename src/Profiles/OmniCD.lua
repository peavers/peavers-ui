local addonName, addonTable = ...
local Utils = addonTable.Utils

function GetOmniCDSettings()
	return {
		["General"] = {
			["textures"] = {
				["statusBar"] = {
					["BG"] = "Clean",
					["bar"] = "Clean",
				},
			},
			["fonts"] = {
				["statusBar"] = {
					["font"] = "Expressway",
				},
				["optionSmall"] = {
					["font"] = "Expressway",
				},
				["anchor"] = {
					["font"] = "Expressway",
				},
				["icon"] = {
					["font"] = "Expressway",
				},
				["option"] = {
					["font"] = "Expressway",
				},
			},
		},
		["Party"] = {
			["party"] = {
				["manualPos"] = {
					{
						["y"] = 384.3499812475275,
						["x"] = 682.3166570813883,
					},
					{
						["y"] = 384.3499812475275,
						["x"] = 682.3166570813883,
					},
					{
						["y"] = 384.3499812475275,
						["x"] = 682.3166570813883,
					},
					{
						["y"] = 384.3499812475275,
						["x"] = 682.3166570813883,
					},
					{
						["y"] = 384.3499812475275,
						["x"] = 682.3166570813883,
					},
					["interruptBar"] = {
						["y"] = 381.6583325584725,
						["x"] = 625.8082259468574,
					},
					["raidCDBar"] = {
						["y"] = 373.6583023343337,
						["x"] = 622.608253530052,
					},
				},
				["extraBars"] = {
					["raidBar0"] = {
						["manualPos"] = {
							["raidBar0"] = {
								["y"] = 376.6810853305215,
								["x"] = 175.496519514847,
							},
						},
					},
					["interruptBar"] = {
						["enabled"] = false,
					},
				},
				["highlight"] = {
					["glowBuffTypes"] = {
						["externalDefensive"] = false,
						["offensive"] = true,
						["immunity"] = false,
						["defensive"] = false,
						["raidDefensive"] = false,
					},
				},
				["position"] = {
					["attachMore"] = "LEFT",
					["columns"] = 4,
					["paddingX"] = 0,
					["attach"] = "LEFT",
					["preset"] = "manual",
					["paddingY"] = 0,
					["offsetX"] = 1,
					["maxNumIcons"] = 8,
					["locked"] = true,
					["offsetY"] = 68,
					["anchor"] = "LEFT",
					["anchorMore"] = "LEFT",
				},
				["priority"] = {
					["racial"] = 3,
					["interrupt"] = 3,
					["disarm"] = 3,
					["trinket"] = 3,
					["defensive"] = 1,
					["pvptrinket"] = 3,
					["covenant"] = 3,
					["raidMovement"] = 3,
					["cc"] = 3,
					["raidDefensive"] = 1,
					["offensive"] = 20,
					["immunity"] = 3,
					["externalDefensive"] = 1,
					["dispel"] = 3,
				},
				["spells"] = {
					["633"] = true,
					["185311"] = true,
					["31935"] = false,
					["228049"] = false,
					["228920"] = true,
					["79206"] = true,
					["266779"] = true,
					["8143"] = false,
					["204336"] = false,
					["33891"] = false,
					["119898"] = false,
					["12975"] = true,
					["15487"] = false,
					["1966"] = true,
					["205604"] = false,
					["57994"] = false,
					["64044"] = false,
					["31230"] = false,
					["123904"] = true,
					["388007"] = true,
					["124974"] = true,
					["198838"] = false,
					["212295"] = false,
					["212619"] = false,
					["1044"] = true,
					["106839"] = false,
					["48020"] = false,
					["183752"] = false,
					["8122"] = false,
					["200183"] = true,
					["586"] = true,
					["6940"] = true,
					["116841"] = true,
					["215982"] = false,
					["108416"] = true,
					["1122"] = true,
					["236320"] = false,
					["114050"] = true,
					["106951"] = true,
					["64901"] = true,
					["108280"] = false,
					["215652"] = false,
					["86659"] = true,
					["59752"] = false,
					["47528"] = false,
					["47482"] = false,
					["122281"] = true,
					["204021"] = true,
					["102543"] = true,
					["853"] = false,
					["46924"] = true,
					["198103"] = true,
					["197268"] = false,
					["114051"] = true,
					["15286"] = false,
					["372760"] = true,
					["50334"] = true,
					["375576"] = true,
					["55233"] = true,
					["336135"] = false,
					["209258"] = false,
					["12042"] = true,
					["2139"] = false,
					["121471"] = true,
					["102560"] = true,
					["96231"] = false,
					["6789"] = false,
					["107574"] = true,
					["108968"] = false,
					["5246"] = false,
					["108281"] = true,
					["47568"] = true,
					["1719"] = true,
					["198067"] = true,
					["1766"] = false,
					["137639"] = true,
					["187707"] = false,
					["114556"] = false,
					["22842"] = true,
					["264735"] = true,
					["498"] = true,
					["86949"] = false,
					["53480"] = false,
					["152277"] = true,
					["2094"] = false,
					["13750"] = true,
					["49039"] = true,
					["325197"] = true,
					["184662"] = true,
					["31850"] = true,
					["227847"] = true,
					["12472"] = true,
					["228260"] = true,
					["51533"] = true,
					["78675"] = false,
					["10060"] = true,
					["194679"] = true,
					["275699"] = true,
					["20594"] = true,
					["210256"] = false,
					["49028"] = true,
					["288613"] = true,
					["30884"] = false,
					["102558"] = true,
					["116705"] = false,
					["116844"] = true,
					["210918"] = false,
					["198111"] = false,
					["192249"] = true,
					["147362"] = false,
					["336126"] = false,
					["6552"] = false,
					["152173"] = true,
					["205180"] = true,
					["265187"] = true,
					["187650"] = false,
					["194223"] = true,
					["203720"] = true,
					["109248"] = true,
				},
				["icons"] = {
					["counterScale"] = 0.75,
					["chargeScale"] = 1,
					["showTooltip"] = true,
					["scale"] = 0.49,
					["desaturateActive"] = true,
					["markEnhanced"] = false,
					["swipeAlpha"] = 1,
				},
				["general"] = {
					["showPlayer"] = true,
				},
			},
			["noneZoneSetting"] = "party",
			["arena"] = {
				["icons"] = {
					["scale"] = 0.9000000000000001,
					["chargeScale"] = 1,
					["showTooltip"] = true,
				},
				["general"] = {
					["zoneSelected"] = "party",
					["showPlayer"] = true,
				},
				["position"] = {
					["columns"] = 4,
					["uf"] = "blizz",
					["paddingX"] = 1,
					["attach"] = "TOPLEFT",
					["preset"] = "TOPLEFT",
					["anchor"] = "TOPRIGHT",
					["paddingY"] = 1,
				},
			},
			["visibility"] = {
				["arena"] = false,
			},
			["groupSize"] = {
				["party"] = 5,
				["arena"] = 4,
			},
		},
	}
end

function ApplyOmniCDSettings()
	local addon = "OmniCD"

	if not Utils.RequireAddon(addon) then
		return
	end

	local profileName = Utils.GetProfileName()

	local settings = GetOmniCDSettings()

	-- Disable LibDualSpec for this character
	OmniCDDB.namespaces = OmniCDDB.namespaces or {}
	OmniCDDB.namespaces['LibDualSpec-1.0'] = OmniCDDB.namespaces['LibDualSpec-1.0'] or {}
	OmniCDDB.namespaces['LibDualSpec-1.0'].char = OmniCDDB.namespaces['LibDualSpec-1.0'].char or {}
	OmniCDDB.namespaces['LibDualSpec-1.0'].char[UnitName("player") .. " - " .. GetRealmName()] = {
		enabled = false,
	}

	-- Set global settings
	OmniCDDB.global = OmniCDDB.global or {}
	OmniCDDB.global.disableElvMsg = true
	OmniCDDB.version = 4

	-- Create the profile
	OmniCDDB.profiles = OmniCDDB.profiles or {}
	OmniCDDB.profiles[profileName] = settings

	-- Set the profile for the current character
	OmniCDDB.profileKeys = OmniCDDB.profileKeys or {}
	OmniCDDB.profileKeys[UnitName("player") .. " - " .. GetRealmName()] = profileName

	Utils.LoadComplete(addon, profileName)
end
