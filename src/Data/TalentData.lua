local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["paladin"] = {
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsZMYWGLzMjZmZZbmZmZmtxMGAAgBAAAAAAg2yMzihZmxYwWbAADMAAbDAAAAYmZZbplZGLMYAYwMbYA",
				dps = "1,019.7k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMzyMLjZmZmx2MmhhZYAAAGAAAAAAASmZWMMDGzMzWAAGAgZw2AAAAAmZW2WabmxiZAAmZMDjB",
				dps = "1,015.9k",
			},
		},
		["holy"] = {
			["Raiding"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZwMmZYmZWmZ8AbDY22mptwsNjZmhBmtMAgBAbAbMjZmBAAAmZW2WabmhNMAWYMMLzA",
				dps = "318.5k",
				hps = "1,839.8k",
			},
			["MythicPlus"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbzMDzMmZWMjZZmZsNgZbbm2iZYMzMMwslBAMAYDYjZMzMAAAwMzy2SbzMsBMDwghZA",
				dps = "309.0k",
				hps = "750.8k",
				keystone = "+14"
			},
		},
		["retribution"] = {
			["MythicPlus"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRstNzstsNzYzM2WMbDAAAAAAzWTzsYYmx2MY2GGzyMLbjZwghlF2AAAgZm2mlZbGAwGwAAGmND",
				dps = "1,718.0k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAassNzstsNGbjZ22mZDAAAAAAjmmhhZGbzgZbYWmlZYYwMmhlF2AAAgZm2mlZbGAwGwAgxYGmB",
				dps = "1,578.2k",
			},
		},
	},
	["warrior"] = {
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2wYYiBjZAsMGzwGzMjZgZYAAAAAAAmZAALbbAGGYDWWMaMDgZDbmZD",
				dps = "794.5k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNzgZmBwyADbMzMwDMzDMMAAAAAAgZGAgltNADDsBLLGNmBwshNsB",
				dps = "814.8k",
			},
		},
		["fury"] = {
			["MythicPlus"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagxghhZwyMmZ2ghZMGmhZmltZGzMzGzMmZGmhNbzwMjBAAACjB2glFjGzAYWgFsA",
				dps = "1,554.4k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYMMzsBDzYMMDzMbbzMmZmNmZMzMMDb2mhZGDAAAEmxy2ALgBMDTgx2wG",
				dps = "1,735.7k",
			},
		},
		["arms"] = {
			["MythicPlus"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZMzsNbLLjZAAAAYw0wMDLzYGYmFmZGMzww4BYGGAAAAAAAMjZbwAsFDgNzYYBGYG2oBwC",
				dps = "1,616.1k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmZYbGzAzYMzMYmhBGmhBAAAAAAAPwYWmZmBQgxy2ALgBMDTgBYD",
				dps = "1,601.3k",
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["Raiding"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsAbDDNsBAAAAAgBAAAAAAYGLDzyMjhxYmZMMjZGjZmZyMMmxMjxMjZYMMzwsMDWmZYD",
				dps = "1,590.7k",
			},
			["MythicPlus"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgxCAAAAAAGAAAAAAgZmtZMmZMYmxwMmZYGzMzMTmhxMzMjxMDDjxMzwYGjlZwG",
				dps = "1,530.5k",
				keystone = "+17"
			},
		},
		["marksmanship"] = {
			["MythicPlus"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGNWGAzG2AAAAAAAzMzMmxMMjZmZmZmZYmxGjBAAAAAAAmhxMmZmZmZyMGDzMMGmZZGsB",
				dps = "1,447.6k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGN2GAzG2AAAAAAAzYmZmhZmhZmZYmZGjZ2mZAAAAAAAAmhxMzMzMmRzMGDzMwMmxMjB",
				dps = "1,501.2k",
			},
		},
		["survival"] = {
			["MythicPlus"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZmZMjZmxYMGzMmBAAAAAAAAAAAAAANDjZMzMjZGzwYYmhZZYGzgN",
				dps = "1,694.8k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxM2YgFYbYoBLzM2mxMzMjZMGMzYmZmxMDAAAAAAAAAAAAAANDjZmZmZMzYGGDzMwMmxMYB",
				dps = "1,572.1k",
			},
		},
	},
	["rogue"] = {
		["outlaw"] = {
			["MythicPlus"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mBjZmxMzMDzwwMzMMzMz0yMmtZAAAAAAw2yYGMzMWglZbAAAAMzMADsBzY0Y2AsNwiZA",
				dps = "1,743.0k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGjZMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMADsBzY0Y2AsNwiZA",
				dps = "1,704.3k",
			},
		},
		["assassination"] = {
			["MythicPlus"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMzwMAAAAAAAzyMmtZAAAAAAotlZmBzMYmZWmtxYwMzMzgZmZzyYGgNzyADYBsMMBGWGA",
				dps = "1,841.9k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmx2MAAAAAAMLDWmBAAAAAg22mZGMzgZmZZ2mZmxAjZmZGzsZZMDwmZZgBsAWGmADLA",
				dps = "1,709.0k",
			},
		},
		["subtlety"] = {
			["Raiding"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxwYMDzMzMjxsNMzw2MzMzMzAGLz2AAAAwMYAMmNDDMwswCtYDzA",
				dps = "1,998.8k",
			},
			["MythicPlus"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMGjZYmZmhxsNMzYbZmZMzMjBjlZbAAAAYGMAGzmhBGYWYhWsBD",
				dps = "1,537.6k",
				keystone = "+15"
			},
		},
	},
	["priest"] = {
		["holy"] = {
			["MythicPlus"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAYZYGLPwgZmZMwMmhxyMzsMAAAAAWmNsMzMYWYWmxMjxYhNmZmaWAwMLYhwYWGgxCsA",
				dps = "220.5k",
				hps = "676.9k",
				keystone = "+13"
			},
			["Raiding"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGbmxMzYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWGmFDAZMYD",
				dps = "175.3k",
				hps = "1,602.6k",
			},
		},
		["discipline"] = {
			["Raiding"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGD2GjZmxMbmlZmZmhBAAAAAAAAAAAzilZbYbmZwswwMzMGsw2MNmYBYmBACwsNLbgxmN",
				dps = "291.9k",
				hps = "1,475.8k",
			},
			["MythicPlus"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlZGDWGjZmxMbmtZmZmhBAAAAAAAAAAAzysMbDmZGjZhhBjhZZ5BMTDxyAmZAgAMbz2GYsZD",
				dps = "424.7k",
				hps = "840.1k",
				keystone = "+18"
			},
		},
		["shadow"] = {
			["Raiding"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAYmHYAAAAAAAAAAAAAGmlBzMz2sNmZmZ2mZmlBzGzMzMmNGYMGmFz2UzMYBGAzsZZY2MAkxYB",
				dps = "1,558.8k",
			},
			["MythicPlus"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMYAAAAAAAAAAAAAw4BmFzYmZ2mtxMzMz2YGDmNmZmZMbMwYMjZxsN1MDWwMAmZxywsZAIjxCA",
				dps = "1,443.6k",
				keystone = "+15"
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["MythicPlus"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAgxMGzYMjZmZGzYMz0MMMzMzYAAAAAwwMzMzMmtZmZMAAAMzMzMAAAAjltBGwCYZYCMsAwMYD",
				dps = "815.2k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMjZGjlZMzMTzMGmZMjBAAAAAzMzMzMzMzmZmxAAAgZmZmBAAAYgBmxoxyGgtBsBwMYD",
				dps = "969.7k",
			},
		},
		["unholy"] = {
			["MythicPlus"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGjhZYYmZmZmphxMzMzYAAAAAAAAAgZGjZMzMDAMbmhZBzMz8AzMzAWMLGGYgZjhGLAwMA",
				dps = "1,732.6k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGwiZxwADMbM0YBAmBA",
				dps = "1,528.9k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAMzYMjxMDDzMzMzMGmpZGDjBMzYMjZmZmZmZZmBAAAAAAAAAAAYssNwAWALDTgxCmZMmBA",
				dps = "1,786.4k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGAzMjZMGDzYmZmZmxMmJzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAjltBGwCYZYCMWwMMmBA",
				dps = "1,607.4k",
			},
		},
	},
	["shaman"] = {
		["enhancement"] = {
			["MythicPlus"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMjZYmZmhZZmZZZMDAAAAAAAAAgNA2MjhNYBmhhGsAgZZyAzyiZMGjxMbGLzMTzCLDjZGAgZMA",
				dps = "2,025.8k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzCmhZ2mZmZY2mZWWGAAAAAAAAAAYDgNzYYDWgZYoBLAYWmMDssYmZmhxMzywyMzEYsMmZAAmxA",
				dps = "1,610.1k",
			},
		},
		["elemental"] = {
			["MythicPlus"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAYbWWmZmZGzysMzghZMDAAAAAAbmxwGsAzwQjNAwsNNDYDmphZmZ2mxyMmxiZZwyMzMGDzsxA",
				dps = "1,402.6k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz22MzMzYWmlZmBMzMDAAAAAAbmxwGsAzwQjNAwsNNjBbwMhZmZ2GWmZmBz2YZWGjBDzsxA",
				dps = "1,669.5k",
			},
		},
		["restoration"] = {
			["Raiding"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmxMLzyMbGWwCsAzYTjlBwMwGDzCzsNzMzkZbhZmGzgZDLzMGMGmlxAAYYA",
				dps = "106.2k",
				hps = "1,693.2k",
			},
			["MythicPlus"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZMzwsMWMjFsAbwMW0YZAMDsxMzsgZZmxIz2CzMNmZMDsYMDmlhZZMAAGA",
				dps = "261.7k",
				hps = "753.5k",
				keystone = "+16"
			},
		},
	},
	["mage"] = {
		["arcane"] = {
			["MythicPlus"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYGMbzCmxMzsAMzMGTzMmBAAAAAgBAAAmZ2WWWmZiFAAAAAA2AYZGDzMzMDDzMzYMzMzMjhxA",
				dps = "1,522.0k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMmFPAjZGGTzMmBAAAAAgBAAAmZ2WWWmZiFAAAAAAAwyMGmZmZGzwMzMGzYmZGDjB",
				dps = "1,871.1k",
			},
		},
		["fire"] = {
			["MythicPlus"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAMzYxsNLYGmZW8A8AmZGTjxYGAAAAAAmZZmmZWmFAAAwiZmBzYGmZmlZMGz8A2MzyM2MLMAAAAAAAA",
				dps = "1,559.8k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgZWmpZmlZBAAAsYMDmZmxMzYxsMGz8AYmlZwswMAAAAAAAA",
				dps = "1,619.7k",
			},
		},
		["frost"] = {
			["Raiding"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmtZBzwYWMMmZ0YMzYGMzwMMzMzMzYmZmZGzMzYGAAAYmZbZZZmpNAAAAAAAAAAAAAAAA",
				dps = "1,694.7k",
			},
			["MythicPlus"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzYmZW8AwMjGjxYmZwwMMzMzMzMzMzMzYmZGzAAAAzMbLLLzMtBAAAAAALAAAAAAAAA",
				dps = "1,577.9k",
				keystone = "+17"
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["MythicPlus"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAwMzMzyMzDM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZGLA",
				dps = "1,500.2k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAwMjZWmZM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZmZzA",
				dps = "1,467.4k",
			},
		},
		["demonology"] = {
			["Raiding"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsZmZmZMmxwMzMzAzMAAA",
				dps = "1,670.4k",
			},
			["MythicPlus"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsZmZmZMmxMmxMzYwMAAA",
				dps = "1,622.8k",
				keystone = "+15"
			},
		},
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNDmZmFzGLLmZAAAAAzMzsMzMzYBGYWMaMDgZDbYAAAAAAAMzMjBAA",
				dps = "1,580.5k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNzwMzsY2MWMzAAAAAzMDLzMzMgxMGWgB2GWoxCGAAAAAAAjZmZAA",
				dps = "1,526.4k",
			},
		},
	},
	["monk"] = {
		["mistweaver"] = {
			["MythicPlus"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWYmlxsY2mZmxG2mlZbgtZbZZmZZhhmZmBmhZAsNzMDzGzMMLPwEAAAAAAwilZbb2mZmAAAbA",
				dps = "288.7k",
				hps = "718.5k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzYYDzYmZZYDLzMb2mlllZmlFMamZGYGmBD2mZmhZjZGs8ATAAAAAAALWmllZbmZCAAsA",
				dps = "284.1k",
				hps = "1,777.6k",
			},
		},
		["brewmaster"] = {
			["MythicPlus"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMmBmlZegtxMzYAAAAAAAWWgJmZgZYsBsMzMjZ2Ymx2s8ATbLPwmtZmhZBAA2AAAAmtZpZmZWYGsB",
				dps = "897.5k",
				keystone = "+12"
			},
			["Raiding"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGDAAAAAAwyCImZgZYsBsNzMjZ2Ymx2sMTbLPw2sNzMMLAAwGAAAwsNLNzMzCzgN",
				dps = "933.4k",
			},
		},
		["windwalker"] = {
			["MythicPlus"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBzYmZWmZgBAAAAAAAAAAAstMMTMzwYGYZhhtZmZY2GmhZ5BmAAYZmZYmZMbzAAYDAMLzSzMzsAA",
				dps = "1,452.6k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBzYmZWmZgBAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzwMzY2mBAwGAYWmlmZmZBA",
				dps = "1,609.5k",
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["MythicPlus"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUMmZGGjZAzMMzMAbmZzsMzyMzixMzMzsYMGmZsBWYAGgttxCmmZWGAAAAsNzMGA",
				dps = "1,681.4k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUYmZGGmZAzMMzYAbzMGmZbGLGzMzMzixMjZmxGYjBYA22GLYamZZAAAAwmZGjBA",
				dps = "1,469.0k",
			},
		},
		["guardian"] = {
			["Raiding"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjZMDzYxDMMzsYZAMgZGTmmZmxMzMMYjBAAAAAAMmZAAAAgmZbWmZWGAALMzMAA",
				dps = "844.0k",
			},
			["MythicPlus"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMMzyMjZMjZGLMzwsYBgxgZmZimZmZmZGzCsxAAAAAAAwYALbzshxsMAmAAAA2YmZAA",
				dps = "756.7k",
				keystone = "+16"
			},
		},
		["feral"] = {
			["MythicPlus"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJYYMYMmRzMmxMzMWmhNGAAAAAAADAAAAQzsMLzMbDAYBGzAA",
				dps = "1,632.6k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZb2MzCzYmZb2YsNzMz8AzMAAAAAAbBDDYMzMamxMjZGjZYjBAAAAAAAYAAAAAAmtZWa2mZZDzMDA",
				dps = "1,550.9k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFz2AMLLstMmBAAAAAAAAAAAwyghZGY0MMzMmhZmB0GAAAAAADAgZAAAAAgZbmtmlZ2sxMzAzYA",
				dps = "257.0k",
				hps = "730.1k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZDPAjtNzyyYGAAAAAAAAAAAAbDwMMMamBMzMmZmhZabMAAAAAAAAYALLjFMNzsMAAAAWYmZAmB",
				dps = "160.5k",
				hps = "1,953.6k",
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			["MythicPlus"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGMzMjxMZmZGAAAAAAwsMMmhZGMzsNbjxMYmNssBLziZMMbMNGzMjBb",
				dps = "1,501.9k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwG",
				dps = "1,658.4k",
			},
		},
		["vengeance"] = {
			["MythicPlus"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMMjhZkZmBDzYbMmZsNDzMjZ8AGz2MzsZmxMDzAAAAAsMLmxwsw0AzMjxG",
				dps = "850.6k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbjZYGMAAAAALziZMMbMNwMzMsB",
				dps = "905.8k",
			},
		},
	},
	["evoker"] = {
		["preservation"] = {
			["MythicPlus"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYADAAmZMjZMGzIGDAAAwMzMZsNzYMmBAgxsZhFYgZYoBjFYG",
				dps = "322.1k",
				hps = "675.6k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMzyMzAgZMbwCYBMDTgB2MMA",
				dps = "62.6k",
				hps = "2,072.3k",
			},
		},
		["devastation"] = {
			["Raiding"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMD4BMGz0wMTmtZ2mZmZGzYmlZAGzsNmZWmZGYgxgFYZMasNAmBgNMA",
				dps = "1,796.4k",
			},
			["MythicPlus"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMDmhx4BmGmZysNz2MzMzYGzsMDwYmtxMz2MzADMGsALjRjlBwMAshB",
				dps = "1,467.4k",
				keystone = "+14"
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMLzsNzMzYZgZWmxYYmNAAAAAAAAMzgZYMmaYmZAAAAgxMGzMbjZGDjNjBLwyYYsMAmBxGmZG",
				dps = "1,533.9k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmhBzMLzMjhZ2AAAAAADAAmZAwYqZMzMAAAAYGzsNmZWGzMwYbGDWglxwYbAMDiNMzA",
				dps = "1,377.8k",
			},
		},
	},
}
addonTable.DB = talentData