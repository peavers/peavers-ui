local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["warrior"] = {
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2wYYaMYMDglxYG2YmZYgZYAAAAAAAmZAALbbAGGYDWWMaMDgZDbmZD",
				dps = "836.9k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNzgZmBwyADbMzMwDMzDMMAAAAAAgZGAgltNADDsBLLGNmBwshNsB",
				dps = "907.1k",
			},
		},
		["fury"] = {
			["MythicPlus"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagxghhZwywMzGMMjxwMMzssNzYmZ2YmxMzwMsZbGmZMAAAQYMwGssY0YGAzCsYsA",
				dps = "1,605.9k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYMMzsBDzYMMDzMbbzMmZmNmZMzMMDb2mhZGDAAAEmxy2ALgBMDTgx2wG",
				dps = "1,900.5k",
			},
		},
		["arms"] = {
			["MythicPlus"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZMzsNbLLjZAAAAYw0wMDLzYGYmFzMzgZGGGYGGAAAAAAAMjZbwAsFDgNzYYBGYG2oBwC",
				dps = "1,680.7k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmZYbGzAzYMzMYmhBGmhBAAAAAAAPwYWmZmBQgxy2ALgBMDTgBYD",
				dps = "1,830.9k",
			},
		},
	},
	["paladin"] = {
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsZMYWGLzMjZmZZbmZmZmtxMGAAgBAAAAAAg2yMzihZwYGzWbAADMAAbDAAAAYmZZbplZGLMAADmZzYA",
				dps = "1,140.0k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMzyMLjZmZmx2MmhhZYAAAGAAAAAAASmZWMMDGzMzWAAGAgZw2AAAAAmZW2WabmxiZAAmZMDjB",
				dps = "1,207.1k",
			},
		},
		["holy"] = {
			["MythicPlus"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbzMDzMmZWMjZZmZsNgZbbm2iZYMzMMwslBAMAYDYjZMzMAAAwMzy2SbzMsBMDwghZA",
				dps = "332.7k",
				hps = "761.8k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZwMmZYmZWmZ8AbDY22mptwsNjZmhBmtMAgBAbAbMjZmBAAAmZW2WabmhNMAWYMMLzA",
				dps = "378.1k",
				hps = "1,988.5k",
			},
		},
		["retribution"] = {
			["Raiding"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAassNzstsNGbjZ22mZDAAAAAAjmmhhZGbzgZbYWmlZYYwMmhlF2AAAgZm2mlZbGAwGwAgxYGmB",
				dps = "1,789.7k",
			},
			["MythicPlus"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRstNzstsNzYzMz2iZbAAAAAAY2SzsYYmx2MY2GGzyMLbjZwghlF2AAAgZm2mlZbGAwGwAAGzsB",
				dps = "1,827.8k",
				keystone = "+18"
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["MythicPlus"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgxCAAAAAAGAAAAAAgZmtZMmZMYmxwMmZYGzMzMTmhxMzMjxMDDjhZGmlZMWmBb",
				dps = "1,604.8k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsALDDNsBAAAAAgBAAAAAAYGLDzyMjhxYmZMMjZGjZmZyMMmZmZmxMjZYMmZGGDGzgN",
				dps = "1,818.8k",
			},
		},
		["marksmanship"] = {
			["Raiding"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgZBAAAAAAMjZmZGmZGmZmhZmZMmZbmBAAAAAAAYGGzMzMzYGNzYMMzAzYGzMG",
				dps = "2,042.3k",
			},
			["MythicPlus"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGNWGAzG2AAAAAAAzMzMmxMMjZmZmZmZYmxGjBAAAAAAAmhxMmZmZmZamxYYmhxwMLzA",
				dps = "1,514.0k",
				keystone = "+17"
			},
		},
		["survival"] = {
			["Raiding"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxM2YgFYbYoBLzM2mxMzMjZMGMzYmZmxMDAAAAAAAAAAAAAANDjZmZmZMzYGGDzMwMmxMYB",
				dps = "1,827.1k",
			},
			["MythicPlus"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZGjZMzMmZMGzMmBAAAAAAAAAAAAAANDjZmZmZMzYGGDzMMGmZZGA",
				dps = "1,812.2k",
				keystone = "+18"
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			["Raiding"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmx2MAAAAAAMLDWmBAAAAAg22mZGMzgZmZZ2mZmxAjZmZGzsZbMDwmZZgBsAWGmADLA",
				dps = "1,893.5k",
			},
			["MythicPlus"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMzwMAAAAAAAzyMmtZAAAAAAotlZmBzMYmZWmtxYwMzMzgZmZzyYGgNzyADYBsMMBGWGA",
				dps = "2,034.3k",
				keystone = "+19"
			},
		},
		["outlaw"] = {
			["Raiding"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGjZMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMADsBzY0Y2AsNwiZA",
				dps = "1,882.9k",
			},
			["MythicPlus"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmxMzMDzwwMzMMzMz0yMmtZAAAAAAY2WmZGMzMWglZbAAAAYmBYgNYGjGzGgtBWMA",
				dps = "1,866.1k",
				keystone = "+18"
			},
		},
		["subtlety"] = {
			["Raiding"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmmZGzMGGDDzMzMjxsNMzYbbmZmZmZAjlZbAAAAYGMsZWGYALglhJwsAD",
				dps = "1,862.1k",
			},
			["MythicPlus"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAALjZWmGzYmxMGjZYmZmhxsNMzM2mZGzMzYALz2AAAAYmBDgxsZYgBmFWoFbwA",
				dps = "1,565.2k",
				keystone = "+14"
			},
		},
	},
	["priest"] = {
		["discipline"] = {
			["MythicPlus"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlZGDWGjZmxMbmtZmZmhBAAAAAAAAAAAzysMbDmZGMLMmBjhZhtZaMxyAmZAgAMbz2GYsZD",
				dps = "457.6k",
				hps = "941.3k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGD2GjZmxMbmlZmZmhBAAAAAAAAAAAzilZbYbmZwswwMzMGsw2MNmYBYmBACwsNLbgxmN",
				dps = "343.4k",
				hps = "1,532.2k",
			},
		},
		["holy"] = {
			["Raiding"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGbmxMzYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWGmFDAZMYD",
				dps = "197.5k",
				hps = "1,711.4k",
			},
			["MythicPlus"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAYZYGLPwgZmZMwMmhxyMzsMAAAAAzysNsMz8AYWYWmxMjBLsxMmaWAwMLYhwYWGgxCsA",
				dps = "253.2k",
				hps = "700.5k",
				keystone = "+14"
			},
		},
		["shadow"] = {
			["MythicPlus"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMYAAAAAAAAAAAAAw4BmFzYmZ2mtxMzMz2YmlBzGzMzMmNGYMGmFz2UzMYBzAYmFLDzmBgMGLA",
				dps = "1,467.8k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAMmZAAAAAAAAAAAAAGmFPAzMz2sNmZmZMzMLDmNmZmZMbMwYMMLmtpmZwCMAmZzywsZAIjxCA",
				dps = "1,761.7k",
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["Raiding"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMjZGjlZMzMTzMGmZMjBAAAAAzMzMzMzMzmZmxAAAgZmZmBAAAYgBmxoxyGgtBsBwMYD",
				dps = "1,133.6k",
			},
			["MythicPlus"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAgxMmZmZMjZmZYYMz0MMMzMzYAAAAAwwMzMzwsNzMjBAAwMzMzMAAAAjltBGwCYZYCMsAwMYD",
				dps = "851.3k",
				keystone = "+16"
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAMzMjZMmZYYmZmZGGmpZGDjBMzYMjZmZmZmZZmBAAAAAAAAAAAYssNwAWALDTgxCmZMmBA",
				dps = "2,011.2k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGAzMjZMGDzYmZmZmxMmJzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAjltBGwCYZYCMWwMMmBA",
				dps = "1,859.1k",
			},
		},
		["unholy"] = {
			["MythicPlus"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZmZMjxMDzYmZmphhZGzYAAAAAAAAAgZGjZMzMDAMbmhZBzMz8AzMzAWMLGGYgZjhGLAwMA",
				dps = "1,819.4k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMzMzwYwMAgZzMMbzYmZmxMDwiZxwADMbM0YBAmBA",
				dps = "1,729.3k",
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			["MythicPlus"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz22MjxY2mlZmBMzMDAAAAAAbmxwGsAzwQjNAwYaGw2yYmphZmZYsMjZGmlBLzMGMmZ2GDA",
				dps = "2,164.9k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAAWMzGMgBMbMBmFAwsNNDYbxMz0wMzMGWmZmBzyglxMzMzwMbMA",
				dps = "2,010.5k",
			},
		},
		["enhancement"] = {
			["Raiding"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMgZGDzMzMYZmx2sNDAAAAAAAAAgNYBWgZspx2AYGwGAmlJzALLmZmZYMzsMsMzMBGLjZGAgZmB",
				dps = "1,979.6k",
			},
			["MythicPlus"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMjZYmZmhZZmZZZMDAAAAAAAAAgNA2MjhNYBmhhGsAgZZyAWwMzMMzMjZmlZMNbsMMmZAAmxA",
				dps = "2,438.3k",
				keystone = "+20"
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZMzwsMWMsgFYDmxiGLDgZgNmZmFMLzMzIz2iZmpxMDDjFjZwsMMLMAAGA",
				dps = "283.1k",
				hps = "788.8k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmxMLzyMLGWwCsAzYTjlBwMwGDzCjlZmZmMLLMz0YGMLYZmZGMGmlxAAYYA",
				dps = "131.2k",
				hps = "1,914.5k",
			},
		},
	},
	["mage"] = {
		["arcane"] = {
			["MythicPlus"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAMjhZbWwMjZmFgZmxYamxMAAAAAAMAAAwMz2yyyMTsAAAAAAwGALzYYmZmZMDmZGjZmZmZMMG",
				dps = "1,592.0k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMmFPAjZGGTzMmBAAAAAgBAAAmZ2WWWmZiFAAAAAAAwywwMzMzYGmZMmZGzMzYMjB",
				dps = "1,785.4k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNLYGmZWgxMjGj5BmlZmZYYG8AzMzMzMzMzMjZmZMzsMTzMLzCAAAsAAAAAAgZDAAAAAAAA",
				dps = "1,880.1k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmtZBzwYWMMmZ0YMzYGMzwMMzMzMzYmZmZGzMzYGAAAYmZbZZZmpNAAAAAAAAAAAAAAAA",
				dps = "2,137.2k",
			},
		},
		["fire"] = {
			["MythicPlus"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbzCmxDMzsBMzMmGzMLzAAAAAAwMLz0MzysAAAAWMzMYGzwMzsMjxYmHwmZWmxmZhBAAAAAAA",
				dps = "1,515.4k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgZWmpZmlZBAAAsYMDmZmxMzYxsMGz8AYmlZwswMAAAAAAAA",
				dps = "1,819.7k",
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["MythicPlus"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAwMzMzyMzDM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZGLA",
				dps = "1,572.4k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAwMjZWmZM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZmZzA",
				dps = "1,693.5k",
			},
		},
		["demonology"] = {
			["MythicPlus"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzihxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsZmZmZMmxMmxMzYwMAAA",
				dps = "1,617.1k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmZG2GzsYmZmZMmxwMzMzAzMAAA",
				dps = "1,660.2k",
			},
		},
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNjxMmFzGLLmZAAAAAzMzsMzMzYBGYWMaMDgZDbYAAAAAAAMzMjBAA",
				dps = "1,811.1k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNzwMzsY2MWMzAAAAAzMDLzMzMgxMGWgB2GWoxCGAAAAAAAjZmZAA",
				dps = "1,745.0k",
			},
		},
	},
	["monk"] = {
		["brewmaster"] = {
			["Raiding"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGDAAAAAAwyCGxMDMDjNGsMzMDzyYmx2sYab5B2mtZmhZBAA2AAAAmtZpZmZWYGsA",
				dps = "1,082.3k",
			},
			["MythicPlus"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMmBmlZsNmZGDAAAAAAwyCMxMDMDjNgtZmZYWYmx2sMTbLzmtZmhZBAA2AAAAmtZpZmZWYGsB",
				dps = "1,046.1k",
				keystone = "+16"
			},
		},
		["mistweaver"] = {
			["MythicPlus"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWsMzyYWMbzYGbYbWmtxDgZbZZmZZhZ0MzMwMMDgtZMDzGzMMLPwEAAAAgZbab2mZZ2AAAAAbA",
				dps = "514.5k",
				hps = "787.7k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzYYDzYmZZYDLzMb2mlllZmlFMamZGYGmBD2mZmhZjZGs8ATAAAAAAALWmllZbmZCAAsA",
				dps = "322.4k",
				hps = "1,891.3k",
			},
		},
		["windwalker"] = {
			["Raiding"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMzgZmZMLzAYAAAAAAAAAAAwyywImZgZYYxMjtZmZY2GmBLzEAAbzMDzMjZbGAAbAgZZWamZmFAA",
				dps = "1,841.0k",
			},
			["MythicPlus"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYGzMMzMMzMAAAAAAAAAAAYZZYmYmhxMMswM2mxMMbMzws8ATAAsMmhZmxsMDAgNAwsMLNzMzCA",
				dps = "1,569.8k",
				keystone = "+16"
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["MythicPlus"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUMmZGGzMDYmhZmBYzYxsMzyMzmZmZmZmFzyYYwGYhBYssNzGGz2AYCAAAwyMzYAA",
				dps = "2,013.1k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUYmZGGmZAzMMzYAbzMGmZbGLGzMzMzixMjZmxGYjBYA22GLYamZZAAAAwmZGjBA",
				dps = "1,783.3k",
			},
		},
		["feral"] = {
			["MythicPlus"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJYYMYMzMamxMMzMWmhNGAAAAAAADAAAAQzsMLzMbDAYBGzAA",
				dps = "1,725.0k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZb2MzCzYmZb2YsNzMz8AzMAAAAAAbBDDYMzMamxMjZGjZYjBAAAAAAAYAAAAAAmtZWa2mZZDzMDA",
				dps = "1,772.0k",
			},
		},
		["guardian"] = {
			["MythicPlus"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMMzyMjZMjZGLMzwsYBgxgZmZimZmZmZGzCsxAAAAAAAwYALbzshxsMAmAAAA2YmZAA",
				dps = "788.7k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDgBMzYy0MzMmZmhBbMAAAAAAgxMDAAAA0MbzyMzyAAYhZmBA",
				dps = "1,061.8k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFz2AMLLstMmBAAAAAAAAAAAwyghZGY0MMzMmhZmB0GAAAAAADAgZAAAAAgZbmtmlZ2sxMzAzYA",
				dps = "281.0k",
				hps = "758.3k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZDPAjtNzyyYGAAAAAAAAAAAAbDwMMMamBMzMmZmhZabMAAAAAAAAYALLjFMNzsMAAAAWYmZAmB",
				dps = "185.3k",
				hps = "1,997.1k",
			},
		},
	},
	["demon-hunter"] = {
		["vengeance"] = {
			["MythicPlus"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMMkZmBDzYbMmZsNDzMjZ8AGz2MzsZmxMDzAAAAAsMLmxwsw0AzMjxG",
				dps = "871.3k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbjZYGMAAAAALziZMMbMNwMzMsB",
				dps = "1,006.8k",
			},
		},
		["havoc"] = {
			["MythicPlus"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGMzMjxMZmZGAAAAAAwsNMmhZGYmtZbWmZGMDssBLziZMMbMNGzMjBb",
				dps = "1,512.4k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwG",
				dps = "1,940.2k",
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["Raiding"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMYmNzgBMYMTzYmJz2YbMzMjZMz2MgZMz2YmZZMDMwYwCsMGN2GAzAwGG",
				dps = "1,741.4k",
			},
			["MythicPlus"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMDMMGz0MmZysNz2MzMzYGzsMDwYmtxMzyYGYgxgFYZMasMAmBgNMA",
				dps = "1,577.9k",
				keystone = "+15"
			},
		},
		["preservation"] = {
			["Raiding"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMzyMzAgZMbwCYBMDTgB2MMA",
				dps = "90.2k",
				hps = "2,065.6k",
			},
			["MythicPlus"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYAAAwMjZmZMGmJGzAAAAmZmJjlZGz2YGAAGzmFWgBmhhGMWgB",
				dps = "322.0k",
				hps = "680.6k",
				keystone = "+14"
			},
		},
		["augmentation"] = {
			["Raiding"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmxyAzsMzMGmZDAAAAAMAAYmBMGjpGmZGAAAAMjZwMzyYmBGbzYwCsMGGbDgZQshZG",
				dps = "1,808.7k",
			},
			["MythicPlus"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAgZZmtZmZGLzgZWmxMDzsBAAAAAAAgZGYYMmaYegZAAAAgZmZbMzsNmZMM2MGsALjhxyAYGEbYMD",
				dps = "1,776.3k",
				keystone = "+19"
			},
		},
	},
}
addonTable.DB = talentData