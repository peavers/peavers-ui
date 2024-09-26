local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["warrior"] = {
		["fury"] = {
			["Raiding"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYMMzsBDzYMMDzMbbzMmZmNmZMzMMDb2mhZGDAAAEmxy2ALgBMDTgx2wA",
				dps = "1,264.8k",
			},
			["MythicPlus"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAMMDjhZmNYYmZMMDzMbbzMmZmNmZMzMMDb2mhZGDAAAEmxy2ALgBMDTgx2wA",
				dps = "1,343.0k",
				keystone = "+12"
			},
		},
		["arms"] = {
			["MythicPlus"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZmZmFbLLzMDAAAADmGmZYZYGYsMmZGMzwYGPAzwAAAAAAAgHYMbjxAsFAsYGDLwAzwGNAG",
				dps = "1,290.3k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmZYbYGYGjZmBzMMwwMMAAAAAAA4BGzyMzMACMW2GYBMgZYCMMYA",
				dps = "1,144.4k",
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZbmlZmZWYGDTjxDYMDglBG2YmZMDzYYAAAAAAAzMAALbbAGGYDWWMaMDgZDbMD",
				dps = "708.1k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNzgZmBwyADbMzMwDMzDMMAAAAAAgZGAgltNADDsBLLGNmBwshNMA",
				dps = "653.7k",
			},
		},
	},
	["paladin"] = {
		["protection"] = {
			["Raiding"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNPgZMDjlHgZmZssZmZMzyYYGAAgBAAAAAAg0wMzwAzMMzsYwMDAYMwAgBzAMAAzMtNLz2MAAjZA",
				dps = "603.4k",
			},
			["MythicPlus"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjZYWmx2D8AGzMW2MzMmxYGzAAAAAAAAAAg2aYmZWMwMYmZBwsBAjBmBgBzAAAAAMzsst02MjxMA",
				dps = "591.5k",
				keystone = "+11"
			},
		},
		["holy"] = {
			["Raiding"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAGDAAwAsNzMzYGzMLMmlZGWmBstNTbFMjZGmZGGzCYmxAAGAYDYYmZ8AmZZ2mZmtGAAAgBD",
				dps = "129.4k",
				hps = "1,426.1k",
			},
			["MythicPlus"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAADAAGAwYAAAAsNzMMzYmZxMmlZmxyAstNTblHwMDDmZGGzCYmxAAGAYDYYmZGmZZWmZmlGAAAgBA",
				dps = "240.5k",
				hps = "628.1k",
				keystone = "+11"
			},
		},
		["retribution"] = {
			["MythicPlus"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAjJ22mZ2W2mZsZmZbxsNAAAAAAMbT0MDDMzYGzyYYMMmlZW2GGMYwyCbAAzysNzMbNAAAwAA",
				dps = "1,426.1k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAjpNbbzMbLbjx2YmttZ2AAAAAAwYimZYgZGGzyYYmhZZWmhhBDzYsswGAwsMbzMzWDAAAMA",
				dps = "1,099.6k",
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["MythicPlus"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYsNDMgFwMsFYMAAAAAAYAAAAAAAMjtZMmZMMzMmhxMjZGmZMTmhxMmZmxMjZYMMzwsMYWmBb",
				dps = "767.1k",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYsNDMgFwMsEYMAAAAAAYAAAAAAAMzYYMzMDzMMDDzYmxYmZmMDjZMzMjZGzwYYmhZZwsMD2A",
				dps = "1,144.4k",
			},
		},
		["marksmanship"] = {
			["MythicPlus"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGNWGAzCGAAAAAAgZmZMMjxMzMzMzMzMMzYYMAAAAAAAwMMmxMzMzMTmxYYmhxwMLzgN",
				dps = "1,343.0k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGN2GAzGGAAAAAAgZmZmBzMzMMzMmZmZMmZMDAAAAAAAwMMmZmZmxMamxYYmBmxMmZMA",
				dps = "1,167.5k",
			},
		},
		["survival"] = {
			["MythicPlus"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AzMjlZMzMzYmZmxMzgxMzMDAAAAAAAAAAAAAA0MMmxMzMmZYYMMzwsMMzyMYD",
				dps = "1,290.3k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AzMjlZMzMzYmZmxMzgxMzMDAAAAAAAAAAAAAA0MMmxMzMmZMDjhZGGDzsMD2A",
				dps = "1,167.5k",
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			["MythicPlus"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmZGmxyMAAAAAAMLwyMAAAAAA022MzwDMzYMzMLz2YMYmZmZwMzsttMmBYzsMwAWALDTghB",
				dps = "1,426.1k",
				keystone = "+12"
			},
			["Raiding"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhZmxyMAAAAAAMLwyMAAAAAA022MzwDMzYMzMLz2YMGMzMzMzYmNLjZA2MLDMgFwywEYYA",
				dps = "1,099.6k",
			},
		},
		["outlaw"] = {
			["MythicPlus"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwwYmZwMzwMMMzMzMjZmplZMLzAAAAAAwstMzM8AzMjFmZZ2GAAAAmZAGYDmxoxsBYbgxA",
				dps = "1,264.8k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwwYmZwMzwMMMzMzMjZmplZMLzAAAAAAgttZmBzMjlxMLz2AAAAwMDwAbwMGNmNAbDMmB",
				dps = "1,099.6k",
			},
		},
		["subtlety"] = {
			["MythicPlus"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAzyMzsMBLLzYmZMmhZmxMzY2GjZstNzMmZmxgxysMAAAAMDGAjZzwADMLsQLGGD",
				dps = "1,191.1k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAzyMzsMNmZZZGzYMMMzMzwY2GjZstNzMmZmxgxysNAAAAMDGAjZzwADMLsQLGGD",
				dps = "1,167.5k",
			},
		},
	},
	["priest"] = {
		["holy"] = {
			["MythicPlus"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAYZYGLPwgZmZMwMmhxyMzsMAAAAAWmthlZGYWYWmxMjxYhNmZmaWAwMLYhwYWGgxCMA",
				dps = "189.2k",
				hps = "694.1k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGbmxMzYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWGmFDAZMYA",
				dps = "132.0k",
				hps = "1,426.1k",
			},
		},
		["discipline"] = {
			["MythicPlus"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlZGD2GjZmxMbmtZmZmhBAAAAAAAAAAAWsMbDbzMDmFGzYMGjF2mpZmYBYmBACwsMbbgxYD",
				dps = "344.7k",
				hps = "694.1k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGD2GjZmxMbmlZmZmhBAAAAAAAAAAAzilZbYbmZwswwMjxgF2mpxELDYmBACwsNLLgxYD",
				dps = "226.5k",
				hps = "1,264.8k",
			},
		},
		["shadow"] = {
			["MythicPlus"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMYAAAAAAAAAAAAAw4BmFzYmZ2mtxMzMz2YmlBzGzMzMmNGYMGmFz2UzMYBzAYmFLDzmBgMGDA",
				dps = "1,239.7k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAYmHYAAAAAAAAAAAAAGmlBzMz2sNmZmZ2mZmlBzGzMzMmNGYMGmFz2UzMYBGAzsZZY2MAkxYA",
				dps = "1,099.6k",
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["MythicPlus"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghxMzYMzMmZYGzMz0MMMzYGDAAAAAmZmZmZmZmNzMjBAAAzMzMAAAAbmtBGwCYbYCMMAMD2A",
				dps = "767.1k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMzMmZYGzMz0MjhZGzYAAAAAwMzMzMzMzsZmZMAAAYmZmZAAAAbmtBGwCYbYCMMAMD2A",
				dps = "680.4k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAMzYMjZYYmZMzMzMGmpZGDjBMzYMjZmZmZmZZmBAAAAAAAAAAAYzsNwAWAbDTgxgZGjZA",
				dps = "1,484.3k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGAzYMzMGDzYmZmZmxMmJzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAbmtBGwCYbYCMGMDjZA",
				dps = "1,397.8k",
			},
		},
		["unholy"] = {
			["MythicPlus"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGjZMDDzMzMzMNMmZGzYAAAAAAAAAMMzYGzMzMDAYDMLGzMzMMzA2MbGGYgZjhGDGgZA",
				dps = "1,370.1k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGwiZxwADMbM0YAgZA",
				dps = "1,316.4k",
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			["MythicPlus"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjxwMbMmZMmZGAAAAAAGzYYgFYbYoxAAmlpZAbLMz0wMzMmxyMmBzyglZmZmhZMDD",
				dps = "1,576.0k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjxwMbMmZwMzAAAAAgFzsBDYAzCTgZAAz20MGsBz0wMzMbDLzMzgZZYWGzMzMmxMM",
				dps = "1,290.3k",
			},
		},
		["enhancement"] = {
			["MythicPlus"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMz2MzMGjZYGmFsMjZAAAAAAAAAAsBwYGDDsAbDDNYAwsMZgZhxMzYMzMLYZmZyCLjlxMDAwM",
				dps = "1,370.1k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzyMzMYmZMzwsNsMDAAAAAAAAAAsBwYGDDsALDDNYAwsMZGMLLmZmZMMzsglZmJwYZMzAAMD",
				dps = "1,167.5k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZMzwsMWMDYBWgZsox2AYGYYmZWYGzMzIDjZmGzMMMWMmxmZZYWMDAgB",
				dps = "255.3k",
				hps = "708.1k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmZmZxyYzwCWgFYGbasMAmBGMmlxYbmZmJz2CzMNmhZ2wyMmBjhZZMAAG",
				dps = "75.4k",
				hps = "1,316.4k",
			},
		},
	},
	["mage"] = {
		["arcane"] = {
			["Raiding"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmhxsYYMzwYamZZGAAAAAAGAwMz0ystMDAgBAAAAAAAsMjBzMjZMMzMjZmxMzMGGD",
				dps = "1,264.8k",
			},
			["MythicPlus"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAMjZxsZBzMmZWAGzYMNzsMzAAAAAAYAAzMTLz2yMAAGAAAAAA2AYZGDzMzYYYmZGzMjZmZmhxA",
				dps = "1,343.0k",
				keystone = "+11"
			},
		},
		["fire"] = {
			["MythicPlus"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAMjhZzCmhZmFDMzMmGzDMmZAAAAAAMAgZmplZZZGAgxMzghZMzwyMbjhZmNzsNjtZMMAAAAAAAA",
				dps = "1,264.8k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgBAMzMtMLLzAAMGzgxMjZGWMLjZMzwMbzwMLDDAAAAAAA",
				dps = "1,056.4k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwMziBmZmGjxYmZwwMMzMzMzMzMzMzYmZGzAAAAzMzyyyMTDAAAAAAsAAAAAAAAA",
				dps = "1,316.4k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGMbzCmxDMmFDzMzoxYMmxghZYmZmZmZmZmZmxMzMmBAAAmZmlllZmGAAAAAAAAAAAAAAAA",
				dps = "1,121.8k",
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["Raiding"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAwMjZWmZM2MzMLMzMDAYmxyyADYAzwWghZGAAAAAAAAYmZ2MA",
				dps = "1,099.6k",
			},
			["MythicPlus"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAgxMzMzMjY2MMmNzMDjBAAAMzMzsMz8AjNzMzCzMzAAmZssMwAGwMsFYYmBAAAAAAAAmZsA",
				dps = "1,343.0k",
				keystone = "+12"
			},
		},
		["demonology"] = {
			["MythicPlus"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYjGGmhZmtxMbmZmZGDzMMzMmhxMDAAA",
				dps = "1,397.8k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGGmZmZsNmZzMzMzYYMYmZmBzMDAAA",
				dps = "1,316.4k",
			},
		},
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmxyY2MzMMLzmBzMziZzssYmBAAAAmZGWmZm5BAjZMsADsNsRjBDAAAAAAgxMzMAA",
				dps = "1,290.3k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNDmZmFzmZbxMDAAAAMzMsMzMzAGzYYBGYbYhGDGAAAAAAAjZmZAA",
				dps = "1,215.2k",
			},
		},
	},
	["monk"] = {
		["brewmaster"] = {
			["MythicPlus"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMmBmlZegtxMzYAAAAAAAssAiZGYGGbAbzMzwsZbmx2sMTbLzmtZmhZBAAGAAAgZbWamZmFMYD",
				dps = "1,056.4k",
				keystone = "+12"
			},
			["Raiding"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGDAAAAAAglFQMzgZGGLMYbGzYmtxMjtZx02yDsNbzMDzCAAMAAAAz2s0MzMLMDWA",
				dps = "640.8k",
			},
		},
		["windwalker"] = {
			["MythicPlus"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBzYmZMzADAAAAAAAAAAAwyywMxMDjZALMjtZMDz2YmBLzEAALzMDzMzMbzAAYAAz2s0MzMLAA",
				dps = "1,290.3k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBDzMzyMDMAAAAAAAAAAAALLDjYmBmhhFzM2mZmhZbYGsMTAAsMzMMzMzsNDAgBAMbzSzMzsAA",
				dps = "1,191.1k",
			},
		},
		["mistweaver"] = {
			["MythicPlus"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzsMmxMmxM2w2sMbjHAz2yyMzyCoxMDMDzsYglZmZY2YmBLzEAAAAAAwYZ22mtZmJAAwG",
				dps = "217.6k",
				hps = "694.1k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzYAMjZmlhNmtZmNbzy2yMzyCmJmZgZYmFDsMzMzY2YMMLmAAAAAAAGLzyysNzMBAAWA",
				dps = "117.0k",
				hps = "1,264.8k",
			},
		},
	},
	["druid"] = {
		["feral"] = {
			["MythicPlus"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMz2YMYmZmZZ2eAsNzMzMzMAAAAAALBjZMgZmRzMmhZmxyMmNGAAAAAAADAAAAQzsMLzMbDAYgxMA",
				dps = "1,215.2k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMz2sZmFmxMz2sxYbmZm5BmZAAAAAAWCGGwYmhmZMzYmxYG2mZAAAAAAAAGAAAAAgZbmlmtZWGYmB",
				dps = "1,121.8k",
			},
		},
		["balance"] = {
			["MythicPlus"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWoYMzMMmZGwMDzMjFYjhZmZbmZxYmZmx2MGDzM2ALAYA22GLYamZZAAAAwYmZM",
				dps = "1,370.1k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWGFmZMMMzAmZYmZww2MjZmZ2mxCmZmZsNjxYGjNwCAGgttxCmmZWGAAAAMmZYA",
				dps = "1,215.2k",
			},
		},
		["guardian"] = {
			["MythicPlus"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZYmlZGzYGzMWYmhZxCAjBzMzENzMzMzMmFYjBAAAAAAgxAW2mZDjZZAMBAAAMMzMA",
				dps = "722.4k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxMjZml5BGzYGmxiHYYmZxyAYAzMmMNzMjZmZYwGDAAAAAAYMzAAAAANz2sMzsMAAGmZGA",
				dps = "680.4k",
			},
		},
		["restoration"] = {
			["Raiding"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZBzYsthtxMDAAAAAAAAAAAglZAzwYGNzAmxMzMzwMtNDAAAAAwAAYMgllxCmmZWGAAAADjBA",
				dps = "121.8k",
				hps = "1,239.7k",
			},
			["MythicPlus"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZsY2GMMLbstMbzMAAAAAAAAAAAAWGMMzMDjMMMmh5BGzCTbjBAAAAAMAAYALLjFMNzsNAAAAGMzA",
				dps = "174.6k",
				hps = "666.9k",
				keystone = "+10"
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			["Raiding"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwA",
				dps = "1,316.4k",
			},
			["MythicPlus"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGMzMjxMZmZGAAAAAAwsMMmhZGMzsNbjxMYmNssBLziZMMbMNGzMjBD",
				dps = "1,264.8k",
				keystone = "+11"
			},
		},
		["vengeance"] = {
			["MythicPlus"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMMjhZkZmBDzYbMmZsNDzMjZ8AGz2MzsZmZbmhZAAAAAWmFzYYWYagZmBD",
				dps = "831.0k",
				keystone = "+12"
			},
			["Raiding"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbjZYGMAAAAALziZMMbMNwMzMMA",
				dps = "782.6k",
			},
		},
	},
	["evoker"] = {
		["preservation"] = {
			["Raiding"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzgZMzYWwMbjZGAAgZMjBjxMjwMAAAAzMzkZ2mZMbzMDAmxsBLgFwMMBGYMA",
				dps = "53.7k",
				hps = "1,707.3k",
			},
			["MythicPlus"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYADAAmZMjBjxMjYmBAAAYmZmmhZGjZmBAgxsZhFYgZYoBjBA",
				dps = "293.7k",
				hps = "722.4k",
				keystone = "+11"
			},
		},
		["devastation"] = {
			["Raiding"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMYGmBDYgxMTjZmJz2YbmZmZMjZ2mBMjZ2GzMbjZgBGDWglxox2AYGAGA",
				dps = "1,144.4k",
			},
			["MythicPlus"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzAzwMmZgZ2MGmphZmMbzsNzMzMmxMLzAmZGbjZGjZgBYwCsMGNWGAzAwA",
				dps = "1,290.3k",
				keystone = "+11"
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMLjlZmZGLDmZWmBzYmNAAAAAwAAgZGYwYYqhZmBAAAAzMzsNmZ2GzMwYbGYMbWYBGYGGagBzA",
				dps = "1,144.4k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMGbzMzMWGMzsMzwMmZDAAAAAMAAYmBAGzUzYmZAAAAwMmZbMzsNmZgx2MwY2swCMwMM0ADmB",
				dps = "1,035.5k",
			},
		},
	},
}
addonTable.DB = talentData