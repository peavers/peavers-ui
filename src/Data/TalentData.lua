local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["warrior"] = {
		["fury"] = {
			["Raiding"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYWGmZ2ghZMGmhZstNzYmZ2Ym5BmZGmhNbzwMjBAAACDAAAAAsBA",
				popularity = "15.8%",
				dps = "616.9k",
			},
			["MythicPlus"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZGghZYWGzM2ghhZGmhZstNzYmZ2Ym5BmZGmhNbzwMjBAAACDAAAAAsAA",
				popularity = "34.5%",
				dps = "638.4k",
				keystone = "+21"
			},
		},
		["arms"] = {
			["MythicPlus"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYsNzMMmxMzitllZmBAAAgBTDzMsMMDMzCzMDmZYMDMjZAAAAAAAwMmlxYA2CAAAAAAA",
				popularity = "17.5%",
				dps = "558.7k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmBLGzAzYMzMYmhhxwMMAAAAAAA4BGz2MzMACAAAAAAGA",
				popularity = "29.4%",
				dps = "696.3k",
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
				popularity = "29.2%",
				dps = "336.0k",
			},
		},
	},
	["paladin"] = {
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjZYWM2eAzYmxymZmxMGzYGAAgBAAAAAAg2aYmZWMwMzYmZxAmNAYMAAAGgBAAAAAwMA",
				popularity = "26.9%",
				dps = "251.5k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMziZWwMzMsZmZYYGmBAAYAAAAAAAINMzMLGYmhZmFDzMzGAMGAADYAGAAAAAAzA",
				popularity = "8.1%",
				dps = "333.2k",
			},
		},
		["holy"] = {
			["Raiding"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAGDAAwAsNzMzYGzMLMmlZGWmBstNTbFMzyMYmZYMLgZGDAYAgNghZmxDYAAAAAAwA",
				popularity = "5.9%",
				dps = "64.2k",
				hps = "446.7k",
			},
			["MythicPlus"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAADAAGAwYAAAAsNmZmZGzMLMmFzwyMwstNTblHwMDDmZGGzCYmxAAGAYDYYmZGGAAAAAAA",
				popularity = "16.0%",
				dps = "90.7k",
				hps = "172.6k",
				keystone = "+18"
			},
		},
		["retribution"] = {
			["MythicPlus"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAjpNLbzMbLbzM2mZmllx2AAAAAAwsNRzMMwMDjZZMYGYWmx2wgBjxyCbAAAAAAAAA",
				popularity = "13.3%",
				dps = "586.7k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAjpNLbzMbLbjx2YmttZ2AAAAAAwYimZ2MwMYMLjhZGmlZZGGGMMjxyCbAAAAAAAAA",
				popularity = "31.3%",
				dps = "633.2k",
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["Raiding"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgBAAAAAAgZMMmZmhZGmhZYWmZMzMzMZGGzMmZGzMmhxYmZYMDjZwG",
				popularity = "60.8%",
				dps = "681.1k",
			},
			["MythicPlus"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgBAAAAAAgZMzDMmZMMzMmhxYMzYmZmZyMMmxMzMmZYYMmZGmlBz2MYB",
				popularity = "58.5%",
				dps = "491.3k",
				keystone = "+20"
			},
		},
		["marksmanship"] = {
			["MythicPlus"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMGmxYGzYmZmZGmZMMmNAAAAAAAMDjZMzMjZmMjxwMDzywMLzgN",
				popularity = "27.3%",
				dps = "572.1k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmZGMzMDzMzYmZmxYmxMAAAAAAAAzwYmZmZGzoZGjhZGYGzYmxA",
				popularity = "26.6%",
				dps = "601.5k",
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
				popularity = "57.8%",
				dps = "510.7k",
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
				popularity = "61.9%",
				dps = "621.8k",
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
				popularity = "43.5%",
				dps = "524.5k",
			},
		},
		["subtlety"] = {
			["Raiding"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAzyYmlJDLbYGjhZmZmZmZGz2YMzstNzMmZmBjZWmtBAAAgZwAAAAAAAD",
				popularity = "54.6%",
				dps = "538.7k",
			},
			["MythicPlus"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYWGzsMZYBmxYmZmZmZmZmxsMGGbbzMjZmZMGzsMLDAAAgZGMAAAAAAwA",
				popularity = "47.7%",
				dps = "442.6k",
				keystone = "+16"
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
				popularity = "7.7%",
				dps = "86.0k",
				hps = "418.2k",
			},
		},
		["holy"] = {
			["Raiding"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAbDYbmZmZGzwsNGzMYZGWGAAAAwilZbYbmZwswwMzMGssAzYqZBAAAAAAA",
				popularity = "56.3%",
				dps = "48.4k",
				hps = "464.0k",
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
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAgBzMDAAAAAAAAAAAAwws4BYmZ2mNmZmZ2GzsMYWYmZmxsxAjxwsY2mamBLYGAAAAAA",
				popularity = "32.8%",
				dps = "519.8k",
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
			["Raiding"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzMjZmxYsMjZmZaGGmZMjZAAAAAYmZmZmZmZ2MzMGAAAMzMzMAAAAAAAAAAAMYD",
				popularity = "10.8%",
				dps = "313.4k",
			},
			["MythicPlus"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghxMzMjZMmZsMMmZaGGmZmZMAAAAAYmZmZmZmZ2MzMGAAAMzMzAAAAAAAAAAAwMYD",
				popularity = "16.3%",
				dps = "308.0k",
				keystone = "+19"
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
				popularity = "27.3%",
				dps = "608.3k",
			},
		},
		["unholy"] = {
			["Raiding"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZ8ADDzYmZmphZmZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGAAAAAgBwMA",
				popularity = "58.4%",
				dps = "532.0k",
			},
			["MythicPlus"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZmZMzMDDzYmZmphhZGzYAAAAAAAAAMMzYGzMzMDAYDMLGzMzMMzAAAAAAYAmBA",
				popularity = "48.3%",
				dps = "529.3k",
				keystone = "+19"
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
				popularity = "19.2%",
				dps = "606.8k",
			},
		},
		["enhancement"] = {
			["Raiding"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzyMDYmZYmZmtZmlZAAAAAAAAAAAAAAAAAAAzykZwssYmZmxwMzCWmZmAjlxMDAwM",
				popularity = "54.5%",
				dps = "573.0k",
			},
			["MythicPlus"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzyMDGzMDzMzshlZMDAAAAAAAAAAAAAAAAAAzykZwswYmhxMzYGLzMTwyYZMzAAMD",
				popularity = "57.5%",
				dps = "536.9k",
				keystone = "+18"
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
				popularity = "13.3%",
				dps = "41.0k",
				hps = "423.1k",
			},
		},
	},
	["mage"] = {
		["fire"] = {
			["Raiding"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgBAAAAAYMzMzMmxMzYxYmh5BwMLzgZhBAAAAAAA",
				popularity = "44.1%",
				dps = "434.8k",
			},
			["MythicPlus"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAMzAbWwMjZmFDMzMmGzDMmZAAAAAAMAAAAAAzMzMzMmxMzYxYmhBzMLzYxgBAAAAAAA",
				popularity = "33.9%",
				dps = "283.6k",
				keystone = "+16"
			},
		},
		["arcane"] = {
			["MythicPlus"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAMjZhNLYmxMzCw8AzYMNzsMzAAAAAAYAAAAAAAAAAAAYBglZMMzYMMmZmZMzMmZmZGGD",
				popularity = "38.7%",
				dps = "469.4k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMbmtZBzwYW8A8AmZYMNzsMDAAAAAADAAAAAAAAAAAAbAsMjhZGjhxMzMjZmxMzMzwYA",
				popularity = "36.8%",
				dps = "479.9k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYjNLYmxMzCMmZmGjxYmZGGmBmZmZmZmZmZmZmZGzAAAAAAAAAAAAYWAAAAAAAAA",
				popularity = "45.2%",
				dps = "510.4k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwYWMYmZmGjxYmxwMzMMzMzMzYmZmZGzMYGAAAAAAAAAAAADAAAAAAAAA",
				popularity = "60.2%",
				dps = "518.7k",
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["Raiding"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDzyAAAAmZmZWMzMWMzMLMzMDAYGAAAAAgZAAAAAAAAAzMbA",
				popularity = "25.9%",
				dps = "546.2k",
			},
			["MythicPlus"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAwMjZWmZG2mZmZxMmZAAzAAAAAAMDAAAAAAAAMDLA",
				popularity = "19.6%",
				dps = "545.9k",
				keystone = "+17"
			},
		},
		["demonology"] = {
			["Raiding"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAAAAAAYmZGz2YmFzMzMjxMGmxMzgxMAAA",
				popularity = "27.3%",
				dps = "460.0k",
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
				popularity = "12.4%",
				dps = "459.5k",
			},
		},
	},
	["monk"] = {
		["mistweaver"] = {
			["Raiding"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWsNWGAzMzY7BYx2sNzsYZW2WmZWWANzMzswMMzihZWMzMMbMGsQAAAAAAAAAAAAbA",
				popularity = "21.8%",
				dps = "26.7k",
				hps = "452.6k",
			},
			["MythicPlus"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWYmlxMmxMzM2w2sMbDsNbbLzMLLGEzMWYGmhBWmZmhZbMGmlZCAAAAAAAAAAAA",
				popularity = "19.8%",
				dps = "85.6k",
				hps = "171.5k",
				keystone = "+18"
			},
		},
		["brewmaster"] = {
			["Raiding"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMjlZsNzMzAAAAAAAglFQYGYGmZhxYbmZGmlhZsNLz02mFbzMjZ2AAAAAAAAAmBb",
				popularity = "21.9%",
				dps = "296.0k",
			},
			["MythicPlus"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMYmFzDsNzMzAAAAAAAglFQYGYGmZxMGbzYGmFmZsMLz022DsYbMzMzGAAAAAAAAgBb",
				popularity = "8.0%",
				dps = "238.2k",
				keystone = "+16"
			},
		},
		["windwalker"] = {
			["Raiding"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMzghhZZGGmBAAAAAAAAAAAstMjRYGYGG2MzYbGzwsNMzwyMBAw2MzYmZMz2MAAAAAAAA",
				popularity = "46.4%",
				dps = "543.9k",
			},
			["MythicPlus"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYYGzyMjxMzAAAAAAAAAAAAbLzYEmhxMMsZmx2MmhZbYGsMTAAsMmhZGzsNDAAAAAAA",
				popularity = "17.5%",
				dps = "459.6k",
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
				popularity = "47.4%",
				dps = "532.3k",
			},
		},
		["guardian"] = {
			["MythicPlus"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxYmxsMsMzMjxMLMMzsYBgxgZmZimZmZmZGzCsxAAAAAAAmxwAAAAAAAAAmZGA",
				popularity = "23.6%",
				dps = "246.4k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxYmZmlZsMzYwYxDMMzsYZAMgZmZimZmZmZGDDbMAAAAAAghZAAAAAAAAAMzMA",
				popularity = "16.9%",
				dps = "290.9k",
			},
		},
		["feral"] = {
			["Raiding"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMz2YMLmZMzsMbM2mZmxMzAAAAAAsEwMgxANzYGmZmxMmtZGAAAAAAADAAAAAAAAAmZA",
				popularity = "55.2%",
				dps = "586.5k",
			},
			["MythicPlus"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZ2mNzsYmZmZWmNYbmZmxMDAAAAAwSwYGDYmhmZMDzMjlZMbGAAAAAAAAAAAAAAAAwMzA",
				popularity = "40.9%",
				dps = "528.8k",
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
				popularity = "23.4%",
				dps = "40.0k",
				hps = "502.4k",
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
				popularity = "58.6%",
				dps = "545.4k",
			},
		},
		["vengeance"] = {
			["Raiding"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMLzMMjtZMjZMDzMjZGbjZYGMAAAAAAAAYmZGA",
				popularity = "13.2%",
				dps = "311.6k",
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
			["MythicPlus"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzgZGzMMDMzGGzMNjZmMbjlZMzMMmZZGgZmxYmxMGMDMAAAAAAA",
				popularity = "28.1%",
				dps = "525.0k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMYmNzYmBmZBjZmGmZysNWmZmZGGzsNDYGsNmZ2mZGYAAAAAAAA",
				popularity = "15.6%",
				dps = "493.4k",
			},
		},
		["preservation"] = {
			["Raiding"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZ2mtZwMzMjZBzsxMAAAzMmxgxYmRYGAAAgZmZyMmZMLzMDAGAAAAAAA",
				popularity = "10.0%",
				dps = "38.7k",
				hps = "470.2k",
			},
			["MythicPlus"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mtBGzMjZZGzYAAAwMjZMzmxwMTMmBAAAMzMaGbzMPwYMDAAAAAAADA",
				popularity = "16.4%",
				dps = "89.0k",
				hps = "152.0k",
				keystone = "+17"
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMLjlZmZGLDmZWmBzYmNAAAAAAAAMzADGjZqhZmBAAAAzMzsNmZMmZgx2MAAAAAAYG",
				popularity = "31.9%",
				dps = "363.1k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMGbzMzMWGMzsMzwMmZDAAAAAMAAYmBAGzUzYmZAAAAwMmZbMzsNmZgx2MAAAAAAYG",
				popularity = "22.8%",
				dps = "532.4k",
			},
		},
	},
}
addonTable.DB = talentData