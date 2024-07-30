local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["warrior"] = {
		["fury"] = {
			["MythicPlus"] = {
				talentString = "BgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAQDMYZGgxghxYmZsAGGDjBjZmZ2mZMzMDzMMzwMmlBYmxMGAAAMgBD",
				popularity = "80.5%",
				dps = "493.2k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYWGmZ2ghZMGmhZmttZGzMzGzMmZGmhNbzwMjBAAACDAAAAAYDA",
				popularity = "20.9%",
				dps = "624.8k",
			},
		},
		["arms"] = {
			["MythicPlus"] = {
				talentString = "BcEAAAAAAAAAAAAAAAAAAAAAAAwy2MmxYGmZGbLLjZAAAAgBTDzswMwixAMGzMDbmxwA8A8AjZAAAAAAAAYGbzYMghxWMA",
				popularity = "43.3%",
				dps = "535.7k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAgtZMjxMzMzmlllZGAAAAMYaYGsYMDMjxMzgZGGGDzwAAAAAAAgZMbzMDABAAAAAAGA",
				popularity = "34.4%",
				dps = "644.8k",
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "BkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAMzMDzMjZmtZWmZmZDGDTDMjZsMzMAMMzgNMzMYAGzAAAAAAAAzMAALbbAgB",
				popularity = "20.8%",
				dps = "259.7k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzwMzgZbmlZmZ22YMMNDMzMAMmZGwMzADzwAAAAAAAmZAAziNADAAAAAYzA",
				popularity = "34.7%",
				dps = "247.5k",
			},
		},
	},
	["paladin"] = {
		["holy"] = {
			["MythicPlus"] = {
				talentString = "BEEAAAAAAAAAAAAAAAAAAAAAAAADAAGAwYAAAGgtxsgZZZMzstZMbzMsMzMsstZShZmFDmZGGzCYMGAwMAYBYYGDG",
				popularity = "5.4%",
				dps = "92.0k",
				hps = "113.2k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAGDAAwAsMzMzYbMzssZMLMsMjxsttZargZWmBzMDjZBMzYAADAsBMMzMeADAAAAAAA",
				popularity = "13.0%",
				dps = "69.2k",
				hps = "457.1k",
			},
		},
		["protection"] = {
			["Raiding"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMzixyDYmZmhNzMjZeQYYGAAgBAAAAAAg0wMzsYgZGmZWMMzMbAwYAAMgBYAAAAAAYA",
				popularity = "13.2%",
				dps = "223.5k",
			},
			["MythicPlus"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjZYWM2eAGzMW2MzMmxYGzAAAMAAAAAAA0WzYmZWMwMYmZxAmNAYMAAGwAMAAAAAAMD",
				popularity = "21.4%",
				dps = "227.1k",
				keystone = "+19"
			},
		},
		["retribution"] = {
			["MythicPlus"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAjJLLbzMbLbmxiZmlFzyAAAAAAwsNlZmhBmZYMLjhxwYWmx2wYMgxyCbAAAAAAAAA",
				popularity = "47.2%",
				dps = "513.8k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAMttssNzstsNGbjZ22mZDAAAAAAjpMzMbGYGMmlxwMDzysMDDDGMGLLsNAAAAAAAAA",
				popularity = "36.4%",
				dps = "617.8k",
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["MythicPlus"] = {
				talentString = "B0PAAAAAAAAAAAAAAAAAAAAAA4BAbzMAswAAAAAAAAAAAwGjZxMsNPwYGmxwMT2gxYbegZMzMjhtxMzMA",
				popularity = "72.5%",
				dps = "499.1k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADAAAAAAAzYYMzMDzMMDzwsMzYmZmZyMMmZMzMmZMDjxMzwYGGzgN",
				popularity = "48.5%",
				dps = "732.7k",
			},
		},
		["marksmanship"] = {
			["MythicPlus"] = {
				talentString = "B4PAAAAAAAAAAAAAAAAAAAAAA4BGYbAYsIDGAAAAgxMz8AmZGwYYmZ2mxstZMGLmFbGmxMMDzwGAAAAA",
				popularity = "47.8%",
				dps = "528.6k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxMzMYmZGmZmxMzMjxMjZAAAAAAAAmhxMzMzMmRzMGDzMwMmxMjB",
				popularity = "41.0%",
				dps = "492.9k",
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
				popularity = "46.1%",
				dps = "456.2k",
			},
		},
	},
	["rogue"] = {
		["outlaw"] = {
			["MythicPlus"] = {
				talentString = "BQQAAAAAAAAAAAAAAAAAAAAAAAAMWmBjZGmZmZYGmxMzMsNzMTLzMmtZGAAAAAAYbZMDPwMzYBWmtBAAAwMzAA",
				popularity = "48.7%",
				dps = "549.7k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwMzYGDmZGmhBzYmZMzMtMjZZGAAAAAAstMmhHYmZswMLz2AAAAYmZGAAAAAAwMA",
				popularity = "56.4%",
				dps = "438.9k",
			},
		},
		["assassination"] = {
			["Raiding"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhZmxyMAAAAAAMbwyMAAAAAA022MzwDMzYMzMLz2YMGMzMzMzYmNLjZAAAAAAAA",
				popularity = "52.9%",
				dps = "555.1k",
			},
			["MythicPlus"] = {
				talentString = "BMQAAAAAAAAAAAAAAAAAAAAAAMmZmZmxMAAAAAAAzyMjZbmBAAAAAAttMzMYGYmZWmtZGDmZMzgZmx2yYGA",
				popularity = "43.0%",
				dps = "451.5k",
				keystone = "+16"
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
				popularity = "52.1%",
				dps = "502.4k",
			},
		},
	},
	["priest"] = {
		["discipline"] = {
			["MythicPlus"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlxMD2GjZmxMbmtZmZmhBAAAAAAAAAAAWsMbYbmZwsYGGzMGmF2mpZELDAAAAAAA",
				popularity = "26.6%",
				dps = "133.4k",
				hps = "152.9k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtxYw2YMzMmhZZmZmZYGAAAAAAAAAAAsYZ2Y2mZgZhhxYMMLmtZaMxyYAAAAAAA",
				popularity = "9.2%",
				dps = "95.8k",
				hps = "358.9k",
			},
		},
		["shadow"] = {
			["Raiding"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAgBmZAAAAAAAAAAAAAGmFPAzMz2sNmZmZMmxgZhZmZGzGDMGDziZbqZGsgZAAAAAAA",
				popularity = "23.8%",
				dps = "470.5k",
			},
			["MythicPlus"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMYYAAAAAAAAAAAAAGzsYGzMzmNmZmZWGsMsMLMzMDzmZYMGDziZbqZgFMDAAAAAA",
				popularity = "75.1%",
				dps = "712.2k",
				keystone = "+21"
			},
		},
		["holy"] = {
			["Raiding"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAbDYbmZmZGzwsNGzMYZGWGAAAAwilZbYbmZwswwMzMGssAzYqZBAAAAAAA",
				popularity = "57.9%",
				dps = "45.6k",
				hps = "461.5k",
			},
			["MythicPlus"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAwDsZMLzgZGjBmxMMWmZmlBAAAAsYZ2eAWmZGYxMLGmxwswGzMqZBAAAAAAA",
				popularity = "26.7%",
				dps = "159.6k",
				hps = "136.1k",
				keystone = "+16"
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["MythicPlus"] = {
				talentString = "BoPAAAAAAAAAAAAAAAAAAAAAAAGmZGDzMjxsNjxgZMNDDmZmZMDAAAAAMjZm5BGjZ2MMmBAAMMzMzAAAAA",
				popularity = "22.1%",
				dps = "291.6k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzMjZmxYsMjZmZaGGmZMjZAAAAAYmZmZmZmZ2MzMGAAAMzMzMAAAAAAAAAAAYwC",
				popularity = "23.5%",
				dps = "311.7k",
			},
		},
		["unholy"] = {
			["MythicPlus"] = {
				talentString = "BwPAAAAAAAAAAAAAAAAAAAAAAAAGDzMj5BGjZMGzYmGGMzYGzAAAAAAAAAgFmZMMmZmNAAmxsYMzMzYmZA",
				popularity = "74.7%",
				dps = "488.9k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZ8ADDzYmZmphZmZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGAAAAAADgZA",
				popularity = "44.2%",
				dps = "543.2k",
			},
		},
		["frost"] = {
			["Raiding"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAA8AAMzYmZMGDzYmZmZmxwMZGDDwMzYmhZmZmZmZZmBAAAAAAAAAAAAAAAAAAzMzYGA",
				popularity = "44.7%",
				dps = "620.3k",
			},
			["MythicPlus"] = {
				talentString = "BsPAAAAAAAAAAAAAAAAAAAAAAYMAGDzMj5BGzYMGzYmZYw0YGzMzYG4BYmZMmZmZmZWmZAAAAAAAAAAAAA",
				popularity = "78.8%",
				dps = "457.7k",
				keystone = "+17"
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			["Raiding"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMLz2yYwYmZZbmZmZmxYAAAAAAAAAAAAAw0MzwstYmZiZMzsglZMDGDzyMzMGYGjB",
				popularity = "41.9%",
				dps = "614.7k",
			},
			["MythicPlus"] = {
				talentString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAgZb2WMzsMzAGMbsMWmtZGPw8AAAAAAAWGUzsMzYbWAjHYZmZ2sMwygxYgB",
				popularity = "65.1%",
				dps = "506.4k",
				keystone = "+19"
			},
		},
		["enhancement"] = {
			["Raiding"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzyMDYmZYmZmNsMDAAAAAAAAAAAAAAAAAAwsMZGMLLmZmZMMzshlZmJwYZMzAAMD",
				popularity = "82.6%",
				dps = "460.8k",
			},
			["MythicPlus"] = {
				talentString = "BcQAAAAAAAAAAAAAAAAAAAAAAYGzMLjZwwMDzMzshlZMAAAAAAAAAAAAALjpGDzwsYgZ2MzsMgllBjBYG",
				popularity = "77.7%",
				dps = "449.6k",
				keystone = "+18"
			},
		},
		["restoration"] = {
			["Raiding"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmZGLzGbGWAAAAAAgZMLjx2MzMTmtFmZaMDzshFzMDGDzyYAAM",
				popularity = "24.5%",
				dps = "42.9k",
				hps = "462.4k",
			},
			["MythicPlus"] = {
				talentString = "BgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYGmZmZmZZmlZWMzsZwGMjBTZZM2GDMmlZeAwYsMzMjZGA",
				popularity = "9.1%",
				dps = "118.4k",
				hps = "131.3k",
				keystone = "+16"
			},
		},
	},
	["mage"] = {
		["arcane"] = {
			["Raiding"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMbmtZBzwYW8A8AmZYMNzsMDAAAAAADAAAAAAAAAAAAbAsMjhZGzMMmZGjZmxMzMzwYA",
				popularity = "31.4%",
				dps = "476.2k",
			},
			["MythicPlus"] = {
				talentString = "B4DAAAAAAAAAAAAAAAAAAAAAAYmBzyshZGzMLGw8AzYMNzwMGYmZGmZbmBAAAAAAAAAAAMmZmZGmZmZMMDA",
				popularity = "61.5%",
				dps = "457.1k",
				keystone = "+16"
			},
		},
		["fire"] = {
			["Raiding"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgBAAAAAYMzMzMmxMzYxYmh5BwMLzgZhBAAAAAAA",
				popularity = "46.8%",
				dps = "457.0k",
			},
			["MythicPlus"] = {
				talentString = "B8DAAAAAAAAAAAAAAAAAAAAAAYmBziNMDzMLeAMmZYaMzwMDAAAAAAAAgxYMzMDLzYZmZYmZmZmNAAAwsNA",
				popularity = "70.7%",
				dps = "612.3k",
				keystone = "+20"
			},
		},
		["frost"] = {
			["Raiding"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwMziBzYmGjxYmxwMzMMzMzMzYmZmZGzMYGAAAAAAAAAAAAzCAAAAAAAAA",
				popularity = "67.3%",
				dps = "517.4k",
			},
			["MythicPlus"] = {
				talentString = "BAEAAAAAAAAAAAAAAAAAAAAAAwMYWshZGzMLeAMmZ0YMmlZmBAAYGmxMMzMzMzYmZmZGzMAAAAAAAAAwYA",
				popularity = "70.1%",
				dps = "563.0k",
				keystone = "+21"
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["Raiding"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MMmNzMDz2AAAAzMjZWMzMWMzMLMzMDAYGAAAAAAzAAAAAAAAAmZ2A",
				popularity = "43.9%",
				dps = "452.3k",
			},
			["MythicPlus"] = {
				talentString = "BkQAAAAAAAAAAAAAAAAAAAAAAAPwMzMjZmRjZzCjZxMzwsMAAAAwCAAAAAAADjNmZGzYmZGbzMzAAmB",
				popularity = "59.3%",
				dps = "450.8k",
				keystone = "+16"
			},
		},
		["destruction"] = {
			["Raiding"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzihxsZmZY2mFzYGzsY2MWMzAAAAAjZmZZmZmBAAAAAgBAAAAAAwMGzAA",
				popularity = "14.3%",
				dps = "470.1k",
			},
			["MythicPlus"] = {
				talentString = "BsQAAAAAAAAAAAAAAAAAAAAAAAYmZMzMaMbWYMbmZGzsMMzMsMmxYZw2yiZGAAAAAAAAAAAADYZmZmB",
				popularity = "53.9%",
				dps = "655.1k",
				keystone = "+19"
			},
		},
		["demonology"] = {
			["MythicPlus"] = {
				talentString = "BoQAAAAAAAAAAAAAAAAAAAAAAAYmZMzMiZzCzMbPwMzwsMAAAAAADMmZmtxYMzMmZZ2mZMDDAAAAAAmZG",
				popularity = "46.1%",
				dps = "502.1k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAAAAAAwMzMmtxMLmZmZGjZMMjZmBjZAAA",
				popularity = "28.9%",
				dps = "435.0k",
			},
		},
	},
	["monk"] = {
		["mistweaver"] = {
			["MythicPlus"] = {
				talentString = "B4QAAAAAAAAAAAAAAAAAAAAAAsNzyiZm5BMWW2GDzyYMzGMLziBAAAAAAAAAAAAY2mxyMzUzMjtFgZmZDGGAAjZD",
				popularity = "23.4%",
				dps = "118.2k",
				hps = "169.5k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMsYbsMAmZmx2DwitZbmZxysstMzssAamZmZhZYmFDzsYmZY2YMYhAAAAAAAAAAAA2A",
				popularity = "27.5%",
				dps = "31.5k",
				hps = "471.1k",
			},
		},
		["brewmaster"] = {
			["Raiding"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAMGjZYGLzYbmZmBAAAAAAALLgwMwMMzCjx2MzMMLDzYbWmptNb2mZGzsBAAAAAAAAMD2A",
				popularity = "22.7%",
				dps = "265.0k",
			},
			["MythicPlus"] = {
				talentString = "BwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmBAAAAmlx22MzMwMzssxAAAAMLDLzMNjZYbhZmlZmZZGAbmxsNbLzYA",
				popularity = "32.7%",
				dps = "301.6k",
				keystone = "+17"
			},
		},
		["windwalker"] = {
			["MythicPlus"] = {
				talentString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjZGzMzYZMmxAAAAAGzMzCzYgZmZMMzyMzkZmxyCzMmZmNAAAAbA",
				popularity = "50.4%",
				dps = "493.8k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYmZZmBDDzyMMMDAAAAAAAAAAAYbZGjghxMMsNmx2MmhZbYmhlZCAgtZmxMzYmtZAAAAAAAA",
				popularity = "43.5%",
				dps = "518.3k",
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["Raiding"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWogZmhhZGwMDzMzsAbjxYmZbGbGzMmHw2MbzMmxYDsAgBAAAAAAAgZmxA",
				popularity = "41.8%",
				dps = "467.9k",
			},
			["MythicPlus"] = {
				talentString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgFKYmZmxgZGgZGmZmZB2mxDMmZmlZGmZGG2MbjZMzYDgFAYA",
				popularity = "32.2%",
				dps = "481.3k",
				keystone = "+19"
			},
		},
		["feral"] = {
			["MythicPlus"] = {
				talentString = "BcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxMbzmZwMzMzsMbPA2mZMjZGAAAAAALBDzMzAzANzMzMYGWGsNjHAAAAAAAzAAA",
				popularity = "21.6%",
				dps = "383.9k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMz2YMLmZMzsMbM2mZmxMzAAAAAAsEwMgxANzYGmZmxMmtZGAAAAAAADAAAAAAAAAmZA",
				popularity = "50.2%",
				dps = "540.5k",
			},
		},
		["guardian"] = {
			["MythicPlus"] = {
				talentString = "BgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwMmZMmlxYGDmZWMDzMLAgZmZAmJTzMzMjZGzihN8AAAAAAAjBMDDDA",
				popularity = "23.5%",
				dps = "249.1k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxYmZmlZsMzYwYxDMMzsYZAMgZmZimZmZmZGDDbMAAAAAAghZAAAAAAAAAMzMA",
				popularity = "14.0%",
				dps = "260.9k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "BkGAAAAAAAAAAAAAAAAAAAAAAsxMzYDzMzsYWmZMYWYz2YmBAAAAAAAAAAAAMAPwMzgRNDDMzYmZegZBzCeAAAAAAwYAAwMD",
				popularity = "23.7%",
				dps = "128.3k",
				hps = "165.2k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbDzMDzCmxYbzYbMzAAAAAAAAAAAAYZAmhxMamBMjZmZMMTbzAAAAAAAAwYAAAAAAAAMzwA",
				popularity = "30.7%",
				dps = "43.1k",
				hps = "537.4k",
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			["MythicPlus"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmxMzgZmZMMZMzAAAAAAAmlhxMjZmZzMz2sNGDMDjlNAAAwYmZMA",
				popularity = "31.7%",
				dps = "502.0k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZMmZGMzMjxMhZGAAAAAAwsNMmZMzMbzMz2sNGDMDjlNAAAwYmZMA",
				popularity = "59.8%",
				dps = "492.3k",
			},
		},
		["vengeance"] = {
			["MythicPlus"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMMjhZkZmhZYGbzMmZsNzwYGMGz2MzsZmxMjZGAAAAAAAAYmZA",
				popularity = "18.9%",
				dps = "283.9k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMLzMMjtZMjZMDzMjZGbjZYGMAAAAAAAAwMzMA",
				popularity = "14.8%",
				dps = "279.8k",
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["MythicPlus"] = {
				talentString = "BsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzAzYmxMDmxmxYmphZmMbjlZmZmhxMLzAmxMLjZGzYgBA",
				popularity = "39.5%",
				dps = "498.3k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmBzsZGMgBGzMNjZmMbjlZmZmhxMbzAmxMbjZmtxMwADAAAAAAA",
				popularity = "30.3%",
				dps = "491.5k",
			},
		},
		["augmentation"] = {
			["Raiding"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMGbzMzMWGMzsMzwMmZDAAAAAMAAYmBAGzUzYmZAAAAwMmZbMzsNmZgx2MAAAAAAwM",
				popularity = "28.3%",
				dps = "529.6k",
			},
			["MythicPlus"] = {
				talentString = "BEcBAAAAAAAAAAAAAAAAAAAAAwMLzsNmZGLDzMzyMYmZmNAAAAAAAAMzgZsZMmpGmHYGAAAAYmZ2GzMGzMwYzA",
				popularity = "33.3%",
				dps = "431.4k",
				keystone = "+20"
			},
		},
		["preservation"] = {
			["Raiding"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAMzMjx8AzMjZwsgZ2MzwAAgZGzYwYMzImZAAAAmZmJzYmxsMzAADAAAAAMAA",
				popularity = "9.7%",
				dps = "33.4k",
				hps = "395.6k",
			},
			["MythicPlus"] = {
				talentString = "BwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZMLDMmZGziZmxAGAAMzYmZGGjZGxYAAAAmZmJzsNzYMMAA",
				popularity = "16.7%",
				dps = "131.8k",
				hps = "162.7k",
				keystone = "+19"
			},
		},
	},
}
addonTable.DB = talentData