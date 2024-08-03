local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["warrior"] = {
		["fury"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYWGmZ2ghZMGmhZmttZGzMzGzMmZGmhNbzwMjBAAACDAAAAAsBA",
				popularity = "18.4%",
				dps = "618.2k",
			},
		},
		["arms"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAgtZMjxMzMzmlllZGAAAAMYaYGsYMDMjxMzgZGGGDzwAAAAAAAgZMbzMDABAAAAAADA",
				popularity = "27.1%",
				dps = "661.3k",
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzwMzgZbmlZmZ22YMMNDMzMAMmZGwMzADzwAAAAAAAmZAAziNADAAAAAsZA",
				popularity = "34.1%",
				dps = "269.9k",
			},
		},
	},
	["paladin"] = {
		["protection"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMzixyDYmZmhNzMjZeQYYGAAgBAAAAAAg0wMzsYgZGmZWMMzMbAwYAAMgBYAAAAAAYA",
				popularity = "11.1%",
				dps = "237.0k",
			},
		},
		["holy"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAGDAAwAsMzMzYbMzssZMLMsMjxsttZargZWmBzMDjZBMzYAADAsBMMzMeADAAAAAAA",
				popularity = "10.0%",
				dps = "67.8k",
				hps = "451.9k",
			},
		},
		["retribution"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAMttssNzstsNGbjZ22mZDAAAAAAjpMzMbGYGMmlxwMDzysMDDDGMGLLsNAAAAAAAAA",
				popularity = "38.8%",
				dps = "618.5k",
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
				popularity = "55.2%",
				dps = "720.9k",
			},
		},
		["marksmanship"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxMzMYmZGmZmxMzMjxMjZAAAAAAAAmhxMzMzMmRzMGDzMwMmxMjB",
				popularity = "32.4%",
				dps = "511.7k",
			},
		},
		["survival"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMAAAAAAmZmtZMzMMzYmhZGmZGzMGAAAAAAAAAAAAAA0MMjZmZmxMYYMMzwYYGzMmF",
				popularity = "50.7%",
				dps = "482.4k",
			},
		},
	},
	["rogue"] = {
		["subtlety"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAzyYmlJDLbYGjhZmZmZmZGz2YMzstNzMmZmBjZWmtBAAAgZwAAAAAAAG",
				popularity = "53.1%",
				dps = "508.8k",
			},
		},
		["outlaw"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwMzYGDmZGmhBzYmZMzMtMjZZGAAAAAAstMmhHYmZswMLz2AAAAYmZGAAAAAAwMA",
				popularity = "50.1%",
				dps = "436.5k",
			},
		},
		["assassination"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhZmxyMAAAAAAMbwyMAAAAAA022MzwDMzYMzMLz2YMGMzMzMzYmNLjZAAAAAAAA",
				popularity = "55.7%",
				dps = "559.7k",
			},
		},
	},
	["priest"] = {
		["shadow"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAgBmZAAAAAAAAAAAAAGmFPAzMz2sNmZmZMmxgZhZmZGzGDMGDziZbqZGsgZAAAAAAA",
				popularity = "22.3%",
				dps = "484.7k",
			},
		},
		["discipline"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtxYw2YMzMmhZZmZmZYGAAAAAAAAAAAsYZ2eAz2MDMLMMYMMLmtZaMxyYAAAAAAA",
				popularity = "9.2%",
				dps = "92.4k",
				hps = "369.3k",
			},
		},
		["holy"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAbDYbmZmZGzwsNGzMYZGWGAAAAwilZbYbmZwswwMzMGssAzYqZBAAAAAAA",
				popularity = "57.3%",
				dps = "47.3k",
				hps = "459.9k",
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzMjZmxYsMjZmZaGGmZMjZAAAAAYmZmZmZmZ2MzMGAAAMzMzMAAAAAAAAAAAYwC",
				popularity = "18.2%",
				dps = "299.0k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAA8AAMzYmZMGDzYmZmZmxwMZGDDwMzYmhZmZmZmZZmBAAAAAAAAAAAAAAAAAAzMzYGA",
				popularity = "41.6%",
				dps = "624.9k",
			},
		},
		["unholy"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZ8ADDzYmZmphZmZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGAAAAAADgZA",
				popularity = "51.8%",
				dps = "542.4k",
			},
		},
	},
	["shaman"] = {
		["enhancement"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzyMDYmZYmZmNsMDAAAAAAAAAAAAAAAAAAwsMZGMLLmZmZMMzshlZmJwYZMzAAMD",
				popularity = "85.1%",
				dps = "467.7k",
			},
		},
		["elemental"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMLz2yYwYmZZbmZmZmxYAAAAAAAAAAAAAw0MzwstYmZiZMzsglZMDGDzyMzMGYGjB",
				popularity = "31.3%",
				dps = "607.8k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmZGLzGbGWAAAAAAgZMLjx2MzMTmtFmZaMDzshFzMDGDzyYAAM",
				popularity = "22.0%",
				dps = "44.4k",
				hps = "418.6k",
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
				popularity = "34.2%",
				dps = "474.5k",
			},
		},
		["fire"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgBAAAAAYMzMzMmxMzYxYmh5BwMLzgZhBAAAAAAA",
				popularity = "44.9%",
				dps = "449.5k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwMziBzYmGjxYmxwMzMMzMzMzYmZmZGzMYGAAAAAAAAAAAAzCAAAAAAAAA",
				popularity = "66.4%",
				dps = "512.1k",
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
				popularity = "48.4%",
				dps = "446.3k",
			},
		},
		["demonology"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAAAAAAYmZGz2YmFzMzMjxMGmxMzgxMAAA",
				popularity = "27.9%",
				dps = "431.1k",
			},
		},
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzihxsZmZY2mFzYGzsY2MWMzAAAAAjZmZZmZmBAAAAAgBAAAAAAwMGzAA",
				popularity = "11.9%",
				dps = "462.1k",
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
				popularity = "20.5%",
				dps = "294.8k",
			},
		},
		["mistweaver"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMsYbsMAmZmx2DwitZbmZxysstMzssAamZmZhZYmFDzsYmZY2YMYhAAAAAAAAAAAA2A",
				popularity = "26.1%",
				dps = "32.1k",
				hps = "441.2k",
			},
		},
		["windwalker"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYmZZmBDDzyMMMDAAAAAAAAAAAYbZGjghxMMsNmx2MmhZbYmhlZCAgtZmxMzYmtZAAAAAAAA",
				popularity = "49.3%",
				dps = "512.7k",
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
				popularity = "37.7%",
				dps = "460.5k",
			},
		},
		["feral"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMz2YMLmZMzsMbM2mZmxMzAAAAAAsEwMgxANzYGmZmxMmtZGAAAAAAADAAAAAAAAAmZA",
				popularity = "50.6%",
				dps = "536.4k",
			},
		},
		["guardian"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxYmZmlZsMzYwYxDMMzsYZAMgZmZimZmZmZGDDbMAAAAAAghZAAAAAAAAAMzMA",
				popularity = "16.2%",
				dps = "271.3k",
			},
		},
		["restoration"] = {
			["Raiding"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbDzMDzCmxYbzYbMzAAAAAAAAAAAAYZAmhxMamBMjZmZMMTbzAAAAAAAAwYAAAAAAAAMzwA",
				popularity = "28.3%",
				dps = "42.1k",
				hps = "521.8k",
			},
			["MythicPlus"] = {
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
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZMmZGMzMjxMhZGAAAAAAwsNMmZMzMbzMz2sNGDMDjlNAAAwYmZMA",
				popularity = "58.6%",
				dps = "495.1k",
			},
		},
		["vengeance"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMLzMMjtZMjZMDzMjZGbjZYGMAAAAAAAAwMzMA",
				popularity = "15.5%",
				dps = "278.0k",
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
				popularity = "26.4%",
				dps = "503.1k",
			},
		},
		["preservation"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZ2mtZwMzMjZBzsxMAAAzMmxgxYmRYGAAAgZmZyMmZMLzMDAGAAAAAAA",
				popularity = "9.2%",
				dps = "56.8k",
				hps = "432.2k",
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMGbzMzMWGMzsMzwMmZDAAAAAMAAYmBAGzUzYmZAAAAwMmZbMzsNmZgx2MAAAAAAwM",
				popularity = "26.7%",
				dps = "536.1k",
			},
		},
	},
}
addonTable.DB = talentData