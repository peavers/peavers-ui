local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["warrior"] = {
		["arms"] = {
			["Raiding"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmZYbGzAzYMzMYmhBGmhBAAAAAAAPwYWmZmBQgxy2ALgBMDTgBYD",
				dps = "1,767.7k",
			},
			["MythicPlus"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYYmZMjZMzsNbLLjZAAAAYw0wMDLzYGYmFzMzgZGGGYGGAAAAAAAMjZbwAsFDgNzYYBGYG2oBwC",
				dps = "1,680.4k",
				keystone = "+17"
			},
		},
		["fury"] = {
			["MythicPlus"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagxghhZwywMzGMMjxwMMzssNzYmZ2YmxMzwMsZbGmZMAAAQYMwGssY0YGAzCsYsA",
				dps = "1,605.6k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYMMzsBDzYMMDzMbbzMmZmNmZMzMMDb2mhZGDAAAEmxy2ALgBMDTgx2wG",
				dps = "1,886.2k",
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmxMmZZmlZmZ2wYYaMYMDglxYG2YmZYgZYAAAAAAAmZAALbbAGGYDWWMaMDgZDbmZD",
				dps = "839.9k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzYmZGMbzsMzMz2mZMMNzgZmBwyADbMzMwDMzDMMAAAAAAgZGAgltNADDsBLLGNmBwshNsB",
				dps = "877.9k",
			},
		},
	},
	["paladin"] = {
		["protection"] = {
			["Raiding"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMzyMLjZmZmx2MmhhZYAAAGAAAAAAASmZWMMDGzMzWAAGAgZw2AAAAAmZW2WabmxiZAAmZMDjB",
				dps = "1,142.1k",
			},
			["MythicPlus"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsZMYWGLzMjZmZZbmZmZmtxMGAAgBAAAAAAg2yMzihZGGzwWbAADMAAbDAAAAYmZZbplZGLMYAYwMbYA",
				dps = "1,140.0k",
				keystone = "+19"
			},
		},
		["holy"] = {
			["MythicPlus"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAMAbzMDzMmZWMjZZmZsNgZbbm2iZWMmZGGY2yAAGAsBsxMmZGAAAYmZZbptZG2AGADMmB",
				dps = "330.9k",
				hps = "776.7k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAzAAAAYbmZwMmZYmZWmZ8AbDY22mptwsNjZmhBmtMAgBAbAbMjZmBAAAmZW2WabmhNMAWYMMLzA",
				dps = "364.9k",
				hps = "1,940.8k",
			},
		},
		["retribution"] = {
			["MythicPlus"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAgRstNzstsNzYzMz2iZbAAAAAAY2aaGGmZsNDmthxsMzy2wgBDLLsBgBAYmptZZ2mBAsBMAgxMGA",
				dps = "1,827.2k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAYAAassNzstsNGbjZ22mZDAAAAAAjmmhhZGbzgZbYWmlZYYwMmhlF2AAAgZm2mlZbGAwGwAgxYGmB",
				dps = "1,750.9k",
			},
		},
	},
	["hunter"] = {
		["marksmanship"] = {
			["Raiding"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgZBAAAAAAMjZmZGmZGmZmhZmZMmZbmBAAAAAAAYGGzMzMzYGNzYMMzAzYGzMG",
				dps = "2,007.6k",
			},
			["MythicPlus"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAwADsMGNWGAzG2AAAAAAAzMzMmxMMjZmZmZmZYmxGjBAAAAAAAmhxMmZmZmZyMGDzMMGmZZGsB",
				dps = "1,522.1k",
				keystone = "+15"
			},
		},
		["beast-mastery"] = {
			["Raiding"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxGDsALDDNsBAAAAAgBAAAAAAYGLDzyMjhxYmZMMjZGjZmZyMMmZmZmxMjZYMmZGGDGzgN",
				dps = "1,759.5k",
			},
			["MythicPlus"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAYstNwAGwswWgxCAAAAAAGAAAAAAgZmtZMmZMYmxwMmZYGzMzMTmhxMzMzMmZYYMMzwYYmlZwG",
				dps = "1,599.6k",
				keystone = "+16"
			},
		},
		["survival"] = {
			["Raiding"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxM2YgFYbYoBLzM2mxMzMjZMGMzYmZmxMDAAAAAAAAAAAAAANDjZmZmZMzYGGDzMwMmxMYB",
				dps = "1,765.0k",
			},
			["MythicPlus"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMGYglxoxyAY2AbzMWmZmZGjZMzMmZMGzMmBAAAAAAAAAAAAAANDjZmZmZMzYGGDzMMGmZZGA",
				dps = "1,807.4k",
				keystone = "+18"
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			["MythicPlus"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMzwMAAAAAAAzyMmtZAAAAAAotlZmhHYmBzMzysNGDmZmZGMzMbWGzAsZWGYALglhJwwCA",
				dps = "2,078.9k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMzMzMMmx2MAAAAAAMLDWmBAAAAAg22mZGMzgZmZZ2mZmxAjZmZGzsZbMDwmZZgBsAWGmADLA",
				dps = "1,826.9k",
			},
		},
		["outlaw"] = {
			["Raiding"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAM2mxMjZMmZmZYGGjZMMzMz0yMmtZAAAAAAw22MzgZmxCsMbDAAAAzMADsBzY0Y2AsNwiZA",
				dps = "1,811.3k",
			},
			["MythicPlus"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMz2MYMzMmZmZYGGmZmhZmZmWmxsNDAAAAAA2WGzgZmxCsMbDAAAAzMGYgNYGjGzGgtBWMA",
				dps = "1,837.8k",
				keystone = "+18"
			},
		},
		["subtlety"] = {
			["MythicPlus"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmGzYmxMGjZYmZmhxsNMzMbLzMjZmZAjlZbAAAAYGMAGzmhBGYWYhWsBD",
				dps = "1,587.2k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAM2mBAAAAAgZZMWmmZGzMGGDDzMzMjxsNMzYbbmZmZmZAjlZbAAAAYGMsZWGYALglhJwsAD",
				dps = "1,780.6k",
			},
		},
	},
	["priest"] = {
		["discipline"] = {
			["Raiding"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtZGD2GjZmxMbmlZmZmhBAAAAAAAAAAAzilZbYbmZwswwMzMGsw2MNmYBYmBACwsNLbgxmN",
				dps = "337.8k",
				hps = "1,498.8k",
			},
			["MythicPlus"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlZGDWGjZmxMbmtZmZmhBAAAAAAAAAAAzysMbDmZGjZhhBjhZhtZaMxyAmZAgAMbz2GYsZD",
				dps = "455.0k",
				hps = "930.1k",
				keystone = "+19"
			},
		},
		["holy"] = {
			["Raiding"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAALDGbmxMzYmBmxMMzyMjlBAAAAmFLz2w2MzgZhxMmZMYZBmxUzCAwMLWGmFDAZMYD",
				dps = "190.8k",
				hps = "1,709.6k",
			},
			["MythicPlus"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAYZYGLPwgZmZMwMmhxyMzsMAAAAAzysNsMz8AYWYWmxMjBLsxMmaWAwMLYhwYWGgxCsA",
				dps = "251.3k",
				hps = "703.8k",
				keystone = "+14"
			},
		},
		["shadow"] = {
			["Raiding"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAAMmZAAAAAAAAAAAAAGmFPAzMz2sNmZmZMzMLDmNmZmZMbMwYMMLmtpmZwCMAmZzywsZAIjxCA",
				dps = "1,689.8k",
			},
			["MythicPlus"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMYAAAAAAAAAAAAAw4BmFzYmZ2mtxMzMz2YmlBzGzMzwsxsgxYYWMbTNzgFMDgZWsMMbGAyYsA",
				dps = "1,497.8k",
				keystone = "+17"
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["MythicPlus"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAgxMmZGjZMzMDjZMz0MMMzMzYAAAAAwwMzMzwsNzMjBAAwMzMzMAAAAjltBGwCYZYCMsAwMYD",
				dps = "854.0k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzYMjZGjlZMzMTzMGmZMjBAAAAAzMzMzMzMzmZmxAAAgZmZmBAAAYgBmxoxyGgtBsBwMYD",
				dps = "1,112.6k",
			},
		},
		["frost"] = {
			["Raiding"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMGAzMjZMGDzYmZmZmxMmJzYMjBMzYMjZmZmZmZxMAAAAAAAAAAAAjltBGwCYZYCMWwMMmBA",
				dps = "1,764.8k",
			},
			["MythicPlus"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAMzMjZMGDDzMzMzwMmpZGDjBMzYMjZmZmZmZZmBAAAAAAAAAAAYssNwAWALDTgxCmZMmBA",
				dps = "1,991.6k",
				keystone = "+19"
			},
		},
		["unholy"] = {
			["MythicPlus"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGjZMzMDzYmZmphhZGzYAAAAAAAAAgZGjZMzMDAMbmhZBzMz8AzMzAWMLGGYgZjhGLAwMA",
				dps = "1,806.3k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZMGDzYmZmphZmZGzYAAAAAAAAAMzMzwYwMAgZzMMbzYmZmxMDwiZxwADMbM0YBAmBA",
				dps = "1,676.5k",
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			["Raiding"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzy2MjZGzysMGMYmBAAAAAWMzGMgBMbMBmFAwsNNDYbxMz0wMzMGWmZmBzyglxMzMzwMbMA",
				dps = "1,949.7k",
			},
			["MythicPlus"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbz22MjxY2mlZmBMzMDAAAAAAbmxwGsAzwQjNAwsMNDYbhZmGmZmxMWmxMYWGsMzYwYmZbMA",
				dps = "2,196.4k",
				keystone = "+17"
			},
		},
		["enhancement"] = {
			["Raiding"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMgZGDzMzMYZmx2sNDAAAAAAAAAgNYBWgZspx2AYGwGAmlJzALLmZmZYMzsMsMzMBGLjZGAgZmB",
				dps = "1,922.0k",
			},
			["MythicPlus"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMDMjZYmZmhZZmZZZMDAAAAAAAAAgNA2MjhNYBmhhGsAgZZyA2WGzMzwMmZbGLzYyCLDjZGAgZMA",
				dps = "2,448.7k",
				keystone = "+19"
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMzyMWmZMzwsMWMjFsAbwMW0YZAMDsxMzsgZZmZGZ2YmZaMzwALGzYzsMMLMAAGA",
				dps = "284.8k",
				hps = "796.9k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmxMLzyMLGWwCsAzYTjlBwMwGDzCjlZmZmMLLMz0YGMLYZmZGMGmlxAAYYA",
				dps = "132.0k",
				hps = "1,901.5k",
			},
		},
	},
	["mage"] = {
		["arcane"] = {
			["Raiding"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmxMmFPAjZGGTzMmBAAAAAgBAAAmZ2WWWmZiFAAAAAAAwywwMzMzYGmZMmZGzMzYMjB",
				dps = "1,751.3k",
			},
			["MythicPlus"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAMjhZbWwMMzs4BgZmxYamxMAAAAAAMAAAwMz2yyyMTsAAAAAAwGALzYYmZmZMDmZGjZmZmZMMG",
				dps = "1,595.4k",
				keystone = "+16"
			},
		},
		["fire"] = {
			["MythicPlus"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbWwMjZmFDMzw0YmxMDAAAAAgZWmpZmlZBAAAsYmZwMmhZmZZGjxMPgNzsMjNzCDAAAAAAAA",
				dps = "1,530.4k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgZWmpZmlZBAAAsYMDmZmxMzYxsMGz8AYmlZwswMAAAAAAAA",
				dps = "1,775.3k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmNLYGmZWgxMz0YMmlZmZYYG8AzMzMzMzMzMjZmZMzsMTzMLzCAAAsAAAAAAgZDAAAAAAAA",
				dps = "1,912.5k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAYGbmtZBzwYWMMmZ0YMzYGMzwMMzMzMzYmZmZGzMzYGAAAYmZbZZZmpNAAAAAAAAAAAAAAAA",
				dps = "2,089.4k",
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["MythicPlus"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAwMzMzyMzDM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZGLA",
				dps = "1,648.3k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZY2GAAAwMjZWmZM2MzMLMzMDAYmxyyADYAzwWghtZAAAAAAAAgZmZzA",
				dps = "1,672.6k",
			},
		},
		["demonology"] = {
			["Raiding"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWGAAAAAAAAAAzAGzYYBGYZYhGWYmZG2GzsYmZmZMmxwMzMzAzMAAA",
				dps = "1,633.4k",
			},
			["MythicPlus"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzihxsZmZY2GAAAAAAAAAAzAGzYYBGYZYhGWYmxM2GzsZmZmZMmxMmxMzYwMAAA",
				dps = "1,667.6k",
				keystone = "+16"
			},
		},
		["destruction"] = {
			["Raiding"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmNzwMzsY2MWMzAAAAAzMDLzMzMgxMGWgB2GWoxCGAAAAAAAjZmZAA",
				dps = "1,690.1k",
			},
			["MythicPlus"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNjxMmFzGLLmZAAAAAzMzsMzMzYBGYWMaMDgZDbYAAAAAAAMzMjBAA",
				dps = "1,815.7k",
				keystone = "+19"
			},
		},
	},
	["monk"] = {
		["brewmaster"] = {
			["Raiding"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMsMjtZmZGDAAAAAAwyCGxMDMDjNgtZmZY2Ymx2sMTbLPw2sNzMMLAAwGAAAwsNLNzMzCzgF",
				dps = "1,039.8k",
			},
			["MythicPlus"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMmBmlZsNmZGAAAAAAAWWgpZmZgZYAYbmZGmNmZsNLz02ysZbmZYWAAgNAAAgZbWamZmFmBb",
				dps = "1,095.3k",
				keystone = "+17"
			},
		},
		["mistweaver"] = {
			["Raiding"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzCzYYDzYmZZYDLzMb2mlllZmlFMamZGYGmBD2mZmhZjZGs8ATAAAAAAALWmllZbmZCAAsA",
				dps = "318.2k",
				hps = "1,841.6k",
			},
			["MythicPlus"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWsMzyYWMbzYGbYbWmtxDgZbZZmZZhZ0MzMwMMDgtZMDzGzMMLPwEAAAAgZbab2mZZ2AAAAAbA",
				dps = "527.7k",
				hps = "799.3k",
				keystone = "+19"
			},
		},
		["windwalker"] = {
			["MythicPlus"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYGzMMzMMzMAAAAAAAAAAAYZZYmYmhxMMswM2mxMMbMzws8ATAAsMmhZmxsMDAgNAwsMLNzMzCA",
				dps = "1,607.2k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMzgZmZMLzAYAAAAAAAAAAAwyywImZgZYYxMjtZmZY2GmBLzEAAbzMDzMjZbGAAbAgZZWamZmFAA",
				dps = "1,760.7k",
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["Raiding"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUYmZGGmZAzMMzYAbzMGmZbGLGzMzMzixMjZmxGYjBYA22GLYamZZAAAAwmZGjBA",
				dps = "1,719.8k",
			},
			["MythicPlus"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUMmZGGzMDYmhZmBYzYxsMzyMzmZmZmZmFzyYYwGYhBYssNzGGz2AYCAAAwyMzYAA",
				dps = "1,988.8k",
				keystone = "+19"
			},
		},
		["feral"] = {
			["Raiding"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZb2MzCzYmZb2YsNzMz8AzMAAAAAAbBDDYMzMamxMjZGjZYjBAAAAAAAYAAAAAAmtZWa2mZZDzMDA",
				dps = "1,740.2k",
			},
			["MythicPlus"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMbzmZWYmZmZzmZsNzMzYmBAAAAAYJYYMYMzMamxMMzMWmhNGAAAAAAADAAAAQzsMLzMbDAYBGzAA",
				dps = "1,718.2k",
				keystone = "+17"
			},
		},
		["guardian"] = {
			["Raiding"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmxMzy8AjhZYGLmhZmFLDgBMzYy0MzMmZmhBbMAAAAAAgxMDAAAA0MbzyMzyAAYhZmBA",
				dps = "1,042.9k",
			},
			["MythicPlus"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMMzyMjZMjZGLMzwsYBgxgZmZimZmZmZGzCsxAAAAAAAwYALbzshxsMAmAAAA2YmZAA",
				dps = "788.3k",
				keystone = "+17"
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYjZmZmFz2AMLLstMmBAAAAAAAAAAAwyAMzAjmhZmxMMzMg2YAAAAAADAgZAAAAAgZbmtmlZ2sxMzAzYA",
				dps = "273.7k",
				hps = "752.7k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbjZmxiZDPAjtNzyyYGAAAAAAAAAAAAbDwMMMamBMzMmZmhZabMAAAAAAAAYALLjFMNzsMAAAAWYmZAmB",
				dps = "177.3k",
				hps = "1,969.2k",
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			["Raiding"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYGMzMzgZmZMmJmZGAAAAAAwsMmxMMGLzMz2sNLjZGmZBLbwysYGDzGTDmZmZwG",
				dps = "1,891.1k",
			},
			["MythicPlus"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmZmZGMzMjxMZmZGAAAAAAwsMMmhZGMzsNbjxMYmNssBLziZMMbMNGzMjBb",
				dps = "1,540.4k",
				keystone = "+14"
			},
		},
		["vengeance"] = {
			["Raiding"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMbzMYsNjZegZMzwMjZGbjZYGMAAAAALziZMMbMNwMzMsB",
				dps = "978.2k",
			},
			["MythicPlus"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMmZMMjMzMYYGbjxMjtZYmZMjHwY2mZmNzMmZYGAAAAglZxMGmFmGYmZwG",
				dps = "877.5k",
				keystone = "+18"
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["MythicPlus"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZGYGmxMDMMGz0wMTmtZ2mZmZGzYmlZAmZmtxMjxMwAjBLwyY0YZAMDAbYG",
				dps = "1,566.1k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMYmNzgBMYMTzYmJz2YbMzMjZMz2MgZMz2YmZZMDMwYwCsMGN2GAzAwGG",
				dps = "1,704.9k",
			},
		},
		["preservation"] = {
			["MythicPlus"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mlBGzMjZZGzYADAAmZMjhxYGxMDAAAwMzMZsNzYMzMAAMmNLsADMDDNYsAD",
				dps = "325.7k",
				hps = "688.2k",
				keystone = "+13"
			},
			["Raiding"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZMLzghZGzixMbjZGAAwMDjBGzIMDAAAwMzMxsNzMzyMzAgZMbwCYBMDTgB2MMA",
				dps = "85.5k",
				hps = "2,071.4k",
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAgZZmtZmZGLzgZWmxMDzsBAAAAAAAgZGMDjxDUDzMDAAAAMzMbjZmtxMjhxmxgFYZMMWGAzgYDjB",
				dps = "1,780.0k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMmZbmZmxyAzsMzMGmZDAAAAAAAAzMgHAjpmxMzAAAAgZMz2YmZZMzAjtZMYBWGDjtBwMI2wMD",
				dps = "1,737.4k",
			},
		},
	},
}
addonTable.DB = talentData