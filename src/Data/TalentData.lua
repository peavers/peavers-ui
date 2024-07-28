local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
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
				popularity = "13.9%",
				dps = "69.6k",
				hps = "458.0k",
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjZYWM2eAGzMW2MzMmxYGzAAAMAAAAAAA0WzYmZWMwMYmZxAmNAYMAAGwAMAAAAAAMD",
				popularity = "21.4%",
				dps = "227.1k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMzixyDYmZmhNzMjZeQYYGAAgBAAAAAAg0wMzsYgZGmZWMMzMbAwYAAMgBYAAAAAAYA",
				popularity = "13.6%",
				dps = "223.5k",
			},
		},
		["retribution"] = {
			["Raiding"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAMttssNzstsNGbjZ22mZDAAAAAAjpMzMbGYGMmlxwMDzysMDDDGMGLLsNAAAAAAAAA",
				popularity = "38.1%",
				dps = "608.8k",
			},
			["MythicPlus"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAjJLLbzMbLbmxiZmlFzyAAAAAAwsNlZmhBmZYMLjhxwYWmx2wYMgxyCbAAAAAAAAA",
				popularity = "47.2%",
				dps = "513.9k",
				keystone = "+20"
			},
		},
	},
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
				popularity = "20.6%",
				dps = "623.5k",
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "BkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAMzMDzMjZmtZWmZmZDGDTDMjZsMzMAMMzgNMzMYAGzAAAAAAAAzMAALbbAgB",
				popularity = "20.9%",
				dps = "259.7k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzwMzgZbmlZmZ22YMMNDMzMAMmZGwMzADzwAAAAAAAmZAAziNADAAAAAYzA",
				popularity = "31.8%",
				dps = "247.6k",
			},
		},
		["arms"] = {
			["Raiding"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAgtZMjxMzMzmlllZGAAAAMYaYGsYMDMjxMzgZGGGDzwAAAAAAAgZMbzMDABAAAAAAGA",
				popularity = "36.5%",
				dps = "646.6k",
			},
			["MythicPlus"] = {
				talentString = "BcEAAAAAAAAAAAAAAAAAAAAAAAwy2MmxYGmZGbLLjZAAAAgBTDzswMwixAMGzMDbmxwA8A8AjZAAAAAAAAYGbzYMghxWMA",
				popularity = "43.4%",
				dps = "535.7k",
				keystone = "+20"
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["Raiding"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADAAAAAAAzYYMzMDzMMDzwsMzYmZmZyMMmZMzMmZMDjxMzwYGGzgN",
				popularity = "48.5%",
				dps = "735.5k",
			},
			["MythicPlus"] = {
				talentString = "B0PAAAAAAAAAAAAAAAAAAAAAA4BAbzMAswAAAAAAAAAAAwGjZxMsNPwYGmxwMT2gxYbegZMzMjhtxMzMA",
				popularity = "72.6%",
				dps = "498.5k",
				keystone = "+18"
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
				popularity = "44.1%",
				dps = "492.9k",
			},
		},
		["survival"] = {
			["Raiding"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMAAAAAAmZmtZMzMMzYmhZGmZGzMGAAAAAAAAAAAAAA0MMjZmZmxMYYMMzwYYGzMmF",
				popularity = "48.0%",
				dps = "456.4k",
			},
			["MythicPlus"] = {
				talentString = "B8PAAAAAAAAAAAAAAAAAAAAAA4BGYbYmhhlBjMzMzMbzYAGzMLjhBAAAAAGjZZzsYDmxMMDzwCAAAAA",
				popularity = "13.3%",
				dps = "310.2k",
				keystone = "+15"
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			["MythicPlus"] = {
				talentString = "BMQAAAAAAAAAAAAAAAAAAAAAAMmZmZmxMAAAAAAAzyMjZbmBAAAAAAttMzMYGYmZWmtZGDmZMzgZmx2yYGA",
				popularity = "43.6%",
				dps = "451.5k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhZmxyMAAAAAAMbwyMAAAAAA022MzwDMzYMzMLz2YMGMzMzMzYmNLjZAAAAAAAA",
				popularity = "52.9%",
				dps = "554.3k",
			},
		},
		["outlaw"] = {
			["MythicPlus"] = {
				talentString = "BQQAAAAAAAAAAAAAAAAAAAAAAAAMWmBjZGmZmZYGmxMzMsNzMTLzMmtZGAAAAAAYbZMDPwMzYBWmtBAAAwMzAA",
				popularity = "49.1%",
				dps = "549.7k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwMzYGDmZGmhBzYmZMzMtMjZZGAAAAAAstMmhHYmZswMLz2AAAAYmZGAAAAAAwMA",
				popularity = "57.3%",
				dps = "439.7k",
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
				popularity = "54.0%",
				dps = "502.7k",
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
				popularity = "10.3%",
				dps = "95.8k",
				hps = "358.9k",
			},
		},
		["holy"] = {
			["MythicPlus"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAwDsZMLzgZGjBmxMMWmZmlBAAAAsYZ2eAWmZGYxMLGmxwswGzMqZBAAAAAAA",
				popularity = "26.6%",
				dps = "159.8k",
				hps = "136.4k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAbDYbmZmZGzwsNGzMYZGWGAAAAwilZbYbmZwswwMzMGssAzYqZBAAAAAAA",
				popularity = "58.9%",
				dps = "45.5k",
				hps = "464.1k",
			},
		},
		["shadow"] = {
			["MythicPlus"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMYYAAAAAAAAAAAAAGzsYGzMzmNmZmZWGsMsMLMzMDzmZYMGDziZbqZgFMDAAAAAA",
				popularity = "75.3%",
				dps = "712.3k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAgBmZAAAAAAAAAAAAAGmFPAzMz2sNmZmZMmxgZhZmZGzGDMGDziZbqZGsgZAAAAAAA",
				popularity = "23.4%",
				dps = "469.8k",
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
				popularity = "26.3%",
				dps = "310.8k",
			},
		},
		["frost"] = {
			["Raiding"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAA8AAMzYmZMGDzYmZmZmxwMZGDDwMzYmhZmZmZmZZmBAAAAAAAAAAAAAAAAAAzMzYGA",
				popularity = "44.5%",
				dps = "618.4k",
			},
			["MythicPlus"] = {
				talentString = "BsPAAAAAAAAAAAAAAAAAAAAAAYMAGDzMj5BGzYMGzYmZYw0YGzMzYG4BYmZMmZmZmZWmZAAAAAAAAAAAAA",
				popularity = "78.8%",
				dps = "457.7k",
				keystone = "+17"
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
				popularity = "41.3%",
				dps = "551.2k",
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			["MythicPlus"] = {
				talentString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAgZb2WMzsMzAGMbsMWmtZGPw8AAAAAAAWGUzsMzYbWAjHYZmZ2sMwygxYgB",
				popularity = "65.2%",
				dps = "506.4k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMLz2yYwYmZZbmZmZmxYAAAAAAAAAAAAAw0MzwstYmZiZMzsglZMDGDzyMzMGYGjB",
				popularity = "43.5%",
				dps = "607.5k",
			},
		},
		["enhancement"] = {
			["Raiding"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzyMDYmZYmZmNsMDAAAAAAAAAAAAAAAAAAwsMZGMLLmZmZMMzshlZmJwYZMzAAMD",
				popularity = "83.2%",
				dps = "458.3k",
			},
			["MythicPlus"] = {
				talentString = "BcQAAAAAAAAAAAAAAAAAAAAAAYGzMLjZwwMDzMzshlZMAAAAAAAAAAAAALjpGDzwsYgZ2MzsMgllBjBYG",
				popularity = "77.5%",
				dps = "449.8k",
				keystone = "+18"
			},
		},
		["restoration"] = {
			["Raiding"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmZGLzGbGWAAAAAAgZMLjx2MzMTmtFmZaMDzshFzMDGDzyYAAM",
				popularity = "24.4%",
				dps = "45.3k",
				hps = "471.3k",
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
		["fire"] = {
			["MythicPlus"] = {
				talentString = "B8DAAAAAAAAAAAAAAAAAAAAAAYmBziNMDzMLeAMmZYaMzwMDAAAAAAAAgxYMzMDLzYZmZYmZmZmNAAAwsNA",
				popularity = "70.8%",
				dps = "612.3k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgBAAAAAYMzMzMmxMzYxYmh5BwMLzgZhBAAAAAAA",
				popularity = "48.1%",
				dps = "453.2k",
			},
		},
		["arcane"] = {
			["Raiding"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMbmtZBzwYW8A8AmZYMNzsMDAAAAAADAAAAAAAAAAAAbAsMjhZGzMMmZGjZmxMzMzwYA",
				popularity = "29.5%",
				dps = "468.6k",
			},
			["MythicPlus"] = {
				talentString = "B4DAAAAAAAAAAAAAAAAAAAAAAYmBzyshZGzMLGw8AzYMNzwMGYmZGmZbmBAAAAAAAAAAAMmZmZGmZmZMMDA",
				popularity = "61.5%",
				dps = "457.1k",
				keystone = "+16"
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "BAEAAAAAAAAAAAAAAAAAAAAAAwMYWshZGzMLeAMmZ0YMmlZmBAAYGmxMMzMzMzYmZmZGzMAAAAAAAAAwYA",
				popularity = "70.0%",
				dps = "563.3k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwMziBzYmGjxYmxwMzMMzMzMzYmZmZGzMYGAAAAAAAAAAAAzCAAAAAAAAA",
				popularity = "67.6%",
				dps = "509.0k",
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["MythicPlus"] = {
				talentString = "BkQAAAAAAAAAAAAAAAAAAAAAAAPwMzMjZmRjZzCjZxMzwsMAAAAwCAAAAAAADjNmZGzYmZGbzMzAAmB",
				popularity = "59.7%",
				dps = "450.8k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MMmNzMDz2AAAAzMjZWMzMWMzMLMzMDAYGAAAAAAzAAAAAAAAAmZ2A",
				popularity = "43.6%",
				dps = "453.8k",
			},
		},
		["demonology"] = {
			["MythicPlus"] = {
				talentString = "BoQAAAAAAAAAAAAAAAAAAAAAAAYmZMzMiZzCzMbPwMzwsMAAAAAADMmZmtxYMzMmZZ2mZMDDAAAAAAmZG",
				popularity = "45.9%",
				dps = "502.5k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAAAAAAwMzMmtxMLmZmZGjZMMjZmBjZAAA",
				popularity = "28.5%",
				dps = "432.0k",
			},
		},
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "BsQAAAAAAAAAAAAAAAAAAAAAAAYmZMzMaMbWYMbmZGzsMMzMsMmxYZw2yiZGAAAAAAAAAAAADYZmZmB",
				popularity = "54.0%",
				dps = "655.2k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzihxsZmZY2mFzYGzsY2MWMzAAAAAjZmZZmZmBAAAAAgBAAAAAAwMGzAA",
				popularity = "14.3%",
				dps = "462.0k",
			},
		},
	},
	["monk"] = {
		["brewmaster"] = {
			["MythicPlus"] = {
				talentString = "BwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmBAAAAmlx22MzMwMzssxAAAAMLDLzMNjZYbhZmlZmZZGAbmxsNbLzYA",
				popularity = "33.0%",
				dps = "301.6k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAMGjZYGLzYbmZmBAAAAAAALLgwMwMMzCjx2MzMMLDzYbWmptNb2mZGzsBAAAAAAAAMD2A",
				popularity = "23.9%",
				dps = "264.2k",
			},
		},
		["mistweaver"] = {
			["MythicPlus"] = {
				talentString = "B4QAAAAAAAAAAAAAAAAAAAAAAsNzyiZm5BMWW2GDzyYMzGMLziBAAAAAAAAAAAAY2mxyMzUzMjtFgZmZDGGAAjZD",
				popularity = "23.2%",
				dps = "118.4k",
				hps = "169.6k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMsYbsMAmZmx2DwitZbmZxysstMzssAamZmZhZYmFDzsYmZY2YMYhAAAAAAAAAAAA2A",
				popularity = "24.7%",
				dps = "32.7k",
				hps = "479.1k",
			},
		},
		["windwalker"] = {
			["Raiding"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYmZZmBDDzyMMMDAAAAAAAAAAAYbZGjghxMMsNmx2MmhZbYmhlZCAgtZmxMzYmtZAAAAAAAA",
				popularity = "45.0%",
				dps = "518.0k",
			},
			["MythicPlus"] = {
				talentString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjZGzMzYZMmxAAAAAGzMzCzYgZmZMMzyMzkZmxyCzMmZmNAAAAbA",
				popularity = "50.3%",
				dps = "494.1k",
				keystone = "+19"
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["MythicPlus"] = {
				talentString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgFKYmZmxgZGgZGmZmZB2mxDMmZmlZGmZGG2MbjZMzYDgFAYA",
				popularity = "32.2%",
				dps = "481.3k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWogZmhhZGwMDzMzsAbjxYmZbGbGzMmHw2MbzMmxYDsAgBAAAAAAAgZmxA",
				popularity = "45.3%",
				dps = "469.0k",
			},
		},
		["feral"] = {
			["Raiding"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMz2YMLmZMzsMbM2mZmxMzAAAAAAsEwMgxANzYGmZmxMmtZGAAAAAAADAAAAAAAAAmZA",
				popularity = "49.3%",
				dps = "537.3k",
			},
			["MythicPlus"] = {
				talentString = "BcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxMbzmZwMzMzsMbPA2mZMjZGAAAAAALBDzMzAzANzMzMYGWGsNjHAAAAAAAzAAA",
				popularity = "21.6%",
				dps = "383.9k",
				keystone = "+15"
			},
		},
		["guardian"] = {
			["MythicPlus"] = {
				talentString = "BgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwMmZMmlxYGDmZWMDzMLAgZmZAmJTzMzMjZGzihN8AAAAAAAjBMDDDA",
				popularity = "23.6%",
				dps = "249.1k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxYmZmlZsMzYwYxDMMzsYZAMgZmZimZmZmZGDDbMAAAAAAghZAAAAAAAAAMzMA",
				popularity = "13.1%",
				dps = "264.6k",
			},
		},
		["restoration"] = {
			["Raiding"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbDzMDzCmxYbzYbMzAAAAAAAAAAAAYZAmhxMamBMjZmZMMTbzAAAAAAAAwYAAAAAAAAMzwA",
				popularity = "32.1%",
				dps = "42.3k",
				hps = "537.5k",
			},
			["MythicPlus"] = {
				talentString = "BkGAAAAAAAAAAAAAAAAAAAAAAsxMzYDzMzsYWmZMYWYz2YmBAAAAAAAAAAAAMAPwMzgRNDDMzYmZegZBzCeAAAAAAwYAAwMD",
				popularity = "23.7%",
				dps = "128.3k",
				hps = "165.2k",
				keystone = "+20"
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			["MythicPlus"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmxMzgZmZMMZMzAAAAAAAmlhxMjZmZzMz2sNGDMDjlNAAAwYmZMA",
				popularity = "31.8%",
				dps = "502.0k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZMmZGMzMjxMhZGAAAAAAwsNMmZMzMbzMz2sNGDMDjlNAAAwYmZMA",
				popularity = "59.1%",
				dps = "489.0k",
			},
		},
		["vengeance"] = {
			["MythicPlus"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMMjhZkZmhZYGbzMmZsNzwYGMGz2MzsZmxMjZGAAAAAAAAYmZA",
				popularity = "19.0%",
				dps = "283.9k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMLzMMsNjZmhZYmZMzYbMDzgBAAAAAAAAmZmBA",
				popularity = "15.7%",
				dps = "271.1k",
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["MythicPlus"] = {
				talentString = "BsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzAzYmxMDmxmxYmphZmMbjlZmZmhxMLzAmxMLjZGzYgBA",
				popularity = "39.3%",
				dps = "499.8k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmBzsZGMgBGzMNjZmMbjlxMzMMPwMbzAmxMbjZmtxMwADAAAAAAA",
				popularity = "29.5%",
				dps = "478.4k",
			},
		},
		["preservation"] = {
			["Raiding"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAMzMjx8AzMjZwsgZ2MzwAAgZGzYwYMzImZAAAAmZmJzYmxsMzAADAAAAAMAA",
				popularity = "9.6%",
				dps = "32.7k",
				hps = "368.7k",
			},
			["MythicPlus"] = {
				talentString = "BwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZMLDMmZGziZmxAGAAMzYmZGGjZGxYAAAAmZmJzsNzYMMAA",
				popularity = "15.9%",
				dps = "122.7k",
				hps = "162.7k",
				keystone = "+19"
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "BEcBAAAAAAAAAAAAAAAAAAAAAwMLzsNmZGLDzMzyMYmZmNAAAAAAAAMzgZsZMmpGmHYGAAAAYmZ2GzMGzMwYzA",
				popularity = "33.3%",
				dps = "431.4k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMGbzMzMWGMzsMzwMmZDAAAAAMAAYmBAGzUzYmZAAAAwMmZbMzsNmZgx2MAAAAAAwM",
				popularity = "30.5%",
				dps = "531.4k",
			},
		},
	},
}
addonTable.DB = talentData