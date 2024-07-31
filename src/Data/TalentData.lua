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
				popularity = "12.2%",
				dps = "67.9k",
				hps = "455.2k",
			},
		},
		["protection"] = {
			["Raiding"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMzixyDYmZmhNzMjZeQYYGAAgBAAAAAAg0wMzsYgZGmZWMMzMbAwYAAMgBYAAAAAAYA",
				popularity = "12.8%",
				dps = "227.0k",
			},
			["MythicPlus"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjZYWM2eAGzMW2MzMmxYGzAAAMAAAAAAA0WzYmZWMwMYmZxAmNAYMAAGwAMAAAAAAMD",
				popularity = "21.3%",
				dps = "227.1k",
				keystone = "+19"
			},
		},
		["retribution"] = {
			["MythicPlus"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAjJLLbzMbLbmxiZmlFzyAAAAAAwsNlZmhBmZYMLjhxwYWmx2wYMgxyCbAAAAAAAAA",
				popularity = "47.1%",
				dps = "513.9k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAMttssNzstsNGbjZ22mZDAAAAAAjpMzMbGYGMmlxwMDzysMDDDGMGLLsNAAAAAAAAA",
				popularity = "35.6%",
				dps = "620.6k",
			},
		},
	},
	["warrior"] = {
		["fury"] = {
			["Raiding"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYWGmZ2ghZMGmhZmttZGzMzGzMmZGmhNbzwMjBAAACDAAAAAYDA",
				popularity = "19.5%",
				dps = "622.0k",
			},
			["MythicPlus"] = {
				talentString = "BgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAQDMYZGgxghxYmZsAGGDjBjZmZ2mZMzMDzMMzwMmlBYmxMGAAAMgBD",
				popularity = "80.5%",
				dps = "493.2k",
				keystone = "+19"
			},
		},
		["arms"] = {
			["Raiding"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAgtZMjxMzMzmlllZGAAAAMYaYGsYMDMjxMzgZGGGDzwAAAAAAAgZMbzMDABAAAAAAGA",
				popularity = "31.1%",
				dps = "644.0k",
			},
			["MythicPlus"] = {
				talentString = "BcEAAAAAAAAAAAAAAAAAAAAAAAwy2MmxYGmZGbLLjZAAAAgBTDzswMwixAMGzMDbmxwA8A8AjZAAAAAAAAYGbzYMghxWMA",
				popularity = "43.2%",
				dps = "535.7k",
				keystone = "+20"
			},
		},
		["protection"] = {
			["Raiding"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzwMzgZbmlZmZ22YMMNDMzMAMmZGwMzADzwAAAAAAAmZAAziNADAAAAAYzA",
				popularity = "34.3%",
				dps = "249.9k",
			},
			["MythicPlus"] = {
				talentString = "BkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAMzMDzMjZmtZWmZmZDGDTDMjZsMzMAMMzgNMzMYAGzAAAAAAAAzMAALbbAgB",
				popularity = "20.8%",
				dps = "259.7k",
				keystone = "+19"
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["MythicPlus"] = {
				talentString = "B0PAAAAAAAAAAAAAAAAAAAAAA4BAbzMAswAAAAAAAAAAAwGjZxMsNPwYGmxwMT2gxYbegZMzMjhtxMzMA",
				popularity = "72.6%",
				dps = "499.0k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADAAAAAAAzYYMzMDzMMDzwsMzYmZmZyMMmZMzMmZMDjxMzwYGGzgN",
				popularity = "50.3%",
				dps = "724.2k",
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
				popularity = "36.5%",
				dps = "503.0k",
			},
		},
		["survival"] = {
			["Raiding"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMAAAAAAmZmtZMzMMzYmhZGmZGzMGAAAAAAAAAAAAAA0MMjZmZmxMYYMMzwYYGzMmF",
				popularity = "50.3%",
				dps = "454.6k",
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
			["Raiding"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhZmxyMAAAAAAMbwyMAAAAAA022MzwDMzYMzMLz2YMGMzMzMzYmNLjZAAAAAAAA",
				popularity = "54.1%",
				dps = "552.7k",
			},
			["MythicPlus"] = {
				talentString = "BMQAAAAAAAAAAAAAAAAAAAAAAMmZmZmxMAAAAAAAzyMjZbmBAAAAAAttMzMYGYmZWmtZGDmZMzgZmx2yYGA",
				popularity = "43.0%",
				dps = "451.5k",
				keystone = "+16"
			},
		},
		["outlaw"] = {
			["Raiding"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwMzYGDmZGmhBzYmZMzMtMjZZGAAAAAAstNzMYmZsMmZZ2GAAAAmZGAAAAAAwMA",
				popularity = "53.0%",
				dps = "438.3k",
			},
			["MythicPlus"] = {
				talentString = "BQQAAAAAAAAAAAAAAAAAAAAAAAAMWmBjZGmZmZYGmxMzMsNzMTLzMmtZGAAAAAAYbZMDPwMzYBWmtBAAAwMzAA",
				popularity = "48.7%",
				dps = "549.7k",
				keystone = "+19"
			},
		},
		["subtlety"] = {
			["Raiding"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAzyYmlJDLbYGjhZmZmZmZGz2YMzstNzMmZmBjZWmtBAAAgZwAAAAAAAG",
				popularity = "54.6%",
				dps = "495.8k",
			},
			["MythicPlus"] = {
				talentString = "BUQAAAAAAAAAAAAAAAAAAAAAAAAADAAAAAAzyMzMLzEMLLGzMjZmxDMzMzYGz2YMmttZmxMzMAWmlBAAAgZwA",
				popularity = "9.5%",
				dps = "297.9k",
				keystone = "+12"
			},
		},
	},
	["priest"] = {
		["discipline"] = {
			["Raiding"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtxYw2YMzMmhZZmZmZYGAAAAAAAAAAAsYZ2Y2mZgZhhxYMMLmtZaMxyYAAAAAAA",
				popularity = "8.9%",
				dps = "95.8k",
				hps = "373.9k",
			},
			["MythicPlus"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlxMD2GjZmxMbmtZmZmhBAAAAAAAAAAAWsMbYbmZwsYGGzMGmF2mpZELDAAAAAAA",
				popularity = "26.6%",
				dps = "133.4k",
				hps = "152.9k",
				keystone = "+18"
			},
		},
		["holy"] = {
			["Raiding"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAbDYbmZmZGzwsNGzMYZGWGAAAAwilZbYbmZwswwMzMGssAzYqZBAAAAAAA",
				popularity = "57.9%",
				dps = "46.2k",
				hps = "460.2k",
			},
			["MythicPlus"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAwDsZMLzgZGjBmxMMWmZmlBAAAAsYZ2eAWmZGYxMLGmxwswGzMqZBAAAAAAA",
				popularity = "26.7%",
				dps = "159.6k",
				hps = "136.1k",
				keystone = "+16"
			},
		},
		["shadow"] = {
			["MythicPlus"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMYYAAAAAAAAAAAAAGzsYGzMzmNmZmZWGsMsMLMzMDzmZYMGDziZbqZgFMDAAAAAA",
				popularity = "75.1%",
				dps = "712.2k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAgBmZAAAAAAAAAAAAAGmFPAzMz2sNmZmZMmxgZhZmZGzGDMGDziZbqZGsgZAAAAAAA",
				popularity = "23.4%",
				dps = "468.5k",
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
				popularity = "22.3%",
				dps = "309.6k",
			},
		},
		["frost"] = {
			["Raiding"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAA8AAMzYmZMGDzYmZmZmxwMZGDDwMzYmhZmZmZmZZmBAAAAAAAAAAAAAAAAAAzMzYGA",
				popularity = "46.1%",
				dps = "617.9k",
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
				dps = "488.6k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMzMjHYYYGzMzMNMmZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGAAAAAADgZA",
				popularity = "46.3%",
				dps = "541.9k",
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			["Raiding"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMLz2yYwYmZZbmZmZmxYAAAAAAAAAAAAAw0MzwstYmZiZMzsglZMDGDzyMzMGYGjB",
				popularity = "41.3%",
				dps = "613.5k",
			},
			["MythicPlus"] = {
				talentString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAgZb2WMzsMzAGMbsMWmtZGPw8AAAAAAAWGUzsMzYbWAjHYZmZ2sMwygxYgB",
				popularity = "65.2%",
				dps = "506.3k",
				keystone = "+19"
			},
		},
		["enhancement"] = {
			["Raiding"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzyMDYmZYmZmNsMDAAAAAAAAAAAAAAAAAAwsMZGMLLmZmZMMzshlZmJwYZMzAAMD",
				popularity = "84.7%",
				dps = "467.6k",
			},
			["MythicPlus"] = {
				talentString = "BcQAAAAAAAAAAAAAAAAAAAAAAYGzMLjZwwMDzMzshlZMAAAAAAAAAAAAALjpGDzwsYgZ2MzsMgllBjBYG",
				popularity = "77.5%",
				dps = "449.6k",
				keystone = "+18"
			},
		},
		["restoration"] = {
			["Raiding"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmZGLzGbGWAAAAAAgZMLjx2MzMTmtFmZaMDzshFzMDGDzyYAAM",
				popularity = "22.9%",
				dps = "42.4k",
				hps = "453.4k",
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
				popularity = "33.4%",
				dps = "474.0k",
			},
			["MythicPlus"] = {
				talentString = "B4DAAAAAAAAAAAAAAAAAAAAAAYmBzyshZGzMLGw8AzYMNzwMGYmZGmZbmBAAAAAAAAAAAMmZmZGmZmZMMDA",
				popularity = "61.5%",
				dps = "457.1k",
				keystone = "+16"
			},
		},
		["fire"] = {
			["MythicPlus"] = {
				talentString = "B8DAAAAAAAAAAAAAAAAAAAAAAYmBziNMDzMLeAMmZYaMzwMDAAAAAAAAgxYMzMDLzYZmZYmZmZmNAAAwsNA",
				popularity = "70.8%",
				dps = "612.3k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgBAAAAAYMzMzMmxMzYxYmh5BwMLzgZhBAAAAAAA",
				popularity = "47.1%",
				dps = "455.5k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "BAEAAAAAAAAAAAAAAAAAAAAAAwMYWshZGzMLeAMmZ0YMmlZmBAAYGmxMMzMzMzYmZmZGzMAAAAAAAAAwYA",
				popularity = "70.0%",
				dps = "562.9k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwMziBzYmGjxYmxwMzMMzMzMzYmZmZGzMYGAAAAAAAAAAAAzCAAAAAAAAA",
				popularity = "66.5%",
				dps = "511.2k",
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["Raiding"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MMmNzMDz2AAAAzMjZWMzMWMzMLMzMDAYGAAAAAAzAAAAAAAAAmZ2A",
				popularity = "46.3%",
				dps = "449.7k",
			},
			["MythicPlus"] = {
				talentString = "BkQAAAAAAAAAAAAAAAAAAAAAAAPwMzMjZmRjZzCjZxMzwsMAAAAwCAAAAAAADjNmZGzYmZGbzMzAAmB",
				popularity = "59.3%",
				dps = "450.8k",
				keystone = "+16"
			},
		},
		["demonology"] = {
			["MythicPlus"] = {
				talentString = "BoQAAAAAAAAAAAAAAAAAAAAAAAYmZMzMiZzCzMbPwMzwsMAAAAAADMmZmtxYMzMmZZ2mZMDDAAAAAAmZG",
				popularity = "46.0%",
				dps = "502.1k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAAAAAAwMzMmtxMLmZmZGjZMMjZmBjZAAA",
				popularity = "29.5%",
				dps = "434.5k",
			},
		},
		["destruction"] = {
			["Raiding"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzihxsZmZY2mFzYGzsY2MWMzAAAAAjZmZZmZmBAAAAAgBAAAAAAwMGzAA",
				popularity = "13.1%",
				dps = "466.7k",
			},
			["MythicPlus"] = {
				talentString = "BsQAAAAAAAAAAAAAAAAAAAAAAAYmZMzMaMbWYMbmZGzsMMzMsMmxYZw2yiZGAAAAAAAAAAAADYZmZmB",
				popularity = "53.9%",
				dps = "655.1k",
				keystone = "+19"
			},
		},
	},
	["monk"] = {
		["brewmaster"] = {
			["Raiding"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAMGjZYGLzYbmZmBAAAAAAALLgwMwMMzCjx2MzMMLDzYbWmptNL2mZGzsBAAAAAAAAMD2A",
				popularity = "22.1%",
				dps = "287.6k",
			},
			["MythicPlus"] = {
				talentString = "BwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmBAAAAmlx22MzMwMzssxAAAAMLDLzMNjZYbhZmlZmZZGAbmxsNbLzYA",
				popularity = "32.7%",
				dps = "301.6k",
				keystone = "+17"
			},
		},
		["mistweaver"] = {
			["Raiding"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMsYbsMAmZmx2DwitZbmZxysstMzssAamZmZhZYmFDzsYmZY2YMYhAAAAAAAAAAAA2A",
				popularity = "28.5%",
				dps = "32.5k",
				hps = "457.1k",
			},
			["MythicPlus"] = {
				talentString = "B4QAAAAAAAAAAAAAAAAAAAAAAsNzyiZm5BMWW2GDzyYMzGMLziBAAAAAAAAAAAAY2mxyMzUzMjtFgZmZDGGAAjZD",
				popularity = "23.4%",
				dps = "118.2k",
				hps = "169.5k",
				keystone = "+19"
			},
		},
		["windwalker"] = {
			["Raiding"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYmZZmBDDzyMMMDAAAAAAAAAAAYbZGjghxMMsNmx2MmhZbYmhlZCAgtZmxMzYmtZAAAAAAAA",
				popularity = "45.7%",
				dps = "517.3k",
			},
			["MythicPlus"] = {
				talentString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjZGzMzYZMmxAAAAAGzMzCzYgZmZMMzyMzkZmxyCzMmZmNAAAAbA",
				popularity = "50.4%",
				dps = "493.8k",
				keystone = "+19"
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["MythicPlus"] = {
				talentString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgFKYmZmxgZGgZGmZmZB2mxDMmZmlZGmZGG2MbjZMzYDgFAYA",
				popularity = "32.1%",
				dps = "481.3k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWogZmhhZGwMDzMzsAbjxYmZbGbGzMmHw2MbzMmxYDsAgBAAAAAAAgZmxA",
				popularity = "39.4%",
				dps = "464.4k",
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
				popularity = "49.8%",
				dps = "539.0k",
			},
		},
		["guardian"] = {
			["Raiding"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxYmZmlZsMzYwYxDMMzsYZAMgZmZimZmZmZGDDbMAAAAAAghZAAAAAAAAAMzMA",
				popularity = "16.4%",
				dps = "274.5k",
			},
			["MythicPlus"] = {
				talentString = "BgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwMmZMmlxYGDmZWMDzMLAgZmZAmJTzMzMjZGzihN8AAAAAAAjBMDDDA",
				popularity = "23.5%",
				dps = "249.1k",
				keystone = "+19"
			},
		},
		["restoration"] = {
			["Raiding"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbDzMDzCmxYbzYbMzAAAAAAAAAAAAYZAmhxMamBMjZmZMMTbzAAAAAAAAwYAAAAAAAAMzwA",
				popularity = "29.9%",
				dps = "42.2k",
				hps = "530.9k",
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
				popularity = "31.5%",
				dps = "502.3k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZMmZGMzMjxMhZGAAAAAAwsNMmZMzMbzMz2sNGDMDjlNAAAwYmZMA",
				popularity = "59.3%",
				dps = "490.9k",
			},
		},
		["vengeance"] = {
			["Raiding"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMLzMMjtZMjZMDzMjZGbjZYGMAAAAAAAAwMzMA",
				popularity = "14.5%",
				dps = "276.7k",
			},
			["MythicPlus"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMMjhZkZmhZYGbzMmZsNzwYGMGz2MzsZmxMjZGAAAAAAAAYmZA",
				popularity = "18.9%",
				dps = "283.9k",
				keystone = "+21"
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["MythicPlus"] = {
				talentString = "BsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzAzYmxMDmxmxYmphZmMbjlZmZmhxMLzAmxMLjZGzYgBA",
				popularity = "39.4%",
				dps = "498.3k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmBzsZGMgBGzMNjZmMbjlZmZmhxMbzAmxMbjZmtxMwADAAAAAAA",
				popularity = "31.2%",
				dps = "500.1k",
			},
		},
		["preservation"] = {
			["MythicPlus"] = {
				talentString = "BwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZMLDMmZGziZmxAGAAMzYmZGGjZGxYAAAAmZmJzsNzYMMAA",
				popularity = "16.6%",
				dps = "131.8k",
				hps = "162.7k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZ2mtZwMzMjZBzsxMAAAzMmxgxYmRYGAAAgZmZyMmZMLzMDAGAAAAAAA",
				popularity = "9.8%",
				dps = "33.9k",
				hps = "373.9k",
			},
		},
		["augmentation"] = {
			["Raiding"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMGbzMzMWGMzsMzwMmZDAAAAAMAAYmBAGzUzYmZAAAAwMmZbMzsNmZgx2MAAAAAAwM",
				popularity = "28.1%",
				dps = "528.1k",
			},
			["MythicPlus"] = {
				talentString = "BEcBAAAAAAAAAAAAAAAAAAAAAwMLzsNmZGLDzMzyMYmZmNAAAAAAAAMzgZsZMmpGmHYGAAAAYmZ2GzMGzMwYzA",
				popularity = "33.3%",
				dps = "431.4k",
				keystone = "+20"
			},
		},
	},
}
addonTable.DB = talentData