local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
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
	["warrior"] = {
		["fury"] = {
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
		["arms"] = {
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
		["assassination"] = {
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
		["holy"] = {
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
	},
	["death-knight"] = {
		["frost"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
		["blood"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
		["unholy"] = {
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
		["enhancement"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
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
	},
	["mage"] = {
		["arcane"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
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
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
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
		["feral"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
		["balance"] = {
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
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
	},
	["demon-hunter"] = {
		["vengeance"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
		["havoc"] = {
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
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
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
	},
}
addonTable.DB = talentData