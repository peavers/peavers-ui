local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["warrior"] = {
		["fury"] = {
			["MythicPlus"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagxghhZwyMmZ2ghZMGmhZmltZGzMzGzMmZGmhNbzwMjBAAACjB2glFjGzAYWgFsA",
				dps = "1,522.5k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYMMzsBDzYMMDzMbbzMmZmNmZMzMMDb2mhZGDAAAEmxy2ALgBMDTgx2wG",
				dps = "1,710.5k",
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2wYYaMYMDwswYG2YmZYgZYAAAAAAAmZAALbbAGGYDWWMaMDgZDbmZD",
				dps = "777.7k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNzgZmBwyADbMzMwDMzDMMAAAAAAgZGAgltNADDsBLLGNmBwshNsB",
				dps = "801.5k",
			},
		},
		["arms"] = {
			["MythicPlus"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZMzsNbLLjZAAAAYw0wMDLDzAjlZmZGMzwYGYGGAAAAAAAMjZbwAsFDgNzYYBGYG2oBwC",
				dps = "1,578.9k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmZYbGzAzYMzMYmhBGmhBAAAAAAAPwYWmZmBQgxy2ALgBMDTgBYD",
				dps = "1,570.4k",
			},
		},
	},
	["paladin"] = {
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsZMYWGLzMjZmZZbmZmZmtxMGAAgBAAAAAAg2yMzihZGGzwWbAADMAAbDAAAAYmZZbplZGLMYAYwMbYA",
				dps = "1,021.0k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMzyMLjZmZmx2MmhhZYAAAGAAAAAAASmZWMMDGzMzWAAGAgZw2AAAAAmZW2WabmxiZAAmZMDjB",
				dps = "1,022.1k",
			},
		},
		["holy"] = {
			["MythicPlus"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbzMDzMmZWMjZZmZsNgZbbm2iZYMzMMwslBAMAYDYjZMzMAAAwMzy2SbzMsBMDwghZA",
				dps = "297.0k",
				hps = "740.1k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZwMmZYmZWmZ8AbDY22mptwsNjZmhBmtMAgBAbAbMjZmBAAAmZW2WabmhNMAWYMMLzA",
				dps = "308.3k",
				hps = "1,807.2k",
			},
		},
		["retribution"] = {
			["MythicPlus"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRstNzstsNzYzM2WMbDAAAAAAzWTzsYYmx2MY2GGzyMLbjZwghlF2AAAgZm2mlZbGAwGwAAGmND",
				dps = "1,661.7k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAassNzstsNGbjZ22mZDAAAAAAjmmhhZGbzgZbYWmlZYYwMmhlF2AAAgZm2mlZbGAwGwAgxYGmB",
				dps = "1,542.8k",
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["Raiding"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsAbDDNsBAAAAAgBAAAAAAYGLDzyMjhxYmZMMjZGjZmZyMMmxMjxMjZYMMzwsMDWmZYD",
				dps = "1,558.2k",
			},
			["MythicPlus"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgxCAAAAAAGAAAAAAgZmtZMmZMYmxwMmZYGzMzMTmhxMmZmxMjZYMMzwYYmlZwG",
				dps = "1,494.7k",
				keystone = "+16"
			},
		},
		["survival"] = {
			["MythicPlus"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZmZMjZmxYMGzMmBAAAAAAAAAAAAAANDjZMzMjZGzwYYmhxwMLzgN",
				dps = "1,662.0k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxM2YgFYbYoBLzM2mxMzMjZMGMzYmZmxMDAAAAAAAAAAAAAANDjZmZmZMzYGGDzMwMmxMYB",
				dps = "1,552.3k",
			},
		},
		["marksmanship"] = {
			["MythicPlus"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGNWGAzG2AAAAAAAzMzMmxMMjZmZmZmZYmxGjBAAAAAAAmhxMmZmZmZyMGDzMMGmZZGsB",
				dps = "1,405.7k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGN2GAzG2AAAAAAAzYmZmhZmhZmZYmZGjZ2mZAAAAAAAAmhxMzMzMmRzMGDzMwMmxMjB",
				dps = "1,477.4k",
			},
		},
	},
	["rogue"] = {
		["outlaw"] = {
			["MythicPlus"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmxMzMDzwwMzMMzMz0yMmtZAAAAAAw2yYGMzMWglZbAAAAMzMADsBzY0Y2AsNwiZA",
				dps = "1,694.6k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGjZMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMADsBzY0Y2AsNwiZA",
				dps = "1,653.4k",
			},
		},
		["assassination"] = {
			["Raiding"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmhHYAAAAAAYWglZAAAAAAottZmhZmxYmZWmtZmZMwYmZmxMbWGzAsZWGYALglhJwwCA",
				dps = "1,661.2k",
			},
			["MythicPlus"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmZGmBAAAAAAYWmxsNDAAAAAAttMzM8AzMYmZWmtxYwMzMzgZmZbbZMDwmZZgBsAWGmADLA",
				dps = "1,575.1k",
				keystone = "+15"
			},
		},
		["subtlety"] = {
			["MythicPlus"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMGjZYmZmhxsNMzYbZmZMzMjBjlZbAAAAYGMAGzmhBGYWYhWsBD",
				dps = "1,520.4k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxwYMDzMzMjxsNMzYbbmZMzMjBjlZbAAAAYGMAGzmhBGYWYhWsBD",
				dps = "1,644.0k",
			},
		},
	},
	["priest"] = {
		["discipline"] = {
			["MythicPlus"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlZGDWGjZmxMbmtZmZmhBAAAAAAAAAAAzysMbDmZGjZhhBjhZZ5BMTDxyAmZAgAMbz2GYsZD",
				dps = "406.7k",
				hps = "817.9k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGD2GjZmxMbmlZmZmhBAAAAAAAAAAAzilZbYbmZwswwMzMGsw2MNmYBYmBACwsNLbgxmN",
				dps = "286.9k",
				hps = "1,441.3k",
			},
		},
		["holy"] = {
			["Raiding"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGbmxMzYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWGmFDAZMYD",
				dps = "174.8k",
				hps = "1,580.8k",
			},
			["MythicPlus"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAYZYGLPwgZmZMwMmhxyMzsMAAAAAzysNsMzMwCzyMMjhZhNmxUzCAmZBLEGzyAMWgF",
				dps = "205.2k",
				hps = "672.5k",
				keystone = "+15"
			},
		},
		["shadow"] = {
			["Raiding"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAYmHYAAAAAAAAAAAAAGmlBzMz2sNmZmZ2mZmlBzGzMzMmNGYMGmFz2UzMYBGAzsZZY2MAkxYB",
				dps = "1,530.9k",
			},
			["MythicPlus"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMYAAAAAAAAAAAAAw4BmFzYmZ2mtxMzMz2YmlBzGzMzMmNGYMGmFz2UzMYBzAYmFLDzmBgMGLA",
				dps = "1,427.0k",
				keystone = "+16"
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["MythicPlus"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAgxMGzYMjZmZGzYMz0MMMzMzYAAAAAwwMzMzMmtZmZMAAAMzMzMAAAAjltBGwCYZYCMsAwMYD",
				dps = "761.1k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMjZGjlZMzMTzMGmZMjBAAAAAzMzMzMzMzmZmxAAAgZmZmBAAAYgBmxoxyGgtBsBwMYD",
				dps = "944.6k",
			},
		},
		["unholy"] = {
			["MythicPlus"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZmZMjxMDzYMzMNMMzMzYAAAAAAAAAgZGjZMzMDAMbmhZBzMz8AzMzAWMLGGYgZjhGLAwMA",
				dps = "1,689.0k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGwiZxwADMbM0YBAmBA",
				dps = "1,507.6k",
			},
		},
		["frost"] = {
			["Raiding"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGAzYMzMGDzYmZmZmxMmJzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAjltBGwCYZYCMWwMMmBA",
				dps = "1,572.0k",
			},
			["MythicPlus"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGgZGjZMDDzYmZmZGmxMNzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAjltBGwCYZYCMWwMMmBA",
				dps = "1,546.8k",
				keystone = "+17"
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			["MythicPlus"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAYbWWmZmZGzysMzghZMDAAAAAAbmxwGsAzwQjNAwsNNDYDmphZmZ2mxyMmxiZZwyMzMGDzsxA",
				dps = "1,397.3k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz22MzMzYWmlZmBMzMDAAAAAAbmxwGsAzwQjNAwsNNjBbwMhZmZ2GWmZmBz2YZWGjBDzsxA",
				dps = "1,650.0k",
			},
		},
		["enhancement"] = {
			["Raiding"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzCmhZ2mZmZY2mZWWGAAAAAAAAAAYDgNzYYDWgZYoBLAYWmMDssYmZmhxMzywyMzEYsMmZAAmxA",
				dps = "1,602.6k",
			},
			["MythicPlus"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMjZYmZmhZZmZZZMDAAAAAAAAAgNA2MjhNYBmhhGsAgZZyAzyiZMGjxMbGLzMTzCLDjZGAgZMA",
				dps = "1,969.5k",
				keystone = "+18"
			},
		},
		["restoration"] = {
			["Raiding"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmxMLzyMbGWwCsAzYTjlBwMwGDzCzsNzMzkZbhZmGzgZDLzMGMGmlxAAYYA",
				dps = "100.9k",
				hps = "1,689.9k",
			},
			["MythicPlus"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZMzwsMWMjFsAbwMW0YZAMDsxMzsgZZmxIz2CzMNmZMDsYMDmlhZZMAAGA",
				dps = "256.6k",
				hps = "750.1k",
				keystone = "+16"
			},
		},
	},
	["mage"] = {
		["frost"] = {
			["Raiding"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmtZBzwYWMMmZ0YMzYGMzwMMzMzMzYmZmZGzMzYGAAAYmZbZZZmpNAAAAAAAAAAAAAAAA",
				dps = "1,651.0k",
			},
			["MythicPlus"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzYmZW8AwMjGjxYmZwwMMzMzMzMzMzMzYmZGzAAAAzMbLLLzMtBAAAAAALAAAAAAAAA",
				dps = "1,542.2k",
				keystone = "+17"
			},
		},
		["fire"] = {
			["MythicPlus"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbzCmhZmNDMzw0YmZZGAAAAAAGAwMz0yssMDAwmZmxMDzYmZsMjZGmHw2Mz2MWMAAAAAAAAA",
				dps = "1,587.6k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgBAMzMtMLLzAAsZMDGzMmZMLmlxMmZYmtZYmFMAAAAAAAA",
				dps = "1,462.7k",
			},
		},
		["arcane"] = {
			["Raiding"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMmFPAjZGGTzMmBAAAAAgBAAAmZ2WWWmZiFAAAAAAAwyMGmZmZGzwMzMGzYmZGDjB",
				dps = "1,785.5k",
			},
			["MythicPlus"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYGMbzCmxMzsAMzMGTzMmBAAAAAgBAAAmZ2WWWmZiFAAAAAA2AYZGDzMzMDDzMzYMzMzMjhxA",
				dps = "1,489.4k",
				keystone = "+16"
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["Raiding"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAwMjZWmZM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZmZzA",
				dps = "1,448.8k",
			},
			["MythicPlus"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAwMzMzyMzDM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZGLA",
				dps = "1,466.5k",
				keystone = "+16"
			},
		},
		["demonology"] = {
			["MythicPlus"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsZmZmZMmxMmxMzYwMAAA",
				dps = "1,605.2k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsZmZmZMmxwMzMzAzMAAA",
				dps = "1,653.1k",
			},
		},
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNDmZmFzGLLmZAAAAAzMzsMzMzYBGYWMaMDgZDbYAAAAAAAMzMjBAA",
				dps = "1,575.9k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNzwMzsY2MWMzAAAAAzMDLzMzMgxMGWgB2GWoxCGAAAAAAAjZmZAA",
				dps = "1,488.6k",
			},
		},
	},
	["monk"] = {
		["mistweaver"] = {
			["MythicPlus"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWYmlxsY2mZmxG2mlZbgtZbZZmZZhhmZmBmhZAsNzMDzGzMMLPwEAAAAAAwilZbb2mZmAAAbA",
				dps = "272.9k",
				hps = "719.9k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzYYDzYmZZYDLzMb2mlllZmlFMamZGYGmBD2mZmhZjZGs8ATAAAAAAALWmllZbmZCAAsA",
				dps = "275.7k",
				hps = "1,755.7k",
			},
		},
		["windwalker"] = {
			["MythicPlus"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBzYmZWmZgBAAAAAAAAAAAstMMTMzwYGYZhhtZmZY2GmhZ5BmAAYZmZYmZMbzAAYDAMLzSzMzsAA",
				dps = "1,431.5k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBzYmZWmZgBAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzwMzY2mBAwGAYWmlmZmZBA",
				dps = "1,522.9k",
			},
		},
		["brewmaster"] = {
			["MythicPlus"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMmBmlZegtxMzYAAAAAAAWWgJmZwMDDwYbGzwsxMjtZZm2WegNbzMDzCAAsBAAAMbzSzMzswMYD",
				dps = "848.0k",
				keystone = "+12"
			},
			["Raiding"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGDAAAAAAwyCImZgZYsBsNzMjZ2Ymx2sMTbLPw2sNzMMLAAwGAAAwsNLNzMzCzgN",
				dps = "875.0k",
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["MythicPlus"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUMmZGGjZAzMMzMAbmZzsMzyMzixMzMzsYMGmZsBWYAGgttxCmmZWGAAAAsNzMGA",
				dps = "1,665.0k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUYmZGGmZAzMMzYAbzMGmZbGLGzMzMzixMjZmxGYjBYA22GLYamZZAAAAwmZGjBA",
				dps = "1,435.0k",
			},
		},
		["feral"] = {
			["MythicPlus"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWMzMzMb2eAsNzMzYmBAAAAAYLYMjBMzQzMmhZmhZMbmBAAAAAAAAAAAgmZZWmZ2GAwCmZGAA",
				dps = "1,464.7k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZb2MzCzYmZb2YsNzMz8AzMAAAAAAbBDDYMzMamxMMzMMDbzMAAAAAAAADAAAAAwsNzSz2MLbwMDA",
				dps = "1,498.2k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFz2AMLLstMmBAAAAAAAAAAAwyAMzAjmhZmxMMzMg2YAAAAAADAgZAAAAAgZbmtmlZ2sxMzAzYA",
				dps = "253.6k",
				hps = "731.2k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZDDjtNWWGzAAAAAAAAAAAAYbAmxMMamBMzwMzgZabmBAAAAAAAADYZZsgpZmlBAAAwCzMDwM",
				dps = "145.3k",
				hps = "1,826.3k",
			},
		},
		["guardian"] = {
			["MythicPlus"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMMzyMjZMjZGLMzwsYBgxgZmZimZmZmZGzCsxAAAAAAAwYALbzshxsMAmAAAA2YmZAA",
				dps = "746.7k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjZMDzYxDMMzsYZAMgZGTmmZmxMzMMYjBAAAAAAMmZAAAAgmZbWmZWGAALMzMAA",
				dps = "826.6k",
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			["Raiding"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwG",
				dps = "1,618.4k",
			},
			["MythicPlus"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGMzMjxMZYAAAAAAAmthxMjZGMzsNbjxMYmNssBLziZMMbMNGzMjZYD",
				dps = "1,429.3k",
				keystone = "+15"
			},
		},
		["vengeance"] = {
			["Raiding"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbjZYGMAAAAALziZMMbMNwMzMsB",
				dps = "885.6k",
			},
			["MythicPlus"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMMjhZkZmBDzYbMmZsNDzMjZ8AGz2MzsZmxMDzAAAAAsMLmxwsw0AzMjxG",
				dps = "821.2k",
				keystone = "+17"
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["MythicPlus"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMDMMGPw0wMTmtZ2mZmZGzYmlZAzYmtxMz2MzADMGsALjRjlBwMAshB",
				dps = "1,431.6k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmhZADGz0MmZysNz2MzMzYGzsMDYGzsNmZ2GzADMGsALjRjtBwMAshB",
				dps = "1,726.3k",
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMLzsNzMzYZgZWmxYYmNAAAAAAAAMzgZYMegaYmZAAAAgZmZbMzsNmZMM2MGsALjhxyAYGEbYmB",
				dps = "1,528.4k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmhBzMLzMjhZ2AAAAAADAAmZAwYqZMzMAAAAYGzsNmZWGzMwYbGDWglxwYbAMDiNMzA",
				dps = "1,334.9k",
			},
		},
		["preservation"] = {
			["Raiding"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMzyMzAgZMbwCYBMDTgB2MMA",
				dps = "60.6k",
				hps = "2,035.6k",
			},
			["MythicPlus"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYADAAmZMjZMGzIGDAAAwMzMZsNzYMmBAgxsZhFYgZYoBjFYG",
				dps = "301.0k",
				hps = "675.7k",
				keystone = "+14"
			},
		},
	},
}
addonTable.DB = talentData