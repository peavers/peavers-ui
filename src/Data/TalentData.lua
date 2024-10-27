local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["paladin"] = {
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjZYWM2egHwYmxymZmxMGzYGAAAAAAAAAA0WDzMziBmZYmZxAmNAYMwAwAGgBAAAMzsst02MjxMA",
				dps = "699.7k",
				keystone = "+12"
			},
			["Raiding"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZYWGLjZmZmx2MzMzMGDDAAwAAAAAAAQyMzihZwYGzWbAwYADgBbDAAAAYmZZbptZGjBAMmZYYM",
				dps = "739.3k",
			},
		},
		["holy"] = {
			["MythicPlus"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAADAAGAwYAAAAsNzMMzYmZxMmlZmxyAstNTblHwMDDmZGGzCYmxAAGAYDYYmZGmZZWmZmlGAAAgBA",
				dps = "219.2k",
				hps = "657.9k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZwMmZYmZWmZ8AbDY22mptwsNjZmhBmtMAgBAbAbMjZmBAAAmZW2WabmhBDgFGDzyMA",
				dps = "263.8k",
				hps = "1,862.4k",
			},
		},
		["retribution"] = {
			["MythicPlus"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAjJ22mZ2W2mZsZGbLmtBAAAAAgZbimZWMwMjZMLjhxwYWmZZbYwgBLLsBAAAmZabWmtZAADA",
				dps = "1,552.2k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAassNzstsNGbjZ22mZDAAAAAAjmmhhZGbzgZbYWmlZYYwMmhlF2AAAgZm2mlZbGAwAMAYMmhZA",
				dps = "1,400.4k",
			},
		},
	},
	["warrior"] = {
		["arms"] = {
			["Raiding"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmZYbGzAzYMzMYmhBGmhBAAAAAAAPwYWmZmBQgxy2ALgBMDTgBYA",
				dps = "1,324.4k",
			},
			["MythicPlus"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZmZmFLLLjZAAAAYw0wMDLDzAjlxMzgZGGz4BYGGAAAAAAAMjZZMGgtAjltBWADYGmADwA",
				dps = "1,125.5k",
				keystone = "+11"
			},
		},
		["fury"] = {
			["MythicPlus"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagxgZMMDWwMzGMMjxwMMzssNzYmZ2YmxMzwMsZbGmZMAAAQYMwGssY0YGAzCsYMA",
				dps = "1,390.7k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYMMzsBDzYMMDzMbbzMmZmNmZMzMMDb2mhZGDAAAEmxy2ALgBMDTgx2wA",
				dps = "1,508.7k",
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2YGDTjxYMDglBG2YmZYwYMDAAAAAAwMDAYZbDwwAbwyiRjZAMbgZGA",
				dps = "781.5k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNzgZmBwyADbMzMwDMzDMMAAAAAAgZGAgltNADDsBLLGNmBwshNMA",
				dps = "758.5k",
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["MythicPlus"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYstMwAGwswSgxAAAAAAgBAAAAAAYGbzYMzYYmZMDjZGPwMGzMzkZYMzMzMjZGGGDzMMmhxMMb",
				dps = "1,148.2k",
				keystone = "+13"
			},
			["Raiding"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsAbDDNMAAAAAAYAAAAAAAmZWGGzMzwMDzwwMmZMmZmJzwYGzMGzMmhxwMDzyMYZmhN",
				dps = "1,504.4k",
			},
		},
		["marksmanship"] = {
			["MythicPlus"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGNWGAzGGAAAAAAgZmZMjZMmxMzMzMzMMzYYMAAAAAAAwMMmxMzMzMTmxYYmhxwMLzgN",
				dps = "1,428.7k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgZAAAAAAAzYmZmhZmhZmZYmZGjZ2mZAAAAAAAAmhxMzMzMmRzMGDzMwMmxMjB",
				dps = "1,532.2k",
			},
		},
		["survival"] = {
			["MythicPlus"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AzMjlZMzMzYmZmxMzgxMzMDAAAAAAAAAAAAAAaGGzYmZGzMMMGmZGjhZWmBb",
				dps = "1,392.3k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxM2YgFYbYoBzMjtZMzMzYGjBzMmZmZMzAAAAAAAAAAAAAAQzwYmZmZGzMmhxwMDMjZMDWA",
				dps = "1,404.7k",
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			["Raiding"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmhHYAAAAAAYWglZAAAAAAottZmhZmxYmZWmtZmZMwYmZmxMbWGzAsZWGYALglhJwwA",
				dps = "1,500.1k",
			},
			["MythicPlus"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmZGmxyDMAAAAAAMLw2MAAAAAA02yMzwDMzYMzMLz2YMYmZmZwMzsttMmBYzsMwAWALDTghB",
				dps = "1,571.0k",
				keystone = "+15"
			},
		},
		["outlaw"] = {
			["MythicPlus"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwwYmZwMzwMMMzMzMjZmplZMLzAAAAAAgtlZmhHYmZswMLz2AAAAwMDwAbwMGNmNAbDMmB",
				dps = "1,383.9k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGjZMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMADsBzY0Y2AsNwYG",
				dps = "2,029.2k",
			},
		},
		["subtlety"] = {
			["Raiding"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxwYMDzMzMjxsNMzYbbmZMzMjBjlZbAAAAYGMAGzmhBGYWYhWMwA",
				dps = "1,455.0k",
			},
			["MythicPlus"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAzyMzsMBLzMmZGjZYmZMzMmtxYmZbbmZMzMDYsNbDAAAAzgBwY2MMwAzCL0ihxA",
				dps = "1,287.4k",
				keystone = "+13"
			},
		},
	},
	["priest"] = {
		["holy"] = {
			["MythicPlus"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAYZYGLPwgZmZMwMmhxyMzsMAAAAAWmthlZGYWYWmxMjxYhNmZmaWAwMLYhwYWGgxCMA",
				dps = "185.8k",
				hps = "662.5k",
				keystone = "+12"
			},
			["Raiding"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGbmxMzYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWGmFDAZMYA",
				dps = "173.5k",
				hps = "1,555.3k",
			},
		},
		["discipline"] = {
			["MythicPlus"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlZGDWGjZmxMbmtZmZmhBAAAAAAAAAAAWmlZbwMzYMLjhBjhZhtZaMxyAmZAgAMbz2GYM2A",
				dps = "357.4k",
				hps = "757.0k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGD2GjZmxMbmlZmZmhBAAAAAAAAAAAzilZbYbmZwswwMjxgF2mpxELDYmBACwsNLLgxYD",
				dps = "256.1k",
				hps = "1,418.3k",
			},
		},
		["shadow"] = {
			["MythicPlus"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMYAAAAAAAAAAAAAw4BmFzYmZ2mtxMzMz2YmlBzGzMzMmNGYMGmFz2UzMYBzAYmFLDzmBgMGDA",
				dps = "1,341.4k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAYmHYAAAAAAAAAAAAAGmlBzMz2sNmZmZ2mZmlBzGzMzMmNGYMGmFz2UzMYBGAzsZZY2MAkxYA",
				dps = "1,351.9k",
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["MythicPlus"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghxMzYMjxMDzYmZmmhhZGzYGAAAAAmZmZmZmZmNzMjBAAAzMzMAAAAbmtBGwCYbYCMMAMD2A",
				dps = "759.6k",
				keystone = "+13"
			},
			["Raiding"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMzMmZYGzMz0MjhZGzYAAAAAwMzMzMzMzsZmZMAAAYmZmZAAAAjttBGwCYZYCMMAMD2A",
				dps = "749.5k",
			},
		},
		["unholy"] = {
			["Raiding"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGwiZxwADMbM0YAgZA",
				dps = "1,465.3k",
			},
			["MythicPlus"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGjhxMDzMzMzMNMmZGzYAAAAAAAAAgZGjZMzMDAMbmhZBzMz8AzMzAWMLGGYgZjhGDAMDA",
				dps = "1,591.7k",
				keystone = "+15"
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGgZmZMjZYYGjZmZGmxMNzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAbmtBGwCYbYCMGMDjZA",
				dps = "1,606.1k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGAzYMzMGDzYmZmZmxMmJzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAjltBGwCYZYCMGMDjZA",
				dps = "1,508.9k",
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			["Raiding"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz22MzMzYWmlZmBMzMDAAAAAAbmxwGsAzwQjBAMLTzYwGMTYmZmthlZmZwsNWmlxYwwMbMA",
				dps = "1,771.2k",
			},
			["MythicPlus"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjxwMbMmZwMzAAAAAAwYGDDsAbDDNGAwsMNDYbxMz0wMmxwyMmxCLjlZxMzMzYGzwA",
				dps = "1,423.2k",
				keystone = "+13"
			},
		},
		["enhancement"] = {
			["Raiding"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzCmhZ2mZmZY2mZWWGAAAAAAAAAAYDgNzYYDWgZYoBDAmlJzALLmZmZYMzsMsMzMBGLjZGAgZMA",
				dps = "1,479.7k",
			},
			["MythicPlus"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMz2MzMGzMDzwshlZMAAAAAAAAAAsBwYGDDsAbDDNYAwsMZGYxMzMDmxMbGLzMTWYZGMzAAMD",
				dps = "1,590.0k",
				keystone = "+16"
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZMzwsMWMsgFYDmxiGLDgZghZmZBzyMzMystwMTjZGGGLGzYxsMMLMAAGA",
				dps = "250.2k",
				hps = "751.8k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmZmZxyYzwCWgFYGbasMAmBGMmlxYbmZmJz2CzMNmhZ2wyMmBjhZZMAAGA",
				dps = "87.2k",
				hps = "1,471.0k",
			},
		},
	},
	["mage"] = {
		["arcane"] = {
			["MythicPlus"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmhxsYYMzwYamZZGAAAAAAGAwMz0ystMDAgBAAAAAAAsMjhZmZMMMzMjZmxMzMzwYA",
				dps = "1,362.4k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMmFPAjZGGTzMmBAAAAAgBAAAmZ2WWWmZiBAAAAAAAsMjhZmZmxMMzMjxMmZmxwYA",
				dps = "1,386.3k",
			},
		},
		["fire"] = {
			["MythicPlus"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbWwMMzs4B4BMzMmGzMmZAAAAAAMAgZmplZZZGAgxMzghZMzYWmZbMMzsZmtZsMDMAAAAAAAA",
				dps = "1,358.7k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgBAMzMtMLLzAAMGzgxMjZGziZZMjZGmZbGmZBDAAAAAAA",
				dps = "1,379.3k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAAMbzyMmxMmFYMzoxYmZZYwwMMzMzMzMzMzMzYmZGzAAAAzMLLLLzMNAAAAAAwGAAAAAAAAA",
				dps = "1,298.8k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNLYGGzihZmZ0YMGzMDGmhZmZmZmZmZmZGzMzYGAAAYmZbZZZmpBAAAAAAAAAAAAAAA",
				dps = "1,372.7k",
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["MythicPlus"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAwMzMzyMzDM2MzMLMzMDAYmxyyADYAzwWghZGAAAAAAAAYmxCA",
				dps = "1,398.4k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAwMjZWmZM2MzMLMzMDAYmxyyADYAzwWghZGAAAAAAAAYmZ2MA",
				dps = "1,318.6k",
			},
		},
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNDmZmFzmZZxMDAAAAMzMsMzMzAGzYYBGYbYhGDGAAAAAAAjZmZAA",
				dps = "1,355.9k",
				keystone = "+13"
			},
			["Raiding"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNDzMzsY2MWMzAAAAAzMDLzMzMgxMGWgB2GWoxgBAAAAAAwYmZGAA",
				dps = "1,292.2k",
			},
		},
		["demonology"] = {
			["MythicPlus"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAGzYYBGYZYhGGmZMjtxMbmZmZGDjhZmZmxwMDAAA",
				dps = "1,485.9k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGGmZmZsNmZzMzMzYYMMzMzMwMDAAA",
				dps = "1,473.6k",
			},
		},
	},
	["monk"] = {
		["brewmaster"] = {
			["MythicPlus"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMmBmlZegtxMzYAAAAAAAWWAxMDMDjNYsMzMjZ2Ymx2s8ATbLPwmtZmhZBAAGAAAgZbWamZmFmBb",
				dps = "811.9k",
				keystone = "+13"
			},
			["Raiding"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGDAAAAAAwyCImZgZYsBsNzMjZ2Ymx2sMTbLPw2sNzMMLAAwAAAAMbzSzMzswMYD",
				dps = "803.8k",
			},
		},
		["mistweaver"] = {
			["Raiding"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYWYGDwMmZWG2Y2mZ2sNLbLzMLLMjmZmBmhZWYwyMzMMbjxgFTAAAAAAAjlZZZ2mZmAAALA",
				dps = "125.7k",
				hps = "1,450.6k",
			},
			["MythicPlus"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzsMmxMmxM2w2sMbjHAz2yyMzyCMNzMDMDzwAbzMzwsxMDWegJAAAAAAgxystNbzMTAAgN",
				dps = "190.7k",
				hps = "661.7k",
				keystone = "+13"
			},
		},
		["windwalker"] = {
			["MythicPlus"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBzYmZMzADAAAAAAAAAAAYZZYEzM2GzwwCDbzYGmtxMDWmJAAWmZGmZmZ2mBAwAAmtZpZmZWAA",
				dps = "1,344.4k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBzYmZWmZgBAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzwMzY2mBAwAAmlZpZmZWAA",
				dps = "1,418.7k",
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["MythicPlus"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWoYMzMMmZGwMDzMjFYjhZmZbmZxYmZmx2MGDzM2ALAYA22GLYamZZAAAAwYmZM",
				dps = "1,444.3k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUYmZGGmZAzMMzYAbzMLsMz2MWwMzMzsY2mZMzM2AbAYA22GLYamZZAAAAwYmZGA",
				dps = "1,268.0k",
			},
		},
		["feral"] = {
			["Raiding"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZb2MzCzYmZb2YsNzMjZmBAAAAAYLYYAjxMamxMjZGjZYbmBAAAAAAAYAAAAAAmtZWa2mZZgZGAA",
				dps = "1,299.7k",
			},
			["MythicPlus"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWMzMzMb2eAsNzMzYmBAAAAAYJYYMYMmRzMmxMzMWmhNGAAAAAAADAAAAQzsMLzMbDAYgxMAA",
				dps = "1,466.5k",
				keystone = "+14"
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFzyghZZbstYbmBAAAAAAAAAAAwygBzAjgxMmxMzYWGajBAAAAAMAGgZALLjFMNzsNAAAAGMzA",
				dps = "142.8k",
				hps = "620.5k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZBzYstNsYbGAAAAAAAAAAAALzAmhxMamBMjZmZmhZabGAAAAAgBAADYZZsgpZmlBAAAwwYAMD",
				dps = "136.3k",
				hps = "1,535.7k",
			},
		},
		["guardian"] = {
			["MythicPlus"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMMzyMjZMjZGLMzwsYBgxgZmZimZmZmZGzCsxAAAAAAAwYALbzshxsMAmAAAAGmZGA",
				dps = "753.7k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjZMDzYxDMMzsYZAMgZGTmmZmxMzMMYjBAAAAAAMmZAAAAgmZbWmZWGAADzMDA",
				dps = "784.6k",
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			["MythicPlus"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGMzMjxMhZGAAAAAAwsMMmZMzgZmtZbMmBzshlNYZWMjhZjpxYmZMYA",
				dps = "1,356.0k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwA",
				dps = "1,501.7k",
			},
		},
		["vengeance"] = {
			["MythicPlus"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMMjhZkZmBDzYbMmZsNDzMjZ8AGz2MzsZmZbmhZAAAAAWmFzYYWYagZmBD",
				dps = "798.2k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbjZYGMAAAAALziZMMbMNwMzMMA",
				dps = "893.9k",
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["Raiding"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMYmNzgBMYMTzYmJz2YbMzMjZMz2MgZMz2YmZbMDMwYwCsMGN2GAzAwgB",
				dps = "1,317.8k",
			},
			["MythicPlus"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMDMYMmZaYmJz2MbzMzMjZMzyMgZMz2YmxMzADMGsALjRjlBwMAMA",
				dps = "1,328.7k",
				keystone = "+13"
			},
		},
		["preservation"] = {
			["Raiding"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMz2MzAgZMbwCYBMDTgBGDD",
				dps = "54.2k",
				hps = "1,769.5k",
			},
			["MythicPlus"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYADAAmZMjBjxMjYmBAAAYmZmM2mZMmZGAAGzmFWgBmhhGMGA",
				dps = "290.4k",
				hps = "679.9k",
				keystone = "+12"
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAgZZsNzMzYZGmZWmxMDzsBAAAAAAAgZGMDGjZqhZmBAAAAmZmtxMjxMDM2mxgFYZMMWGAzgYwA",
				dps = "1,191.5k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmhBzMLzMjhZ2AAAAAADAAmZAwYqZMzMAAAAYGzsNmZ2GzMwYbGDWglxwYbAMDiBzMA",
				dps = "1,237.8k",
			},
		},
	},
}
addonTable.DB = talentData