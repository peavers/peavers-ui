local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["paladin"] = {
		["holy"] = {
			["Raiding"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZwMmZYmZWmZ8AbDY22mptwsNjZmhBmtMAgBAbAbMjZmBAAAmZW2WabmhNMAWYMMLzA",
				dps = "381.3k",
				hps = "1,993.7k",
			},
			["MythicPlus"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbzMDzMmZWMjZZmZsNgZbbm2iZYMzMMwslBAMAYDYjZMzMAAAwMzy2SbzMsBMDwghZA",
				dps = "325.6k",
				hps = "763.2k",
				keystone = "+14"
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsZMYWGLzMjZmZZbmZmZmtxMGAAgBAAAAAAg2yMzihZwYGzWbAADMAAbDAAAAYmZZbplZGLMAADmZzYA",
				dps = "1,130.8k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMzyMLjZmZmx2MmhhZYAAAGAAAAAAASmZWMMDGzMzWAAGAgZw2AAAAAmZW2WabmxiZAAmZMDjB",
				dps = "1,203.2k",
			},
		},
		["retribution"] = {
			["MythicPlus"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRstNzstsNzYzMz2iZbAAAAAAY2SzsYYmx2MY2GGzyMLbjZwghlF2AAAgZm2mlZbGAwGwAAGzsB",
				dps = "1,817.3k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAassNzstsNGbjZ22mZDAAAAAAjmmhhZGbzgZbYWmlZYYwMmhlF2AAAgZm2mlZbGAwGwAgxYGmB",
				dps = "1,799.5k",
			},
		},
	},
	["warrior"] = {
		["fury"] = {
			["Raiding"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYMMzsBDzYMMDzMbbzMmZmNmZMzMMDb2mhZGDAAAEmxy2ALgBMDTgx2wG",
				dps = "1,904.0k",
			},
			["MythicPlus"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagxghhZwywMzGMMjxwMMzssNzYmZ2YmxMzwMsZbGmZMAAAQYMwGssY0YGAzCsYsA",
				dps = "1,595.2k",
				keystone = "+17"
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2wYYaMYMDglxYG2YmZYgZYAAAAAAAmZAALbbAGGYDWWMaMDgZDbmZD",
				dps = "832.2k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNzgZmBwyADbMzMwDMzDMMAAAAAAgZGAgltNADDsBLLGNmBwshNsB",
				dps = "911.2k",
			},
		},
		["arms"] = {
			["MythicPlus"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZMzsNbLLjZAAAAYw0wMDLzYGYmFzMzgZGGGYGGAAAAAAAMjZbwAsFDgNzYYBGYG2oBwC",
				dps = "1,670.9k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmZYbGzAzYMzMYmhBGmhBAAAAAAAPwYWmZmBQgxy2ALgBMDTgBYD",
				dps = "1,842.9k",
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["MythicPlus"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgxCAAAAAAGAAAAAAgZmtZMmZMYmxwMmZYGzMzMTmhxMmZmxMjZYMmZGmlBjZwG",
				dps = "1,591.1k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsALDDNsBAAAAAgBAAAAAAYGLDzyMjhxYmZMMjZGjZmZyMMmZmZmxMjZYMmZGGDGzgN",
				dps = "1,826.0k",
			},
		},
		["marksmanship"] = {
			["MythicPlus"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGNWGAzG2AAAAAAAzMzMmxMMjZmZmZmZYmxGjBAAAAAAAmhxMmZmZmZamxYYmhxwMLzA",
				dps = "1,495.4k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgZBAAAAAAMjZmZGmZGmZmhZmZMmZbmBAAAAAAAYGGzMzMzYGNzYMMzAzYGzMG",
				dps = "2,038.9k",
			},
		},
		["survival"] = {
			["MythicPlus"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZGjZMzMmZMGzMmBAAAAAAAAAAAAAANDjZmZmZMzwwYYmhxwMLzgN",
				dps = "1,803.5k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxM2YgFYbYoBLzM2mxMzMjZMGMzYmZmxMDAAAAAAAAAAAAAANDjZmZmZMzYGGDzMwMmxMYB",
				dps = "1,838.1k",
			},
		},
	},
	["rogue"] = {
		["outlaw"] = {
			["MythicPlus"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmxMzMDzwwMzMMzMz0yMmtZAAAAAAY2WmZGMzMWglZbAAAAYmBYgNYGjGzGgtBWMA",
				dps = "1,875.5k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGjZMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMADsBzY0Y2AsNwiZA",
				dps = "1,884.7k",
			},
		},
		["assassination"] = {
			["MythicPlus"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMzwMAAAAAAAzyMmtZAAAAAAotlZmBzMYmZWmtxYwMzMzgZmZzyYGgNzyADYBsMMBGWGA",
				dps = "1,979.2k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmx2MAAAAAAMLDWmBAAAAAg22mZGMzgZmZZ2mZmxAjZmZGzsZbMDwmZZgBsAWGmADLA",
				dps = "1,914.6k",
			},
		},
		["subtlety"] = {
			["MythicPlus"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMGjZYmZmhxsNMzYbbmZMzMjBjlZZAAAAYGMAGzmhBGYWYhWsBD",
				dps = "1,495.5k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmmZGzMGGDDzMzMjxsNMzYbbmZmZmZAjlZbAAAAYGMsZWGYALglhJwsAD",
				dps = "1,881.7k",
			},
		},
	},
	["priest"] = {
		["holy"] = {
			["MythicPlus"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAYZYGLPwgZmZMwMmhxyMzsMAAAAAzysNsMz8AYWYWmxMjBLsxMmaWAwMLYhwYWGgxCsA",
				dps = "235.7k",
				hps = "706.4k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGbmxMzYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWGmFDAZMYD",
				dps = "203.3k",
				hps = "1,713.9k",
			},
		},
		["shadow"] = {
			["MythicPlus"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMYAAAAAAAAAAAAAw4BmFzYmZ2mtxMzMz2YGDmNmZmhZzMwYMjZZZM1MDWwMAmZxywsZAIjxCA",
				dps = "1,443.4k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAMmZAAAAAAAAAAAAAGmFPAzMz2sNmZmZMzMLDmNmZmZMbMwYMMLmtpmZwCMAmZzywsZAIjxCA",
				dps = "1,772.0k",
			},
		},
		["discipline"] = {
			["MythicPlus"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlZGDWGjZmxMbmtZmZmhBAAAAAAAAAAAzysMbDmZGMLMmBjhZhtZaMxyAmZAgAMbz2GYsZD",
				dps = "454.3k",
				hps = "943.4k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGD2GjZmxMbmlZmZmhBAAAAAAAAAAAzilZbYbmZwswwMzMGsw2MNmYBYmBACwsNLbgxmN",
				dps = "345.1k",
				hps = "1,532.9k",
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["MythicPlus"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAgxMmZmZMjZmZYYMz0MMMzMzYAAAAAwwMzMzwsNzMjBAAwMzMzMAAAAjltBGwCYZYCMsAwMYD",
				dps = "834.9k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMjZGjlZMzMTzMGmZMjBAAAAAzMzMzMzMzmZmxAAAgZmZmBAAAYgBmxoxyGgtBsBwMYD",
				dps = "1,143.6k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAMzMjZMmZYYmZmZGGmpZGDjBMzYMjZmZmZmZZmBAAAAAAAAAAAYssNwAWALDTgxCmZMmBA",
				dps = "2,007.4k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGAzMjZMGDzYmZmZmxMmJzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAjltBGwCYZYCMWwMMmBA",
				dps = "1,952.9k",
			},
		},
		["unholy"] = {
			["MythicPlus"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZmZMjxMDzYmZmphhZGzYAAAAAAAAAgZGjZMzMDAMbmhZBzMz8AzMzAWMLGGYgZjhGLAwMA",
				dps = "1,816.2k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMzMzwYwMAgZzMMbzYmZmxMDwiZxwADMbM0YBAmBA",
				dps = "1,739.0k",
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			["MythicPlus"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz22MjxY2mlZmBMzMDAAAAAAbmxwGsAzwQjNAwsMNDYbhZmGmZmxwyMmxmZZwyMjBjZmtxA",
				dps = "2,186.6k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAAWMzGMgBMbMBmFAwsNNDYbxMz0wMzMGWmZmBzyglxMzMzwMbMA",
				dps = "2,025.6k",
			},
		},
		["restoration"] = {
			["Raiding"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmxMLzyMLGWwCsAzYTjlBwMwGDzCjlZmZmMLLMz0YGMLYZmZGMGmlxAAYYA",
				dps = "130.0k",
				hps = "1,930.3k",
			},
			["MythicPlus"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZMzwsMWMsgFYDmxiGLDgZgNmZmFMLzMzIz2iZmpxMDDjFjZwsMMLMAAGA",
				dps = "276.3k",
				hps = "789.5k",
				keystone = "+18"
			},
		},
		["enhancement"] = {
			["MythicPlus"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMjZYmZmhZZmZZZMDAAAAAAAAAgNA2MjhNYBmhhGsAgZZyAWwMzMMzMjZmlZMNbsMMmZAAmxA",
				dps = "2,415.4k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMgZGDzMzMYZmx2sNDAAAAAAAAAgNYBWgZspx2AYGwGAmlJzALLmZmZYMzsMsMzMBGLjZGAgZmB",
				dps = "1,980.8k",
			},
		},
	},
	["mage"] = {
		["arcane"] = {
			["MythicPlus"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAMzgZzCmhZmFPAMzMGTzMmZAAAAAAMAAAwMz2yyyMTsAAAAAAwGALzYYmZmZMDmZGjZmZmZMMG",
				dps = "1,572.8k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMmFPAjZGGTzMmBAAAAAgBAAAmZ2WWWmZiFAAAAAAAwywwMzMzYGmZMmZGzMzYMjB",
				dps = "1,793.8k",
			},
		},
		["fire"] = {
			["MythicPlus"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbzCmxDMzsBMzMmGzMLzAAAAAAwMLz0MzysAAAAWMzMYGzwMzsMjxYmHwmZWmxmZhBAAAAAAA",
				dps = "1,491.5k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgZWmpZmlZBAAAsYMDmZmxMzYxsMGz8AYmlZwswMAAAAAAAA",
				dps = "1,828.4k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNLYGmZWgxMjGj5BmlZmZYYG8AzMzMzMzMzMjZmZMzsMTzMLzCAAAsAAAAAAgZDAAAAAAAA",
				dps = "1,863.5k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmtZBzwYWMMmZ0YMzYGMzwMMzMzMzYmZmZGzMzYGAAAYmZbZZZmpNAAAAAAAAAAAAAAAA",
				dps = "2,128.1k",
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["Raiding"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAwMjZWmZM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZmZzA",
				dps = "1,689.1k",
			},
			["MythicPlus"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAwMzMzyMzDM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZGLA",
				dps = "1,527.3k",
				keystone = "+15"
			},
		},
		["demonology"] = {
			["MythicPlus"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzihxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsZmZmZMmxMmxMzYwMAAA",
				dps = "1,592.3k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmZG2GzsYmZmZMmxwMzMzAzMAAA",
				dps = "1,673.5k",
			},
		},
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNjxMmFzGLLmZAAAAAzMzsMzMzYBGYWMaMDgZDbYAAAAAAAMzMjBAA",
				dps = "1,805.9k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNzwMzsY2MWMzAAAAAzMDLzMzMgxMGWgB2GWoxCGAAAAAAAjZmZAA",
				dps = "1,752.7k",
			},
		},
	},
	["monk"] = {
		["brewmaster"] = {
			["Raiding"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGDAAAAAAwyCGxMDMDjNGsMzMDzyYmx2sYab5B2mtZmhZBAA2AAAAmtZpZmZWYGsA",
				dps = "1,083.2k",
			},
			["MythicPlus"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMmBmlZsNmZGDAAAAAAwyCImZgZYsBsNzMDz2Ymx2sMTbLzmtZmhZBAA2AAAAmtZpZmZWYGsB",
				dps = "1,020.0k",
				keystone = "+16"
			},
		},
		["windwalker"] = {
			["MythicPlus"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYGzMMzMMzMAAAAAAAAAAAYZZYmYmhxMMswM2mxMMbMzws8ATAAsMmhZmxsMDAgNAwsMLNzMzCA",
				dps = "1,551.3k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMzgZmZMLzAYAAAAAAAAAAAwyywImZgZYYxMjtZmZY2GmBLzEAAbzMDzMjZbGAAbAgZZWamZmFAA",
				dps = "1,841.4k",
			},
		},
		["mistweaver"] = {
			["MythicPlus"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWsMzyYWMbzYGbYbWmtxDgZbZZmZZhZ0MzMwMMDgtZMDzGzMMLPwEAAAAgZbab2mZZ2AAAAAbA",
				dps = "500.0k",
				hps = "788.7k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzYYDzYmZZYDLzMb2mlllZmlFMamZGYGmBD2mZmhZjZGs8ATAAAAAAALWmllZbmZCAAsA",
				dps = "322.2k",
				hps = "1,888.1k",
			},
		},
	},
	["druid"] = {
		["feral"] = {
			["MythicPlus"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJYYMYMzMamxMMzMWmhNGAAAAAAADAAAAQzsMLzMbDAYBGzAA",
				dps = "1,712.4k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAgxMbMmFzMmZ2mtHwYbmZGPwMDAAAAAwWDwMwwMjmZMzYmxYG2YAAAAAAMgBAAAAoZWmlZmtBAsAjZAA",
				dps = "1,907.1k",
			},
		},
		["balance"] = {
			["MythicPlus"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUMmZGGzMDYmhZmBYzYxsMzyMzmZmZmZmFzyYYwGYhBYssNzGGz2AYCAAAwyMzYAA",
				dps = "2,012.9k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUYmZGGmZAzMMzYAbzMGmZbGLGzMzMzixMjZmxGYjBYA22GLYamZZAAAAwmZGjBA",
				dps = "1,802.2k",
			},
		},
		["guardian"] = {
			["MythicPlus"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMMzyMjZMjZGLMzwsYBgxgZmZimZmZmZGzCsxAAAAAAAwYALbzshxsMAmAAAA2YmZAA",
				dps = "785.4k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDgBMzYy0MzMmZmhBbMAAAAAAgxMDAAAA0MbzyMzyAAYhZmBA",
				dps = "1,069.7k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFz2AMLLstMmBAAAAAAAAAAAwyghZGY0MMzMmhZmB0GAAAAAADAgZAAAAAgZbmtmlZ2sxMzAzYA",
				dps = "277.3k",
				hps = "755.6k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZDPAjtNzyyYGAAAAAAAAAAAAbDwMMMamBMzMmZmhZabMAAAAAAAAYALLjFMNzsMAAAAWYmZAmB",
				dps = "186.6k",
				hps = "2,002.5k",
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["MythicPlus"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMDMMGz0MmZysNz2MzMzYGzsMDwYmtxMzyYGYgxgFYZMasMAmBgNMA",
				dps = "1,562.0k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMYmNzgBMYMTzYmJz2YbMzMjZMz2MgZMz2YmZZMDMwYwCsMGN2GAzAwGG",
				dps = "1,748.8k",
			},
		},
		["preservation"] = {
			["Raiding"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMzyMzAgZMbwCYBMDTgB2MMA",
				dps = "90.9k",
				hps = "2,048.1k",
			},
			["MythicPlus"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYAAAwMjZmZMGmJGzAAAAmZmJjlZGz2YGAAGzmFWgBmhhGMWgB",
				dps = "321.4k",
				hps = "686.2k",
				keystone = "+14"
			},
		},
		["augmentation"] = {
			["Raiding"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmxyAzsMzMGmZDAAAAAMAAYmBMGjpGmZGAAAAMjZwMzyYmBGbzYwCsMGGbDgZQshZG",
				dps = "1,818.0k",
			},
			["MythicPlus"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAgZZmtZmZGLzgZWmxMDzsBAAAAAAAgZGMDjxDUDzMDAAAAMzMbjZmtxMjhxmxgFYZMMWGAzgYDjB",
				dps = "1,771.5k",
				keystone = "+19"
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			["MythicPlus"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGMzMjxMZmZGAAAAAAwsNMmhZGYmtZbWmZGMDssBLziZMMbMNGzMjBb",
				dps = "1,497.7k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwG",
				dps = "1,946.2k",
			},
		},
		["vengeance"] = {
			["MythicPlus"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMMjMzMYYGbjxMjtZYmZMjHwY2mZmNzMmZYGAAAAglZxMGmFmGYmZwG",
				dps = "858.5k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbjZYGMAAAAALziZMMbMNwMzMsB",
				dps = "1,008.8k",
			},
		},
	},
}
addonTable.DB = talentData