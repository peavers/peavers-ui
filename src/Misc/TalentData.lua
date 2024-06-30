local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["warrior"] = {
		["arms"] = {
			MythicPlus = {
				talentString = "NEW_MYTHIC_PLUS_TALENT_STRING",
				popularity = "25.0%",
				hps = "360.0k",
				dps = "51.0k"
			},
			Raiding = {
				talentString = "NEW_RAIDING_TALENT_STRING",
				popularity = "26.0%",
				hps = "365.0k",
				dps = "53.0k"
			}
		},
		-- Other specs...
	},
	["paladin"] = {
		["holy"] = {
			MythicPlus = {
				talentString = "BEEAAAAAAAAAAAAAAAAAAAAAAAABAABAEBAAIAtIFkSJSSrISLJUSSo0aiGIJFBJJEpAiIAgAANgQigA",
				popularity = "5.8%",
				hps = "129.2k",
				dps = "83.9k"
			},
			Raiding = {
				talentString = "BEEAAAAAAAAAAAAAAAAAAAAAAAAAAQAARAAACQLJFoUik0ahUSClkEKaiGQSJBJJEpgmkIAgAAFgQSCC",
				popularity = "24.2%",
				hps = "366.0k",
				dps = "50.3k"
			}
		},
		-- Other specs...
	},
	-- Other classes...
}


addonTable.DB = talentData

