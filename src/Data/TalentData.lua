local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["warrior"] = {
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZbmlZmZWwYYaMGjZAsMwwGzMjZYGjZAAAAAAAzMAALbbAGGYDWWMaMDgZDYGA",
				dps = "722.4k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNzgZmBwyADbMzMwDMzDMMAAAAAAgZGAgltNADDsBLLGNmBwshNMA",
				dps = "666.9k",
			},
		},
		["arms"] = {
			["MythicPlus"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZmZmFbLLzMDAAAADmGmZYZYGYsMmZGMzwYGPAzwAAAAAAAgHYMbjxAsFAsYGDLwAzwGNAG",
				dps = "1,264.8k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmBbGzAzYMzMYmhhxwMMAAAAAAA4BGzyMzMACMW2GYBMgZYCMMYA",
				dps = "1,167.5k",
			},
		},
		["fury"] = {
			["MythicPlus"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZGghZYMMzsBDzMjhZYmZbbmxMzsxMjZmhZYz2MMzYAAAgwMW2GYBMgZYCM2wA",
				dps = "1,343.0k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYMMzsBDzYMMDzMbbzMmZmNmZMzMMDb2mhZGDAAAEmxy2ALgBMDTgx2wA",
				dps = "1,316.4k",
			},
		},
	},
	["paladin"] = {
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjZYWmx2D8AGzMW2MzMmxYGzAAAAAAAAAAg2aYmZWMwMYmZBwsBAjBmBgBzAAAAAMzsst02MjxMA",
				dps = "603.4k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNPgZMDjlHgZmZssZmZMzyYYGAAgBAAAAAAg0wMzwAzMMzsYwMDAYMwAgBzAMAAzMtNLz2MAAjZA",
				dps = "591.5k",
			},
		},
		["holy"] = {
			["Raiding"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAGDAAwAsNzMzYGzMLMmlZGWmBstNTbFMjZGmZGGzCYmxAAGAYDYYmZ8AmZZ2mZmtGAAAgBD",
				dps = "132.0k",
				hps = "1,343.0k",
			},
			["MythicPlus"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAADAAGAwYAAAAsNzMMzYmZxMmlZmxyAstNTblHwMDDmZGGzCYmxAAGAYDYYmZGmZZWmZmlGAAAgBA",
				dps = "240.5k",
				hps = "628.1k",
				keystone = "+11"
			},
		},
		["retribution"] = {
			["Raiding"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAjpNbbzMbLbjx2YmttZ2AAAAAAwYimZYgZGGzyYYmhZZWmhhBDzYsswGAwsMbzMzWDAAAMA",
				dps = "1,077.8k",
			},
			["MythicPlus"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAjJ22mZ2W2mZsZmZbxsNAAAAAAMbT0MDDMzYGzyYYMMmlZW2GGMYwyCbAAzysNzMbNAAAwAA",
				dps = "1,426.1k",
				keystone = "+11"
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
		["survival"] = {
			["MythicPlus"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AzMjlZMzMzYmZmxMzgxMzMDAAAAAAAAAAAAAA0MMmZmZmxMDDMMzwsMMzyMYD",
				dps = "1,215.2k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AzMjlZMzMzYmZmxMzgxMzMDAAAAAAAAAAAAAA0MMmxMzMmZMDjhZGGDzsMD2A",
				dps = "1,167.5k",
			},
		},
		["marksmanship"] = {
			["Raiding"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsNGN2GAzGGAAAAAAgZmZmBzMzMMzMmZmZMmZMDAAAAAAAwMMmZmZmxMamxYYmBmxMmZMA",
				dps = "1,239.7k",
			},
			["MythicPlus"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGNWGAzCGAAAAAAgZmZMMjxMzMzMzMzMMzYYMAAAAAAAwMMmxMzMzMTmxYYmhxwMLzgN",
				dps = "1,397.8k",
				keystone = "+11"
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			["MythicPlus"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmZGmxyMAAAAAAMLwyMAAAAAA022MzwDMzYMzMLz2YMYmZmZwMzsttMmBYzsMwAWALDTghB",
				dps = "1,454.9k",
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
				dps = "1,316.4k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwwYmZwMzwMMMzMzMjZmplZMLzAAAAAAgttZmBzMjlxMLz2AAAAwMDwAbwMGNmNAbDMmB",
				dps = "1,099.6k",
			},
		},
		["subtlety"] = {
			["Raiding"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAzyMzsMNmZZZGzYMMMzMzwY2GjZstNzMmZmxgxysNAAAAMDGAjZzwADMLsQLGGD",
				dps = "1,215.2k",
			},
			["MythicPlus"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAzyMzsMBLLzYmZMmhZmxMzY2GjZstNzMmZmxgxysMAAAAMDGAjZzwADMLsQLGGD",
				dps = "1,215.2k",
				keystone = "+11"
			},
		},
	},
	["priest"] = {
		["shadow"] = {
			["Raiding"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAYmHYAAAAAAAAAAAAAGmlBzMz2sNmZmZ2mZmlBzGzMzMmNGYMGmFz2UzMYBGAzsZZY2MAkxYA",
				dps = "1,099.6k",
			},
			["MythicPlus"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMYAAAAAAAAAAAAAw4BmFzYmZ2mtxMzMz2YmlBzGzMzMmNGYMGmFz2UzMYBzAYmFLDzmBgMGDA",
				dps = "1,215.2k",
				keystone = "+11"
			},
		},
		["holy"] = {
			["Raiding"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGbmxMzYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMMzMYZDmxUzCAwMLWGmFDAZMYA",
				dps = "143.0k",
				hps = "1,426.1k",
			},
			["MythicPlus"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAYZYGLPwgZmZMwMmhxyMzsMAAAAAWmthlZGYWYWmxMjxYhNmZmaWAwMLYhwYWGgxCMA",
				dps = "193.0k",
				hps = "640.8k",
				keystone = "+11"
			},
		},
		["discipline"] = {
			["MythicPlus"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlZGD2GjZmxMbmtZmZmhBAAAAAAAAAAAWsMbDbzMDmFGzYMGjF2mpZmYBYmBACwsMbbgxYD",
				dps = "358.7k",
				hps = "694.1k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGD2GjZmxMbmlZmZmhBAAAAAAAAAAAzilZbYbmZwswwMjxgF2mpxELDYmBACwsNLLgxYD",
				dps = "217.6k",
				hps = "1,264.8k",
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["Raiding"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMzMmZYGzMz0MjhZGzYAAAAAwMzMzMzMzsZmZMAAAYmZmZAAAAbmtBGwCYbYCMMAMD2A",
				dps = "694.1k",
			},
			["MythicPlus"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghxMzYMzMmZYGzMz0MMMzYGDAAAAAmZmZmZmZmNzMjBAAAzMzMAAAAbmtBGwCYbYCMMAMD2A",
				dps = "782.6k",
				keystone = "+11"
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAMzYMjZYYmZMzMzMGmpZGDjBMzYMjZmZmZmZZmBAAAAAAAAAAAYzsNwAWAbDTgxgZGjZA",
				dps = "1,454.9k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGAzMjZmxYYGzMzMzMGmJzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAbmtBGwCYbYCMGMDjZA",
				dps = "1,370.1k",
			},
		},
		["unholy"] = {
			["MythicPlus"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGjZMDDzMzMzMNMmZGzYAAAAAAAAAMMzYGzMzMDAYDMLGzMzMMzA2MbGGYgZjhGDGgZA",
				dps = "1,397.8k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGwiZxwADMbM0YAgZA",
				dps = "1,397.8k",
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			["Raiding"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjxwMbMmZwMzAAAAAgFzsBDYAzCTgZAAz20MGsBz0wMzMbDLzMzgZZYWGzMzMmxMM",
				dps = "1,290.3k",
			},
			["MythicPlus"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjxwMbMmZMmZGAAAAAAGzYYgFYbYoxAAmlpZAbLMz0wMzMmxyMmBzyglZmZmhZMDD",
				dps = "1,741.8k",
				keystone = "+11"
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
				dps = "69.6k",
				hps = "1,290.3k",
			},
		},
		["enhancement"] = {
			["MythicPlus"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMz2MzMGjZYGmFsMjZAAAAAAAAAAsBwYGDDsAbDDNYAwsMZgZhxMzYMzMLGLzMTWYZYMzAAMD",
				dps = "1,397.8k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzyMzMYmZMzwsNsMDAAAAAAAAAAsBwYGDDsALDDNYAwsMZGMLLmZmZMMzsglZmJwYZMzAAMD",
				dps = "1,144.4k",
			},
		},
	},
	["mage"] = {
		["arcane"] = {
			["MythicPlus"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAMjZxsZBzMmZWAGzYMNzsMzAAAAAAYAAzMTLz2yMAAGAAAAAA2AYZGDzMzYYYmZGzMjZmZmhxA",
				dps = "1,370.1k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmhxsYYMzwYamZZGAAAAAAGAwMz0ystMDAgBAAAAAAAsMjBzMjZMMzMjZmxMzMGGD",
				dps = "1,215.2k",
			},
		},
		["fire"] = {
			["MythicPlus"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAMzYhNLYGmZWMwMzYaMPwYmBAAAAAwAAmZmWmllZAAGjZwYmxMzDMLmtxwMDzsNjlZMMAAAAAAAA",
				dps = "847.8k",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYGLzsNLYGmZWgxMDTjZGzAAAAAAwAAmZmWmllZAAGjZwYmxMDLmlxMmZYmtZYmlhBAAAAAAA",
				dps = "1,015.0k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwMziBmZmGjxYmZwwMMzMzMzMzMzMzYmZGzAAAAzMzyyyMTDAAAAAAsAAAAAAAAA",
				dps = "1,290.3k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwMziBmZmGjxYmZwwMMzMzMzMzMzMzYmZGzAAAAzMzyyyMTDAAAAAAsAAAAAAAAA",
				dps = "1,099.6k",
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["MythicPlus"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAgxMzMzMjY2MMmNzMDjBAAAMzMzsMz8AjNzMzCzMzAAmZssMwAGwMsFYYmBAAAAAAAAmZsA",
				dps = "1,343.0k",
				keystone = "+12"
			},
			["Raiding"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAwMjZWmZM2MzMLMzMDAYmxyyADYAzwWghZGAAAAAAAAYmZ2MA",
				dps = "1,099.6k",
			},
		},
		["demonology"] = {
			["MythicPlus"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYjGGmhZmtxMbmZmZGDzMMzMmhxMDAAA",
				dps = "1,454.9k",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGGmZmZsNmZzMzMzYYMYmZmBzMDAAA",
				dps = "1,290.3k",
			},
		},
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmxyY2MzMMLzmBzMziZzssYmBAAAAmZGWmZm5BAjZMsADsNsRjBDAAAAAAgxMzMAA",
				dps = "1,144.4k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNDmZmFzmZbxMDAAAAMzMsMzMzAGzYYBGYbYhGDGAAAAAAAjZmZAA",
				dps = "1,167.5k",
			},
		},
	},
	["monk"] = {
		["brewmaster"] = {
			["Raiding"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGAAAAAAAssAiZGYGGbMGbzMzwswMjtZZm2WsNbzMjZWAAgBAAAY2mlmZmZhZwC",
				dps = "628.1k",
			},
			["MythicPlus"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMmBmlZegtxMzYAAAAAAAstAiZGYGGbAbzMzwsZbmx2sMTbLzmtZmhZBAAGAAAgZbWamZmFMYD",
				dps = "1,056.4k",
				keystone = "+11"
			},
		},
		["windwalker"] = {
			["MythicPlus"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBzYmZMzADAAAAAAAAAAAwyywMxMDjZALMjtZMDz2YmBLzEAALzMDzMzMbzAAYAAz2s0MzMLAA",
				dps = "1,290.3k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBDzMzyMDMAAAAAAAAAAAALLDjYmBmhhFzM2mxMMbjZGsMTAAsMzMMzMzsNDAgBAMbzSzMzsAA",
				dps = "1,215.2k",
			},
		},
		["mistweaver"] = {
			["Raiding"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWYmlBwMmZWG2Y2mZ2sNLbLzMLLYmYmBmhZWMwyMzMMb2GDziJAAAAAAgxyssMbzMTAAgN",
				dps = "99.7k",
				hps = "1,077.8k",
			},
			["MythicPlus"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWYmlxMmxMzM2w2sMbDsNbLLzMLLMjYmBmZzMMw2MzMMbYGsMTAAAAAAAjlZbZ2mZmAAAbA",
				dps = "213.3k",
				hps = "737.0k",
				keystone = "+11"
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
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMz2sZmFmxMz2sxYbmZGzMDAAAAAwSwwAGjZ0MjZGzMGzw2MDAAAAAAAwAAAAAAMbzs0sNzyAzMA",
				dps = "1,056.4k",
			},
		},
		["balance"] = {
			["MythicPlus"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWoYMzMMmZGwMDzMjFYjZxMzYmZzMzMjx2MLjhZYDsAgxy2MbYMLDgJAAAAjZmxA",
				dps = "1,370.1k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWGFmZMMMzAmZYmZww2MjZmZ2mxCmZmZsNjxYGjNwCAGgttxCmmZWGAAAAMmZYA",
				dps = "1,215.2k",
			},
		},
		["guardian"] = {
			["Raiding"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxMjZml5BGzYGmxiHYYmZxyAYAzMmMNzMjZmZYwGDAAAAAAYMzAAAAANz2sMzsMAAGmZGA",
				dps = "680.4k",
			},
			["MythicPlus"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZYmlZGzYGzMWYmhZxCAjBzMzENzMzMzMmFYjBAAAAAAgxAW2mZDjZZAMBAAAMMzMA",
				dps = "708.1k",
				keystone = "+11"
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZsY2GMMLbstMbzMAAAAAAAAAAAAWGMMzMDjMMMmh5BGzCTbjBAAAAAMAAYALLjFMNzsNAAAAGMzA",
				dps = "154.9k",
				hps = "666.9k",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZBzYsthtxMDAAAAAAAAAAAglZAzwwoZGwMzMzMGmptZAAAAAAGAAjBssMWw0MzyAAAAYYMYA",
				dps = "121.8k",
				hps = "1,144.4k",
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
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGMzMjxMhZGAAAAAAwsMMmZMzgZmtZbMmBzshlNYZWMjhZjpxYmZMYA",
				dps = "1,290.3k",
				keystone = "+11"
			},
		},
		["vengeance"] = {
			["MythicPlus"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMMjMzMYYGbjxMjtZYmZMjHwY2mZmNzMmZYGAAAAglZxMGmFmGYmZwA",
				dps = "847.8k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbjZYGMAAAAALziZMMbMNwMzMMA",
				dps = "767.1k",
			},
		},
	},
	["evoker"] = {
		["preservation"] = {
			["MythicPlus"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYADAAmZMjBjxMjYmBAAAYmZmM2mZMmZGAAGzmFWgBmhhGMGA",
				dps = "318.2k",
				hps = "680.4k",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzgZMzYWwMbjZGAAgZMjBjxMjwMAAAAzMzkZ2mZMbzMDAmxsBLgFwMMBGYMA",
				dps = "58.1k",
				hps = "1,741.8k",
			},
		},
		["devastation"] = {
			["MythicPlus"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzAzwMmZgZ2MGmphZmMbzsNzMzMmxMLzAmZGbjZGjZgBYwCsMGNWGAzAwA",
				dps = "1,264.8k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMYGmBDYgxMTjZmJz2YbmZmZMjZ2mBMjZ2GzMbjZgBGDWglxox2AYGAGA",
				dps = "1,144.4k",
			},
		},
		["augmentation"] = {
			["Raiding"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMGbzMzMWGMzsMzwMmZDAAAAAMAAYmBAGzUzYmZAAAAwMmZbMzsNmZgx2MwY2swCMwMM0ADmB",
				dps = "1,035.5k",
			},
			["MythicPlus"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMLjlZmZGLDmZWmBzYmNAAAAAwAAgZGYwYYqhZmBAAAAzMzsNmZ2GzMwYbGYMbWYBGYGGagBzA",
				dps = "1,144.4k",
				keystone = "+11"
			},
		},
	},
}
addonTable.DB = talentData