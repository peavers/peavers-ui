local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["warrior"] = {
		["fury"] = {
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
		["arms"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
	},
	["paladin"] = {
		["holy"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
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
		["retribution"] = {
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
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
		["survival"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
		["outlaw"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
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
	},
	["priest"] = {
		["discipline"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
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
		["holy"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
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
		["unholy"] = {
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
	},
	["shaman"] = {
		["elemental"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
		["restoration"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
		["enhancement"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
	},
	["mage"] = {
		["arcane"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
		["fire"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
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
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
	},
	["monk"] = {
		["mistweaver"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
		["brewmaster"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
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
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
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
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
		["vengeance"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
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