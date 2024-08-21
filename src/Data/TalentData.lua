local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["warrior"] = {
		["arms"] = {
			["MythicPlus"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYsNzMMmxMzitllZmBAAAgBTDzMsMMDMzCzMDmZYMDMjZAAAAAAAwMmlxYA2CAAAAAAA",
				popularity = "17.5%",
				dps = "558.7k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmBLGzAzYMzMYmhhxwMMAAAAAAA4BGz2MzMACAAAAAAGA",
				popularity = "28.3%",
				dps = "697.9k",
			},
		},
		["fury"] = {
			["MythicPlus"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZGghZYWGzM2ghhZGmhZstNzYmZ2Ym5BmZGmhNbzwMjBAAACDAAAAAsAA",
				popularity = "34.5%",
				dps = "638.4k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYWGmZ2ghZMGmhZstNzYmZ2Ym5BmZGmhNbzwMjBAAACDAAAAAsBA",
				popularity = "15.6%",
				dps = "621.4k",
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmZGmZbmlZmZ2wYQjBjZAsMGzwGzMjZgZMDAAAAAAYmBAYZbDwAAAAAAbMA",
				popularity = "19.8%",
				dps = "368.5k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzwMzgZbmlZmZ22YMMNDMzMAMmZGwMzADzwAAAAAAAmZAAziNADAAAAAsZA",
				popularity = "29.6%",
				dps = "333.1k",
			},
		},
	},
	["paladin"] = {
		["retribution"] = {
			["MythicPlus"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAjpNLbzMbLbzM2mZmllx2AAAAAAwsNRzMMwMDjZZMYGYWmx2wgBjxyCbAAAAAAAAA",
				popularity = "13.3%",
				dps = "586.7k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAjpNLbzMbLbjx2YmttZ2AAAAAAwYimZ2MwMYMLjhZGmlZZGGGMMjxyCbAAAAAAAAA",
				popularity = "25.6%",
				dps = "635.3k",
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjZYWM2eAzYmxymZmxMGzYGAAgBAAAAAAg2aYmZWMwMzYmZxAmNAYMAAAGgBAAAAAwMA",
				popularity = "26.9%",
				dps = "251.5k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMziZWwMzMsZmZYYGmBAAYAAAAAAAINMzMLGYmhZmFDzMzGAMGAADYAGAAAAAAzA",
				popularity = "9.0%",
				dps = "332.1k",
			},
		},
		["holy"] = {
			["Raiding"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAGDAAwAsNzMzYGzMLMmlZGWmBstNTbFMzyMYmZYMLgZGDAYAgNghZmxDYAAAAAAwA",
				popularity = "4.8%",
				dps = "63.8k",
				hps = "448.6k",
			},
			["MythicPlus"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAADAAGAwYAAAAsNmZmZGzMLMmFzwyMwstNTblHwMDDmZGGzCYmxAAGAYDYYmZGGAAAAAAA",
				popularity = "16.0%",
				dps = "90.7k",
				hps = "172.6k",
				keystone = "+18"
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["Raiding"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgBAAAAAAgZMMmZmhZGmhZYWmZMzMzMZGGzMmZGzMmhxYmZYMDjZwG",
				popularity = "60.2%",
				dps = "688.0k",
			},
			["MythicPlus"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgBAAAAAAgZMzDMmZMMzMmhxYMzYmZmZyMMmxMzMmZYYMmZGmlBz2MYB",
				popularity = "58.5%",
				dps = "491.3k",
				keystone = "+20"
			},
		},
		["marksmanship"] = {
			["Raiding"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmZGMzMDzMzYmZmxYmxMAAAAAAAAzwYmZmZGzoZGjhZGYGzYmxA",
				popularity = "26.2%",
				dps = "593.5k",
			},
			["MythicPlus"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMGmxYGzYmZmZGmZMMmNAAAAAAAMDjZMzMjZmMjxwMDzywMLzgN",
				popularity = "27.3%",
				dps = "572.1k",
				keystone = "+19"
			},
		},
		["survival"] = {
			["MythicPlus"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMAAAAAAzM2mxMzMjZMzYGjxYmZmBAAAAAAAAAAAAAAaGGzMzMzYmhBGmZYMmZWmBb",
				popularity = "29.4%",
				dps = "516.6k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMAAAAAAzMz2MmZGmZMzwMDzMjZGDAAAAAAAAAAAAAAaGmxMzMzYGMMGmZYMMjZGzC",
				popularity = "58.0%",
				dps = "508.1k",
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			["MythicPlus"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmZmxMWmBAAAAAgZZw2MAAAAAA02yMzwDMzgZmZZ2GjBzMzMDmZmNLjZAAAAAAAA",
				popularity = "43.1%",
				dps = "589.0k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhZmxyMAAAAAAMLwyMAAAAAA022MzwDMzYMzMLz2YMGMzMzMzYmNLjZAAAAAAAA",
				popularity = "62.1%",
				dps = "616.0k",
			},
		},
		["outlaw"] = {
			["MythicPlus"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwwYmZwMzwMMMzMzMjZmplZMLzAAAAAAgttZmhHYmhFmZZ2GAAAAmZGAAAAAAYG",
				popularity = "30.1%",
				dps = "438.8k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwMzYGDmZGmhBzYmZMzMtMjZZGAAAAAAstNzMYmZsMmZZ2GAAAAmZGAAAAAAYG",
				popularity = "43.1%",
				dps = "509.6k",
			},
		},
		["subtlety"] = {
			["MythicPlus"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYWGzsMZYBmxYmZmZmZmZmxsMGGbbzMjZmZMGzsMLDAAAgZGMAAAAAAwA",
				popularity = "47.7%",
				dps = "442.6k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAzyYmlJDLbYGjhZmZmZmZGz2YMzstNzMmZmBjZWmtBAAAgZwAAAAAAAD",
				popularity = "56.0%",
				dps = "537.3k",
			},
		},
	},
	["priest"] = {
		["discipline"] = {
			["MythicPlus"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAADw2sMmZw2YMzMmZzsNzMzMMAAAAAAAAAAAwilZDbzMDmFGzYMGjFz2MNzEAAAAAAAA",
				popularity = "10.5%",
				dps = "96.7k",
				hps = "119.0k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtxYw2YMzMmZzsMzMzMMDAAAAAAAAAAAWsMbjZbmBmFGmZmxgF2mpxELAAAAAAA",
				popularity = "7.6%",
				dps = "86.0k",
				hps = "418.4k",
			},
		},
		["holy"] = {
			["Raiding"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAbDYbmZmZGzwsNGzMYZGWGAAAAwilZbYbmZwswwMzMGssAzYqZBAAAAAAA",
				popularity = "57.2%",
				dps = "47.3k",
				hps = "462.9k",
			},
			["MythicPlus"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAYZY8ALzgZmZMwMmhxyMzsMAAAAAWmthlZGYWYWmxMjxYhNmZmaWAAAAAAAA",
				popularity = "16.2%",
				dps = "120.9k",
				hps = "172.4k",
				keystone = "+17"
			},
		},
		["shadow"] = {
			["Raiding"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAgBzMDAAAAAAAAAAAAwws4BYmZ2mNmZmZ2GzYwswMzMjZjBGjhZxsN1MDWwMAAAAAAA",
				popularity = "32.1%",
				dps = "518.7k",
			},
			["MythicPlus"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMYYAAAAAAAAAAAAAGzsYGzMzmNmZmZ2GjlBzGzMzMmNGYMmxsY2mamBLYGAAAAAA",
				popularity = "23.1%",
				dps = "554.2k",
				keystone = "+20"
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["MythicPlus"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghxMzMjZMmZsMMmZaGGmZmZMAAAAAYmZmZmZmZ2MzMGAAAMzMzAAAAAAAAAAAwMYD",
				popularity = "16.3%",
				dps = "308.0k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzMjZmxYsMjZmZaGGmZMjZAAAAAYmZmZmZmZ2MzMGAAAMzMzMAAAAAAAAAAAMYD",
				popularity = "11.3%",
				dps = "313.2k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAAgZGDzMjZYYmZmZGGmpZGzYYGMzYmhZmZmZmZZmBAAAAAAAAAAAAAAAAAgZmZMDA",
				popularity = "63.6%",
				dps = "632.7k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAA8AAMzYmZMGDzYmZmZmxwMZGDDwMzYmhZmZmZmZZmBAAAAAAAAAAAAAAAAAgZmZMDA",
				popularity = "28.5%",
				dps = "611.6k",
			},
		},
		["unholy"] = {
			["MythicPlus"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZmZMzMDDzYmZmphhZGzYAAAAAAAAAMMzYGzMzMDAYDMLGzMzMMzAAAAAAYAmBA",
				popularity = "48.3%",
				dps = "529.3k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZ8ADDzYmZmphZmZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGAAAAAgBwMA",
				popularity = "56.9%",
				dps = "537.0k",
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			["MythicPlus"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjxgZjxMDmZGAAAAAAAAAAAAgZZaGDz2CjpBjZMjlZmZwsMWsYmZmZmZMDD",
				popularity = "24.7%",
				dps = "562.6k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMLz2yYwYmZZbmZmZmxYAAAAAAAAAAAAAYamZY2WMzMxMmZWwyMmBjhZZmZGDMjxA",
				popularity = "20.5%",
				dps = "606.3k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMjZmlZGmhZbsYGAAAAAAgZmZZMzyMzQmNMz0YmxMwyMmBzywsMGAAD",
				popularity = "11.4%",
				dps = "88.4k",
				hps = "182.0k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmZGLzGbGWAAAAAAgZMLjx2MzMTmtFmZaMDzshFzMDGDzyYAAM",
				popularity = "14.0%",
				dps = "41.5k",
				hps = "424.8k",
			},
		},
		["enhancement"] = {
			["MythicPlus"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzyMDGzMDzMzshlZMDAAAAAAAAAAAAAAAAAAzykZwswYmhxMzYGLzMTwyYZMzAAMD",
				popularity = "57.5%",
				dps = "536.9k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzyMDYmZYmZmtZmlZAAAAAAAAAAAAAAAAAAAzykZwssYmZmxwMzCWmZmAjlxMDAwM",
				popularity = "45.1%",
				dps = "574.0k",
			},
		},
	},
	["mage"] = {
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYjNLYmxMzCMmZmGjxYmZGGmBmZmZmZmZmZmZmZGzAAAAAAAAAAAAYWAAAAAAAAA",
				popularity = "45.2%",
				dps = "510.4k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwYWMYmZmGjxYmxwMzMMzMzMzYmZmZGzMYGAAAAAAAAAAAADAAAAAAAAA",
				popularity = "62.3%",
				dps = "517.7k",
			},
		},
		["arcane"] = {
			["Raiding"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMbmtZBzwYW8A8AmZYMNzsMDAAAAAADAAAAAAAAAAAAbAsMjhZGjhxMzMjZmxMzMzwYA",
				popularity = "37.4%",
				dps = "481.6k",
			},
			["MythicPlus"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAMjZhNLYmxMzCw8AzYMNzsMzAAAAAAYAAAAAAAAAAAAYBglZMMzYMMmZmZMzMmZmZGGD",
				popularity = "38.7%",
				dps = "469.4k",
				keystone = "+17"
			},
		},
		["fire"] = {
			["MythicPlus"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAMzAbWwMjZmFDMzMmGzDMmZAAAAAAMAAAAAAzMzMzMmxMzYxYmhBzMLzYxgBAAAAAAA",
				popularity = "33.9%",
				dps = "283.6k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgBAAAAAYMzMzMmxMzYxYmh5BwMLzgZhBAAAAAAA",
				popularity = "45.0%",
				dps = "433.8k",
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["MythicPlus"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAwMjZWmZG2mZmZxMmZAAzAAAAAAMDAAAAAAAAMDLA",
				popularity = "19.6%",
				dps = "545.9k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDzyAAAAmZmZWMzMWMzMLMzMDAYGAAAAAgZAAAAAAAAAzMbA",
				popularity = "23.8%",
				dps = "543.8k",
			},
		},
		["demonology"] = {
			["Raiding"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAAAAAAYmZGz2YmFzMzMjxMGmxMzgxMAAA",
				popularity = "26.8%",
				dps = "457.8k",
			},
			["MythicPlus"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsNzMDz2AAAAAAAAAAYeAAAAAAAzMmx2MzstNzMzMGDzYGjZMYGAAA",
				popularity = "19.6%",
				dps = "435.7k",
				keystone = "+16"
			},
		},
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNzMmZmlZWmZbxMDAAAAMmhlZmZGAAAAAADAAAAAAAMmBAA",
				popularity = "22.0%",
				dps = "402.9k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFjZGzsY2MWMzAAAAAjZmZZmZmBAAAAAwAAAAAAAYGjZAA",
				popularity = "14.1%",
				dps = "456.4k",
			},
		},
	},
	["monk"] = {
		["mistweaver"] = {
			["MythicPlus"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWYmlxMmxMzM2w2sMbDsNbbLzMLLGEzMWYGmhBWmZmhZbMGmlZCAAAAAAAAAAAA",
				popularity = "19.8%",
				dps = "85.6k",
				hps = "171.5k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWsNWGAzMzY7BYx2sNzsYZW2WmZWWANzMzswMMzihZWMzMMbMGsQAAAAAAAAAAAAbA",
				popularity = "21.4%",
				dps = "26.8k",
				hps = "451.5k",
			},
		},
		["windwalker"] = {
			["MythicPlus"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYYGzyMjxMzAAAAAAAAAAAAbLzYEmhxMMsZmx2MmhZbYGsMTAAsMmhZGzsNDAAAAAAA",
				popularity = "17.5%",
				dps = "459.6k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMzghhZZGGmBAAAAAAAAAAAstMjRYGYGG2MzYbGzwsNMzwyMBAw2MzYmZMz2MAAAAAAAA",
				popularity = "48.3%",
				dps = "535.7k",
			},
		},
		["brewmaster"] = {
			["Raiding"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMjlZsNzMzAAAAAAAglFQYGYGmZhxYbmZGmlhZsNLz02mFbzMjZ2AAAAAAAAAmBb",
				popularity = "22.5%",
				dps = "294.7k",
			},
			["MythicPlus"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMYmFzDsNzMzAAAAAAAglFQYGYGmZxMGbzYGmFmZsMLz022DsYbMzMzGAAAAAAAAgBb",
				popularity = "8.0%",
				dps = "238.2k",
				keystone = "+16"
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["MythicPlus"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWowMzMMMzAmZmZmZsAbYzMzsMzwYmZmx2MGDzM2ALAYAAAAAAAAYmZM",
				popularity = "40.7%",
				dps = "566.5k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWogZmhhZGwMDzMzsAbjxYmZbGbGzMmx2MmZMjxGYBADAAAAAAAAzMjB",
				popularity = "46.8%",
				dps = "528.5k",
			},
		},
		["feral"] = {
			["MythicPlus"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZ2mNzsYmZmZWmNYbmZmxMDAAAAAwSwYGDYmhmZMDzMjlZMbGAAAAAAAAAAAAAAAAwMzA",
				popularity = "40.9%",
				dps = "528.8k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMz2YMLmZMzsMbM2mZmxMzAAAAAAsEwMgxANzYGmZmxMmtZGAAAAAAADAAAAAAAAAmZA",
				popularity = "55.9%",
				dps = "581.7k",
			},
		},
		["guardian"] = {
			["Raiding"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxYmZmlZsMzYwYxDMMzsYZAMgZmZimZmZmZGDDbMAAAAAAghZAAAAAAAAAMzMA",
				popularity = "19.1%",
				dps = "287.2k",
			},
			["MythicPlus"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxYmxsMsMzMjxMLMMzsYBgxgZmZimZmZmZGzCsxAAAAAAAmxwAAAAAAAAAmZGA",
				popularity = "23.6%",
				dps = "246.4k",
				keystone = "+17"
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYDmZmFzyMjBLbstMbzMAAAAAAAAAAAAWGMYGYEMmxMmZGzyQbMAAAAAgBwAmZAAAAAAAAMzA",
				popularity = "9.3%",
				dps = "85.0k",
				hps = "165.8k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbDzMDzCmxYbzYbMzAAAAAAAAAAAAYDGmxMmRzMwDMjZmZmBTbzAAAAAAAAwYAAAAAAAAGjB",
				popularity = "23.6%",
				dps = "41.1k",
				hps = "508.8k",
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			["MythicPlus"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmxMzgZmZMmpZmZAAAAAAAmthxMMzMbmZ2mtxYgZYssBAAAjZmxA",
				popularity = "34.7%",
				dps = "551.1k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZMmZGMzMjxMhZGAAAAAAwsNMmZMzMbzMz2sNGDMDjlNAAAYMzMGA",
				popularity = "59.1%",
				dps = "541.8k",
			},
		},
		["vengeance"] = {
			["Raiding"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMLzMMjtZMjZMDzMjZGbjZYGMAAAAAAAAYmZGA",
				popularity = "12.9%",
				dps = "299.4k",
			},
			["MythicPlus"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMMjhZmMzMMDzMbzMMjtZGGzgxY2mZmNzMmZYGAAAAAAAAMzMA",
				popularity = "11.6%",
				dps = "299.8k",
				keystone = "+20"
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["Raiding"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmBzsZGMgBGzMNjZmMbjlZmZmhxMbzAmxMbjZmtxMwADAAAAAAA",
				popularity = "19.2%",
				dps = "495.8k",
			},
			["MythicPlus"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzgZGzMMDMzGGzMNjZmMbjlZMzMMmZZGgZmxYmxMGMDMAAAAAAA",
				popularity = "28.1%",
				dps = "525.0k",
				keystone = "+18"
			},
		},
		["preservation"] = {
			["MythicPlus"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mtBGzMjZZGzYAAAwMjZMzmxwMTMmBAAAMzMaGbzMPwYMDAAAAAAADA",
				popularity = "16.4%",
				dps = "89.0k",
				hps = "152.0k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZ2mtZwMzMjZBzsxMAAAzMmxgxYmRYGAAAgZmZyMmZMLzMDAGAAAAAAA",
				popularity = "10.8%",
				dps = "40.9k",
				hps = "456.7k",
			},
		},
		["augmentation"] = {
			["Raiding"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMGbzMzMWGMzsMzwMmZDAAAAAMAAYmBAGzUzYmZAAAAwMmZbMzsNmZgx2MAAAAAAYG",
				popularity = "23.1%",
				dps = "539.5k",
			},
			["MythicPlus"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMLjlZmZGLDmZWmBzYmNAAAAAAAAMzADGjZqhZmBAAAAzMzsNmZMmZgx2MAAAAAAYG",
				popularity = "31.9%",
				dps = "363.1k",
				keystone = "+19"
			},
		},
	},
}
addonTable.DB = talentData