local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["warrior"] = {
		["protection"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
		["fury"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
		["arms"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
	},
	["paladin"] = {
		["retribution"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
		["protection"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
		["holy"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
		["marksmanship"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
		["survival"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
	},
	["rogue"] = {
		["outlaw"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
		["subtlety"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
		["assassination"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
	},
	["priest"] = {
		["discipline"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
		["holy"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
		["shadow"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
		["enhancement"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
		["unholy"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
	},
	["mage"] = {
		["fire"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
		["frost"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
		["arcane"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
		["demonology"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
	},
	["monk"] = {
		["mistweaver"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
		["brewmaster"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
		["windwalker"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
		["feral"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
		["guardian"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
		["vengeance"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
		["preservation"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
	},
}
addonTable.DB = talentData