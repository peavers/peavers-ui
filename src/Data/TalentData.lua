local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["paladin"] = {
		["holy"] = {
			["MythicPlus"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbzMDzMmZWMjZZmZsNgZbbm2aMzixMzwAzWGAwAgNgNmxMzAAAAzMLbLtNzwGwDMgBMGA",
				dps = "313.6k",
				hps = "759.8k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZwMmZYmZWmZ8AbDY22mptwsNjZmhBmtMAgBAbAbMjZmBAAAmZW2WabmhNMAWYMMLzA",
				dps = "297.2k",
				hps = "1,775.0k",
			},
		},
		["protection"] = {
			["Raiding"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMzyMLjZmZmx2MmhhZYAAAGAAAAAAASmZWMMDGzMzWAAGAgZw2AAAAAmZW2WabmxiZAAmZMDjB",
				dps = "996.0k",
			},
			["MythicPlus"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsZMYWGLzMjZmZZbmZmZmtxMGAAAAAAAAAA0WmZWMMzwYGzWbAADMAAbDAAAAYmZZbplZGLMYAYwMbYA",
				dps = "1,001.7k",
				keystone = "+18"
			},
		},
		["retribution"] = {
			["Raiding"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAassNzstsNGbjZ22mZDAAAAAAjmmhhZGbzgZbYWmlZYYwMmhlF2AAAgZm2mlZbGAwGwAgxYGmB",
				dps = "1,476.4k",
			},
			["MythicPlus"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRstNzstsNzYzMz2iZbAAAAAAY2aaGGmZsNDmthxsMzy2YGMDDLLsBAAAzMtNLz2MAgNgBAMMMA",
				dps = "1,654.0k",
				keystone = "+16"
			},
		},
	},
	["warrior"] = {
		["fury"] = {
			["MythicPlus"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagxghhZwywMzGMMjxwMMzssNzYmZ2YmxMzwMsZbGmZMAAAQYMwGssY0YGAzCsYsA",
				dps = "1,506.1k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYMMzsBDzYMMDzMbbzMmZmNmZMzMMDb2mhZGDAAAEmxy2ALgBMDTgx2wG",
				dps = "1,655.2k",
			},
		},
		["arms"] = {
			["MythicPlus"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZmZmFLLLjZAAAAYw0wYYZYGYsMzMzgZGGz4BYGGAAAAAAAMjZZMGgtAjltBWADYGmADwG",
				dps = "1,233.0k",
				keystone = "+12"
			},
			["Raiding"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmZYbGzAzYMzMYmhBGmhBAAAAAAAPwYWmZmBQgxy2ALgBMDTgBYD",
				dps = "1,510.8k",
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2wYYaMGjZAsMwwGzMjZYGDDAAAAAAwMDAYZbDwwAbwyiRjZAMbgZ2A",
				dps = "780.5k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNzgZmBwyADbMzMwDMzDMMAAAAAAgZGAgltNADDsBLLGNmBwshNsB",
				dps = "775.0k",
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["MythicPlus"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgxCAAAAAAGAAAAAAgZmtZMmZMYmxwMmZYGzMzMTmhxMzMjxMDDjxMzwYGjlZwG",
				dps = "1,489.1k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsAbDDNsBAAAAAgBAAAAAAYGLDzyMjhxYmZMMjZGjZmZyMMmxMjxMjZYMMzwsMDWmZYD",
				dps = "1,482.3k",
			},
		},
		["survival"] = {
			["MythicPlus"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZmZMjZmxYMGzMmBAAAAAAAAAAAAAANDjZMzMjZGzwYYmhxwMLzgN",
				dps = "1,656.8k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxM2YgFYbYoBLzM2mxMzMjZMGMzYmZmxMDAAAAAAAAAAAAAANDjZmZmZMzYGGDzMwMmxMYB",
				dps = "1,481.9k",
			},
		},
		["marksmanship"] = {
			["Raiding"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGN2GAzG2AAAAAAAzYmZmhZmhZmZYmZGjZ2mZAAAAAAAAmhxMzMzMmRzMGDzMwMmxMjB",
				dps = "1,418.8k",
			},
			["MythicPlus"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGNWGAzG2AAAAAAAzMzMmxMMjZmZmZmZYmxGjBAAAAAAAmhxMmZmZmZyMGDzMMGmZZGsB",
				dps = "1,410.7k",
				keystone = "+14"
			},
		},
	},
	["rogue"] = {
		["outlaw"] = {
			["MythicPlus"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwwYmZwMzwMMMzMzMjZmplZMLzAAAAAAgtlZmhHYmZswMLz2AAAAwMDwAbwMGNmNAbDsYG",
				dps = "1,449.5k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGjZMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMADsBzY0Y2AsNwiZA",
				dps = "1,572.8k",
			},
		},
		["subtlety"] = {
			["Raiding"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxwYMDzMzMjxsNMzYbbmZMzMjBjlZbAAAAYGMAGzmhBGYWYhWsBD",
				dps = "1,552.2k",
			},
			["MythicPlus"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMzy0YGzMmBzMDzMzMMmthZGbbzMjZmZMglZbAAAAYGMAGzmhBGYWYhWsBD",
				dps = "1,460.3k",
				keystone = "+14"
			},
		},
		["assassination"] = {
			["MythicPlus"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmZGmBAAAAAAYWMmtZAAAAAAotlxM8AzMGzMzysNGDmZmZGMzMbbLzMDwmZZgBsAWGmADLA",
				dps = "1,561.3k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmhHYAAAAAAYWglZAAAAAAottZmhZmxYmZWmtZmZMwYmZmxMbWGzAsZWGYALglhJwwCA",
				dps = "1,562.0k",
			},
		},
	},
	["priest"] = {
		["discipline"] = {
			["Raiding"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGD2GjZmxMbmlZmZmhBAAAAAAAAAAAzilZbYbmZwswwMjxgF2mpxELDYmBACwsNLLgxmN",
				dps = "270.1k",
				hps = "1,439.5k",
			},
			["MythicPlus"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlZGDWGjZmxMbmtZmZmhBAAAAAAAAAAAzysMbDmZGjZhhBjhZhtZaMxyAmZAgAMbz2GYsZD",
				dps = "397.7k",
				hps = "784.4k",
				keystone = "+18"
			},
		},
		["holy"] = {
			["MythicPlus"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAYZYGLPwgZmZMwMmhxyMzsMAAAAAWmthlZmBWYWmxMjBLsxMzUzCAmZBLEGzyAMWgF",
				dps = "202.9k",
				hps = "673.0k",
				keystone = "+13"
			},
			["Raiding"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGbmxMzYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWGmFDAZMYD",
				dps = "174.1k",
				hps = "1,554.4k",
			},
		},
		["shadow"] = {
			["Raiding"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAYmHYAAAAAAAAAAAAAGmlBzMz2sNmZmZ2mZmlBzGzMzMmNGYMGmFz2UzMYBGAzsZZY2MAkxYB",
				dps = "1,433.7k",
			},
			["MythicPlus"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMYAAAAAAAAAAAAAw4BmFzYmZ2mtxMzMz2YmlBzGzMzwsxsgxYYWMbTNzgFMDgZWsMMbGAyYsA",
				dps = "1,371.1k",
				keystone = "+15"
			},
		},
	},
	["death-knight"] = {
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGgZGjZMGDzYmZmZmxwMNzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAjltBGwCYZYCMWwMMmBA",
				dps = "1,548.2k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGAzYMzMGDzYmZmZmxMmJzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAjltBGwCYZYCMWwMMmBA",
				dps = "1,517.0k",
			},
		},
		["blood"] = {
			["Raiding"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMzMmZYGzMz0MjhZGzYAAAAAwMzMzMzMzsZmZMAAAYmZmZAAAAjttBGwCYZYCMsAwMYD",
				dps = "789.7k",
			},
			["MythicPlus"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAgxMmZGjZMzMDDzMz0MMMzMzYAAAAAwwMzMzMmtZmZMAAAMzMzMAAAAjltBGwCYZYCMsAwMYD",
				dps = "772.7k",
				keystone = "+14"
			},
		},
		["unholy"] = {
			["Raiding"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGwiZxwADMbM0YBAmBA",
				dps = "1,465.3k",
			},
			["MythicPlus"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGjZMmZYGzMzMNjhZGzYAAAAAAAAAgZGjZMzMDAMbmhZBzMz8AzMzAWMLGGYgZjhGLAwMA",
				dps = "1,680.8k",
				keystone = "+16"
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			["Raiding"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz22MzMzYWmlZmBMzMDAAAAAAbmxwGsAzwQjNAwsNNjBbwMhZmZ2GWmZmBz2YZWGjBDzsxA",
				dps = "1,586.3k",
			},
			["MythicPlus"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAYbWWmZmZGzysNzAMjZAAAAAAYzMG2gFYGGasBAmtpZAbLmZmwMzMGWmxM2MLjFLmZGMjZ2GDA",
				dps = "1,425.1k",
				keystone = "+13"
			},
		},
		["enhancement"] = {
			["MythicPlus"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMjZYmZmhZZmZZZMDAAAAAAAAAgNA2MjhNYBmhhGsAgZZyAWMzMzgZMzmxyMz0swywYmBAYGD",
				dps = "1,763.7k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzCmhZ2mZmZY2mZWWGAAAAAAAAAAYDgNzYYDWgZYoBLAYWmMDssYmZmhxMzywyMzEYsMmZAAmxA",
				dps = "1,533.1k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZMzwsMWMjFsAbwMW0YZAMDsxMzsgZZmZGZ2YmZaMzAGLGzYxsMMLMAAGA",
				dps = "257.0k",
				hps = "750.1k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmxMLzyMbGWwCsAzYTjlBwMwGDzCzsNzMzkZbhZmGzgZDLzMGMGmlxAAYYA",
				dps = "101.0k",
				hps = "1,691.1k",
			},
		},
	},
	["mage"] = {
		["arcane"] = {
			["MythicPlus"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYGMbzCmhZmFDPgZGGTzMmBAAAAAgBAAAmZ2WWWmZiFAAAAAA2AYZGDzMzMDDzMzYMzMzMjhxA",
				dps = "1,454.6k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMmFPAjZGGTzMmBAAAAAgBAAAmZ2WWWmZiFAAAAAAAwyMGmZmZGzwMzMGzYmZGDjB",
				dps = "1,493.7k",
			},
		},
		["fire"] = {
			["Raiding"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgBAMzMtMLLzAAsZMDGzMmZMLmlxMmZYmtZYmFMAAAAAAAA",
				dps = "1,414.1k",
			},
			["MythicPlus"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYGLmNLYGmZ28AwMDTjZmlZGAAAAAADAYmZaZWWmBAYzMzYmhZMzMWmxMDzDYbmZbGLGAAAAAAAA",
				dps = "1,568.3k",
				keystone = "+15"
			},
		},
		["frost"] = {
			["Raiding"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwMziBmZmGjxYmZwwMMzMzMzMzMzMzYmZGzAAAAzMbLLLzMtBAAAAAALAAAAAAAAA",
				dps = "1,469.9k",
			},
			["MythicPlus"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzgZzCmhZmFPAjZGNGjZZmZwwMMzMzMzMzMzMzYmZGzAAAAzMbLLLzMtBAAAAAALAAAAAAAAA",
				dps = "1,519.3k",
				keystone = "+17"
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["Raiding"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAwMjZWmZM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZmZzA",
				dps = "1,394.8k",
			},
			["MythicPlus"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAwMzMzyMzDM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZGLA",
				dps = "1,432.7k",
				keystone = "+15"
			},
		},
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNDmZmFzGLLmZAAAAAzMzsMzMzYBGYWMaMDgZDbYAAAAAAAMzMjBAA",
				dps = "1,607.8k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNzwMzsY2MWMzAAAAAzMDLzMzMgxMGWgB2GWoxCGAAAAAAAjZmZAA",
				dps = "1,425.5k",
			},
		},
		["demonology"] = {
			["MythicPlus"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsZmZmZMMGmZmZGDzMAAA",
				dps = "1,522.5k",
				keystone = "+13"
			},
			["Raiding"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsZmZmZMmxwMzMzAzMAAA",
				dps = "1,629.1k",
			},
		},
	},
	["monk"] = {
		["mistweaver"] = {
			["MythicPlus"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWYmlxsY2mZmxG2mlZbgtZbZZmZZBmYmBmhZWMwyMzMML2GDWmJAAAAAAgFLz22sNzMBAA2A",
				dps = "274.9k",
				hps = "722.8k",
				keystone = "+12"
			},
			["Raiding"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzYYDzYmZZYDLzMb2mlllZmlFMamZGYGmBD2mZmhZjZGs8ATAAAAAAALWmllZbmZCAAsA",
				dps = "266.5k",
				hps = "1,656.4k",
			},
		},
		["brewmaster"] = {
			["Raiding"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGDAAAAAAwyCImZgZYsBsNzMjZ2Ymx2sMTbLPw2sNzMMLAAwGAAAwsNLNzMzCzgN",
				dps = "836.6k",
			},
			["MythicPlus"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMmBmlZegtxMzYAAAAAAAWWMGxMDMDDALzMzYmNmZsNLPw02yDsZbmZYWAAgNAAAgZbWamZmFmBb",
				dps = "880.9k",
				keystone = "+14"
			},
		},
		["windwalker"] = {
			["MythicPlus"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBzYmZMzADAAAAAAAAAAAYZZYEzM2GzwwCDbzYGmtxMDWmJAAWmZGmZmZ2mBAwGAY2mlmZmZBA",
				dps = "1,428.9k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBzYmZWmZgBAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzwMzY2mBAwGAYWmlmZmZBA",
				dps = "1,454.1k",
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["MythicPlus"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUMmZGGjZAzMMzMAbzMbmlZWmZWMmZmZmFjxwMjNwCDwAstNWw0MzyAAAAgNzMGA",
				dps = "1,615.2k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUYmZGGmZAzMMzYAbzMGmZbGLGzMzMzixMjZmxGYjBYA22GLYamZZAAAAwmZGjBA",
				dps = "1,369.4k",
			},
		},
		["feral"] = {
			["Raiding"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZb2MzCzYmZb2YsNzMz8AzMAAAAAAbBDDYMzMamxMMzMMDbzMAAAAAAAADAAAAAwsNzSz2MLbwMDA",
				dps = "1,410.1k",
			},
			["MythicPlus"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWMzMzMb2eAsNzMzYmBAAAAAYJYMjBMmRzMmhZmxywsZGAAAAAAAAAAAAamlZZmZbAALYmZAA",
				dps = "1,482.9k",
				keystone = "+14"
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFz2AMLLstMmBAAAAAAAAAAAwyghZGY0MMzMmhZmB0GAAAAAADAgZAAAAAgZbmtmlZ2sxMzAzYA",
				dps = "263.3k",
				hps = "727.0k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZDDjtNWWGzAAAAAAAAAAAAYbAmxMMamBMzwMzgZabmBAAAAAAAADYZZsgpZmlBAAAwCzMDwM",
				dps = "148.8k",
				hps = "1,920.9k",
			},
		},
		["guardian"] = {
			["MythicPlus"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMMzyMjZMjZGLMzwsYBgxgZmZimZmZmZGzCsxAAAAAAAwYALbzshxsMAmAAAA2YmZAA",
				dps = "754.5k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjZMDzYxDMMzsYZAMgZGTmmZmxMzMMYjBAAAAAAMmZAAAAgmZbWmZWGAALMzMAA",
				dps = "795.1k",
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			["Raiding"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwG",
				dps = "1,555.4k",
			},
			["MythicPlus"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGMzMjxMZYAAAAAAAmlhxMjZGMzsNbjxMYmNssBLziZMMbMNGzMjZYD",
				dps = "1,439.1k",
				keystone = "+16"
			},
		},
		["vengeance"] = {
			["MythicPlus"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMMjMzMYYGbjxMjtZYmZMjHwY2mZmNzMmZYGAAAAglZxMGmFmGYmZwG",
				dps = "823.7k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbjZYGMAAAAALziZMMbMNwMzMsB",
				dps = "885.7k",
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["MythicPlus"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMDMMGPw0wMTmtZ2mZmZGzYmlZAzYmtxMz2MzADMGsALjRjlBwMAshB",
				dps = "1,439.6k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMYmNzgBMYMTzYmJz2YbMzMjZMz2MgZMz2YmZZMDMwYwCsMGN2GAzAwGG",
				dps = "1,365.6k",
			},
		},
		["preservation"] = {
			["MythicPlus"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYADAAmZMjhxYGxMDAAAwMzMZsNzYMzMAAMmNLsADMDDNYsAD",
				dps = "314.2k",
				hps = "686.1k",
				keystone = "+13"
			},
			["Raiding"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMzyMzAgZMbwCYBMDTgB2MMA",
				dps = "57.4k",
				hps = "1,926.6k",
			},
		},
		["augmentation"] = {
			["Raiding"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmhBzMLzMjhZ2AAAAAADAAmZAwYqZMzMAAAAYGzsNmZWGzMwYbGDWglxwYbAMDiNMzA",
				dps = "1,279.4k",
			},
			["MythicPlus"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMLzsNzMzwgZmlZMGmZDAAAAAAAAzMwwY8A1wMzAAAAgZmZ2GzMbjZGYsNjBLwyYYsNAmBxGmZA",
				dps = "1,203.1k",
				keystone = "+15"
			},
		},
	},
}
addonTable.DB = talentData