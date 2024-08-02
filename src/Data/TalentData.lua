local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["paladin"] = {
		["protection"] = {
			["Raiding"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMzixyDYmZmhNzMjZeQYYGAAgBAAAAAAg0wMzsYgZGmZWMMzMbAwYAAMgBYAAAAAAYA",
				popularity = "11.3%",
				dps = "237.5k",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
		["retribution"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAMttssNzstsNGbjZ22mZDAAAAAAjpMzMbGYGMmlxwMDzysMDDDGMGLLsNAAAAAAAAA",
				popularity = "38.6%",
				dps = "612.0k",
			},
		},
		["holy"] = {
			["Raiding"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAGDAAwAsMzMzYbMzssZMLMsMjxsttZargZWmBzMDjZBMzYAADAsBMMzMeADAAAAAAA",
				popularity = "10.7%",
				dps = "67.9k",
				hps = "454.1k",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
	},
	["warrior"] = {
		["arms"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAgtZMjxMzMzmlllZGAAAAMYaYGsYMDMjxMzgZGGGDzwAAAAAAAgZMbzMDABAAAAAADA",
				popularity = "27.6%",
				dps = "662.0k",
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzwMzgZbmlZmZ22YMMNDMzMAMmZGwMzADzwAAAAAAAmZAAziNADAAAAAsZA",
				popularity = "34.8%",
				dps = "266.1k",
			},
		},
		["fury"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYWGmZ2ghZMGmhZmttZGzMzGzMmZGmhNbzwMjBAAACDAAAAAsBA",
				popularity = "18.3%",
				dps = "606.8k",
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADAAAAAAAzYYMzMDzMMDzwsMzYmZmZyMMmZMzMmZMDjxMzwYGGzgN",
				popularity = "55.3%",
				dps = "720.7k",
			},
		},
		["survival"] = {
			["Raiding"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMAAAAAAmZmtZMzMMzYmhZGmZGzMGAAAAAAAAAAAAAA0MMjZmZmxMYYMMzwYYGzMmF",
				popularity = "49.1%",
				dps = "452.8k",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
		["marksmanship"] = {
			["Raiding"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxMzMYmZGmZmxMzMjxMjZAAAAAAAAmhxMzMzMmRzMGDzMwMmxMjB",
				popularity = "33.2%",
				dps = "507.7k",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhZmxyMAAAAAAMbwyMAAAAAA022MzwDMzYMzMLz2YMGMzMzMzYmNLjZAAAAAAAA",
				popularity = "55.9%",
				dps = "556.5k",
			},
		},
		["outlaw"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwMzYGDmZGmhBzYmZMzMtMjZZGAAAAAAstMmhHYmZswMLz2AAAAYmZGAAAAAAwMA",
				popularity = "48.3%",
				dps = "438.8k",
			},
		},
		["subtlety"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAzyYmlJDLbYGjhZmZmZmZGz2YMzstNzMmZmBjZWmtBAAAgZwAAAAAAAG",
				popularity = "54.5%",
				dps = "508.2k",
			},
		},
	},
	["priest"] = {
		["discipline"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtxYw2YMzMmhZZmZmZYGAAAAAAAAAAAsYZ2eAz2MDMLMMYMMLmtZaMxyYAAAAAAA",
				popularity = "9.1%",
				dps = "92.8k",
				hps = "365.4k",
			},
		},
		["shadow"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAgBmZAAAAAAAAAAAAAGmFPAzMz2sNmZmZMmxgZhZmZGzGDMGDziZbqZGsgZAAAAAAA",
				popularity = "22.1%",
				dps = "483.4k",
			},
		},
		["holy"] = {
			["Raiding"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAbDYbmZmZGzwsNGzMYZGWGAAAAwilZbYbmZwswwMzMGssAzYqZBAAAAAAA",
				popularity = "57.3%",
				dps = "46.8k",
				hps = "460.1k",
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
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAA8AAMzYmZMGDzYmZmZmxwMZGDDwMzYmhZmZmZmZZmBAAAAAAAAAAAAAAAAAAzMzYGA",
				popularity = "42.5%",
				dps = "622.5k",
			},
		},
		["unholy"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZ8ADDzYmZmphZmZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGAAAAAADgZA",
				popularity = "51.5%",
				dps = "543.7k",
			},
		},
		["blood"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzMjZmxYsMjZmZaGGmZMjZAAAAAYmZmZmZmZ2MzMGAAAMzMzMAAAAAAAAAAAYwC",
				popularity = "19.0%",
				dps = "299.5k",
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			["Raiding"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMLz2yYwYmZZbmZmZmxYAAAAAAAAAAAAAw0MzwstYmZiZMzsglZMDGDzyMzMGYGjB",
				popularity = "32.0%",
				dps = "607.7k",
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
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzyMDYmZYmZmNsMDAAAAAAAAAAAAAAAAAAwsMZGMLLmZmZMMzshlZmJwYZMzAAMD",
				popularity = "85.0%",
				dps = "466.9k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmZGLzGbGWAAAAAAgZMLjx2MzMTmtFmZaMDzshFzMDGDzyYAAM",
				popularity = "21.9%",
				dps = "44.7k",
				hps = "420.5k",
			},
		},
	},
	["mage"] = {
		["arcane"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMbmtZBzwYW8A8AmZYMNzsMDAAAAAADAAAAAAAAAAAAbAsMjhZGzMMmZGjZmxMzMzwYA",
				popularity = "32.9%",
				dps = "477.7k",
			},
		},
		["fire"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgBAAAAAYMzMzMmxMzYxYmh5BwMLzgZhBAAAAAAA",
				popularity = "45.4%",
				dps = "451.0k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwMziBzYmGjxYmxwMzMMzMzMzYmZmZGzMYGAAAAAAAAAAAAzCAAAAAAAAA",
				popularity = "66.0%",
				dps = "510.3k",
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MMmNzMDz2AAAAzMjZWMzMWMzMLMzMDAYGAAAAAgZAAAAAAAAAzMbA",
				popularity = "49.0%",
				dps = "446.6k",
			},
		},
		["demonology"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAAAAAAYmZGz2YmFzMzMjxMGmxMzgxMAAA",
				popularity = "28.0%",
				dps = "432.5k",
			},
		},
		["destruction"] = {
			["Raiding"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzihxsZmZY2mFzYGzsY2MWMzAAAAAjZmZZmZmBAAAAAgBAAAAAAwMGzAA",
				popularity = "12.1%",
				dps = "463.1k",
			},
			["MythicPlus"] = {
				talentString = "Link not found",
			},
		},
	},
	["monk"] = {
		["brewmaster"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAMGjZYGLzYbmZmBAAAAAAALLgwMwMMzCjx2MzMMLDzYbWmptNL2mZGzsBAAAAAAAAMD2A",
				popularity = "21.4%",
				dps = "296.2k",
			},
		},
		["windwalker"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYmZZmBDDzyMMMDAAAAAAAAAAAYbZGjghxMMsNmx2MmhZbYmhlZCAgtZmxMzYmtZAAAAAAAA",
				popularity = "48.2%",
				dps = "509.5k",
			},
		},
		["mistweaver"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMsYbsMAmZmx2DwitZbmZxysstMzssAamZmZhZYmFDzsYmZY2YMYhAAAAAAAAAAAA2A",
				popularity = "26.4%",
				dps = "32.1k",
				hps = "439.5k",
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWogZmhhZGwMDzMzsAbjxYmZbGbGzMmHw2MbzMmxYDsAgBAAAAAAAgZmxA",
				popularity = "39.3%",
				dps = "462.1k",
			},
		},
		["feral"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMz2YMLmZMzsMbM2mZmxMzAAAAAAsEwMgxANzYGmZmxMmtZGAAAAAAADAAAAAAAAAmZA",
				popularity = "50.4%",
				dps = "536.1k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbDzMDzCmxYbzYbMzAAAAAAAAAAAAYZAmhxMamBMjZmZMMTbzAAAAAAAAwYAAAAAAAAMzwA",
				popularity = "28.8%",
				dps = "42.0k",
				hps = "524.8k",
			},
		},
		["guardian"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxYmZmlZsMzYwYxDMMzsYZAMgZmZimZmZmZGDDbMAAAAAAghZAAAAAAAAAMzMA",
				popularity = "16.0%",
				dps = "271.6k",
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZMmZGMzMjxMhZGAAAAAAwsNMmZMzMbzMz2sNGDMDjlNAAAwYmZMA",
				popularity = "58.9%",
				dps = "494.5k",
			},
		},
		["vengeance"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMLzMMjtZMjZMDzMjZGbjZYGMAAAAAAAAwMzMA",
				popularity = "15.2%",
				dps = "275.7k",
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmBzsZGMgBGzMNjZmMbjlZmZmhxMbzAmxMbjZmtxMwADAAAAAAA",
				popularity = "26.1%",
				dps = "507.7k",
			},
		},
		["preservation"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZ2mtZwMzMjZBzsxMAAAzMmxgxYmRYGAAAgZmZyMmZMLzMDAGAAAAAAA",
				popularity = "9.3%",
				dps = "58.7k",
				hps = "415.0k",
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMGbzMzMWGMzsMzwMmZDAAAAAMAAYmBAGzUzYmZAAAAwMmZbMzsNmZgx2MAAAAAAwM",
				popularity = "26.8%",
				dps = "538.5k",
			},
		},
	},
}
addonTable.DB = talentData