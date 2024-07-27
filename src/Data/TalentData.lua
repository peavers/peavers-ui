local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["warrior"] = {
		["arms"] = {
			["Raiding"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAgtZMjxMzMzmlllZGAAAAMYaYGsYMDMjxMzgZGGGDzwAAAAAAAgZMbzMDABAAAAAAGA",
				popularity = "38.4%",
				dps = "648.8k",
			},
			["MythicPlus"] = {
				talentString = "BcEAAAAAAAAAAAAAAAAAAAAAAAwy2MmxYGmZGbLLjZAAAAgBTDzswMwixAMGzMDbmxwA8A8AjZAAAAAAAAYGbzYMghxWMA",
				popularity = "43.4%",
				dps = "535.9k",
				keystone = "+20"
			},
		},
		["fury"] = {
			["MythicPlus"] = {
				talentString = "BgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAQDMYZGgxghxYmZsAGGDjBjZmZ2mZMzMDzMMzwMmlBYmxMGAAAMgBD",
				popularity = "80.5%",
				dps = "493.4k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYWGmZ2ghZMGmhZmttZGzMzGzMmZGmhNbzwMjBAAACDAAAAAYDA",
				popularity = "19.4%",
				dps = "623.4k",
			},
		},
		["protection"] = {
			["Raiding"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzwMzgZbmlZmZ22YMMNDMzMAMmZGwMzADzwAAAAAAAmZAAziNADAAAAAYzA",
				popularity = "35.4%",
				dps = "247.6k",
			},
			["MythicPlus"] = {
				talentString = "BkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAMzMDzMjZmtZWmZmZDGDTDMjZsMzMAMMzgNMzMYAGzAAAAAAAAzMAALbbAgB",
				popularity = "20.8%",
				dps = "259.7k",
				keystone = "+19"
			},
		},
	},
	["paladin"] = {
		["holy"] = {
			["Raiding"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAGDAAwAsMzMzYbMzssZMLMsMjxsttZargZWmBzMDjZBMzYAADAsBMMzMeADAAAAAAA",
				popularity = "14.6%",
				dps = "70.1k",
				hps = "459.4k",
			},
			["MythicPlus"] = {
				talentString = "BEEAAAAAAAAAAAAAAAAAAAAAAAADAAGAwYAAAGgtxsgZZZMzstZMbzMsMzMsstZShZmFDmZGGzCYMGAwMAYBYYGDG",
				popularity = "5.5%",
				dps = "92.0k",
				hps = "113.2k",
				keystone = "+15"
			},
		},
		["protection"] = {
			["Raiding"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMzixyDYmZmhNzMjZeQYYGAAgBAAAAAAg0wMzsYgZGmZWMMzMbAwYAAMgBYAAAAAAYA",
				popularity = "16.0%",
				dps = "223.5k",
			},
			["MythicPlus"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjZYWM2eAGzMW2MzMmxYGzAAAMAAAAAAA0WzYmZWMwMYmZxAmNAYMAAGwAMAAAAAAMD",
				popularity = "21.5%",
				dps = "227.1k",
				keystone = "+19"
			},
		},
		["retribution"] = {
			["Raiding"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAMttssNzstsNGbjZ22mZDAAAAAAjpMzMbGYGMmlxwMDzysMDDDGMGLLsNAAAAAAAAA",
				popularity = "39.3%",
				dps = "593.8k",
			},
			["MythicPlus"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAjJLLbzMbLbmxiZmlFzyAAAAAAwsNlZmhBmZYMLjhxwYWmx2wYMgxyCbAAAAAAAAA",
				popularity = "46.9%",
				dps = "514.8k",
				keystone = "+20"
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["MythicPlus"] = {
				talentString = "B0PAAAAAAAAAAAAAAAAAAAAAA4BAbzMAswAAAAAAAAAAAwGjZxMsNPwYGmxwMT2gxYbegZMzMjhtxMzMA",
				popularity = "72.6%",
				dps = "498.5k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADAAAAAAAzYYMzMDzMMDzwsMzYmZmZyMMmZMzMmZMDjxMzwYGGzgN",
				popularity = "47.8%",
				dps = "741.3k",
			},
		},
		["marksmanship"] = {
			["MythicPlus"] = {
				talentString = "B4PAAAAAAAAAAAAAAAAAAAAAA4BGYbAYsIDGAAAAgxMz8AmZGwYYmZ2mxstZMGLmFbGmxMMDzwGAAAAA",
				popularity = "47.7%",
				dps = "528.7k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxMzMYmZGmZmxMzMjxMjZAAAAAAAAmhxMzMzMmRzMGDzMwMmxMjB",
				popularity = "49.2%",
				dps = "472.8k",
			},
		},
		["survival"] = {
			["MythicPlus"] = {
				talentString = "B8PAAAAAAAAAAAAAAAAAAAAAA4BGYbYmhhlBjMzMzMbzYAGzMLjhBAAAAAGjZZzsYDmxMMDzwCAAAAA",
				popularity = "13.3%",
				dps = "310.2k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMAAAAAAmZmtZMzMMzYmhZGmZGzMGAAAAAAAAAAAAAA0MMjZmZmxMYYMMzwYYGzMmF",
				popularity = "48.3%",
				dps = "456.4k",
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			["Raiding"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhZmxyMAAAAAAMbwyMAAAAAA022MzwDMzYMzMLz2YMGMzMzMzYmNLjZAAAAAAAA",
				popularity = "52.8%",
				dps = "554.6k",
			},
			["MythicPlus"] = {
				talentString = "BMQAAAAAAAAAAAAAAAAAAAAAAMmZmZmxMAAAAAAAzyMjZbmBAAAAAAttMzMYGYmZWmtZGDmZMzgZmx2yYGA",
				popularity = "43.6%",
				dps = "451.5k",
				keystone = "+16"
			},
		},
		["outlaw"] = {
			["Raiding"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwMzYGDmZGmhBzYmZMzMtMjZZGAAAAAAstMmhHYmZswMLz2AAAAYmZGAAAAAAwMA",
				popularity = "57.1%",
				dps = "440.4k",
			},
			["MythicPlus"] = {
				talentString = "BQQAAAAAAAAAAAAAAAAAAAAAAAAMWmBjZGmZmZYGmxMzMsNzMTLzMmtZGAAAAAAYbZMDPwMzYBWmtBAAAwMzAA",
				popularity = "49.2%",
				dps = "549.7k",
				keystone = "+19"
			},
		},
		["subtlety"] = {
			["MythicPlus"] = {
				talentString = "BUQAAAAAAAAAAAAAAAAAAAAAAAAADAAAAAAzyMzMLzEMLLGzMjZmxDMzMzYGz2YMmttZmxMzMAWmlBAAAgZwA",
				popularity = "9.5%",
				dps = "297.9k",
				keystone = "+12"
			},
			["Raiding"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAzyYmlJDLbYGjhZmZmZmZGz2YMzstNzMmZmBjZWmtBAAAgZwAAAAAAAG",
				popularity = "55.6%",
				dps = "496.2k",
			},
		},
	},
	["priest"] = {
		["holy"] = {
			["Raiding"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAbDYbmZmZGzwsNGzMYZGWGAAAAwilZbYbmZwswwMzMGssAzYqZBAAAAAAA",
				popularity = "59.1%",
				dps = "46.3k",
				hps = "462.6k",
			},
			["MythicPlus"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAwDsZMLzgZGjBmxMMWmZmlBAAAAsYZ2eAWmZGYxMLGmxwswGzMqZBAAAAAAA",
				popularity = "26.7%",
				dps = "159.8k",
				hps = "136.7k",
				keystone = "+16"
			},
		},
		["shadow"] = {
			["MythicPlus"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMYYAAAAAAAAAAAAAGzsYGzMzmNmZmZWGsMsMLMzMDzmZYMGDziZbqZgFMDAAAAAA",
				popularity = "75.4%",
				dps = "712.4k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAgBmZAAAAAAAAAAAAAGmFPAzMz2sNmZmZMmxgZhZmZGzGDMGDziZbqZGsgZAAAAAAA",
				popularity = "24.3%",
				dps = "468.9k",
			},
		},
		["discipline"] = {
			["MythicPlus"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlxMD2GjZmxMbmtZmZmhBAAAAAAAAAAAWsMbYbmZwsYGGzMGmF2mpZELDAAAAAAA",
				popularity = "26.8%",
				dps = "133.4k",
				hps = "152.9k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtxYw2YMzMmhZZmZmZYGAAAAAAAAAAAsYZ2Y2mZgZhhxYMMLmtZaMxyYAAAAAAA",
				popularity = "8.7%",
				dps = "95.6k",
				hps = "341.7k",
			},
		},
	},
	["death-knight"] = {
		["frost"] = {
			["MythicPlus"] = {
				talentString = "BsPAAAAAAAAAAAAAAAAAAAAAAYMAGDzMj5BGzYMGzYmZYw0YGzMzYG4BYmZMmZmZmZWmZAAAAAAAAAAAAA",
				popularity = "78.8%",
				dps = "457.7k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAA8AAMzYmZMGDzYmZmZmxwMZGDDwMzYmhZmZmZmZZmBAAAAAAAAAAAAAAAAAAzMzYGA",
				popularity = "43.8%",
				dps = "613.5k",
			},
		},
		["blood"] = {
			["MythicPlus"] = {
				talentString = "BoPAAAAAAAAAAAAAAAAAAAAAAAGmZGDzMjxsNjxgZMNDDmZmZMDAAAAAMjZm5BGjZ2MMmBAAMMzMzAAAAA",
				popularity = "22.1%",
				dps = "291.7k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzMjZmxYsMjZmZaGGmZMjZAAAAAYmZmZmZmZ2MzMGAAAMzMzMAAAAAAAAAAAYwC",
				popularity = "27.4%",
				dps = "310.1k",
			},
		},
		["unholy"] = {
			["MythicPlus"] = {
				talentString = "BwPAAAAAAAAAAAAAAAAAAAAAAAAGDzMj5BGjZMGzYmGGMzYGzAAAAAAAAAgFmZMMmZmNAAmxsYMzMzYmZA",
				popularity = "74.7%",
				dps = "489.2k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZ8ADDzYmZmphZmZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGAAAAAADgZA",
				popularity = "41.6%",
				dps = "556.4k",
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			["MythicPlus"] = {
				talentString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAgZb2WMzsMzAGMbsMWmtZGPw8AAAAAAAWGUzsMzYbWAjHYZmZ2sMwygxYgB",
				popularity = "65.3%",
				dps = "507.0k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMLz2yYwYmZZbmZmZmxYAAAAAAAAAAAAAw0MzwstYmZiZMzsglZMDGDzyMzMGYGjB",
				popularity = "44.4%",
				dps = "613.2k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "BgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYGmZmZmZZmlZWMzsZwGMjBTZZM2GDMmlZeAwYsMzMjZGA",
				popularity = "9.1%",
				dps = "118.4k",
				hps = "131.3k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmZGLzGbGWAAAAAAgZMLjx2MzMTmtFmZaMDzshFzMDGDzyYAAM",
				popularity = "23.5%",
				dps = "46.5k",
				hps = "474.1k",
			},
		},
		["enhancement"] = {
			["MythicPlus"] = {
				talentString = "BcQAAAAAAAAAAAAAAAAAAAAAAYGzMLjZwwMDzMzshlZMAAAAAAAAAAAAALjpGDzwsYgZ2MzsMgllBjBYG",
				popularity = "77.4%",
				dps = "450.0k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzyMDYmZYmZmNsMDAAAAAAAAAAAAAAAAAAwsMZGMLLmZmZMMzshlZmJwYZMzAAMD",
				popularity = "82.7%",
				dps = "462.1k",
			},
		},
	},
	["mage"] = {
		["arcane"] = {
			["Raiding"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMbmtZBzwYW8A8AmZYMNzsMDAAAAAADAAAAAAAAAAAAbAsMjhZGzMMmZGjZmxMzMzwYA",
				popularity = "29.2%",
				dps = "457.0k",
			},
			["MythicPlus"] = {
				talentString = "B4DAAAAAAAAAAAAAAAAAAAAAAYmBzyshZGzMLGw8AzYMNzwMGYmZGmZbmBAAAAAAAAAAAMmZmZGmZmZMMDA",
				popularity = "61.3%",
				dps = "457.1k",
				keystone = "+16"
			},
		},
		["fire"] = {
			["Raiding"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgBAAAAAYMzMzMmxMzYxYmh5BwMLzgZhBAAAAAAA",
				popularity = "49.2%",
				dps = "455.1k",
			},
			["MythicPlus"] = {
				talentString = "B8DAAAAAAAAAAAAAAAAAAAAAAYmBziNMDzMLeAMmZYaMzwMDAAAAAAAAgxYMzMDLzYZmZYmZmZmNAAAwsNA",
				popularity = "70.8%",
				dps = "612.4k",
				keystone = "+20"
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "BAEAAAAAAAAAAAAAAAAAAAAAAwMYWshZGzMLeAMmZ0YMmlZmBAAYGmxMMzMzMzYmZmZGzMAAAAAAAAAwYA",
				popularity = "70.0%",
				dps = "563.4k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwMziBzYmGjxYmxwMzMMzMzMzYmZmZGzMYGAAAAAAAAAAAAzCAAAAAAAAA",
				popularity = "67.5%",
				dps = "505.0k",
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["MythicPlus"] = {
				talentString = "BkQAAAAAAAAAAAAAAAAAAAAAAAPwMzMjZmRjZzCjZxMzwsMAAAAwCAAAAAAADjNmZGzYmZGbzMzAAmB",
				popularity = "60.6%",
				dps = "450.8k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MMmNzMDz2AAAAzMjZWMzMWMzMLMzMDAYGAAAAAAzAAAAAAAAAmZ2A",
				popularity = "43.1%",
				dps = "455.1k",
			},
		},
		["demonology"] = {
			["Raiding"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAAAAAAwMzMmtxMLmZmZGjZMMjZmBjZAAA",
				popularity = "28.6%",
				dps = "427.6k",
			},
			["MythicPlus"] = {
				talentString = "BoQAAAAAAAAAAAAAAAAAAAAAAAYmZMzMiZzCzMbPwMzwsMAAAAAADMmZmtxYMzMmZZ2mZMDDAAAAAAmZG",
				popularity = "45.9%",
				dps = "502.5k",
				keystone = "+16"
			},
		},
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "BsQAAAAAAAAAAAAAAAAAAAAAAAYmZMzMaMbWYMbmZGzsMMzMsMmxYZw2yiZGAAAAAAAAAAAADYZmZmB",
				popularity = "53.9%",
				dps = "655.4k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzihxsZmZY2mFzYGzsY2MWMzAAAAAjZmZZmZmBAAAAAgBAAAAAAwMGzAA",
				popularity = "14.5%",
				dps = "462.7k",
			},
		},
	},
	["monk"] = {
		["brewmaster"] = {
			["MythicPlus"] = {
				talentString = "BwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmBAAAAmlx22MzMwMzssxAAAAMLDLzMNjZYbhZmlZmZZGAbmxsNbLzYA",
				popularity = "33.8%",
				dps = "301.6k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAMGjZYGLzYbmZmBAAAAAAALLgwMwMMzCjx2MzMMLDzYbWmptNb2mZGzsBAAAAAAAAMD2A",
				popularity = "23.8%",
				dps = "263.7k",
			},
		},
		["mistweaver"] = {
			["Raiding"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMsYbsMAmZmx2DwitZbmZxysstMzssAamZmZhZYmFDzsYmZY2YMYhAAAAAAAAAAAA2A",
				popularity = "23.4%",
				dps = "29.8k",
				hps = "481.2k",
			},
			["MythicPlus"] = {
				talentString = "B4QAAAAAAAAAAAAAAAAAAAAAAsNzyiZm5BMWW2GDzyYMzGMLziBAAAAAAAAAAAAY2mxyMzUzMjtFgZmZDGGAAjZD",
				popularity = "23.3%",
				dps = "118.4k",
				hps = "169.6k",
				keystone = "+19"
			},
		},
		["windwalker"] = {
			["MythicPlus"] = {
				talentString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjZGzMzYZMmxAAAAAGzMzCzYgZmZMMzyMzkZmxyCzMmZmNAAAAbA",
				popularity = "50.3%",
				dps = "494.2k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYmZZmBDDzyMMMDAAAAAAAAAAAYbZGjghxMMsNmx2MmhZbYmhlZCAgtZmxMzYmtZAAAAAAAA",
				popularity = "45.1%",
				dps = "518.9k",
			},
		},
	},
	["druid"] = {
		["feral"] = {
			["MythicPlus"] = {
				talentString = "BcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxMbzmZwMzMzsMbPA2mZMjZGAAAAAALBDzMzAzANzMzMYGWGsNjHAAAAAAAzAAA",
				popularity = "21.6%",
				dps = "383.9k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMz2YMLmZMzsMbM2mZmxMzAAAAAAsEwMgxANzYGmZmxMmtZGAAAAAAADAAAAAAAAAmZA",
				popularity = "48.4%",
				dps = "530.4k",
			},
		},
		["balance"] = {
			["MythicPlus"] = {
				talentString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgFKYmZmxgZGgZGmZmZB2mxDMmZmlZGmZGG2MbjZMzYDgFAYA",
				popularity = "32.3%",
				dps = "481.3k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWogZmhhZGwMDzMzsAbjxYmZbGbGzMmHw2MbzMmxYDsAgBAAAAAAAgZmxA",
				popularity = "46.3%",
				dps = "469.7k",
			},
		},
		["guardian"] = {
			["MythicPlus"] = {
				talentString = "BgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwMmZMmlxYGDmZWMDzMLAgZmZAmJTzMzMjZGzihN8AAAAAAAjBMDDDA",
				popularity = "23.7%",
				dps = "249.1k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxYmZmlZsMzYwYxDMMzsYZAMgZmZimZmZmZGDDbMAAAAAAghZAAAAAAAAAMzMA",
				popularity = "12.8%",
				dps = "263.1k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "BkGAAAAAAAAAAAAAAAAAAAAAAsxMzYDzMzsYWmZMYWYz2YmBAAAAAAAAAAAAMAPwMzgRNDDMzYmZegZBzCeAAAAAAwYAAwMD",
				popularity = "23.7%",
				dps = "128.4k",
				hps = "165.3k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbDzMDzCmxYbzYbMzAAAAAAAAAAAAYZAmhxMamBMjZmZMMTbzAAAAAAAAwYAAAAAAAAMzwA",
				popularity = "34.0%",
				dps = "43.1k",
				hps = "532.5k",
			},
		},
	},
	["demon-hunter"] = {
		["vengeance"] = {
			["MythicPlus"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMMjhZkZmhZYGbzMmZsNzwYGMGz2MzsZmxMjZGAAAAAAAAYmZA",
				popularity = "19.0%",
				dps = "284.0k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMLzMMsNjZmhZYmZMzYbMDzgBAAAAAAAAmZmBA",
				popularity = "15.1%",
				dps = "268.1k",
			},
		},
		["havoc"] = {
			["Raiding"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZMmZGMzMjxMhZGAAAAAAwsNMmZMzMbzMz2sNGDMDjlNAAAwYmZMA",
				popularity = "60.1%",
				dps = "488.7k",
			},
			["MythicPlus"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmxMzgZmZMMZMzAAAAAAAmlhxMjZmZzMz2sNGDMDjlNAAAwYmZMA",
				popularity = "32.0%",
				dps = "502.1k",
				keystone = "+19"
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["MythicPlus"] = {
				talentString = "BsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzAzYmxMDmxmxYmphZmMbjlZmZmhxMLzAmxMLjZGzYgBA",
				popularity = "39.2%",
				dps = "500.5k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmBzsZGMgBGzMNjZmMbjlxMzMMPwMbzAmxMbjZmtxMwADAAAAAAA",
				popularity = "28.9%",
				dps = "476.9k",
			},
		},
		["preservation"] = {
			["MythicPlus"] = {
				talentString = "BwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZMLDMmZGziZmxAGAAMzYmZGGjZGxYAAAAmZmJzsNzYMMAA",
				popularity = "15.7%",
				dps = "122.7k",
				hps = "162.7k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAMzMjx8AzMjZwsgZ2MzwAAgZGzYwYMzImZAAAAmZmJzYmxsMzAADAAAAAMAA",
				popularity = "9.2%",
				dps = "32.7k",
				hps = "368.7k",
			},
		},
		["augmentation"] = {
			["Raiding"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMGbzMzMWGMzsMzwMmZDAAAAAMAAYmBAGzUzYmZAAAAwMmZbMzsNmZgx2MAAAAAAwM",
				popularity = "31.2%",
				dps = "531.4k",
			},
			["MythicPlus"] = {
				talentString = "BEcBAAAAAAAAAAAAAAAAAAAAAwMLzsNmZGLDzMzyMYmZmNAAAAAAAAMzgZsZMmpGmHYGAAAAYmZ2GzMGzMwYzA",
				popularity = "33.3%",
				dps = "431.6k",
				keystone = "+20"
			},
		},
	},
}
addonTable.DB = talentData