local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["warrior"] = {
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2wYYiBjZAsMGzwGzMjZgZYAAAAAAAmZAALbbAGGYDWWMaMDgZDbmZD",
				dps = "807.4k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNzgZmBwyADbMzMwDMzDMMAAAAAAgZGAgltNADDsBLLGNmBwshNsB",
				dps = "839.6k",
			},
		},
		["fury"] = {
			["MythicPlus"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZGMMMDWwMzGMMjxwMMzssNzYmZ2YmxMzwMsZbGmZMAAAQYMwGssY0YGAzCsYsA",
				dps = "1,567.3k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYMMzsBDzYMMDzMbbzMmZmNmZMzMMDb2mhZGDAAAEmxy2ALgBMDTgx2wG",
				dps = "1,769.5k",
			},
		},
		["arms"] = {
			["Raiding"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmZYbGzAzYMzMYmhBGmhBAAAAAAAPwYWmZmBQgxy2ALgBMDTgBYD",
				dps = "1,656.0k",
			},
			["MythicPlus"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZMzsNbLLjZAAAAYw0wMDLzYGYmFmZGMzww4BYGGAAAAAAAMjZbwAsFDgNzYYBGYG2oBwC",
				dps = "1,613.3k",
				keystone = "+15"
			},
		},
	},
	["paladin"] = {
		["holy"] = {
			["Raiding"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZwMmZYmZWmZ8AbDY22mptwsNjZmhBmtMAgBAbAbMjZmBAAAmZW2WabmhNMAWYMMLzA",
				dps = "327.9k",
				hps = "1,839.9k",
			},
			["MythicPlus"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbzMDzMmZWMjZZmZsNgZbbm2iZYMzMMwslBAMAYDYjZMzMAAAwMzy2SbzMsBMDwghZA",
				dps = "313.1k",
				hps = "778.9k",
				keystone = "+13"
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsZMYWGLzMjZmZZbmZmZmtxMGAAgBAAAAAAg2yMzihZmxYwWbAADMAAbDAAAAYmZZbplZGLMYAYwMbYA",
				dps = "1,006.0k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMzyMLjZmZmx2MmhhZYAAAGAAAAAAASmZWMMDGzMzWAAGAgZw2AAAAAmZW2WabmxiZAAmZMDjB",
				dps = "1,049.7k",
			},
		},
		["retribution"] = {
			["MythicPlus"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRstNzstsNzYzMz2iZbAAAAAAY2SzsYYmx2MY2GGzyMLbjZwAsswGAGAgZm2mlZbGAwGwAAGDzA",
				dps = "1,741.9k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAassNzstsNGbjZ22mZDAAAAAAjmmhhZGbzgZbYWmlZYYwMmhlF2AAAgZm2mlZbGAwGwAgxYGmB",
				dps = "1,629.1k",
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["MythicPlus"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgxCAAAAAAGAAAAAAgZmtZMmZMYmxwMmZYGzMzMTmhxMmZmxMjZYMMzwYYGzMsB",
				dps = "1,557.9k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsAbDDNsBAAAAAgBAAAAAAYGLDzyMjhxYmZMMjZGjZmZyMMmxMjxMjZYMMzwsMDWmZYD",
				dps = "1,645.1k",
			},
		},
		["marksmanship"] = {
			["MythicPlus"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGNWGAzG2AAAAAAAzMzMmxMMjZmZmZmZYmxGjBAAAAAAAmhxMmZmZmZyMGDzMMGmZZGsB",
				dps = "1,471.4k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGN2GAzG2AAAAAAAzYmZmhZmhZmZYmZGjZ2mZAAAAAAAAmhxMzMzMmRzMGDzMwMmxMjB",
				dps = "1,556.6k",
			},
		},
		["survival"] = {
			["MythicPlus"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZGjZMzMmZMGzMmBAAAAAAAAAAAAAANDjZmZmZMzYGGDzMMGmxMYD",
				dps = "1,753.1k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxM2YgFYbYoBLzM2mxMzMjZMGMzYmZmxMDAAAAAAAAAAAAAANDjZmZmZMzYGGDzMwMmxMYB",
				dps = "1,628.8k",
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			["MythicPlus"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMzwMAAAAAAAzyMmtZAAAAAAotlZmBzMYmZWmtxYwMzMzgZmZzyYGgNzyADYBsMMBGWGA",
				dps = "1,896.9k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmx2MAAAAAAMLDWmBAAAAAg22mZGMzgZmZZ2mZmxAjZmZGzsZZMDwmZZgBsAWGmADLA",
				dps = "1,857.5k",
			},
		},
		["outlaw"] = {
			["Raiding"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGjZMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMADsBzY0Y2AsNwiZA",
				dps = "1,752.2k",
			},
			["MythicPlus"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMz2MYMzMmZmZYGGmZmhZmZmWmxsNDAAAAAA2WGzgZmxCsMbDAAAAzMGYgNYGjGzGgtBWMA",
				dps = "1,779.5k",
				keystone = "+18"
			},
		},
		["subtlety"] = {
			["MythicPlus"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMGjZYmZmhxsNMzMbbzMjZmZAjlZZAAAAYGMAGzmhBGYWYhWsBD",
				dps = "1,531.5k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxwYMDzMzMjxsNMzw2MzMzMzAGLz2AAAAwMYAMmNDDMwswCtYDzA",
				dps = "2,146.7k",
			},
		},
	},
	["priest"] = {
		["discipline"] = {
			["Raiding"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGD2GjZmxMbmlZmZmhBAAAAAAAAAAAzilZbYbmZwswwMzMGsw2MNmYBYmBACwsNLbgxmN",
				dps = "310.7k",
				hps = "1,491.2k",
			},
			["MythicPlus"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlZGDWGjZmxMbmtZmZmhBAAAAAAAAAAAzysMbDmZGMLMMGjhZhtZaMxyAmZAgAMbz2GYsZD",
				dps = "440.4k",
				hps = "876.1k",
				keystone = "+18"
			},
		},
		["holy"] = {
			["Raiding"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGbmxMzYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWGmFDAZMYD",
				dps = "182.3k",
				hps = "1,656.2k",
			},
			["MythicPlus"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAYZYGLPwgZmZMwMmhxyMzsMAAAAAWmthlZGYWYWmxMjxYhNmZmaWAwMLYhwYWGgxCsA",
				dps = "222.1k",
				hps = "704.2k",
				keystone = "+12"
			},
		},
		["shadow"] = {
			["MythicPlus"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMYAAAAAAAAAAAAAw4BmFzYmZ2mtxMzMz2YmlBzGzMzwsxsgxYYWMbTNzgFMDgZWsMMbGAyYsA",
				dps = "1,441.9k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAYmHYAAAAAAAAAAAAAGmlBzMz2sNmZmZ2mZmlBzGzMzMmNGYMGmFz2UzMYBGAzsZZY2MAkxYB",
				dps = "1,686.3k",
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["MythicPlus"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAgxMmZmZMjZmZYYMz0MMMzMzYAAAAAwwMzMzwsNzMjBAAwMzMzMAAAAjltBGwCYZYCMsAwMYD",
				dps = "852.8k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMjZGjlZMzMTzMGmZMjBAAAAAzMzMzMzMzmZmxAAAgZmZmBAAAYgBmxoxyGgtBsBwMYD",
				dps = "1,012.8k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAMzMjZMmZYYmZmZGGmpZGDjBMzYMjZmZmZmZZmBAAAAAAAAAAAYssNwAWALDTgxCmZMmBA",
				dps = "1,838.9k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGAzMjZMGDzYmZmZmxMmJzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAjltBGwCYZYCMWwMMmBA",
				dps = "1,667.4k",
			},
		},
		["unholy"] = {
			["MythicPlus"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGjZMmZsMjZmZmGGmZMjBAAAAAAAAAmZMmxMzMAwsZGmFMzMzDMzMDYxsYYgBmNGasAAzAA",
				dps = "1,745.6k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGwiZxwADMbM0YBAmBA",
				dps = "1,570.9k",
			},
		},
	},
	["shaman"] = {
		["enhancement"] = {
			["MythicPlus"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMjZYmZmhZZmZZZMDAAAAAAAAAgNA2MjhNYBmhhGsAgZZyAzyiZMGjxMbGLzMTzCLDjZGAgZMA",
				dps = "2,135.0k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMgZmZYmZmBLzM2GzAAAAAAAAAAYDWgFYGbasNAmBsBgZZyMYWWYMGjZmZbGLzMTw2wYmBAYmZA",
				dps = "1,880.1k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZMzwsMWMsgFYDmxiGLDgZgNmZmFMLzMzIzGzMTjZYGGLmZGLGDzCDAgB",
				dps = "260.7k",
				hps = "765.1k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmxMLzyMLGWwCsAzYTjlBwMwGDzCjlZmZmMLLMz0YGmZBLzMGMGmlxAAYYA",
				dps = "115.9k",
				hps = "1,823.2k",
			},
		},
		["elemental"] = {
			["Raiding"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAAWMzGMgBMbMBmFAwsNNDYbxMz0wMzMGWmZmBzyglxMzMzwMbMA",
				dps = "1,823.5k",
			},
			["MythicPlus"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz22MjxY2mlZmBMzMDAAAAAAbmxwGsAzwQjNAwYaGw2CzMNMzMz2MWmxMYWGsMzYwYmZbMA",
				dps = "2,145.8k",
				keystone = "+18"
			},
		},
	},
	["mage"] = {
		["arcane"] = {
			["MythicPlus"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYGMbzCmZegZmFPAMzwYamxMAAAAAAMAAAwMz2yyyMTsAAAAAAwGALzYYmZmZMDmZGjZmZmZMMG",
				dps = "1,574.9k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMmFPAjZGGTzMmBAAAAAgBAAAmZ2WWWmZiFAAAAAAAwyMGmZmZGzwMzMGzYmZGDjB",
				dps = "1,938.4k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbzsNLYGmZWgxMjGjxsMjBDzwMzMzMzMzMzMjZmZMDAAAMzstssMz0GAAAAAAsAAAAAAAAA",
				dps = "1,567.6k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmtZBzwYWMMmZ0YMzYGMzwMMzMzMzYmZmZGzMzYGAAAYmZbZZZmpNAAAAAAAAAAAAAAAA",
				dps = "1,861.6k",
			},
		},
		["fire"] = {
			["Raiding"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgZWmpZmlZBAAAsYMDmZmxMzYxsMGz8AYmlZwswMAAAAAAAA",
				dps = "1,668.3k",
			},
			["MythicPlus"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAMjhZzCmZMzsYgZmx0YMmZAAAAAAMzyMNzsMLAAAgFzMDmxMMzMLzYMm5BsZmlZsYWYAAAAAAAA",
				dps = "1,495.7k",
				keystone = "+15"
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["Raiding"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAwMjZWmZM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZmZzA",
				dps = "1,519.1k",
			},
			["MythicPlus"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAwMzMzyMzDM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZGLA",
				dps = "1,507.7k",
				keystone = "+14"
			},
		},
		["demonology"] = {
			["MythicPlus"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzihxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsZmZmZMmxMmxMzYwMAAA",
				dps = "1,642.4k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsZmZmZMmxwMzMzAzMAAA",
				dps = "1,688.9k",
			},
		},
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNjxMmFzGLLmZAAAAAzMzsMzMzYBGYWMaMDgZDbYAAAAAAAMzMjBAA",
				dps = "1,792.1k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNzwMzsY2MWMzAAAAAzMDLzMzMgxMGWgB2GWoxCGAAAAAAAjZmZAA",
				dps = "1,573.8k",
			},
		},
	},
	["monk"] = {
		["mistweaver"] = {
			["MythicPlus"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWsMzyYWMbzYGbYbWmtxDgZbZZmZZhZ0MzMwMMDgtZMDz2YmBLPwEAAAAgZbab2mZZ2AAAAAbA",
				dps = "507.8k",
				hps = "800.3k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzYYDzYmZZYDLzMb2mlllZmlFMamZGYGmBD2mZmhZjZGs8ATAAAAAAALWmllZbmZCAAsA",
				dps = "290.9k",
				hps = "1,780.1k",
			},
		},
		["brewmaster"] = {
			["MythicPlus"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMmBmlZegtxMzYAAAAAAAWWAxMDMDjNgtZmZMzGzM2mlZab5B2sNzMMLAAwGAAAwsNLNzMzCzgN",
				dps = "855.7k",
				keystone = "+12"
			},
			["Raiding"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGDAAAAAAwyCImZgZYsBsNzMjZ2Ymx2sMTbLPw2sNzMMLAAwGAAAwsNLNzMzCzgN",
				dps = "955.0k",
			},
		},
		["windwalker"] = {
			["MythicPlus"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYGzMMzMMzMAAAAAAAAAAAYZZYmYmhxMMswM2mxMMbjZGs8ATAAsMmhZmxsMDAgNAwsMLNzMzCA",
				dps = "1,558.9k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBzYmZWmZgBAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzwMzY2mBAwGAYWmlmZmZBA",
				dps = "1,654.9k",
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["MythicPlus"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUMmZGGjZAzMMzMAbmZzsMzyMzixMzMzsYMGmZsBWYAGgttxCmmZWGAAAAsNzMGA",
				dps = "1,672.3k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUYmZGGmZAzMMzYAbzMGmZbGLGzMzMzixMjZmxGYjBYA22GLYamZZAAAAwmZGjBA",
				dps = "1,526.6k",
			},
		},
		["feral"] = {
			["MythicPlus"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJYMjBMzMamxMmZmxywsxAAAAAAAYAAAAAamlZZmZbAALwYGA",
				dps = "1,629.1k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZb2MzCzYmZb2YsNzMz8AzMAAAAAAbBDDYMzMamxMjZGjZYjBAAAAAAAYAAAAAAmtZWa2mZZDzMDA",
				dps = "1,591.9k",
			},
		},
		["guardian"] = {
			["MythicPlus"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMMzyMjZMjZGLMzwsYBgxgZmZimZmZmZGzCsxAAAAAAAwYALbzshxsMAmAAAA2YmZAA",
				dps = "756.5k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjZMDzYxDMMzsYZAMgZGTmmZmxMzMMYjBAAAAAAMmZAAAAgmZbWmZWGAALMzMAA",
				dps = "898.0k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFz2AMLLstMmBAAAAAAAAAAAwyghZGY0MMzMmhZmB0GAAAAAADAgZAAAAAgZbmtmlZ2sxMzAzYA",
				dps = "270.5k",
				hps = "762.9k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZDPAjtNzyyYGAAAAAAAAAAAAbDwMMMamBMzMmZmhZabMAAAAAAAAYALLjFMNzsMAAAAWYmZAmB",
				dps = "163.9k",
				hps = "1,983.6k",
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			["MythicPlus"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGMzMjxMZmZGAAAAAAwsMMmhZGMzsNbjxMYmNssBLziZMMbMNGzMjBb",
				dps = "1,520.6k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwG",
				dps = "1,727.7k",
			},
		},
		["vengeance"] = {
			["MythicPlus"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMMjhZkZmBDzYbMmZsNDzMjZ8AGz2MzsZmZbmhZAAAAAWmFzYYWYagZmBbA",
				dps = "861.8k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbjZYGMAAAAALziZMMbMNwMzMsB",
				dps = "928.0k",
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["MythicPlus"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMDmZww0YmZysNz2MzMzYGzsMDwYmtxMz2YGYgxgFYZMasMAmBgNMA",
				dps = "1,458.5k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMYmNzgBMYMTzYmJz2YbMzMjZMz2MgZMz2YmZZMDMwYwCsMGN2GAzAwGG",
				dps = "1,521.4k",
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAgZZmtZmZGLzgZWmxMDzsBAAAAAAAgZGMDjxDUDzMDAAAAMzMbjZmtxMjhxmxgFYZMMWGAzgYDjB",
				dps = "1,679.8k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmxyAzsMzMGmZDAAAAAAAAzMgHAjpmxMzAAAAgZMz2YmZZMzAjtZMYBWGDjtBwMI2wMD",
				dps = "1,571.8k",
			},
		},
		["preservation"] = {
			["MythicPlus"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYAAAwMjZm5BMGzImZAAAAmZmJjtZGjxMAAMmNLsADMDDNYsAD",
				dps = "329.9k",
				hps = "696.2k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMzyMzAgZMbwCYBMDTgB2MMA",
				dps = "67.4k",
				hps = "2,096.5k",
			},
		},
	},
}
addonTable.DB = talentData