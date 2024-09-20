local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["warrior"] = {
		["fury"] = {
			["MythicPlus"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAAagZGghZYMmZmNYYmZMMDzMbbzMmZmNmZMzMMDb2mhZGDAAAEmxy2ALgBMDTgxGG",
				dps = "1,144.4k",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYMMzsBDzYMMDzMbbzMmZmFmZMzMMDb2mhZGDAAAEmxy2ALgBMDTgx2wA",
				dps = "1,239.7k",
			},
		},
		["arms"] = {
			["Raiding"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAgtZMjxMzMzmlllZGAAAAMYaYGsZMDMjxMzgZGGGDzwAAAAAAAgHYMLzMzAIwYZbgFwAmhJwwgB",
				dps = "994.9k",
			},
			["MythicPlus"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZmZmFLLLjZAAAAYw0wMDLDzAjlxMzgZGGz4BYGGAAAAAAAMjZZMGgtAjltBWADYGmADwA",
				dps = "1,015.0k",
				keystone = "+10"
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzwMzgZbmlZmZWWYMMNDMzMAWGzMDYmZYgZYAAAAAAAzMAgHYZbDwAsYGDLwAzwCN2YGA",
				dps = "782.6k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsNzMz2mZMMNDMzMAWGYYjZmBmZeghBAAAAAAMzAAsttBYYgNYZxoxMAmNshB",
				dps = "603.4k",
			},
		},
	},
	["paladin"] = {
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjZYWM2eAzYmxymZmxMGzYGAAAAAAAAAA0WDzMziZwMDzMLGYmNAYMAAAGgBAAAMzsst0yMjxMA",
				dps = "591.5k",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNPgZMDjlHwMzMzYzMzYGMMDAAwAAAAAAAQaYmZYgZwMziBzMbAwYgZAYwMADAwMTbzysNDAwYGA",
				dps = "494.0k",
			},
		},
		["retribution"] = {
			["Raiding"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAjpNLbzMbLbjx2YmttZ2AAAAAAwYimZYgZGGzyYYmhZZWmhhBDzYsswGAwsMbzMzWDAAAMA",
				dps = "1,167.5k",
			},
			["MythicPlus"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAjJ22mZ2W2mZsZmZbxsNAAAAAAMbT0MDDMzYGzyYYMMmlZW2GGMYwyCbAAzysNzMbNAAAwAA",
				dps = "1,191.1k",
				keystone = "+10"
			},
		},
		["holy"] = {
			["MythicPlus"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAADAAGAwYAAAAsNzMMzYmZxMmlZmxyAstNTblHwMDDmZGGzCYmxAAGAYDYYmZGmZZWmZmlGAAAgBA",
				dps = "164.4k",
				hps = "484.3k",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAGDAAwAsNzMzYGzMLMmlZGWmBstNTbFMjZGmZGGzCYmxAAGAYDYYmZ8AmZZ2mZmtGAAAgBD",
				dps = "126.8k",
				hps = "1,167.5k",
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["MythicPlus"] = {
				talentString = "Link not found",
			},
			["Raiding"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYsNDMgFwMsEYMAAAAAAYAAAAAAAMzYYMzMDzMMDDzYmxYmZmMDjZMzMjZGzwYYmhZZwsMD2A",
				dps = "1,121.8k",
			},
		},
		["marksmanship"] = {
			["MythicPlus"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGNWGAzGGAAAAAAgZmZMMjxMzMzMzMzMMzYYMAAAAAAAwMMmxMzMzMTmxYYmhxwMLzgN",
				dps = "1,099.6k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsNGN2GAzGGAAAAAAgZmZmBzMzMMzMmZmZMmZMDAAAAAAAwMMmZmZmxMamxYYmBmxMmZMA",
				dps = "1,239.7k",
			},
		},
		["survival"] = {
			["Raiding"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AzMjlZMzMzYmZmxMzgxMzMDAAAAAAAAAAAAAA0MMmxMzMmZMDjhZGGDzsMD2A",
				dps = "1,121.8k",
			},
			["MythicPlus"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AzMjlZMzMzYmZmxMzgxMzMDAAAAAAAAAAAAAA0MMmxMzMmZMDjhZGGDzsMDWA",
				dps = "1,099.6k",
				keystone = "+10"
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			["MythicPlus"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmZGmxyMAAAAAAMLw2MAAAAAA022MzwDMzYMzMLzyYMYmZmZwMzsttMmBYzsMwAWALDTghB",
				dps = "1,484.3k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhZmxyMAAAAAAMLwyMAAAAAA022MzwDMzYMzMLz2YMGMzMzMzYmNLjZA2MLDMgFwywEYYA",
				dps = "1,077.8k",
			},
		},
		["outlaw"] = {
			["MythicPlus"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwwYmZwMzwMMMzMzMjZmplZMLzAAAAAAgtlZmhHYmZswMLz2AAAAwMDwAbwMGNmNAbDMmB",
				dps = "1,099.6k",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwwYmZwMzwMMMzMzMjZmplZMLzAAAAAAgttZmBzMjlxMLz2AAAAwMDwAbwMGNmNAbDMmB",
				dps = "1,099.6k",
			},
		},
		["subtlety"] = {
			["Raiding"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAzyMzsMNmZZZGzMjhhZmxwY2GjZstNzMzMzMgxysNAAAAMDGAjZzwADMLsQLGGD",
				dps = "1,167.5k",
			},
			["MythicPlus"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAzyMzsMBLLzYmZMmhZmxMzY2GjZstNzMmZmxgxysMAAAAMDGAjZzwADMLsQLGGD",
				dps = "1,015.0k",
				keystone = "+10"
			},
		},
	},
	["priest"] = {
		["holy"] = {
			["MythicPlus"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAYZYGLPwgZmZMwMmhxyMzsMAAAAA2mthlZGYWY2mxMjxYhNmZmaWAwMLYhwYWGgxCMA",
				dps = "53.7k",
				hps = "653.7k",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGbmxMzYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMMzMYZDmxUzCAwMLWGmFDAZMYA",
				dps = "140.1k",
				hps = "1,290.3k",
			},
		},
		["discipline"] = {
			["MythicPlus"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlZGD2GjZmxMbmtZmZmhBAAAAAAAAAAAWsMbDbzMDmFGzYMGjF2mpZmYBYmBACwsMbbgxYD",
				dps = "209.1k",
				hps = "456.1k",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGD2GjZmxMbmlZmZmhBAAAAAAAAAAAzitZbYbmZwswwMjxgF2mpxELDYmBACwsNLLgxYD",
				dps = "217.6k",
				hps = "1,264.8k",
			},
		},
		["shadow"] = {
			["MythicPlus"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMgZmBAAAAAAAAAAAAwwsYGzY2GjZmxsNzMLDmNmZmZMbMwYMMLmtpmZwCMAmZxywsZAIjxA",
				dps = "1,144.4k",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAYmHYAAAAAAAAAAAAAGmlBzMz2sNmZmZ2mZmlBzGzMzMmNGYMGmFz2UzMYBGAzsZZY2MAkxYA",
				dps = "1,077.8k",
			},
		},
	},
	["death-knight"] = {
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAMzYMjxYYYmZmZmxMmpZGDjBMzYMjZmZmZmZZmBAAAAAAAAAAAYzsNwAWAbDTgxgZGjZA",
				dps = "1,514.2k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGAzMjZmxYYGzMzMzMGmJzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAbmtBGwCYbYCMGMDjZA",
				dps = "1,397.8k",
			},
		},
		["blood"] = {
			["MythicPlus"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghxMzYMzMmZYYmZmmZMMzYGDAAAAAmZmZmZmZmNzMjBAAAzMzMAAAAbmtBGwCYbYCMMAMD2A",
				dps = "591.5k",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMzMmZYGzMz0MjhZGzYAAAAAwMzMzMzMzsZmZMAAAYmZmZAAAAbmtBGwCYbYCMMAMD2A",
				dps = "653.7k",
			},
		},
		["unholy"] = {
			["Raiding"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzYMjxMDzYmZmphZmZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGwiZxwADMbM0YAgZA",
				dps = "1,514.2k",
			},
			["MythicPlus"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZmZMzMGDDzMzMNMjZGzYAAAAAAAAAMMzYGzMzMDAYDMLGzMzMMzA2MbGGYgZjhGDGgZA",
				dps = "847.8k",
				keystone = "+10"
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			["MythicPlus"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjxwMbMmZwMzAAAAAAwYGDDsAbDDNGAwsMNDYjZmphZmZMsNjZwsMWmlxMzMjZMDD",
				dps = "1,397.8k",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjxwMbMmZwMzAAAAAgFzsBDYAzCTgZAAz20MgNGz0wMzMbDLzMzgZbYWGzMzMmxMM",
				dps = "1,191.1k",
			},
		},
		["restoration"] = {
			["Raiding"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmZmZxyYzwCWgFYGbasMAmBGMmlxYbmZmJz2CzMNmhZ2wyMmBjhZZMAAG",
				dps = "65.5k",
				hps = "1,290.3k",
			},
			["MythicPlus"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZmZGsMDDLYB2gZsox2AYGYYmZWwYmZGZsMzMTjZGGYxYGLmlhZZMAAG",
				dps = "293.7k",
				hps = "653.7k",
				keystone = "+11"
			},
		},
		["enhancement"] = {
			["Raiding"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzyMzMYmZMzwsNsMDAAAAAAAAAAsBwYGDDsALDDNYAwsMZGMLLmZmZMMzsglZmJwYZMzAAMD",
				dps = "1,191.1k",
			},
			["MythicPlus"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMz2MzMGzMDzwsglZMAAAAAAAAAAsBwYGDDsAbDDNYAwsMZgZhZMGjZmZxYZmZyCLjlxMDAwM",
				dps = "1,121.8k",
				keystone = "+10"
			},
		},
	},
	["mage"] = {
		["fire"] = {
			["MythicPlus"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbWwMMzsYgZmx0YmxMDAAAAAgBAMzMtMLLzAAMGzgxMjZGWMLjZMzwMbzYZmlhBAAAAAAA",
				dps = "937.0k",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYGLzsNLYGmZWgxMDTjZGzAAAAAAwAAmZmWmllZAAGjZwYmxMDLmlxMmZYmtZYmlhBAAAAAAA",
				dps = "955.9k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYjNLYGmZW8AwMz0YMPwsMzMYYGmZmZmZmZmZmZMzMjZAAAgZmZZZbmpBAAAAAA2AAAAAAAAA",
				dps = "1,290.3k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwMziBmZmGjxYmZwwMMzMzMzMzMzMzYmZGzAAAAzMzyyyMTDAAAAAAsAAAAAAAAA",
				dps = "1,099.6k",
			},
		},
		["arcane"] = {
			["Raiding"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmhxsYYMzwYamZZGAAAAAAGAwMz0ystMDAgBAAAAAAAsMjBzMjZMMzMjZmxMzMGGD",
				dps = "1,191.1k",
			},
			["MythicPlus"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAMjhZzCmhZmFDj5BmxYaMmZAAAAAAMAgZmplZbZGAADAAAAAALAsMjhZmZMMMzMjZmxMzMzwYA",
				dps = "1,316.4k",
				keystone = "+11"
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["MythicPlus"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAghZmZmZEzmhxsZmZY2GAAAwMjZWmZegx2MzMLmxMDAYGLwAziRjZAMLgZGAAAAAAAAYGWA",
				dps = "1,121.8k",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAwMjZWmZM2MzMLMzMDAYmxyyADYAzwWghZGAAAAAAAAYmZ2MA",
				dps = "1,099.6k",
			},
		},
		["demonology"] = {
			["MythicPlus"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzihxsNzMDzyAAAAAAAAAAYeAwYGDLwAbDL0wwMjZmtxMbmZmZGDjBzMzMGmZAAA",
				dps = "1,077.8k",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYjGGmZmZsNmZzMzMzYYMYmZmBzMDAAA",
				dps = "1,264.8k",
			},
		},
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAghZmZmZEzmhxsZmZYWmNzwMzsYWmZbZmZAAAAgxMsMzMzAGzYYBGYZYhGDGAAAAAAADjZAA",
				dps = "1,167.5k",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAgxMzMzMjYWMwsZmZYWmNDmZmFzmZbxMDAAAAMzMsMzMzAGzYYBGYbYhGDGAAAAAAAjZmZAA",
				dps = "1,121.8k",
			},
		},
	},
	["monk"] = {
		["brewmaster"] = {
			["Raiding"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMmBsMjtZmZGDAAAAAAglFMiZGLMDzsZglZmZY2YmxmFTbbPwmtZmxMLAAwAAAAMbzSzMzswMYD",
				dps = "535.2k",
			},
			["MythicPlus"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMYmlZegtxMzYAAAAAAAssAiZGYGGgx2MzMMbjZGbzyMttZz2MzYsAAADAAAwsNLNzMzyYGsB",
				dps = "798.4k",
				keystone = "+10"
			},
		},
		["mistweaver"] = {
			["MythicPlus"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzsMmxMmxM2w2sMbjHAz2yyMzyCMxMDMDzsYglZmZY2YmBLzEAAAAAAwYZ22mtZmJAAwG",
				dps = "148.8k",
				hps = "456.1k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzYAMjZmlhNbzyMDbzyy2MzyCzMxMDMDzgBbzMzwsNGDziJAAAAAAgxyssMbzMTAAgF",
				dps = "112.5k",
				hps = "1,035.5k",
			},
		},
		["windwalker"] = {
			["MythicPlus"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBzYmZMzADAAAAAAAAAAAwyywImZYMDYZMjtZMDz2YmBLzEAALzMDzMzMbzAAYAAz2s0MzMLAA",
				dps = "1,343.0k",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBDzMzyMDMAAAAAAAAAAAALLDjYmBmhhFzM2mZmhZbYGsMTAAsMzMMzMzsNDAgBAMbzSzMzsAA",
				dps = "1,191.1k",
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["MythicPlus"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWoYMzMMmZGwMDzMjFYjZxMzYmZzMzMjx2MLjhZYDsAgxy2MbYMLDgJAAAAjZmxA",
				dps = "1,215.2k",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWowMjhxMzAmZGzMGw2MjZmZ2mxCmZmZsNjxYGjNwCAGgttxCmmZWGAAAAMmZYA",
				dps = "1,191.1k",
			},
		},
		["feral"] = {
			["MythicPlus"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZ2mNzswMzMzmNzYbmZmxMDAAAAAwSAzYAzM0MjZYmZsMjZbmBAAAAAAAAAAAAAwsNzSzyMbDMzA",
				dps = "937.0k",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMz2YMYmZmZZ2YsNzMzMzMAAAAAAbBjZgZMmRzMGjZGjZYbMAAAAAAAAAAAA0MLzyMz2AAGYmB",
				dps = "1,144.4k",
			},
		},
		["guardian"] = {
			["MythicPlus"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYmlZGzYGzMWYmhZxCAjBzMzENzMzMzMmFYjBAAAAAAMjxAW2mZDjZZAMBAAAMMzMA",
				dps = "568.3k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxMjZml5BGzYGmxiHYYmZxyAYAzMmMNzMjZmZYwGDAAAAAAYMzAAAAANz2sMzsMAAGmZGA",
				dps = "680.4k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZsY2GMMLbstMbzMAAAAAAAAAAAAWGMMzMDjMMMmh5BGzCTbjBAAAAAMAAYALLjFMNzsNAAAAGMzA",
				dps = "103.8k",
				hps = "666.9k",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZBzYsthtxMDAAAAAAAAAAAgtZAzwwoZGwMzMzMzwMtNDAAAAAwAAYMgllxCmmZWGAAAADjBA",
				dps = "105.9k",
				hps = "1,144.4k",
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["MythicPlus"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMMzwMYgZ2MGmphZmMbjlZYmxMmZZGwMzMbjZGjZwMwYwCsMGN2GAzAwA",
				dps = "1,015.0k",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmhZADMmZaGzMZ2mZbmZmZMjZ2mBMjZ2GzMbjZgBGDWglxox2AYGAGA",
				dps = "1,167.5k",
			},
		},
		["preservation"] = {
			["Raiding"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMbzgZMzYWwMbjZGAAgZMjBjxMjYmBAAAYmZmY2mZMbzMDAmxsBLgFwMMBGYMA",
				dps = "57.0k",
				hps = "1,484.3k",
			},
			["MythicPlus"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYAAAwMjZmBjxMjYmBAAAYmZmM2mZMmZGAAGzmFWgBmhhGMGA",
				dps = "287.9k",
				hps = "494.0k",
				keystone = "+10"
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMLjtZmZGLDmZWmBzYmNAAAAAAAAMzADGjZqhZmBAAAAmZmtxMzyYmBGbzAjZzCLwAzwQDMYG",
				dps = "1,191.1k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmxygZGzMMjZ2AAAAAADAAmZAgxM1MmZGAAAAMjZ2GzMbjZGYsNDMmNLsADMDDNwgZA",
				dps = "1,015.0k",
			},
		},
	},
	["demon-hunter"] = {
		["vengeance"] = {
			["MythicPlus"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMMjhZkZmBDzYbMmZsNDzMjZ8AGz2MzwMz2MDzAAAAAsMLmxwsw0AzMjxA",
				dps = "798.4k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAYMzMjhZkZmBDzMbzMYsNjZegZMDmZWmZmtZmhZwAAAAAsMLmxwsx0AzMzwA",
				dps = "831.0k",
			},
		},
		["havoc"] = {
			["MythicPlus"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGjZmZMmJMzAAAAAAAmlhhZMzgZmtZbMmBzshlNYbWMjhZjpxYmZMYA",
				dps = "1,264.8k",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwA",
				dps = "1,370.1k",
			},
		},
	},
}
addonTable.DB = talentData