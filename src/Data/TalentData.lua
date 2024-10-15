local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["paladin"] = {
		["holy"] = {
			["Raiding"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAGDAAwAsNzMzYGzMLMmlZGWmBstNTbFMjZGmZGGzCYmxAAGAYDYYmZ8AmZZ2mZmtGAAAgBD",
				dps = "140.1k",
				hps = "1,549.9k",
			},
			["MythicPlus"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAADAAGAwYAAAAsNzMMzYmZxMmlZmxyAstNTblHwMziBzMDjZBYGDAYAgNghZmZYmlZZmZWaAAAAGA",
				dps = "216.6k",
				hps = "645.5k",
				keystone = "+13"
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjZYWM2egHwYmxymZmxMGzYGAAAAAAAAAA0WDzMziBmZYmZxAmNAYMwAwAGgBAAAMzsst02MjxMA",
				dps = "672.7k",
				keystone = "+12"
			},
			["Raiding"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMjHYs8AmZmZYjZGzswwMAAADAAAAAAAphZmhBmZYmZxwMzsBAjBAwMYGgBAYmplZZ2mBAYMA",
				dps = "663.0k",
			},
		},
		["retribution"] = {
			["Raiding"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAjpNLbzMbLbjx2YmttZ2AAAAAAwYimZ2MwMMjZZMMzwsMLzwwghZwyCbAAAgZm2mlZbGAwAA",
				dps = "1,283.9k",
			},
			["MythicPlus"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAjJ22mZ2W2mZsZmZbxsNAAAAAAMbT0MDDMzYGzyYYMMmlZW2GGMYwyCbAAzysNzMbNAAAwAA",
				dps = "1,395.5k",
				keystone = "+14"
			},
		},
	},
	["warrior"] = {
		["protection"] = {
			["Raiding"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNzgZmBwyADbMzMwDMzDMMAAAAAAgZGAgltNADDsBLLGNmBwshNMA",
				dps = "705.5k",
			},
			["MythicPlus"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZbmlZmZWYGDTjxDYMDglBG2YmZMDzYYAAAAAAAzMAALbbAGGYDWWMaMDgZDbMD",
				dps = "705.6k",
				keystone = "+12"
			},
		},
		["arms"] = {
			["Raiding"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmZYbGzAzYMzMYmhBGmhBAAAAAAAPwYWmZmBQgxy2ALgBMDTgBYA",
				dps = "1,246.3k",
			},
			["MythicPlus"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZmZmFLLLjZAAAAYw0wMDLDzAjlxMzgZGGz4BYGGAAAAAAAMjZZMGgtAjltBWADYGmADwA",
				dps = "1,115.7k",
				keystone = "+11"
			},
		},
		["fury"] = {
			["Raiding"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYMMzsBDzYMMDzMbbzMmZmNmZMzMMDb2mhZGDAAAEmxy2ALgBMDTgx2wA",
				dps = "1,348.7k",
			},
			["MythicPlus"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZY2GmZ2ghZMGmhZmttZGzMzGzMmZGmhNbzwMjBAAACzYZbgFwAmhJwYDD",
				dps = "1,268.8k",
				keystone = "+14"
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["Raiding"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYsNDMgFwMsEYMAAAAAAYAAAAAAAMzYYMzMDzMMDDzYmxYmZmMDjZMzMjZGzwYYmhZZwsMD2A",
				dps = "1,267.2k",
			},
			["MythicPlus"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYsNDMgFwMsEYMAAAAAAYAAAAAAAMjtZMmZMMzMmhxMjHYGjZmZyMMmZmZmxMDDjhZGGzwYGmN",
				dps = "1,132.5k",
				keystone = "+13"
			},
		},
		["survival"] = {
			["MythicPlus"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AzMjlZMzMzYmZmxMzgxMzMDAAAAAAAAAAAAAA0MMmxMzMmZYYMMzMGDzsMD2A",
				dps = "1,328.6k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxox2AY2AzMjlZMzMDzYmhZmxMzYmxAAAAAAAAAAAAAAgmhxMmZmZmZMDjhZGGDzYGsB",
				dps = "1,200.1k",
			},
		},
		["marksmanship"] = {
			["MythicPlus"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGNWGAzGGAAAAAAgZmZMMjxMzMzMzMzMMzYYMAAAAAAAwMMmxMzMzMTmxYYmhxwMLzgN",
				dps = "1,347.9k",
				keystone = "+12"
			},
			["Raiding"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGN2GAzGGAAAAAAgZmZmBzMzMMzMmZmZMmZMDAAAAAAAwMMmZmZmxMamxYYmBmxMmZMA",
				dps = "1,278.0k",
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			["Raiding"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhZmxyMAAAAAAMLwyMAAAAAA022MzwDMzYMzMLz2YMGMzMzMzYmNLjZA2MLDMgFwywEYYA",
				dps = "1,277.9k",
			},
			["MythicPlus"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmZGmxyMAAAAAAMLw2MAAAAAA022MzwDMzYMzMLzyYMYmZmZwMzsttMmBYzsMwAWALDTghB",
				dps = "1,492.9k",
				keystone = "+14"
			},
		},
		["outlaw"] = {
			["MythicPlus"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwwYmZwMzwMMMzMzMjZmplZMLzAAAAAAgttZmhHYmZswMLz2AAAAwMDwAbwMGNmNAbDMmB",
				dps = "1,313.7k",
				keystone = "+13"
			},
			["Raiding"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwMzYGDmZGmhxYGzMjZmplZMLzAAAAAAgttZmBzMjlxMLz2AAAAwMDwAbwMGNmNAbDMmB",
				dps = "1,226.8k",
			},
		},
		["subtlety"] = {
			["Raiding"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAzyMzsMNmZZZGzYMMMzMzwY2GjZstNzMmZmxgxysNAAAAMDGAjZzwADMLsQLGGD",
				dps = "1,246.0k",
			},
			["MythicPlus"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAzyMzsMBLLzYmZMmhZmxMzY2GjZmtFmxMzMgxysNAAAAmZwAYMbGGYgZhFaxwMD",
				dps = "1,229.8k",
				keystone = "+12"
			},
		},
	},
	["priest"] = {
		["shadow"] = {
			["MythicPlus"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMYAAAAAAAAAAAAAw4BmFzYmZ2mtxMzMz2YmlBzGzMzwsNmFwYYWWGTNzgFMDgZWsMMbGAyYMA",
				dps = "1,308.5k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAYmHYAAAAAAAAAAAAAGmlBzMz2sNmZmZ2mZmlBzGzMzMmNGYMGmFz2UzMYBGAzsZZY2MAkxYA",
				dps = "1,241.4k",
			},
		},
		["holy"] = {
			["MythicPlus"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAYZYGLPwgZmZMwMmhxyMzsMAAAAA2mthlZGwiZWmxMjxYhNmZmaWAwMLYhwYWGgxCMA",
				dps = "191.9k",
				hps = "653.4k",
				keystone = "+12"
			},
			["Raiding"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGbmxMzYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWGmFDAZMYA",
				dps = "140.2k",
				hps = "1,497.8k",
			},
		},
		["discipline"] = {
			["Raiding"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGD2GjZmxMbmlZmZmhBAAAAAAAAAAAzilZbYbmZwswwMjxgF2mpxELDYmBACwsNLLgxYD",
				dps = "238.3k",
				hps = "1,392.0k",
			},
			["MythicPlus"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlZGDWGjZmxMbmtZmZmhBAAAAAAAAAAAWmlZbwMzgZhhxYMMLsNTzMxyAmZAgAMbz2GYM2A",
				dps = "363.1k",
				hps = "744.2k",
				keystone = "+14"
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["MythicPlus"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghxMzYMjxMDzYmZmmhhZGzYGAAAAAmZmZmZmZmNzMjBAAAzMzMAAAAbmtBGwCYbYCMMAMD2A",
				dps = "742.7k",
				keystone = "+13"
			},
			["Raiding"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMzMmZYGzMz0MjhZGzYAAAAAwMzMzMzMzsZmZMAAAYmZmZAAAAbmtBGwCYbYCMMAMD2A",
				dps = "701.1k",
			},
		},
		["unholy"] = {
			["MythicPlus"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGjxMGDzMzMzMNMmZGzYAAAAAAAAAgZGjZMzMDAMbmhZBzMz8AzMzAWMLGGYgZjhGDAMDA",
				dps = "1,582.6k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGwiZxwADMbM0YAgZA",
				dps = "1,385.0k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAMzYMzMGDzYmZmZGGmpZGDjBMzYMjZmZmZmZZmBAAAAAAAAAAAYzsNwAWAbDTgxgZGjZA",
				dps = "1,564.0k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGAzYMzMGDzYmZmZmxMmJzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAbmtBGwCYbYCMGMDjZA",
				dps = "1,525.1k",
			},
		},
	},
	["shaman"] = {
		["enhancement"] = {
			["Raiding"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzCmhZmZmZGmtZmlZAAAAAAAAAAgNAGzYYgFYZYoBDAmlJzgZZxMzMjhZmFsMzMBGLjZGAgZA",
				dps = "1,346.4k",
			},
			["MythicPlus"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMz2MzMGzMDzwshlZMAAAAAAAAAAsBwYGDDsAbDDNYAwsMZgZxMMzYMzMmxyMzkFWGLMzAAMD",
				dps = "1,506.6k",
				keystone = "+14"
			},
		},
		["elemental"] = {
			["MythicPlus"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjxwMbMmZMmZGAAAAAAGzYYgFYbYoxAAsMNDYbhx0gZmZbGLzYmhZZYWmZmZGmxMM",
				dps = "1,402.6k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGmZjxMDmZGAAAAAsYmNYADYWYCMDAY2mmxgNYmGmZmZbYZmZGMLDzyYmZmxwMM",
				dps = "1,293.6k",
			},
		},
		["restoration"] = {
			["Raiding"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmZmZxyYzwCWgFYGbasMAmBGMmlxYbmZmJz2CzMNmhZ2wyMmBjhZZMAAG",
				dps = "80.2k",
				hps = "1,447.2k",
			},
			["MythicPlus"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZmZGsMYAWgFYGbasMAmBGmZmlxMbzMGZ2MMTjZGzwYxYmZxsMMLMAAG",
				dps = "226.4k",
				hps = "671.9k",
				keystone = "+13"
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["MythicPlus"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZ0Y2MMmNzMDjBAAAMzMzsMz8AjNzMzCzMzAAmZssMwAGwMsFYYmBAAAAAAAAmZsA",
				dps = "1,338.3k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAwMjZWmZM2MzMLMzMDAYmxyyADYAzwWghZGAAAAAAAAYmZ2MA",
				dps = "1,250.6k",
			},
		},
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNDmZmFzmZZxMDAAAAMzMsMzMzAGzYYBGYbYhGDGAAAAAAAjZmZAA",
				dps = "1,327.6k",
				keystone = "+13"
			},
			["Raiding"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNDmZmFzmZbxMDAAAAMzMsMzMzAGzYYBGYbYhGDGAAAAAAAjZmZAA",
				dps = "1,272.6k",
			},
		},
		["demonology"] = {
			["Raiding"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGGmZmZsNmZzMzMzYYMYmZmBzMDAAA",
				dps = "1,395.3k",
			},
			["MythicPlus"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGGmhZmtxMbmZmZGDzMMzMmhxMDAAA",
				dps = "1,300.6k",
				keystone = "+13"
			},
		},
	},
	["mage"] = {
		["frost"] = {
			["Raiding"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwMziBmZmGjxYmZwwMMzMzMzMzMzMzYmZGzAAAAzMzyyyMTDAAAAAAsAAAAAAAAA",
				dps = "1,225.0k",
			},
			["MythicPlus"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwMzCMmZmGjxYmZwwMMzMzMzMzMzMzYmZGzAAAAzMzyyyMTDAAAAAAsBAAAAAAAA",
				dps = "1,254.3k",
				keystone = "+14"
			},
		},
		["arcane"] = {
			["MythicPlus"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYGMbzCmxDMzs4BgZGGTzMLzAAAAAAwAAmZmWmtlZAAMAAAAAAsBwyMGmZmxwwMzMmZGzMzMDjB",
				dps = "1,330.8k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmhxsYYMzwYamZZGAAAAAAGAwMz0ystMDAgBAAAAAAAsMjBzMjZMMzMjZmxMzMGGD",
				dps = "1,377.7k",
			},
		},
		["fire"] = {
			["MythicPlus"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbWwMMzs4BYMzw0YmxMDAAAAAgBAMzMtMLLzAAMmZGMMjZGzyMbjhZmNzsNjlZgBAAAAAAA",
				dps = "1,311.4k",
				keystone = "+13"
			},
			["Raiding"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgBAMzMtMLLzAAMGzgxMjZGziZZMjZGmZbGmZBDAAAAAAA",
				dps = "1,352.3k",
			},
		},
	},
	["monk"] = {
		["brewmaster"] = {
			["Raiding"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMjlZsZmZGDAAAAAAglFMiZGYGGMDWmZmhZZMzYbWMtt8Abz2MzwsAAADAAAwsNLNzMzCzgN",
				dps = "708.0k",
			},
			["MythicPlus"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMmBmlZegtxMzYAAAAAAAssAiZGYGGbwYbmZGmNmZsNLz02yDsZbmZYWAAgBAAAY2mlmZmZhZwG",
				dps = "822.6k",
				keystone = "+13"
			},
		},
		["windwalker"] = {
			["MythicPlus"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBzYmZMzADAAAAAAAAAAAwyywMxMjtxMgFG2mxMMbjZGsMTAAsMzMMzMzsNDAgBAMbzSzMzsAA",
				dps = "1,302.5k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMzghZMLzAmBAAAAAAAAAAAssMMiZGYGGWGzYbGzwsNmZwyMBAw2MzwMzMz2MAAGAwsNLNzMzCA",
				dps = "1,104.1k",
			},
		},
		["mistweaver"] = {
			["Raiding"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzYAMjZmlhNmtZmNbzy2yMzyCmJmZgZYmFDsMzMzY2YMMLmAAAAAAAGLzyysNzMBAAWA",
				dps = "109.3k",
				hps = "1,392.4k",
			},
			["MythicPlus"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzsMmxMmxM2w2sMbjHAz2yyMzyCDNzYgZYGAbzYGmtxMDzyMBAAAAAAMWmttZbmZCAAsB",
				dps = "205.7k",
				hps = "668.2k",
				keystone = "+13"
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["Raiding"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWGFmZMMMzAmZGzMDG2GjZmZ2mxCmZmZsNjxYGjNwCAGgttxCmmZWGAAAAMmZYA",
				dps = "1,303.9k",
			},
			["MythicPlus"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWoYMzMMGGwMDzMDwmZYmZ2mZWMmZmZsNjxwMjNwCDwAstNWw0MzyAAAAgZmZGD",
				dps = "1,386.3k",
				keystone = "+14"
			},
		},
		["feral"] = {
			["MythicPlus"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZ2mNzswMzMzysxYbmZmxMDAAAAAwSAzYAzMjmZMDzMjlhZbmBAAAAAAAAAAAgmZZWmZ2GAwAzMA",
				dps = "1,204.4k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMz2sZmFmxMz2sxYbmZGzMDAAAAAwSwwAGjZ0MjZGzMGzw2MDAAAAAAAwAAAAAAMbzs0sNzyAzMA",
				dps = "1,197.9k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFzyghZZbstYbmBAAAAAAAAAAAwygBzAjgxMmxMzYWGajBAAAAAMAGgZALLjFMNzsNAAAAGMzA",
				dps = "147.4k",
				hps = "622.0k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZBzYsthtxMDAAAAAAAAAAAglBYGGGNzAmZGzMzwMtNGAAAAAAAAjBssMWw0MzyAAAAYwMzA",
				dps = "131.3k",
				hps = "1,476.7k",
			},
		},
		["guardian"] = {
			["MythicPlus"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZYmlZGzYGzMWYmhZxCAjBzMzENzMzMzMmFYjBAAAAAAgxAW2mZDjZZAMBAAAMMzMA",
				dps = "740.3k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxMjZml5BGzYGmxiHYYmZxyAYAzMmMNzMjZmZYwGDAAAAAAYMzAAAAANz2sMzsMAAGmZGA",
				dps = "738.7k",
			},
		},
	},
	["demon-hunter"] = {
		["vengeance"] = {
			["MythicPlus"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMMjhZkZmBDzYbMmZsNDzMjZ8AGz2MzsZmZbmhZAAAAAWmFzYYWYagZmBD",
				dps = "775.2k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbjZYGMAAAAALziZMMbMNwMzMMA",
				dps = "803.7k",
			},
		},
		["havoc"] = {
			["MythicPlus"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGMzMjxMhZGAAAAAAwsMMmZMzgZmtZbMmBzshlNYZWMjhZjpxYmZMYA",
				dps = "1,314.0k",
				keystone = "+13"
			},
			["Raiding"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwA",
				dps = "1,412.8k",
			},
		},
	},
	["evoker"] = {
		["preservation"] = {
			["Raiding"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAwMDjBMmZEmBAAAYmZmY2mZmZbmZAwMmNYBsAmhJwAjB",
				dps = "53.4k",
				hps = "1,846.2k",
			},
			["MythicPlus"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYAAAwMjZMYMmZEzMAAAAzMz0MWmZMmZGAAGzmFWgBmhhGMGA",
				dps = "298.7k",
				hps = "687.5k",
				keystone = "+12"
			},
		},
		["devastation"] = {
			["Raiding"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMYmNzgBMwYmpZMzkZbsNmZmxMmZbGwMmZbMzsNmBGYMYBWGjGbDgZAYA",
				dps = "1,214.6k",
			},
			["MythicPlus"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzAzwMmZgZ2MGmphZmMbzsNzMzMmxMLzAmZGbjZGjZgBYwCsMGNWGAzAwA",
				dps = "1,309.7k",
				keystone = "+12"
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAgZZsNzMzYZGmZWmxMDzsBAAAAAAAgZGMDGjHYqhZmBAAAAmZmtxMzyYmBGbzYwCsMGGLDgZQMYA",
				dps = "1,218.4k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMGbzMzMWGMzsMzwMmZDAAAAAMAAYmBAGzUzYmZAAAAwMmZbMzsNmZgx2MwY2swCMwMM0ADmB",
				dps = "1,126.3k",
			},
		},
	},
}
addonTable.DB = talentData