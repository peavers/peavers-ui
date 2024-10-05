local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["warrior"] = {
		["arms"] = {
			["Raiding"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmZYbGzAzYMzMYmhBGmhBAAAAAAAPwYWmZmBQgxy2ALgBMDTgBYA",
				dps = "1,197.2k",
			},
			["MythicPlus"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZmZmFLLLjZAAAAYw0wMDLDzAjlxMzgZGGz4BYGGAAAAAAAMjZZMGgtAjltBWADYGmADwA",
				dps = "1,098.2k",
				keystone = "+11"
			},
		},
		["fury"] = {
			["Raiding"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYMMzsBDzYMMDzMbbzMmZmNmZMzMMDb2mhZGDAAAEmxy2ALgBMDTgx2wA",
				dps = "1,334.9k",
			},
			["MythicPlus"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAMMDjhZmNYYmZMMDzMbbzMmZmNmZMzMMDb2mhZGDAAAEmxy2ALgBMDTgx2wA",
				dps = "1,233.9k",
				keystone = "+13"
			},
		},
		["protection"] = {
			["Raiding"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNzgZmBwyADbMzMwDMzDMMAAAAAAgZGAgltNADDsBLLGNmBwshNMA",
				dps = "672.5k",
			},
			["MythicPlus"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZbmlZmZWYGDTjxDYMDglBG2YmZMDzYYAAAAAAAzMAALbbAGGYDWWMaMDgZDbMD",
				dps = "670.4k",
				keystone = "+11"
			},
		},
	},
	["paladin"] = {
		["holy"] = {
			["Raiding"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAGDAAwAsNzMzYGzMLMmlZGWmBstNTbFMjZGmZGGzCYmxAAGAYDYYmZ8AmZZ2mZmtGAAAgBD",
				dps = "132.3k",
				hps = "1,624.8k",
			},
			["MythicPlus"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAADAAGAwYAAAAsNzMMzYmZxMmlZmxyAstNTblHwMDDmZGGzCYmxAAGAYDYYmZGmZZWmZmlGAAAgBA",
				dps = "212.1k",
				hps = "601.0k",
				keystone = "+12"
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjZYWM2egHwYmxymZmxMGzYGAAAAAAAAAA0WDzMziBmZYmZxAmNAYMwAwAGgBAAAMzsst02MjxMA",
				dps = "534.4k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMjHYs8AmZmZYjZGzswwMAAADAAAAAAAphZmhBmZYmZxwMzsBAjBAwMYGgBAYmplZZ2mBAYMA",
				dps = "585.2k",
			},
		},
		["retribution"] = {
			["Raiding"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAjpNbbzMbLbjx2YmttZ2AAAAAAwYimZYgZGGzyYYmhZZWmhhBDzYsswGAwsMbzMzWDAAAMA",
				dps = "1,179.1k",
			},
			["MythicPlus"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAjJ22mZ2W2mZsZmZbxsNAAAAAAMbT0MDDMzYGzyYYMMmlZW2GGMYwyCbAAzysNzMbNAAAwAA",
				dps = "1,340.1k",
				keystone = "+13"
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["Raiding"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYsNDMgFwMsEYMAAAAAAYAAAAAAAMzYYMzMDzMMDDzYmxYmZmMDjZMzMjZGzwYYmhZZwsMD2A",
				dps = "1,257.4k",
			},
			["MythicPlus"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYsNDMgFwMsEYMAAAAAAYAAAAAAAMjtZMMjhZmxMMmZMzYMzMTmxMmZmZGmhZYMMzwsMDjZwG",
				dps = "985.1k",
				keystone = "+11"
			},
		},
		["survival"] = {
			["Raiding"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxox2AY2AzMjlZMzMDzYmhZmxMzYmxAAAAAAAAAAAAAAgmhxMmZmZmZMDjhZGGDzYGsB",
				dps = "1,154.7k",
			},
			["MythicPlus"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AzMjlZMzMzYmZmxMzgxMzMDAAAAAAAAAAAAAA0MMmxMzMmZMDjhZGGDzsMD2A",
				dps = "1,223.2k",
				keystone = "+11"
			},
		},
		["marksmanship"] = {
			["MythicPlus"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGNWGAzGGAAAAAAgZmZMMjxMzMzMzMzMMzYYMAAAAAAAwMMmxMzMzMTmxYYmhxwMLzgN",
				dps = "1,249.3k",
				keystone = "+12"
			},
			["Raiding"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGN2GAzGGAAAAAAgZmZmBzMzMMzMmZmZMmZMDAAAAAAAwMMmZmZmxMamxYYmBmxMmZMA",
				dps = "1,256.2k",
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			["MythicPlus"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmZGmxyMAAAAAAMLw2MAAAAAA022MzwDMzYMzMLz2YMYmZmZwMzsttMmBYzsMwAWALDTghB",
				dps = "1,349.3k",
				keystone = "+13"
			},
			["Raiding"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhZmxyMAAAAAAMLwyMAAAAAA022MzwDMzYMzMLz2YMGMzMzMzYmNLjZA2MLDMgFwywEYYA",
				dps = "1,184.1k",
			},
		},
		["outlaw"] = {
			["Raiding"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwMzYGDmZGmhxYGzMjZmplZMLzAAAAAAgttZmBzMjlxMLz2AAAAwMDwAbwMGNmNAbDMmB",
				dps = "1,128.9k",
			},
			["MythicPlus"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwwYmZwMzwMMMzMzMjZmplZMLzAAAAAAwstMmZYmZsMmZZ2GAAAAmZAGYDmxoxsBYbgxA",
				dps = "1,212.4k",
				keystone = "+12"
			},
		},
		["subtlety"] = {
			["MythicPlus"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAzyMzsMBLLzYmZMmhZmxMzY2GjZstZmxMzMGMWmlBAAAwMDGAjZzwADMLsQLGGD",
				dps = "1,138.5k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAzyMzsMNmZZZGzYMMMzMzwY2GjZstNzMmZmxgxysNAAAAMDGAjZzwADMLsQLGGD",
				dps = "1,200.4k",
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["MythicPlus"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghxMzYMzMmZYGzMz0MMMzYGDAAAAAmZmZmZmZmNzMjBAAAzMzMAAAAbmtBGwCYbYCMMAMD2A",
				dps = "707.1k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMzMmZYGzMz0MjhZGzYAAAAAwMzMzMzMzsZmZMAAAYmZmZAAAAbmtBGwCYbYCMMAMD2A",
				dps = "702.7k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAMzYMjZYYGzMzMzwMmpZGDjBMzYMjZmZmZmZZmBAAAAAAAAAAAYzsNwAWAbDTgxgZGjZA",
				dps = "1,435.0k",
				keystone = "+13"
			},
			["Raiding"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGAzYMzMGDzYmZmZmxMmJzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAbmtBGwCYbYCMGMDjZA",
				dps = "1,502.9k",
			},
		},
		["unholy"] = {
			["MythicPlus"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGjZMGDzMzMzMNMmZGzYAAAAAAAAAMMzYGzMzMDAYDMLGzMzMMzA2MbGGYgZjhGDGgZA",
				dps = "1,236.0k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGwiZxwADMbM0YAgZA",
				dps = "1,369.8k",
			},
		},
	},
	["priest"] = {
		["discipline"] = {
			["Raiding"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGD2GjZmxMbmlZmZmhBAAAAAAAAAAAzilZbYbmZwswwMjxgF2mpxELDYmBACwsNLLgxYD",
				dps = "229.9k",
				hps = "1,313.9k",
			},
			["MythicPlus"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlZGD2GjZmxMbmtZmZmhBAAAAAAAAAAAWsMbDbzMDmFGzYMGjF2mpZmYBYmBACwsMbbgxYD",
				dps = "318.1k",
				hps = "666.0k",
				keystone = "+12"
			},
		},
		["holy"] = {
			["MythicPlus"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAYZYGLPwgZmZMwMmhxyMzsMAAAAAWmthlZGYWYWmxMjxYhNmZmaWAwMLYhwYWGgxCMA",
				dps = "185.7k",
				hps = "615.7k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGbmxMzYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWGmFDAZMYA",
				dps = "136.0k",
				hps = "1,481.7k",
			},
		},
		["shadow"] = {
			["Raiding"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAYmHYAAAAAAAAAAAAAGmlBzMz2sNmZmZ2mZmlBzGzMzMmNGYMGmFz2UzMYBGAzsZZY2MAkxYA",
				dps = "1,184.2k",
			},
			["MythicPlus"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMDDAAAAAAAAAAAAAGPwsYGzMz2sNmZmZ2GzsMY2YmZGmNGYMGmFz2UzMYBzAYmFLDzmBgMGDA",
				dps = "1,191.2k",
				keystone = "+12"
			},
		},
	},
	["shaman"] = {
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZmZGsMYGwCsAzYTjlBwMwwMzsMmZbmxIzmhZaMzYGGLGzYxsMMLMAAG",
				dps = "223.5k",
				hps = "606.8k",
				keystone = "+12"
			},
			["Raiding"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmZmZxyYzwCWgFYGbasMAmBGMmlxYbmZmJz2CzMNmhZ2wyMmBjhZZMAAG",
				dps = "80.7k",
				hps = "1,438.1k",
			},
		},
		["enhancement"] = {
			["Raiding"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzCmhZmZmZGmtZmlZAAAAAAAAAAgNAGzYYgFYZYoBDAmlJzgZZxMzMjhZmFsMzMBGLjZGAgZA",
				dps = "1,282.1k",
			},
			["MythicPlus"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMz2MzMGjZYGmFsMjZAAAAAAAAAAsBwYGDDsAbDDNYAwsMZgZhxMzYMzMLYZmZyCLjlxMDAwM",
				dps = "1,262.6k",
				keystone = "+11"
			},
		},
		["elemental"] = {
			["MythicPlus"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjxwMbMmZMmZGAAAAAAGzYYgFYbYoxAAmlpZAbLmZmGmxMGWmxMWYZsMLmZmZYGzwA",
				dps = "1,308.0k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGmZjxMDmZGAAAAAsYmNYADYWYCMDAY2mmxgNYmGmZmZbYZmZGMLDzyYmZmxwMM",
				dps = "1,273.1k",
			},
		},
	},
	["mage"] = {
		["arcane"] = {
			["Raiding"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmhxsYYMzwYamZZGAAAAAAGAwMz0ystMDAgBAAAAAAAsMjBzMjZMMzMjZmxMzMGGD",
				dps = "1,329.8k",
			},
			["MythicPlus"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAMjhZzCmhZmFgZmxYamZZmBAAAAAwAAmZmWmtlZAAMAAAAAAsBwyMGmZmxwwMzMmZGzMzMDjB",
				dps = "1,237.3k",
				keystone = "+12"
			},
		},
		["fire"] = {
			["MythicPlus"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAMzYxsZBzwMzCwMzYaMzYmBAAAAAwAAmZmWmllZAAGzMDGmxMjZZmtxwMzmZ2mx2MwAAAAAAAA",
				dps = "1,300.2k",
				keystone = "+12"
			},
			["Raiding"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgBAMzMtMLLzAAMGzgxMjZGziZZMjZGmZbGmZBDAAAAAAA",
				dps = "1,319.8k",
			},
		},
		["frost"] = {
			["Raiding"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwMziBmZmGjxYmZwwMMzMzMzMzMzMzYmZGzAAAAzMzyyyMTDAAAAAAsAAAAAAAAA",
				dps = "1,195.0k",
			},
			["MythicPlus"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMjZzsZBzwMziBmZmGjxYmZwwMMzMzMzMzMzMzYmZGzAAAAzMzyyyMTDAAAAAAsBAAAAAAAA",
				dps = "1,192.3k",
				keystone = "+12"
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["MythicPlus"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAgxMzMzMjY2MMmNzMDjBAAAMzMzsMz8AjNzMzCzMzAAmZssMwAGwMsFYYmBAAAAAAAAmZsA",
				dps = "1,248.2k",
				keystone = "+12"
			},
			["Raiding"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAwMjZWmZM2MzMLMzMDAYmxyyADYAzwWghZGAAAAAAAAYmZ2MA",
				dps = "1,231.3k",
			},
		},
		["demonology"] = {
			["Raiding"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGGmZmZsNmZzMzMzYYMYmZmBzMDAAA",
				dps = "1,370.3k",
			},
			["MythicPlus"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAMzMzMjYWMMmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGGmhZmtxMbmZmZGDzMMzMmhxMDAAA",
				dps = "1,196.7k",
				keystone = "+11"
			},
		},
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNDmZmFzmZZxMDAAAAMzMsMzMzAGzYYBGYbYhGDGAAAAAAAjZmZAA",
				dps = "1,274.8k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNDmZmFzmZbxMDAAAAMzMsMzMzAGzYYBGYbYhGDGAAAAAAAjZmZAA",
				dps = "1,261.9k",
			},
		},
	},
	["monk"] = {
		["brewmaster"] = {
			["Raiding"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGDAAAAAAglFQMzgZGGLMYbGzYmtxMjtZx02yDsNbzMDzCAAMAAAAz2s0MzMLMDWA",
				dps = "703.3k",
			},
			["MythicPlus"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMmBmlZegtxMzYAAAAAAAssAiZGYGGbAbzMzwsZbmx2sMTbLzmtZmhZBAAGAAAgZbWamZmFMYD",
				dps = "782.1k",
				keystone = "+12"
			},
		},
		["windwalker"] = {
			["MythicPlus"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBzYmZMzADAAAAAAAAAAAwyywImZYMDDLMjtZMDz2YmBLzEAALzMDzMzMbzAAYAAz2s0MzMLAA",
				dps = "1,248.4k",
				keystone = "+12"
			},
			["Raiding"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBDzMzyMDMAAAAAAAAAAAALLDjYmBmhhFzM2mZmhZbYGsMTAAsMzMMzMzsNDAgBAMbzSzMzsAA",
				dps = "1,244.3k",
			},
		},
		["mistweaver"] = {
			["MythicPlus"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzsMmxMmxM2w2sMbjHAz2yyMzyCDNzYgZYGAbzYGmtxMDzyMBAAAAAAMWmttZbmZCAAsB",
				dps = "190.8k",
				hps = "633.5k",
				keystone = "+13"
			},
			["Raiding"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzYAMjZmlhNmtZmNbzy2yMzyCmJmZgZYmFDsMzMzY2YMMLmAAAAAAAGLzyysNzMBAAWA",
				dps = "106.7k",
				hps = "1,338.2k",
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["MythicPlus"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWoYMzMMmZGwMDzMjFYjhZmZbmZxYmZmx2MGDzM2ALAYA22GLYamZZAAAAwYmZM",
				dps = "1,325.8k",
				keystone = "+12"
			},
			["Raiding"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWGFmZMMMzAmZGzMDG2GjZmZ2mxCmZmZsNjxYGjNwCAGgttxCmmZWGAAAAMmZYA",
				dps = "1,276.7k",
			},
		},
		["feral"] = {
			["MythicPlus"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZ2mNzswMzMzysxYbmZmxMDAAAAAwSAzYAzMjmZMDzMjlhZbmBAAAAAAAAAAAgmZZWmZ2GAwAzMA",
				dps = "1,137.2k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMz2sZmFmxMz2sxYbmZGzMDAAAAAwSwwAGjZ0MjZGzMGzw2MDAAAAAAAwAAAAAAMbzs0sNzyAzMA",
				dps = "1,121.5k",
			},
		},
		["guardian"] = {
			["MythicPlus"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZYmlZGzYGzMWYmhZxCAjBzMzENzMzMzMmFYjBAAAAAAgxAW2mZDjZZAMBAAAMMzMA",
				dps = "698.6k",
				keystone = "+13"
			},
			["Raiding"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxMjZml5BGzYGmxiHYYmZxyAYAzMmMNzMjZmZYwGDAAAAAAYMzAAAAANz2sMzsMAAGmZGA",
				dps = "717.0k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFzyghZZbstYbmBAAAAAAAAAAAwygBzAjgxMmxMzYWGajBAAAAAMAGgZALLjFMNzsNAAAAGMzA",
				dps = "142.3k",
				hps = "568.7k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZBzYsthtxMDAAAAAAAAAAAglZAzwYGNzAmxMzMzwMtNDAAAAAwAAYMgllxCmmZWGAAAADjBA",
				dps = "124.6k",
				hps = "1,336.3k",
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			["MythicPlus"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGMzMjxMZmZGAAAAAAwsMMmhZGMzsNbjxMYmNssBLziZMMbMNGzMjBD",
				dps = "1,213.8k",
				keystone = "+12"
			},
			["Raiding"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwA",
				dps = "1,393.0k",
			},
		},
		["vengeance"] = {
			["MythicPlus"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMMjhZkZmBDzYbMmZsNDzMjZ8AGz2MzsZmZbmhZAAAAAWmFzYYWYagZmBD",
				dps = "736.8k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbjZYGMAAAAALziZMMbMNwMzMMA",
				dps = "793.3k",
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["MythicPlus"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzAzwMmZwMzmxwMNMzkZbmtZmZmxMmZZGwMGbjZGjZgBYwCsMGNWGAzAwA",
				dps = "1,244.0k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMYmNzgBMwYmpZMzkZbsNmZmxMmZbGwMmZbMzsNmBGYMYBWGjGbDgZAYA",
				dps = "1,178.3k",
			},
		},
		["preservation"] = {
			["MythicPlus"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYADAAmZMjBjxMjYmBAAAYmZmM2mZMmZGAAGzmFWgBmhhGMGA",
				dps = "279.0k",
				hps = "630.2k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzgZMzYWwMbjZGAAgZMjBjxMjwMAAAAzMzkZ2mZMbzMDAmxsBLgFwMMBGYMA",
				dps = "56.2k",
				hps = "1,801.6k",
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMLjlZmZGLDmZWmBzYmNAAAAAwAAgZGYwYYqhZmBAAAAzMzsNmZ2GzMwYbGYMbWYBGYGGagBzA",
				dps = "1,030.9k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMGbzMzMWGMzsMzwMmZDAAAAAMAAYmBAGzUzYmZAAAAwMmZbMzsNmZgx2MwY2swCMwMM0ADmB",
				dps = "1,112.9k",
			},
		},
	},
}
addonTable.DB = talentData