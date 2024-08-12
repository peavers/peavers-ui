local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["warrior"] = {
		["fury"] = {
			["MythicPlus"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAAagxAjhZYMmZmNYYmZMMDzYbbmxMzsxMzDMzMMDb2mhZGDAAAEGAAAAAYDA",
				popularity = "29.3%",
				dps = "707.7k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYWGmZ2ghZMGmhZstNzYmZ2Ym5BmZGmhNbzwMjBAAACDAAAAAsBA",
				popularity = "14.4%",
				dps = "624.8k",
			},
		},
		["arms"] = {
			["MythicPlus"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYsNzMMmxMzitllZmBAAAgBTDzMsMMDMzCzMDmZYMDMjZAAAAAAAwMmlxYA2CAAAAAAA",
				popularity = "16.0%",
				dps = "672.6k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmBLGzAzYMzMYmhhxwMMAAAAAAA4BGz2MzMACAAAAAAGA",
				popularity = "21.7%",
				dps = "702.8k",
			},
		},
		["protection"] = {
			["Raiding"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzwMzgZbmlZmZ22YMMNDMzMAMmZGwMzADzwAAAAAAAmZAAziNADAAAAAsZA",
				popularity = "34.3%",
				dps = "273.5k",
			},
			["MythicPlus"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmZGmZbmlZmZ2wYQjBzMDglxYG2YmZMDMjZAAAAAAAzMAALbbAGAAAAAYDA",
				popularity = "22.2%",
				dps = "304.8k",
				keystone = "+18"
			},
		},
	},
	["paladin"] = {
		["holy"] = {
			["Raiding"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAGDAAwAsMzMzYbMzssZMLMsMjxsttZargZWmBzMDjZBMzYAADAsBMMzMeADAAAAAAA",
				popularity = "6.3%",
				dps = "66.2k",
				hps = "460.0k",
			},
			["MythicPlus"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAADAAGAwYAAAAsNmZmZbMzsYGziZYZGYZbbm2KMzsYwMzwYWAzMGAwAAbADzMDGAAAAAAA",
				popularity = "16.2%",
				dps = "86.9k",
				hps = "201.6k",
				keystone = "+18"
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjZYWM2eAzYmxymZmxMGzYGAAgBAAAAAAg2aYmZYADmZWMYmZDAGDYAMgBYAAAAAAMD",
				popularity = "24.4%",
				dps = "228.0k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMziZWwMzMsZmZYYGmBAAYAAAAAAAINMzMLGYmhZmFDzMzGAMGAADYAGAAAAAAzA",
				popularity = "9.4%",
				dps = "313.9k",
			},
		},
		["retribution"] = {
			["Raiding"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAMttssNzstsNGbjZ22mZDAAAAAAjpMzMbGYGMmlxwMDzysMDDDGMGLLsNAAAAAAAAA",
				popularity = "41.5%",
				dps = "635.5k",
			},
			["MythicPlus"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAMZZZbmZbZbmxiZssw2AAAAAAwsN1MzMLGYmhxsMGYYMLzYbYMGwYZhNAAAAAAAAA",
				popularity = "15.3%",
				dps = "746.7k",
				keystone = "+21"
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["Raiding"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgBAAAAAAgZMMmZmhZGmhZYWmZMzMzMZGGzMmZGzMmhxYmZYMDjZwG",
				popularity = "58.2%",
				dps = "707.9k",
			},
			["MythicPlus"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgBAAAAAAgZMzDMmZMMzMmhxYMzYmZmZyMMmxMzMzMDDjhZGGzwsMD2A",
				popularity = "58.9%",
				dps = "585.7k",
				keystone = "+20"
			},
		},
		["survival"] = {
			["MythicPlus"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMAAAAAAzM2mxMzMjZMzYGjxYmZmBAAAAAAAAAAAAAAaGGmZmZGzMmhxwMDjhZWmBb",
				popularity = "35.1%",
				dps = "579.2k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMAAAAAAzMz2MmZGmZMzwMDzMjZGDAAAAAAAAAAAAAAaGmxMzMzYGMMGmZYMMjZGzC",
				popularity = "54.9%",
				dps = "486.0k",
			},
		},
		["marksmanship"] = {
			["Raiding"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmZGMzMDzMzYmZmxYmxMAAAAAAAAzwYmZmZGzoZGjhZGYGzYmxA",
				popularity = "25.7%",
				dps = "514.0k",
			},
			["MythicPlus"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMGmxYGzYmZmZGmZMMmNAAAAAAAMDDDzMzMz0MjxwMDzywMLzgN",
				popularity = "30.4%",
				dps = "653.4k",
				keystone = "+19"
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			["MythicPlus"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmZmxMAAAAAAAzyMmtZAAAAAAotlZmBzMYmZWmtxYwMzMzgZmZzyYGAAAAAAgB",
				popularity = "21.8%",
				dps = "560.4k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhZmxyMAAAAAAMbwyMAAAAAA022MzwDMzYMzMLz2YMGMzMzMzYmNLjZAAAAAAAA",
				popularity = "58.2%",
				dps = "559.5k",
			},
		},
		["outlaw"] = {
			["MythicPlus"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwwYmZwMzwMMMzMzMjZmplZMLzAAAAAAgttxM8AzMswMLz2AAAAYmZGAAAAAAYG",
				popularity = "31.3%",
				dps = "303.0k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwMzYGDmZGmhBzYmZMzMtMjZZGAAAAAAstNzMYmZsMmZZ2GAAAAmZGAAAAAAYG",
				popularity = "42.9%",
				dps = "427.5k",
			},
		},
		["subtlety"] = {
			["Raiding"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAzyYmlJDLbYGjhZmZmZmZGz2YMzstNzMmZmBjZWmtBAAAgZwAAAAAAAD",
				popularity = "51.5%",
				dps = "518.9k",
			},
			["MythicPlus"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAzyYmlJDLwMGzMzMzMzMzMmlxwMbbzMjZmZwYmlZZAAAAYGMAAAAAAwA",
				popularity = "40.0%",
				dps = "420.5k",
				keystone = "+19"
			},
		},
	},
	["priest"] = {
		["holy"] = {
			["Raiding"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAbDYbmZmZGzwsNGzMYZGWGAAAAwilZbYbmZwswwMzMGssAzYqZBAAAAAAA",
				popularity = "57.4%",
				dps = "47.7k",
				hps = "456.0k",
			},
			["MythicPlus"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAwDsZMLzgZGjBmxMMWmZmlBAAAAY2mlxDsNzAwsMjZGjxCYmZqZBAAAAAAA",
				popularity = "24.4%",
				dps = "142.6k",
				hps = "167.3k",
				keystone = "+19"
			},
		},
		["discipline"] = {
			["Raiding"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtxYw2YMzMmhZZmZmZYGAAAAAAAAAAAsYZ2Y2mZgZhhxYMMLmtZaMxyYAAAAAAA",
				popularity = "7.6%",
				dps = "85.7k",
				hps = "382.7k",
			},
			["MythicPlus"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlxYw2YMzMmZzsMzMzMMDAAAAAAAAAAAWmlZjZZmBmFGzYMGjlFmpZmYBAAAAAAA",
				popularity = "11.8%",
				dps = "70.6k",
				hps = "137.7k",
				keystone = "+16"
			},
		},
		["shadow"] = {
			["Raiding"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAgBzMDAAAAAAAAAAAAwws4BYmZ2mNmZmZ2GzYwswMzMjZjBGjhZxsN1MDWwMAAAAAAA",
				popularity = "24.9%",
				dps = "487.5k",
			},
			["MythicPlus"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMDDDAAAAAAAAAAAAwYmFzYmZ2sxMzMz2YGwswMzMjZjBGjhZxsN1MDWwMAAAAAAA",
				popularity = "25.4%",
				dps = "695.4k",
				keystone = "+21"
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["MythicPlus"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghxMzYMzMGDDzMz0MMzMzYGDAAAAAmZmZmZmZmNzMjBAAAzMzMAAAAAAAAAAAMD2A",
				popularity = "12.4%",
				dps = "346.1k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzMjZmxYsMjZmZaGGmZMjZAAAAAYmZmZmZmZ2MzMGAAAMzMzMAAAAAAAAAAAMYD",
				popularity = "14.2%",
				dps = "309.8k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAAgZGDzMjZYYmZmZGGmpZGzYYGMzYmhZmZmZmZZmBAAAAAAAAAAAAAAAAAgZmZMDA",
				popularity = "71.5%",
				dps = "768.1k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAA8AAMzYmZMGDzYmZmZmxwMZGDDwMzYmhZmZmZmZZmBAAAAAAAAAAAAAAAAAgZmZMDA",
				popularity = "35.4%",
				dps = "626.1k",
			},
		},
		["unholy"] = {
			["Raiding"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMzMjHYYYGzMzMNMmZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGAAAAAgBwMA",
				popularity = "57.6%",
				dps = "545.5k",
			},
			["MythicPlus"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGjZmZYYGzMzMNMMzYGDAAAAAAAAghZGzYmZmZAAbgZxYmZmhZGAAAAAgZAmBA",
				popularity = "49.8%",
				dps = "711.4k",
				keystone = "+20"
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			["MythicPlus"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMLz2yYGGzMbbzMjZmxYAAAAAAAAAAAAAmtpZAbLMz0wMzMbDLzMzgZZwyYmBMzYM",
				popularity = "33.0%",
				dps = "690.5k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMLz2yYwYmZZbmZmZmxYAAAAAAAAAAAAAYamZY2WMzMxMmZWwyMmBjhZZmZGDMjxA",
				popularity = "27.7%",
				dps = "609.6k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMjZmlZGmhZbsYAAAAAAAMzMLjZWmZGystwMTjZGzALzYGMLDzyYAAM",
				popularity = "10.6%",
				dps = "109.8k",
				hps = "190.7k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmZGLzGbGWAAAAAAgZMLjx2MzMTmtFmZaMDzshFzMDGDzyYAAM",
				popularity = "17.7%",
				dps = "45.2k",
				hps = "413.1k",
			},
		},
		["enhancement"] = {
			["MythicPlus"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzyMDGmZYmZmNsMjBAAAAAAAAAAAAAAAAAAzykZwswYmhxMzsZsMzMBLjlxMDAgB",
				popularity = "57.5%",
				dps = "476.9k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzyMDYmZYmZmNsMDAAAAAAAAAAAAAAAAAAYWmMDmlFzMzMGmZWwyMzEYsMmZAAmB",
				popularity = "82.9%",
				dps = "474.8k",
			},
		},
	},
	["mage"] = {
		["arcane"] = {
			["Raiding"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMbmtZBzwYW8A8AmZYMNzsMDAAAAAADAAAAAAAAAAAAbAsMjhZGjhxMzMjZmxMzMzwYA",
				popularity = "39.8%",
				dps = "497.3k",
			},
			["MythicPlus"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAMgZbWMmhZmFYMzwYamZZMAAAAAAGAAAAAAAAAAAA2AYZGDzMGDjZmZGzMjZmZmhxA",
				popularity = "51.5%",
				dps = "477.6k",
				keystone = "+19"
			},
		},
		["fire"] = {
			["MythicPlus"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAMzgZzCmhZmFPAjZmx0YMmZAAAAAAMAAAAAAzMzMzMmxMzYxYmhBzMLzYxgBAAAAAAA",
				popularity = "67.5%",
				dps = "474.0k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgBAAAAAYMzMzMmxMzYxYmh5BwMLzgZhBAAAAAAA",
				popularity = "46.5%",
				dps = "444.9k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwMziHAmZ0YMzYmZGGmBmZmZmZmZmZmZmZGzAAAAAAAAAAAAY2AAAAAAAAA",
				popularity = "53.7%",
				dps = "505.0k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwMziBzYmGjxYmxwMzMMzMzMzYmZmZGzMYGAAAAAAAAAAAAzCAAAAAAAAA",
				popularity = "67.1%",
				dps = "515.7k",
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["MythicPlus"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAwMjZWmZG2mZmZxMmZAAzAAAAAAMDAAAAAAAAMDLA",
				popularity = "22.8%",
				dps = "491.4k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MMmNzMDz2AAAAzMjZWMzMWMzMLMzMDAYGAAAAAgZAAAAAAAAAzMbA",
				popularity = "44.7%",
				dps = "439.4k",
			},
		},
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNzMmZmlZWmZbxMDAAAAMmhlZmZGAAAAAADAAAAAAAMmBAA",
				popularity = "18.0%",
				dps = "422.9k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFjZGzsY2MWMzAAAAAjZmZZmZmBAAAAAwAAAAAAAYGjZAA",
				popularity = "14.7%",
				dps = "451.7k",
			},
		},
		["demonology"] = {
			["MythicPlus"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAAAAAAYmxM2mZmttZmZmxYYGzYMjBzAAAA",
				popularity = "29.2%",
				dps = "437.0k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAAAAAAYmZGz2YmFzMzMjxMGmxMzgxMAAA",
				popularity = "26.4%",
				dps = "436.1k",
			},
		},
	},
	["monk"] = {
		["brewmaster"] = {
			["Raiding"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMjlZsNzMzAAAAAAAglFQYGYGmZhxYbmZGmlhZsNLz02mFbzMjZ2AAAAAAAAAmBb",
				popularity = "21.0%",
				dps = "289.8k",
			},
			["MythicPlus"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMYmFzDsNzMzYAAAAAAAssACzAzwMLmxYbGzwswMjlZ5Bm22egFbjZmZ2AAAAAAAAAMYD",
				popularity = "9.9%",
				dps = "245.3k",
				keystone = "+16"
			},
		},
		["mistweaver"] = {
			["MythicPlus"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWYmlxMmxMzM2w2sMbDsNbbLzMLLgGzMWYGmhBWmZmhZjxwsMTAAAAAAAAAAAAbA",
				popularity = "22.4%",
				dps = "105.1k",
				hps = "180.6k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWsNWGAzMzY7BYx2sNzsYZW2WmZWWANzMzswMMzihZWMzMMbMGsQAAAAAAAAAAAAbA",
				popularity = "25.4%",
				dps = "27.6k",
				hps = "441.4k",
			},
		},
		["windwalker"] = {
			["Raiding"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMzghhZZGGmBAAAAAAAAAAAstMjRwwYGG2GzYbGzwsNMzwyMBAw2MzYmZMz2MAAAAAAAA",
				popularity = "50.6%",
				dps = "517.7k",
			},
			["MythicPlus"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYYGzyMjxMzAAAAAAAAAAAAbLzYEMMmhhtxM2mxMMbDzMsMTAAsMmhZGzsNDAAAAAAA",
				popularity = "20.2%",
				dps = "456.1k",
				keystone = "+16"
			},
		},
	},
	["druid"] = {
		["feral"] = {
			["MythicPlus"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZ2mNzsYmZmZWmNYbmZmxMDAAAAAwSwwYwYmhmZMDzMjlZYjBAAAAAAAAAAAAAAAAMzMA",
				popularity = "36.2%",
				dps = "467.7k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMz2YMLmZMzsMbM2mZmxMzAAAAAAsEwMgxANzYGmZmxMmtZGAAAAAAADAAAAAAAAAmZA",
				popularity = "52.7%",
				dps = "530.4k",
			},
		},
		["balance"] = {
			["MythicPlus"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWoYMzMMmZGwMDzMzsAbYzMzsMzwYmZmx2MGDzM2ALAYAAAAAAAAYmZM",
				popularity = "57.7%",
				dps = "651.3k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWogZmhhZGwMDzMzsAbjxYmZbGbGzMmx2MmZMjxGYBADAAAAAAAAzMjB",
				popularity = "36.5%",
				dps = "486.3k",
			},
		},
		["guardian"] = {
			["MythicPlus"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxYmxsMsMzMjxMLMMzsYBgxgZmZimZmZmZGzCsxAAAAAAAmxwAAAAAAAAAmZGA",
				popularity = "23.7%",
				dps = "250.7k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxYmZmlZsMzYwYxDMMzsYZAMgZmZimZmZmZGDDbMAAAAAAghZAAAAAAAAAMzMA",
				popularity = "19.4%",
				dps = "276.4k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYDmZmFzyMjBLbstMbzMAAAAAAAAAAAAWGMYmBjghxMmZmZWQbMAAAAAgBwAmZAAAAAAAAMzA",
				popularity = "9.8%",
				dps = "96.3k",
				hps = "190.6k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbDzMDzCmxYbzYbMzAAAAAAAAAAAAYZAmhxMamBMjZmZMMTbzAAAAAAAAwYAAAAAAAAMzwA",
				popularity = "25.5%",
				dps = "40.4k",
				hps = "536.5k",
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["MythicPlus"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYGYGzMYgZ2MGmphZmMbjlZmZmhxMLzAmxMbjZmtxMwADAAAAAAA",
				popularity = "59.4%",
				dps = "504.1k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmBzsZGMgBGzMNjZmMbjlZmZmhxMbzAmxMbjZmtxMwADAAAAAAA",
				popularity = "35.3%",
				dps = "499.6k",
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMLjlZmZGLDmZWmBzYmNAAAAAwAAgZGYwYYqhZmBAAAAzMzsNmZ2GzMwYbGAAAAAAMD",
				popularity = "28.0%",
				dps = "430.3k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMGbzMzMWGMzsMzwMmZDAAAAAMAAYmBAGzUzYmZAAAAwMmZbMzsNmZgx2MAAAAAAYG",
				popularity = "24.1%",
				dps = "544.7k",
			},
		},
		["preservation"] = {
			["MythicPlus"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mtBGzMjZZGzYAAAwMjZMz2MGmZixMAAAgZmRzYbmxYMDAAAAAAADA",
				popularity = "14.0%",
				dps = "87.4k",
				hps = "178.7k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZ2mtZwMzMjZBzsxMAAAzMmxgxYmRYGAAAgZmZyMmZMLzMDAGAAAAAAA",
				popularity = "12.4%",
				dps = "45.3k",
				hps = "423.2k",
			},
		},
	},
	["demon-hunter"] = {
		["vengeance"] = {
			["Raiding"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMLzMMjtZMjZMDzMjZGbjZYGMAAAAAAAAYmZGA",
				popularity = "15.6%",
				dps = "284.2k",
			},
			["MythicPlus"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMjZMMzkZmhZYmZbmhZsNzwYGMGz2MzsZmxMDzAAAAAAAAgZMA",
				popularity = "14.5%",
				dps = "304.1k",
				keystone = "+20"
			},
		},
		["havoc"] = {
			["MythicPlus"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmxMzgZmZMmJzMzAAAAAAAmlhxMMzMbmZ2mtxYgZYssBAAAjZmxA",
				popularity = "33.0%",
				dps = "495.6k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZMmZGMzMjxMhZGAAAAAAwsNMmZMzMbzMz2sNGDMDjlNAAAYMzMGA",
				popularity = "59.5%",
				dps = "497.9k",
			},
		},
	},
}
addonTable.DB = talentData