local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["warrior"] = {
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmZGmZbmlZmZ2wYQjBzMDglxYG2YmZMDMjZAAAAAAAzMAALbbAGAAAAAYDA",
				popularity = "22.3%",
				dps = "295.9k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzwMzgZbmlZmZ22YMMNDMzMAMmZGwMzADzwAAAAAAAmZAAziNADAAAAAsZA",
				popularity = "33.2%",
				dps = "275.2k",
			},
		},
		["arms"] = {
			["Raiding"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmBLGzAzYMzMYmhhxwMMAAAAAAA4BGz2MzMACAAAAAAGA",
				popularity = "22.9%",
				dps = "703.6k",
			},
			["MythicPlus"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYsNzMMmxMzitllZmBAAAgBTDzMsMMDMzCzMDmZYMDMjZAAAAAAAwMmlxYA2CAAAAAAA",
				popularity = "15.0%",
				dps = "669.2k",
				keystone = "+19"
			},
		},
		["fury"] = {
			["MythicPlus"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAAagxAjhZYMmZmNYYmZMMDzYbbmxMzsxMzDMzMMDb2mhZGDAAAEGAAAAAYDA",
				popularity = "29.5%",
				dps = "713.6k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYWGmZ2ghZMGmhZstNzYmZ2Ym5BmZGmhNbzwMjBAAACDAAAAAsBA",
				popularity = "15.2%",
				dps = "625.1k",
			},
		},
	},
	["paladin"] = {
		["holy"] = {
			["Raiding"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAGDAAwAsMzMzYbMzssZMLMsMjxsttZargZWmBzMDjZBMzYAADAsBMMzMeADAAAAAAA",
				popularity = "6.0%",
				dps = "66.4k",
				hps = "462.7k",
			},
			["MythicPlus"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAADAAGAwYAAAAsNmZmZbMzsYGziZYZGYZbbm2KMzsYwMzwYWAzMGAwAAbADzMDGAAAAAAA",
				popularity = "16.5%",
				dps = "87.6k",
				hps = "199.9k",
				keystone = "+19"
			},
		},
		["protection"] = {
			["Raiding"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMziZWwMzMsZmZYYGmBAAYAAAAAAAINMzMLGYmhZmFDzMzGAMGAADYAGAAAAAAzA",
				popularity = "9.8%",
				dps = "313.2k",
			},
			["MythicPlus"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjZYWM2eAzYmxymZmxMGzYGAAgBAAAAAAg2aYmZYADmZWMYmZDAGDYAMgBYAAAAAAMD",
				popularity = "25.4%",
				dps = "228.2k",
				keystone = "+19"
			},
		},
		["retribution"] = {
			["MythicPlus"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAjJLLbzMbLbzMWMjlF2GAAAAAAmtpMzMLGYmhxsMGGDjZZGbDjxAGLLsBAAAAAAAA",
				popularity = "15.1%",
				dps = "749.2k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAMttssNzstsNGbjZ22mZDAAAAAAjpMzMbGYGMmlxwMDzysMDDDGMGLLsNAAAAAAAAA",
				popularity = "41.9%",
				dps = "635.4k",
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["MythicPlus"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgBAAAAAAgZMzDMmZMMzMmhxYMzYmZmZyMMmxMzMzMDDjhZGGzwsMD2A",
				popularity = "58.3%",
				dps = "588.2k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgBAAAAAAgZMMmZmhZGmhZYWmZMzMzMZGGzMmZGzMmhxYmZYMDjZwG",
				popularity = "57.9%",
				dps = "707.5k",
			},
		},
		["marksmanship"] = {
			["MythicPlus"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMGmxYGzYmZmZGmZMMmNAAAAAAAMDjZMzMzMzkZMGmZYMMzyMYD",
				popularity = "31.9%",
				dps = "624.4k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmZGMzMDzMzYmZmxYmxMAAAAAAAAzwYmZmZGzoZGjhZGYGzYmxA",
				popularity = "25.8%",
				dps = "510.4k",
			},
		},
		["survival"] = {
			["MythicPlus"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMAAAAAAzM2mxMzMjZMzYGjxYmZmBAAAAAAAAAAAAAAaGGmZmZGzMmhxwMDjhZWmBb",
				popularity = "35.2%",
				dps = "580.9k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMAAAAAAzMz2MmZGmZMzwMDzMjZGDAAAAAAAAAAAAAAaGmxMzMzYGMMGmZYMMjZGzC",
				popularity = "53.8%",
				dps = "486.9k",
			},
		},
	},
	["rogue"] = {
		["outlaw"] = {
			["MythicPlus"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwwYmZwMzwMMMzMzMjZmplZMLzAAAAAAgttZmhHYmhFmZZ2GAAAAmZGAAAAAAYG",
				popularity = "36.1%",
				dps = "340.2k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwMzYGDmZGmhBzYmZMzMtMjZZGAAAAAAstNzMYmZsMmZZ2GAAAAmZGAAAAAAYG",
				popularity = "43.5%",
				dps = "427.8k",
			},
		},
		["subtlety"] = {
			["MythicPlus"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAzyYmlJDLwMGzMzMzMzMzMmlxwMbbzMjZmZwYmlZZAAAAYGMAAAAAAwA",
				popularity = "38.9%",
				dps = "438.9k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAzyYmlJDLbYGjhZmZmZmZGz2YMzstNzMmZmBjZWmtBAAAgZwAAAAAAAD",
				popularity = "51.8%",
				dps = "520.6k",
			},
		},
		["assassination"] = {
			["Raiding"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhZmxyMAAAAAAMLwyMAAAAAA022MzwDMzYMzMLz2YMGMzMzMzYmNLjZAAAAAAAA",
				popularity = "58.0%",
				dps = "560.2k",
			},
			["MythicPlus"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmZmxMAAAAAAAzyMmtZAAAAAAotlxMYmxYmZWmlxYwMzMzgZmZzyYAAAAAAAMD",
				popularity = "27.2%",
				dps = "603.1k",
				keystone = "+19"
			},
		},
	},
	["priest"] = {
		["discipline"] = {
			["MythicPlus"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlxMD2GjZmxMbmtZmZmhBAAAAAAAAAAAWmlZbwMzALMmxYMGLLMTzIWGAAAAAAA",
				popularity = "12.3%",
				dps = "104.3k",
				hps = "140.4k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtxYw2YMzMmhZZmZmZYGAAAAAAAAAAAsYZ2Y2mZgZhhxYMMLmtZaMxyYAAAAAAA",
				popularity = "8.0%",
				dps = "88.6k",
				hps = "382.5k",
			},
		},
		["holy"] = {
			["MythicPlus"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAwDsZMLzgZGjBmxMMWmZmlBAAAAY2mlxDsNzAwsMjZGjxCYmZqZBAAAAAAA",
				popularity = "24.1%",
				dps = "138.2k",
				hps = "165.5k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAbDYbmZmZGzwsNGzMYZGWGAAAAwilZbYbmZwswwMzMGssAzYqZBAAAAAAA",
				popularity = "56.7%",
				dps = "48.0k",
				hps = "456.8k",
			},
		},
		["shadow"] = {
			["MythicPlus"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMDDDAAAAAAAAAAAAwYmFzYmZ2sxMzMz2YGwswMzMjZjBGjhZxsN1MDWwMAAAAAAA",
				popularity = "24.6%",
				dps = "702.2k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAgBzMDAAAAAAAAAAAAwws4BYmZ2mNmZmZ2GzYwswMzMjZjBGjhZxsN1MDWwMAAAAAAA",
				popularity = "25.7%",
				dps = "486.8k",
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			["MythicPlus"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMLz2yYGGzMbbzMjZmxYAAAAAAAAAAAAAmtpZAbLMz0wMzMbDLzMzgZZwyYmBMzYM",
				popularity = "33.3%",
				dps = "671.9k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMLz2yYwYmZZbmZmZmxYAAAAAAAAAAAAAYamZY2WMzMxMmZWwyMmBjhZZmZGDMjxA",
				popularity = "27.2%",
				dps = "611.9k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMjZmlZGmhZbsYAAAAAAAMzMLjZWmZGystwMTjZGzALzYGMLDzyYAAM",
				popularity = "10.7%",
				dps = "104.6k",
				hps = "190.0k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmZGLzGbGWAAAAAAgZMLjx2MzMTmtFmZaMDzshFzMDGDzyYAAM",
				popularity = "17.5%",
				dps = "46.1k",
				hps = "412.5k",
			},
		},
		["enhancement"] = {
			["MythicPlus"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzyMDGmZYmZmNsMjBAAAAAAAAAAAAAAAAAAzykZwswYmhxMzsZsMzMBLjlxMDAgB",
				popularity = "61.0%",
				dps = "497.0k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzyMDYmZYmZmNsMDAAAAAAAAAAAAAAAAAAYWmMDmlFzMzMGmZWwyMzEYsMmZAAmB",
				popularity = "81.2%",
				dps = "474.6k",
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["MythicPlus"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghxMzYMzMGDDzMz0MMzMzYGDAAAAAmZmZmZmZmNzMjBAAAzMzMAAAAAAAAAAAMD2A",
				popularity = "12.5%",
				dps = "339.0k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzMjZmxYsMjZmZaGGmZMjZAAAAAYmZmZmZmZ2MzMGAAAMzMzMAAAAAAAAAAAMYD",
				popularity = "13.8%",
				dps = "310.1k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAAgZGDzMjZYYmZmZGGmpZGzYYGMzYmhZmZmZmZZmBAAAAAAAAAAAAAAAAAgZmZMDA",
				popularity = "70.5%",
				dps = "765.0k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAA8AAMzYmZMGDzYmZmZmxwMZGDDwMzYmhZmZmZmZZmBAAAAAAAAAAAAAAAAAgZmZMDA",
				popularity = "34.3%",
				dps = "626.4k",
			},
		},
		["unholy"] = {
			["Raiding"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZ8ADDzYmZmphZmZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGAAAAAgBwMA",
				popularity = "57.3%",
				dps = "547.7k",
			},
			["MythicPlus"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGjZmZYYGzMzMNMMzYGDAAAAAAAAghZGzYmZmZAAbgZxYmZmhZGAAAAAgZAmBA",
				popularity = "48.7%",
				dps = "683.4k",
				keystone = "+20"
			},
		},
	},
	["mage"] = {
		["arcane"] = {
			["MythicPlus"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAMgZbWMmhZmFYMzwYamZZMAAAAAAGAAAAAAAAAAAA2AYZGDzMGDjZmZGzMjZmZmhxA",
				popularity = "54.0%",
				dps = "471.0k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMbmtZBzwYW8A8AmZYMNzsMDAAAAAADAAAAAAAAAAAAbAsMjhZGjhxMzMjZmxMzMzwYA",
				popularity = "41.4%",
				dps = "496.8k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwMziHAmZ0YMzYmZGGmBmZmZmZmZmZmZmZGzAAAAAAAAAAAAY2AAAAAAAAA",
				popularity = "51.5%",
				dps = "508.3k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwMziBzYmGjxYmxwMzMMzMzMzYmZmZGzMYGAAAAAAAAAAAAzCAAAAAAAAA",
				popularity = "67.2%",
				dps = "515.9k",
			},
		},
		["fire"] = {
			["Raiding"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgBAAAAAYMzMzMmxMzYxYmh5BwMLzgZhBAAAAAAA",
				popularity = "46.2%",
				dps = "445.1k",
			},
			["MythicPlus"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAMjhZbWwMjZmFDMzMmGjxMAAAAAAMAAAAAAzMzMzMmxMzYxYmhBzMLzYxgBAAAAAAA",
				popularity = "68.8%",
				dps = "496.6k",
				keystone = "+18"
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["MythicPlus"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAwMjZWmZG2mZmZxMmZAAzAAAAAAMDAAAAAAAAMDLA",
				popularity = "21.7%",
				dps = "507.4k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MMmNzMDz2AAAAzMjZWMzMWMzMLMzMDAYGAAAAAgZAAAAAAAAAzMbA",
				popularity = "42.1%",
				dps = "437.2k",
			},
		},
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzihxsZmZYWmNzMmZmlZWmZbxMDAAAAMmhlZmZGAAAAAADAAAAAAAMmBAA",
				popularity = "16.7%",
				dps = "437.2k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFjZGzsY2MWMzAAAAAjZmZZmZmBAAAAAwAAAAAAAYGjZAA",
				popularity = "14.9%",
				dps = "451.2k",
			},
		},
		["demonology"] = {
			["MythicPlus"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAAAAAAYmxM2mZmttZmZmxYYGzYMjBzAAAA",
				popularity = "29.7%",
				dps = "457.1k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAAAAAAYmZGz2YmFzMzMjxMGmxMzgxMAAA",
				popularity = "26.5%",
				dps = "437.1k",
			},
		},
	},
	["monk"] = {
		["brewmaster"] = {
			["MythicPlus"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMYmFzDsNzMzYAAAAAAAssACzAzwMLmxYbGzwswMjlZ5Bm22egFbjZmZ2AAAAAAAAAMYD",
				popularity = "9.7%",
				dps = "245.3k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMjlZsNzMzAAAAAAAglFQYGYGmZhxYbmZGmlhZsNLz02mFbzMjZ2AAAAAAAAAmBb",
				popularity = "19.8%",
				dps = "292.7k",
			},
		},
		["mistweaver"] = {
			["Raiding"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWsNWGAzMzY7BYx2sNzsYZW2WmZWWANzMzswMMzihZWMzMMbMGsQAAAAAAAAAAAAbA",
				popularity = "24.5%",
				dps = "27.6k",
				hps = "448.3k",
			},
			["MythicPlus"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWYmlxMmxMzM2w2sMbDsNbbLzMLLgGzMWYGmhBWmZmhZjxwsMTAAAAAAAAAAAAbA",
				popularity = "22.7%",
				dps = "99.8k",
				hps = "179.8k",
				keystone = "+19"
			},
		},
		["windwalker"] = {
			["Raiding"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMzghhZZGGmBAAAAAAAAAAAstMjRwwYGG2GzYbGzwsNMzwyMBAw2MzYmZMz2MAAAAAAAA",
				popularity = "50.7%",
				dps = "519.0k",
			},
			["MythicPlus"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYYGzyMjxMzAAAAAAAAAAAAbLDjYmhxMMsNmx2MmhZjZGsNTAAsMmhZGzsNDAAAAAAA",
				popularity = "20.2%",
				dps = "476.8k",
				keystone = "+18"
			},
		},
	},
	["druid"] = {
		["feral"] = {
			["MythicPlus"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZ2mNzsYmZmZWmNYbmZmxMDAAAAAwSwwYwYmhmZMDzMjlZYjBAAAAAAAAAAAAAAAAMzMA",
				popularity = "36.4%",
				dps = "469.7k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMz2YMLmZMzsMbM2mZmxMzAAAAAAsEwMgxANzYGmZmxMmtZGAAAAAAADAAAAAAAAAmZA",
				popularity = "53.9%",
				dps = "529.7k",
			},
		},
		["balance"] = {
			["Raiding"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWogZmhhZGwMDzMzsAbjxYmZbGbGzMmx2MmZMjxGYBADAAAAAAAAzMjB",
				popularity = "37.4%",
				dps = "486.7k",
			},
			["MythicPlus"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWoYMzMMmZGwMDzMzsAbYzMzsMzwYmZmx2MGDzM2ALAYAAAAAAAAYmZM",
				popularity = "57.6%",
				dps = "633.8k",
				keystone = "+20"
			},
		},
		["guardian"] = {
			["MythicPlus"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxYmxsMsMzMjxMLMMzsYBgxgZmZimZmZmZGzCsxAAAAAAAmxwAAAAAAAAAmZGA",
				popularity = "22.6%",
				dps = "252.8k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxYmZmlZsMzYwYxDMMzsYZAMgZmZimZmZmZGDDbMAAAAAAghZAAAAAAAAAMzMA",
				popularity = "20.1%",
				dps = "274.3k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYDmZmFzyMjBLbstMbzMAAAAAAAAAAAAWGMYmBjghxMmZmZWQbMAAAAAgBwAmZAAAAAAAAMzA",
				popularity = "10.3%",
				dps = "93.9k",
				hps = "187.7k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbDzMDzCmxYbzYbMzAAAAAAAAAAAAYZAmhxMamBMjZmZMMTbzAAAAAAAAwYAAAAAAAAMzwA",
				popularity = "25.0%",
				dps = "41.0k",
				hps = "535.9k",
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			["MythicPlus"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmxMzgZmZMmJzMzAAAAAAAmlhxMMzMbmZ2mtxYgZYssBAAAjZmxA",
				popularity = "30.8%",
				dps = "492.6k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZMmZGMzMjxMhZGAAAAAAwsNMmZMzMbzMz2sNGDMDjlNAAAYMzMGA",
				popularity = "59.1%",
				dps = "498.7k",
			},
		},
		["vengeance"] = {
			["MythicPlus"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMjZMMzkZmhZYmZbmhZsNzwYGMGz2MzsZmxMDzAAAAAAAAgZMA",
				popularity = "14.0%",
				dps = "301.3k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMLzMMjtZMjZMDzMjZGbjZYGMAAAAAAAAYmZGA",
				popularity = "15.1%",
				dps = "285.0k",
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["Raiding"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmBzsZGMgBGzMNjZmMbjlZmZmhxMbzAmxMbjZmtxMwADAAAAAAA",
				popularity = "35.2%",
				dps = "499.9k",
			},
			["MythicPlus"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYGYGzMYgZ2MGmphZmMbjlZmZmhxMLzAmxMbjZmtxMwADAAAAAAA",
				popularity = "57.6%",
				dps = "511.4k",
				keystone = "+17"
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMLjlZmZGLDmZWmBzYmNAAAAAwAAgZGYwYYqhZmBAAAAzMzsNmZ2GzMwYbGAAAAAAMD",
				popularity = "26.9%",
				dps = "431.5k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMGbzMzMWGMzsMzwMmZDAAAAAMAAYmBAGzUzYmZAAAAwMmZbMzsNmZgx2MAAAAAAYG",
				popularity = "23.8%",
				dps = "544.7k",
			},
		},
		["preservation"] = {
			["Raiding"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZ2mtZwMzMjZBzsxMAAAzMmxgxYmRYGAAAgZmZyMmZMbzMDAGAAAAAAA",
				popularity = "11.9%",
				dps = "46.1k",
				hps = "428.2k",
			},
			["MythicPlus"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mtBGzMjZZGzYAAAwMjZmZYMmZEzMAAAAzMjMWmZMGzAAAAAAAwAA",
				popularity = "13.2%",
				dps = "97.0k",
				hps = "195.2k",
				keystone = "+18"
			},
		},
	},
}
addonTable.DB = talentData