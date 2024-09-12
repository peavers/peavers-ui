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
		["arms"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
		["fury"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
	},
	["paladin"] = {
		["protection"] = {
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
		["retribution"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
	},
	["hunter"] = {
		["marksmanship"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
		["beast-mastery"] = {
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
		["subtlety"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
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
	},
	["priest"] = {
		["holy"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
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
	},
	["death-knight"] = {
		["blood"] = {
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
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
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
		["elemental"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
	},
	["mage"] = {
		["fire"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
		["arcane"] = {
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
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
		["demonology"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
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
		["brewmaster"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
		["mistweaver"] = {
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
		["guardian"] = {
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
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
		["preservation"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
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