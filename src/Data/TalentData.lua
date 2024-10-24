local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["paladin"] = {
		["holy"] = {
			["MythicPlus"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAADAAGAwYAAAAsNzMMzYmZxMmlZmxyAstNTblHwMDDmZGGzCYmxAAGAYDYYmZGmZZWmZmlGAAAgBA",
				dps = "218.4k",
				hps = "658.0k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYZmZwMmZWMjZZmZsNDMbbz0WYMjZmhBmtMAgBMYDYjZMzMAAAwMzy2SbzMMADgxwYGA",
				dps = "274.2k",
				hps = "1,816.7k",
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjZYWM2egHwYmxymZmxMGzYGAAAAAAAAAA0WDzMziBmZYmZxAmNAYMwAwAGgBAAAMzsst02MjxMA",
				dps = "702.8k",
				keystone = "+12"
			},
			["Raiding"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZYWGLjZmZmx2MzMzMGDDAAwAAAAAAAQyMzihZwYGzWbAwYADgBbDAAAAYmZZbptZGjBAMmZYYM",
				dps = "631.9k",
			},
		},
		["retribution"] = {
			["Raiding"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAassNzstsNGbjZ22mZDAAAAAAjmmhhZGbzgZbYWmlZYYwMmhlF2AAAgZm2mlZbGAwAMAYMmhZA",
				dps = "1,389.2k",
			},
			["MythicPlus"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAjJ22mZ2W2mZsZGbLmtBAAAAAgZbimZWMwMjZMLjhxwYWmZZbYwgBLLsBAAAmZabWmtZAADA",
				dps = "1,551.5k",
				keystone = "+15"
			},
		},
	},
	["warrior"] = {
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2YGDTjxYMDglBG2YmZYwYMDAAAAAAwMDAYZbDwwAbwyiRjZAMbgZGA",
				dps = "781.7k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNzgZmBwyADbMzMwDMzDMMAAAAAAgZGAgltNADDsBLLGNmBwshNMA",
				dps = "743.6k",
			},
		},
		["fury"] = {
			["Raiding"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYMMzsBDzYMMDzMbbzMmZmNmZMzMMDb2mhZGDAAAEmxy2ALgBMDTgx2wA",
				dps = "1,512.3k",
			},
			["MythicPlus"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagxghhZwyMmZ2ghZMGmhZmltZGzMzGzMmZGmhNbzwMjBAAACjB2glFjGzAYWgFMA",
				dps = "1,393.1k",
				keystone = "+14"
			},
		},
		["arms"] = {
			["Raiding"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmZYbGzAzYMzMYmhBGmhBAAAAAAAPwYWmZmBQgxy2ALgBMDTgBYA",
				dps = "1,311.5k",
			},
			["MythicPlus"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZmZmFLLLjZAAAAYw0wMDLDzAjlxMzgZGGz4BYGGAAAAAAAMjZZMGgtAjltBWADYGmADwA",
				dps = "1,127.5k",
				keystone = "+11"
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["MythicPlus"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYstMwAGwswSgxAAAAAAgBAAAAAAYGbzYMzYYmZMDjZGPwMGzMzkZYMzMzMjZGGGDzMMmhxMMb",
				dps = "1,141.4k",
				keystone = "+13"
			},
			["Raiding"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsAbDDNMAAAAAAYAAAAAAAmZWGGzMzwMDzwwMmZMmZmJzwYGzMGzMmhxwMDzyMYZmhN",
				dps = "1,523.6k",
			},
		},
		["marksmanship"] = {
			["Raiding"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGN2GAzGGAAAAAAwMzMzMDjZGzMzYmZGGzsNGAAAAAAAgZYMzMzMjZ0MjxwMDMjZMzYA",
				dps = "1,385.4k",
			},
			["MythicPlus"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGNWGAzGGAAAAAAgZmZMjZMmxMzMzMzMMzYYMAAAAAAAwMMmxMzMzMTmxYYmhxwMLzgN",
				dps = "1,429.6k",
				keystone = "+15"
			},
		},
		["survival"] = {
			["Raiding"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxM2YgFYbYoBzMjtZMzMzYGjBzMmZmZMzAAAAAAAAAAAAAAQzwYGmZGzMMMzwMDjZMzyMYB",
				dps = "1,414.8k",
			},
			["MythicPlus"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AzMjlZMzMzYmZmxMzgxMzMDAAAAAAAAAAAAAAaGGzYmZGzMMMGmZGjhZWmBb",
				dps = "1,388.7k",
				keystone = "+14"
			},
		},
	},
	["rogue"] = {
		["outlaw"] = {
			["MythicPlus"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwwYmZwMzwMMMzMzMjZmplZMLzAAAAAAgtlZmhHYmZswMLz2AAAAwMDwAbwMGNmNAbDMmB",
				dps = "1,349.6k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGjZMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMADsBzY0Y2AsNwYG",
				dps = "1,489.8k",
			},
		},
		["assassination"] = {
			["MythicPlus"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmZGmxyDMAAAAAAMLw2MAAAAAA02yMzwDMzYMzMLz2YMYmZmZwMzsttMmBYzsMwAWALDTghB",
				dps = "1,568.3k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmhHYAAAAAAYWglZAAAAAAottZmhZmxYmZWmtZmZMwYmZmxMbWGzAsZWGYALglhJwwA",
				dps = "1,477.5k",
			},
		},
		["subtlety"] = {
			["MythicPlus"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAzyMzsMBLzMmZGjZYmZMzMmtxYmZbbmZMzMDYsNbDAAAAzgBwY2MMwAzCL0ihxA",
				dps = "1,285.6k",
				keystone = "+13"
			},
			["Raiding"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxwYMDzMzMjxsNMzYbbmZMzMjBjlZbAAAAYGMAGzmhBGYWYhWMwA",
				dps = "1,482.9k",
			},
		},
	},
	["priest"] = {
		["discipline"] = {
			["MythicPlus"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlZGDWGjZmxMbmtZmZmhBAAAAAAAAAAAWmlZbwMzYMLjhBjhZhtZaMxyAmZAgAMbz2GYM2A",
				dps = "352.6k",
				hps = "753.0k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGD2GjZmxMbmlZmZmhBAAAAAAAAAAAzilZbYbmZwswwMjxgF2mpxELDYmBACwsNLLgxYD",
				dps = "252.5k",
				hps = "1,376.6k",
			},
		},
		["shadow"] = {
			["Raiding"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAYmHYAAAAAAAAAAAAAGmlBzMz2sNmZmZ2mZmlBzGzMzMmNGYMGmFz2UzMYBGAzsZZY2MAkxYA",
				dps = "1,351.7k",
			},
			["MythicPlus"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMYAAAAAAAAAAAAAw4BmFzYmZ2mtxMzMz2YmlBzGzMzMmNGYMGmFz2UzMYBzAYmFLDzmBgMGDA",
				dps = "1,339.3k",
				keystone = "+14"
			},
		},
		["holy"] = {
			["Raiding"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGbmxMzYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWGmFDAZMYA",
				dps = "177.1k",
				hps = "1,517.4k",
			},
			["MythicPlus"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAYZYGLPwgZmZMwMmhxyMzsMAAAAAWmthlZGYWYWmxMjxYhNmZmaWAwMLYhwYWGgxCMA",
				dps = "184.8k",
				hps = "659.4k",
				keystone = "+12"
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["MythicPlus"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghxMzYMjxMDzYmZmmhhZGzYGAAAAAmZmZmZmZmNzMjBAAAzMzMAAAAbmtBGwCYbYCMMAMD2A",
				dps = "760.2k",
				keystone = "+13"
			},
			["Raiding"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMzMmZYGzMz0MjhZGzYAAAAAwMzMzMzMzsZmZMAAAYmZmZAAAAjttBGwCYZYCMMAMD2A",
				dps = "752.6k",
			},
		},
		["frost"] = {
			["Raiding"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGAzYMzMGDzYmZmZmxMmJzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAjltBGwCYZYCMGMDjZA",
				dps = "1,504.4k",
			},
			["MythicPlus"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGgZmZMjZYYGjZmZGmxMNzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAbmtBGwCYbYCMGMDjZA",
				dps = "1,602.1k",
				keystone = "+16"
			},
		},
		["unholy"] = {
			["Raiding"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGwiZxwADMbM0YAgZA",
				dps = "1,510.6k",
			},
			["MythicPlus"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGjhxMDzMzMzMNMmZGzYAAAAAAAAAgZGjZMzMDAMbmhZBzMz8AzMzAWMLGGYgZjhGDAMDA",
				dps = "1,587.7k",
				keystone = "+15"
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			["MythicPlus"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjxwMbMmZMmZGAAAAAAGzYYgFYbYoxAAsMNDYbhx0gZmZbGLzYmhZZYWmZmZGmxMM",
				dps = "1,440.2k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz2yMjZGzysMzMgZmZAAAAAAYzMG2gFYGGaMAgZbaGw2iZmphZmZMsNzMDmlBLjxgZMzGDA",
				dps = "1,642.2k",
			},
		},
		["enhancement"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMz2MzMGzMDzwshlZMAAAAAAAAAAsBwYGDDsAbDDNYAwsMZGYxMzMDmxMbGLzMTWYZGMzAAMD",
				dps = "1,575.3k",
				keystone = "+16"
			},
		},
		["restoration"] = {
			["Raiding"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmZmZxyYzwCWgFYGbasMAmBGMmlxYbmZmJz2CzMNmhZ2wyMmBjhZZMAAG",
				dps = "78.1k",
				hps = "1,373.7k",
			},
			["MythicPlus"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZmZGsMYGwCsAzYTjlBwMwwMzsMmZZmxMZ2gZaMzYGGLGzYxsMMLMAAG",
				dps = "208.9k",
				hps = "676.5k",
				keystone = "+14"
			},
		},
	},
	["mage"] = {
		["arcane"] = {
			["Raiding"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMmFPAjZGGTzMmBAAAAAgBAAAmZ2WWWmZiBAAAAAAAsMjhZmZmxMMzMjxMmZmxwYA",
				dps = "1,388.4k",
			},
			["MythicPlus"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmhxsYYMzwYamZZGAAAAAAGAwMz0ystMDAgBAAAAAAAsMjhZmZMMMzMjZmxMzMzwYA",
				dps = "1,361.6k",
				keystone = "+15"
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAAMbzyMmxMmFYMzoxYmZZYwwMMzMzMzMzMzMzYmZGzAAAAzMLLLLzMNAAAAAAwGAAAAAAAAA",
				dps = "1,288.5k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNLYGGzihZmZ0YMGzMGmZmBzMzMzYmZmZmZmBzAAAAzMbLLLzMNAAAAAAYAAAAAAAAA",
				dps = "1,240.7k",
			},
		},
		["fire"] = {
			["MythicPlus"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbWwMMzs4B4BMzMmGzMmZAAAAAAMAgZmplZZZGAgxMzghZMzYWmZbMMzsZmtZsMDMAAAAAAAA",
				dps = "1,334.0k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgBAMzMtMLLzAAMGzgxMjZGziZZMjZGmZbGmZBDAAAAAAA",
				dps = "1,397.3k",
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["MythicPlus"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAwMzMzyMzDM2MzMLMzMDAYmxyyADYAzwWghZGAAAAAAAAYmxCA",
				dps = "1,385.8k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAwMjZWmZM2MzMLMzMDAYmxyyADYAzwWghZGAAAAAAAAYmZ2MA",
				dps = "1,298.2k",
			},
		},
		["demonology"] = {
			["MythicPlus"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAGzYYBGYZYhGGmZMjtxMbmZmZGDjhZmZmxwMDAAA",
				dps = "1,483.0k",
				keystone = "+13"
			},
			["Raiding"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGGmZmZsNmZzMzMzYYMMzMzMwMDAAA",
				dps = "1,505.3k",
			},
		},
		["destruction"] = {
			["Raiding"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNDzMzsY2MWMzAAAAAzMDLzMzMgxMGWgB2GWoxgBAAAAAAwYmZGAA",
				dps = "1,317.9k",
			},
			["MythicPlus"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNDmZmFzmZZxMDAAAAMzMsMzMzAGzYYBGYbYhGDGAAAAAAAjZmZAA",
				dps = "1,359.2k",
				keystone = "+13"
			},
		},
	},
	["monk"] = {
		["brewmaster"] = {
			["MythicPlus"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMmBmlZegtxMzYAAAAAAAWWAxMDMDjNgtZmZMzGzM2mlZab5B2sNzMMLAAwAAAAMbzSzMzswMYD",
				dps = "810.6k",
				keystone = "+12"
			},
			["Raiding"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGDAAAAAAwyCImZgZYsBsNzMjZ2Ymx2sMTbLPw2sNzMMLAAwAAAAMbzSzMzswMYD",
				dps = "771.8k",
			},
		},
		["mistweaver"] = {
			["MythicPlus"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzsMmxMmxM2w2sMbjHAz2yyMzyCMNzMDMDzwAbzMzwsxMDWegJAAAAAAgxystNbzMTAAgN",
				dps = "191.6k",
				hps = "664.2k",
				keystone = "+13"
			},
			["Raiding"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWYmlBYGzMLDbMbzMb2mltlZmlFMTMzAzwMLGYZmZGmNLjhZxEAAAAAAwYZWWmtZmJAAwG",
				dps = "120.6k",
				hps = "1,499.2k",
			},
		},
		["windwalker"] = {
			["Raiding"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBzYmZWmZgBAAAAAAAAAAAssMMiZGYGGWMzYbmZGmthZwyMBAwyMzwMzY2mBAwAAmtZpZmZWAA",
				dps = "1,378.2k",
			},
			["MythicPlus"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzYmBzYmZMzADAAAAAAAAAAAYZZYEzM2GzwwCDbzYGmtxMDWmJAAWmZGmZmZ2mBAwAAmtZpZmZWAA",
				dps = "1,328.1k",
				keystone = "+15"
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["MythicPlus"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUMmZGGzMDYmhZmxCsxwsMz2MzixMzMjtZMGmZsBWAwAstNWw0MzyAAAAgxMzMA",
				dps = "1,440.5k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUYmZGGmZAzMMzYAbzMLsMz2MWwMzMzsY2mZMzM2AbAYA22GLYamZZAAAAwYmZGA",
				dps = "1,299.5k",
			},
		},
		["feral"] = {
			["MythicPlus"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWMzMzMb2eAsNzMzYmBAAAAAYJYYMYMmRzMmxMzMWmhNGAAAAAAADAAAAQzsMLzMbDAYgxMAA",
				dps = "1,467.4k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZb2MzCzYmZb2YsNzMjZmBAAAAAYLYYAjxMamxMjZGjZYbmBAAAAAAAYAAAAAAmtZWa2mZZgZGAA",
				dps = "1,282.7k",
			},
		},
		["guardian"] = {
			["MythicPlus"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMMzyMjZMjZGLMzwsYBgxgZmZimZmZmZGzCsxAAAAAAAwYALbzshxsMAmAAAAGmZGA",
				dps = "753.6k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjZMDzYxDMMzsYZAMgZGTmmZmxMzMMYjBAAAAAAMmZAAAAgmZbWmZWGAADzMDA",
				dps = "773.7k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFzyghZZbstYbmBAAAAAAAAAAAwygBzAjgxMmxMzYWGajBAAAAAMAGgZALLjFMNzsNAAAAGMzA",
				dps = "141.3k",
				hps = "624.0k",
				keystone = "+11"
			},
			["Raiding"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZBzYstNsYbGAAAAAAAAAAAALzAmhxMamBMjZmZmhZabGAAAAAgBAADYZZsgpZmlBAAAwwYAMD",
				dps = "124.4k",
				hps = "1,485.9k",
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			["MythicPlus"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGMzMjxMZmZGAAAAAAwsNMmhZGMzsNbjxMYmNssBLziZMMbMNGzMjBD",
				dps = "1,347.5k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwA",
				dps = "1,515.1k",
			},
		},
		["vengeance"] = {
			["MythicPlus"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMMjhZkZmBDzYbMmZsNDzMjZ8AGz2MzsZmZbmhZAAAAAWmFzYYWYagZmBD",
				dps = "794.3k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbjZYGMAAAAALziZMMbMNwMzMMA",
				dps = "878.1k",
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["MythicPlus"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMDMYMmZaYmJz2MbzMzMjZMzyMgZMz2YmxMzADMGsALjRjlBwMAMA",
				dps = "1,331.5k",
				keystone = "+13"
			},
			["Raiding"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMYmNzgBMYMTzYmJz2YbMzMjZMz2MgZMz2YmZbMDMwYwCsMGN2GAzAwgB",
				dps = "1,330.0k",
			},
		},
		["preservation"] = {
			["MythicPlus"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYADAAmZMjBjxMjYmBAAAYmZmM2mZMmZGAAGzmFWgBmhhGMGA",
				dps = "290.0k",
				hps = "685.6k",
				keystone = "+12"
			},
			["Raiding"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMz2sNwYmZMLYmNmZAAAzMmxwYMjYmBAAAYmZmMjZGz2MzDAgBGzmFWgBmhhGwAD",
				dps = "167.5k",
				hps = "1,620.9k",
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAgZZsNzMzYZGmZWmxMDzsBAAAAAAAgZGMDGjZqhZmBAAAAmZmtxMjxMDM2mxgFYZMMWGAzgYwA",
				dps = "1,195.4k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmhBzMLzMjhZ2AAAAAADAAmZAwYqZMzMAAAAYGzsNmZ2GzMwYbGDWglxwYbAMDiBzMA",
				dps = "1,235.7k",
			},
		},
	},
}
addonTable.DB = talentData