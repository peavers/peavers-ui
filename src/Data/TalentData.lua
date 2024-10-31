local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["warrior"] = {
		["arms"] = {
			["MythicPlus"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZmZmFLLLjZAAAAYw0wMDLDzAjlxMzgZGGz4BYGGAAAAAAAMjZZMGgtAjltBWADYGmADwA",
				dps = "1,143.4k",
				keystone = "+13"
			},
			["Raiding"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmBbGzAzYMzMYmhhxwMMAAAAAAA4BGzyMzMACMW2GYBMgZYCMMYA",
				dps = "1,492.1k",
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2wYYaMGjZAsMwwGzMjZYGDDAAAAAAwMDAYZbDwwAbwyiRjZAMbgZGA",
				dps = "777.8k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNzgZmBwyADbMzMwDMzDMMAAAAAAgZGAgltNADDsBLLGNmBwshNMA",
				dps = "776.4k",
			},
		},
		["fury"] = {
			["MythicPlus"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagxgZMMDWwMzGMMjxwMMzssNzYmZ2YmxMzwMsZbGmZMAAAQYMwGssY0YGAzCsYMA",
				dps = "1,396.1k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYMMzsBDzYMMDzMbbzMmZmNmZMzMMDb2mhZGDAAAEmxy2ALgBMDTgx2wA",
				dps = "1,653.6k",
			},
		},
	},
	["paladin"] = {
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjBzyYZegZMzMLbzMzYGjZMAAADAAAAAAAt1MzsYYmhxMs1GAMGYAMw2AAAAAmZWWWabmxYGAAGGGD",
				dps = "843.9k",
				keystone = "+12"
			},
			["Raiding"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMzyMLjZmZmx2MmhhZYAAAGAAAAAAASmZWMMDGzMzWAAGAgZw2AAAAAmZW2WabmxYGAgZGzwYA",
				dps = "964.6k",
			},
		},
		["holy"] = {
			["MythicPlus"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbjZYmxMziZMLzMjlZAbbz0WjZYMzMMwslBAMAYDYjZmZmZWmtZmZpBAAAYAGAMMmB",
				dps = "183.4k",
				hps = "641.3k",
				keystone = "+12"
			},
			["Raiding"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYZmZwMmZYmZWmZ8AbDY22mptwsNjZmhBmtMAgBAbAbMjZmBAAAmZW2WabmhBDgFGDzyMA",
				dps = "313.0k",
				hps = "1,662.8k",
			},
		},
		["retribution"] = {
			["Raiding"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAassNzstsNGbjZ22mZDAAAAAAjmmhhZGbzgZbYWmlZYYwMmhlF2AAAgZm2mlZbGAwAMAYMmhZA",
				dps = "1,463.9k",
			},
			["MythicPlus"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRstNzstsNzYzMz2iZbAAAAAAY2aaGGmZsNDmthxsMzy2YGMDDLLsBAAAzMtNLz2MAgBYAADDD",
				dps = "1,596.5k",
				keystone = "+16"
			},
		},
	},
	["hunter"] = {
		["marksmanship"] = {
			["MythicPlus"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGNWGAzGGAAAAAAwMzMjZMDzYmZmZmZGmZsxYAAAAAAAgZYMjZmZmZmMjxwMDzywMmBb",
				dps = "1,372.5k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGN2GAzGGAAAAAAwMmZmZYmZYmZGmZmxYmtZGAAAAAAAgZYMzMzMjZ0MjxwMDMjZMzYA",
				dps = "1,389.6k",
			},
		},
		["survival"] = {
			["MythicPlus"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AzMjlZmZmZGzYmZMGjxMjZAAAAAAAAAAAAAAQzwYGzMzYmxMMGmZYMMzyMYD",
				dps = "1,635.6k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxM2YgFYbYoBzMjtZMzMzYGjBzMmZmZMzAAAAAAAAAAAAAAQzwYmZmZGzMmhxwMDMjZMDWA",
				dps = "1,460.8k",
			},
		},
		["beast-mastery"] = {
			["MythicPlus"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgxAAAAAAgBAAAAAAYmZbGjZGDmZMMjZGmxMzMzkZYMjZmZMzYGGDzMMGmZZGsB",
				dps = "1,508.9k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsAbDDNMAAAAAAYAAAAAAAmxywsMzYYMmZGDzYmxYmZmMDjZMzYMzYGGDzMMLzglZG2A",
				dps = "1,469.6k",
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			["MythicPlus"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmZGmxyDMAAAAAAMLw2MAAAAAA02yMzwDMzYMzMLz2YMYmZmZwMzsttMmBYzsMwAWALDTghB",
				dps = "1,571.5k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmhHYAAAAAAYWglZAAAAAAottZmhZmxYmZWmtZmZMwYmZmxMbWGzAsZWGYALglhJwwA",
				dps = "1,533.0k",
			},
		},
		["outlaw"] = {
			["Raiding"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGjZMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMADsBzY0Y2AsNwYG",
				dps = "1,461.8k",
			},
			["MythicPlus"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwwYmZwMzwMMMzMzMjZmplZMLzAAAAAAgtlZmhHYmZswMLz2AAAAwMDwAbwMGNmNAbDMmB",
				dps = "1,429.6k",
				keystone = "+14"
			},
		},
		["subtlety"] = {
			["MythicPlus"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMYmZYmZmhxsNMzMbLzMjZmZAjlZbAAAAYGMAGzmhBGYWYhWMwA",
				dps = "1,410.7k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxwYMDzMzMjxsNMzYbbmZMzMjBjlZbAAAAYGMAGzmhBGYWYhWMwA",
				dps = "1,477.0k",
			},
		},
	},
	["priest"] = {
		["shadow"] = {
			["MythicPlus"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMYAAAAAAAAAAAAAw4BmFzYmZ2mtxMzMz2YmlBzGzMzMmNGYMGmFz2UzMYBzAYmFLDzmBgMGDA",
				dps = "1,342.2k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAYmHYAAAAAAAAAAAAAGmlBzMz2sNmZmZ2mZmlBzGzMzMmNGYMGmFz2UzMYBGAzsZZY2MAkxYA",
				dps = "1,414.8k",
			},
		},
		["holy"] = {
			["Raiding"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGbmxMzYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWGmFDAZMYA",
				dps = "176.8k",
				hps = "1,548.2k",
			},
			["MythicPlus"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAYZYGLPwgZmZMwMmhxyMzsMAAAAAWmthlZGYWYWmxMjxYhNmZmaWAwMLYhwYWGgxCMA",
				dps = "190.7k",
				hps = "663.6k",
				keystone = "+12"
			},
		},
		["discipline"] = {
			["Raiding"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGD2GjZmxMbmlZmZmhBAAAAAAAAAAAzilZbYbmZwswwMzMGsw2MNmYBYmBACwsNLbgxYD",
				dps = "255.9k",
				hps = "1,362.1k",
			},
			["MythicPlus"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlZGDWGjZmxMbmtZmZmhBAAAAAAAAAAAWmlZbwMzYMLjhBjhZhtZaMxyAmZAgAMbz2GYM2A",
				dps = "372.3k",
				hps = "767.6k",
				keystone = "+17"
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["MythicPlus"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAgxMmZGjZMzMDjZmZmmhxMzYGAAAAAwwMzMzMmtZmZMAAAMzMzMAAAAjltBGwCYZYCMMAMD2A",
				dps = "731.9k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMzMmZYGzMz0MjhZGzYAAAAAwMzMzMzMzsZmZMAAAYmZmZAAAAjttBGwCYZYCMMAMD2A",
				dps = "785.8k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGgZGjZMmZYGzMzMzwwMNzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAjltBGwCYZYCMGMDjZA",
				dps = "1,517.6k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGAzYMzMGDzYmZmZmxMmJzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAjltBGwCYZYCMGMDjZA",
				dps = "1,506.9k",
			},
		},
		["unholy"] = {
			["MythicPlus"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGjxMGDzMzMzMNMmZGzYAAAAAAAAAgZGjZMzMDAMbmhZBzMz8AzMzAWMLGGYgZjhGDAMDA",
				dps = "1,608.9k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGwiZxwADMbM0YAgZA",
				dps = "1,478.8k",
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			["MythicPlus"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAYbWWmZmZGzysNzAMjZAAAAAAYzMG2gFYGGaMAgZZaGw2CzMhZmZMsMjZGmlxysYmZwMmZbMA",
				dps = "1,563.8k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz2yMjZGzysMzMgZmZAAAAAAYzMG2gFYGGaMAgZbaGw2iZmphZmZMsNzMDmlBLjxgZMzGDA",
				dps = "1,452.4k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZMzwsMWMsgFYDmxiGLDgZghZmZBzyMzMystwMTjZGGGLGzYxsMMLMAAGA",
				dps = "252.7k",
				hps = "751.6k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmZmZxyYzwCWgFYGbasMAmBGMmlxYbmZmJz2CzMNmhZ2wyMmBjhZZMAAGA",
				dps = "96.8k",
				hps = "1,498.5k",
			},
		},
		["enhancement"] = {
			["MythicPlus"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMjZYmZmhZZmZZZMDAAAAAAAAAgNA2MjhNYBmhhGMAYWmMgFzMzMDzYmNjlZMNLsMMmZAAmxA",
				dps = "1,866.3k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzCmhZ2mZmZY2mZWWGAAAAAAAAAAYDgNzYYDWgZYoBDAmlJzALLmZmZYMzsMsMzMBGLjZGAgZMA",
				dps = "1,516.5k",
			},
		},
	},
	["mage"] = {
		["arcane"] = {
			["MythicPlus"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYGMbWwMMzs4BYMzMGTjZZmBAAAAAwAAmZmWmtlZAAMAAAAAAsBwyMGmZmxwwMzMmZGzMzMDjB",
				dps = "1,359.2k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMmFPAjZGGTzMmBAAAAAgBAAAmZ2WWWmZiBAAAAAAAsMjhZmZmxMMzMjxMmZmxwYA",
				dps = "1,433.4k",
			},
		},
		["fire"] = {
			["MythicPlus"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbWwMMzs4B4BMzMmGzMmZAAAAAAMAgZmplZZZGAgxMzghZMzYWmZbMMzsZmtZsMDMAAAAAAAA",
				dps = "1,384.1k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgBAMzMtMLLzAAMGzgxMjZGziZZMjZGmZbGmZBDAAAAAAA",
				dps = "1,406.6k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmtZBzwMziBmZ0YMzYGDGmhZmZmZmZmZmZGzMzYGAAAYmZZZZZmpBAAAAAAWAAAAAAAAA",
				dps = "1,312.6k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwMziBmZmGjxYmZwwMMzMzMzMzMzMzYmZGzAAAAzMbLLLzMNAAAAAAwCAAAAAAAAA",
				dps = "1,484.4k",
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["MythicPlus"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAwMzMzyMzDM2MzMLMzMDAYmxyyADYAzwWghZGAAAAAAAAYmxCA",
				dps = "1,408.8k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAwMjZWmZM2MzMLMzMDAYmxyyADYAzwWghZGAAAAAAAAYmZ2MA",
				dps = "1,373.7k",
			},
		},
		["demonology"] = {
			["Raiding"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGGmZMjtxMbmZmZGjZMMzMzMwMDAAA",
				dps = "1,637.0k",
			},
			["MythicPlus"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAGzYYBGYZYhGGmZMjtxMbmZmZGDjhZmZmxwMDAAA",
				dps = "1,486.8k",
				keystone = "+14"
			},
		},
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNDmZmFzmZZxMDAAAAMzMsMzMzAGzYYBGYbYhGDGAAAAAAAjZmZAA",
				dps = "1,352.0k",
				keystone = "+13"
			},
			["Raiding"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNDzMzsY2MWMzAAAAAzMDLzMzMgxMGWgB2GWoxgBAAAAAAwYmZGAA",
				dps = "1,391.6k",
			},
		},
	},
	["monk"] = {
		["mistweaver"] = {
			["Raiding"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzYYDzYmZZYDLzMb2mlllZmlFMTMzAzwMLGYZmZGmFbjhZxEAAAAAAwYZWWmtZmJAAwG",
				dps = "266.8k",
				hps = "1,657.8k",
			},
			["MythicPlus"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWsMzyYWMbzMzYDbzysNw2sZZmZZBmYmBmhZWMwyMzMMLMzglZCAAAAAAYsMbbz2MzEAAYD",
				dps = "264.1k",
				hps = "698.1k",
				keystone = "+12"
			},
		},
		["brewmaster"] = {
			["MythicPlus"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMmBmlZegtxMzYAAAAAAAWWMGxMDMDDALzMzYmNmZsNLPw02yDsZbmZYWAAgBAAAY2mlmZmZhZwG",
				dps = "811.9k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGAAAAAAAWWAhZgZYmFGjtZmZYWGmx2sMTbL2mtZmxMLAAwAAAAMbzSzMzsxMYB",
				dps = "724.0k",
			},
		},
		["windwalker"] = {
			["MythicPlus"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBzYmZMzADAAAAAAAAAAAYZZYEzM2GzwwCDbzYGmtxMDWmJAAWmZGmZmZ2mBAwAAmtZpZmZWAA",
				dps = "1,364.5k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBzYmZWmZgBAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzwMzY2mBAwAAmtZpZmZWAA",
				dps = "1,436.5k",
			},
		},
	},
	["druid"] = {
		["feral"] = {
			["MythicPlus"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWMzMzMb2eAsNzMzYmBAAAAAYJYMjBMmRzMmhZmxywsZGAAAAAAAAAAAAamlZZmZbAADmZGAA",
				dps = "1,454.7k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZb2MzCzYmZb2YsNzMz8AzMAAAAAALBDDYMzMamxMjZGjZYbMAAAAAAAADAAAAAwsNzSz2MLDMzAA",
				dps = "1,401.1k",
			},
		},
		["balance"] = {
			["MythicPlus"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUMmZGGjZAzMMzMAbmZzsMzyMzixMzMzsYMGmZsBWYAGgttxCmmZWGAAAAMzMjBA",
				dps = "1,566.9k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUYmZGGmZAzMMzYAbzMGmZbGLGzMzMzixMjZmxGYjBYA22GLYamZZAAAAwYmxYA",
				dps = "1,356.6k",
			},
		},
		["guardian"] = {
			["MythicPlus"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMMzyMjZMjZGLMzwsYBgxgZmZimZmZmZGzCsxAAAAAAAwYALbzshxsMAmAAAAGmZGA",
				dps = "753.3k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjZMDzYxDMMzsYZAMgZGTmmZmxMzMMYjBAAAAAAMmZAAAAgmZbWmZWGAADzMDA",
				dps = "798.3k",
			},
		},
		["restoration"] = {
			["Raiding"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZBzYstNsYbGAAAAAAAAAAAALzAmhxMamBMjZmZmhZabGAAAAAgBAADYZZsgpZmlBAAAwwYAMD",
				dps = "133.8k",
				hps = "1,484.4k",
			},
			["MythicPlus"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFz2wDwYZZstYbGAAAAAAAAAAAALDGMDmRwYGjZmZMLMtxAAAAAAGAAmBAAAAAz2MbNbzsYwMDMjB",
				dps = "239.6k",
				hps = "674.1k",
				keystone = "+12"
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			["MythicPlus"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGMzMjxMhZGAAAAAAwsMMmZMzgZmtZbMmBzshlNYZWMjhZjpxYmZMYA",
				dps = "1,369.6k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwA",
				dps = "1,515.0k",
			},
		},
		["vengeance"] = {
			["MythicPlus"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMMjhZkZmBDzYbMmZsNDzMjZ8AGz2MzsZmZbmhZAAAAAWmFzYYWYagZmBD",
				dps = "801.3k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbjZYGMAAAAALziZMMbMNwMzMMA",
				dps = "868.1k",
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["MythicPlus"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMDMDGmGzMTmtZ2mZmZGzYmlZAzYmtxMz2YGYgxgFYZMasMAmBgBD",
				dps = "1,375.5k",
				keystone = "+13"
			},
			["Raiding"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMYGmBDYwYmGzMTmtx2MzMzYGzsNDYGzsNmZWGzADMGsALjRjtBwMAMYA",
				dps = "1,451.5k",
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMLzsNzMzwgZmlZMGmZDAAAAAMAAYmBGGD1wMzAAAAgZmZ2GzMbjZGYsNjBLwyYYsNAmBxgZG",
				dps = "1,174.7k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmhBzMLzMjhZ2AAAAAADAAmZAwYqZMzMAAAAYGzsNmZWGzMwYbGDWglxwYbAMDiBzMA",
				dps = "1,254.0k",
			},
		},
		["preservation"] = {
			["MythicPlus"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYAAAwMDjZMzYGxYAAAAmZmJDzMzsNmBAgxsZhFYgZYoBjBG",
				dps = "305.5k",
				hps = "688.7k",
				keystone = "+13"
			},
			["Raiding"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMz2sNwYmZMLYmNmZAAAzMmxwYMjYmBAAAYmZmMjZGzyMzDAgBGzmFWgBmhhGwAD",
				dps = "179.1k",
				hps = "1,557.9k",
			},
		},
	},
}
addonTable.DB = talentData