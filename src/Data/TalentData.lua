local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["warrior"] = {
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmZGmZbmlZmZ2wYQjBjZAsMGzwGzMjZgZMDAAAAAAYmBAYZbDwAAAAAAbMA",
				popularity = "16.3%",
				dps = "343.8k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzwMzgZbmlZmZ22YMMNDMzMAMmZGwMzADzwAAAAAAAmZAAziNADAAAAAsZA",
				popularity = "29.9%",
				dps = "314.6k",
			},
		},
		["fury"] = {
			["Raiding"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYWGmZ2ghZMGmhZstNzYmZ2Ym5BmZGmhNbzwMjBAAACDAAAAAsBA",
				popularity = "15.2%",
				dps = "625.0k",
			},
			["MythicPlus"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAAagxAMMDjxMzsBDzMjhZMzYbbmxMzsxMzDMzMMDb2mhZGDAAAEGAAAAAYDA",
				popularity = "36.1%",
				dps = "660.0k",
				keystone = "+20"
			},
		},
		["arms"] = {
			["Raiding"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmBLGzAzYMzMYmhhxwMMAAAAAAA4BGz2MzMACAAAAAAGA",
				popularity = "27.1%",
				dps = "701.5k",
			},
			["MythicPlus"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYsNzMMmxMzitllZmBAAAgBTDzMsMMDMzCzMDmZYMDMjZAAAAAAAwMmlxYA2CAAAAAAA",
				popularity = "19.0%",
				dps = "518.3k",
				keystone = "+19"
			},
		},
	},
	["paladin"] = {
		["protection"] = {
			["Raiding"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMziZWwMzMsZmZYYGmBAAYAAAAAAAINMzMLGYmhZmFDzMzGAMGAADYAGAAAAAAzA",
				popularity = "9.3%",
				dps = "319.4k",
			},
			["MythicPlus"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjZYWM2eAzYmxymZmxMGzYGAAAAAAAAAA0WDzMziBmZYmZxgxsBAjBAwAGgBAAAAAwMA",
				popularity = "30.7%",
				dps = "247.3k",
				keystone = "+17"
			},
		},
		["holy"] = {
			["Raiding"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAGDAAwAsNzMzYbMzssZMLMsMjxsttZargZWmBzMDjZBMzYAADAsBMMzMeADAAAAAAA",
				popularity = "4.2%",
				dps = "57.6k",
				hps = "435.0k",
			},
			["MythicPlus"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAADAAGAwYAAAGgtxMzMLjZmFzYWMDLzALbbz0WhZmFDmZGGzCYMGAwAAbADzMDGAAAAAAA",
				popularity = "4.6%",
				dps = "60.6k",
				hps = "143.6k",
				keystone = "+17"
			},
		},
		["retribution"] = {
			["MythicPlus"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAjpNLbzMbLbzM2mHYmllx2AAAAAAwsNxMzwAzMMmlxgZgZZGbDDGMGLLsBAAAAAAAA",
				popularity = "13.0%",
				dps = "580.7k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAMttssNzstsNGbjZ22mZDAAAAAAjpMzMbGYGMmlxwMDzysMDDDGMGLLsNAAAAAAAAA",
				popularity = "30.5%",
				dps = "635.0k",
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["MythicPlus"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgBAAAAAAgZMzDMmZMMzMmhxYMzYmZmZyMMmZMzMmZMDjxMzwYGGzgN",
				popularity = "58.8%",
				dps = "492.8k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgBAAAAAAgZMMmZmhZGmhZYWmZMzMzMZGGzMmZGzMmhxYmZYMDjZwG",
				popularity = "60.1%",
				dps = "696.0k",
			},
		},
		["marksmanship"] = {
			["MythicPlus"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMGmxYGzYmZmZGmZMMmNAAAAAAAMDjZMzMjZmMjxwMDzywMLzgN",
				popularity = "31.3%",
				dps = "595.8k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmZGMzMDzMzYmZmxYmxMAAAAAAAAzwYmZmZGzoZGjhZGYGzYmxA",
				popularity = "25.3%",
				dps = "569.0k",
			},
		},
		["survival"] = {
			["MythicPlus"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMAAAAAAzM2mxMzMjZMzYGjxYmZmBAAAAAAAAAAAAAAaGGzMzMzYmhBGmZYMmZWmBb",
				popularity = "29.3%",
				dps = "481.3k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMAAAAAAzMz2MmZGmZMzwMDzMjZGDAAAAAAAAAAAAAAaGmxMzMzYGMMGmZYMMjZGzC",
				popularity = "55.7%",
				dps = "496.2k",
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			["Raiding"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhZmxyMAAAAAAMLwyMAAAAAA022MzwDMzYMzMLz2YMGMzMzMzYmNLjZAAAAAAAA",
				popularity = "60.7%",
				dps = "607.2k",
			},
			["MythicPlus"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmZmxMWmBAAAAAgZZw2MAAAAAA022MzwDMzgZmZZ2GjBzMzMDmZmNLjZAAAAAAAA",
				popularity = "41.2%",
				dps = "597.3k",
				keystone = "+18"
			},
		},
		["subtlety"] = {
			["Raiding"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAzyYmlJDLbYGjhZmZmZmZGz2YMzstNzMmZmBjZWmtBAAAgZwAAAAAAAD",
				popularity = "54.3%",
				dps = "530.3k",
			},
			["MythicPlus"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYWGzsMZYBmxYmZmZmZmZmxsMGGbLzMjZmZMGzsMLDAAAgZGMAAAAAAwA",
				popularity = "52.0%",
				dps = "354.7k",
				keystone = "+14"
			},
		},
		["outlaw"] = {
			["Raiding"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwMzYGDmZGmhBzYmZMzMtMjZZGAAAAAAstNzMYmZsMmZZ2GAAAAmZGAAAAAAYG",
				popularity = "44.5%",
				dps = "507.2k",
			},
			["MythicPlus"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwwYmZwMzwMMMzMzMjZmplZMLzAAAAAAgttZmhHYmhFmZZ2GAAAAmZGAAAAAAYG",
				popularity = "35.4%",
				dps = "411.9k",
				keystone = "+16"
			},
		},
	},
	["priest"] = {
		["discipline"] = {
			["MythicPlus"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAADw2sMmZw2YMzMmZzsNzMzMMAAAAAAAAAAAwilHYDbzMDmFGzYMGjFz2MNzEAAAAAAAA",
				popularity = "13.6%",
				dps = "94.3k",
				hps = "115.3k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtxYw2YMzMmZzsMzMzMMDAAAAAAAAAAAWsMbjZbmBmFGmZmxgF2mpxELAAAAAAA",
				popularity = "8.4%",
				dps = "85.9k",
				hps = "422.4k",
			},
		},
		["holy"] = {
			["Raiding"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAbDYbmZmZGzwsNGzMYZGWGAAAAwilZbYbmZwswwMzMGssAzYqZBAAAAAAA",
				popularity = "58.7%",
				dps = "47.2k",
				hps = "461.0k",
			},
			["MythicPlus"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAYZY8ALzgZmZMwMmhHwyMzsMAAAAAWegthlZGYWYWmxMjxYhNmZmaWAAAAAAAA",
				popularity = "16.0%",
				dps = "120.6k",
				hps = "168.3k",
				keystone = "+16"
			},
		},
		["shadow"] = {
			["Raiding"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAgBzMDAAAAAAAAAAAAwws4BYmZ2mNmZmZ2GzYwswMzMjZjBGjhZxsN1MDWwMAAAAAAA",
				popularity = "30.6%",
				dps = "507.7k",
			},
			["MythicPlus"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMYYAAAAAAAAAAAAAGzsYGzMzmNmZmZ2GPglBzGzMzMmNGYMmxsY2mamBLYGAAAAAA",
				popularity = "22.3%",
				dps = "582.7k",
				keystone = "+20"
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["MythicPlus"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghxMzYMzMmZYYmZmmZMMzYGDAAAAAmZmZmZmZmNzMjBAAAzMzMAAAAAAAAAAAMD2A",
				popularity = "16.9%",
				dps = "311.6k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzMjZmxYsMjZmZaGGmZMjZAAAAAYmZmZmZmZ2MzMGAAAMzMzMAAAAAAAAAAAMYD",
				popularity = "12.3%",
				dps = "310.8k",
			},
		},
		["frost"] = {
			["Raiding"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAA8AAMzYmZMGDzYmZmZmxwMZGDDwMzYmhZmZmZmZZmBAAAAAAAAAAAAAAAAAgZmZMDA",
				popularity = "29.6%",
				dps = "617.7k",
			},
			["MythicPlus"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAAgZGDzMjZYYmZmZGGmpZGzYYGMzYmhZmZmZmZZmBAAAAAAAAAAAAAAAAAgZmZMDA",
				popularity = "66.2%",
				dps = "632.1k",
				keystone = "+21"
			},
		},
		["unholy"] = {
			["MythicPlus"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZmZMzMDDzYmZmphhZGzYAAAAAAAAAMMzYGzMzMDAYDMLGzMzMMzAAAAAAYAmBA",
				popularity = "47.4%",
				dps = "504.0k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMzMjHYYYGzMzMNMmZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGAAAAAgBwMA",
				popularity = "55.3%",
				dps = "538.3k",
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			["Raiding"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMLz2yYwYmZZbmZmZmxYAAAAAAAAAAAAAYamZY2WMzMxMmZWwyMmBjhZZmZGDMjxA",
				popularity = "22.3%",
				dps = "613.9k",
			},
			["MythicPlus"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjxgZjxMDmZGAAAAAAAAAAAAAbTzYGz2CzMNMjZWGWMmBzywsMmZmZmZMDD",
				popularity = "22.2%",
				dps = "538.6k",
				keystone = "+19"
			},
		},
		["enhancement"] = {
			["MythicPlus"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMPwyMDGz8ADzMzshlHYMDAAAAAAAAAAAAAAAAAAzykZwswYmhxMzYGLzMTwyYZMzAAMD",
				popularity = "61.3%",
				dps = "556.6k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzyMDYmZYmZmNsMDAAAAAAAAAAAAAAAAAAYWmMDmlFzMzMGmZWwyMzEYsMmZAAmB",
				popularity = "45.5%",
				dps = "477.6k",
			},
		},
		["restoration"] = {
			["Raiding"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmZGLzGbGWAAAAAAgZMLjx2MzMTmtFmZaMDzshFzMDGDzyYAAM",
				popularity = "14.1%",
				dps = "43.3k",
				hps = "423.6k",
			},
			["MythicPlus"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMjZmlZGmhZbsYGAAAAAAgZmZZMz2MzQmtFmZaYGGGLzYmZhFWmFGAAD",
				popularity = "11.5%",
				dps = "97.1k",
				hps = "176.9k",
				keystone = "+19"
			},
		},
	},
	["mage"] = {
		["arcane"] = {
			["MythicPlus"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAMjZhNLYmxMzCw8AzYMNzsMzAAAAAAYAAAAAAAAAAAAYBglZMMzYMMmZmZMzMmZmZGGD",
				popularity = "44.2%",
				dps = "479.5k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMbmtZBzwYW8A8AmZYMNzsMDAAAAAADAAAAAAAAAAAAbAsMjhZGjhxMzMjZmxMzMzwYA",
				popularity = "38.8%",
				dps = "487.1k",
			},
		},
		["fire"] = {
			["Raiding"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgBAAAAAYMzMzMmxMzYxYmh5BwMLzgZhBAAAAAAA",
				popularity = "46.5%",
				dps = "437.1k",
			},
			["MythicPlus"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYGMbzCmhZmNDMzMmGzMmBAAAAAgBAAAAAYmZmZmxMmZGLGzMMYmZZGLGMAAAAAAAA",
				popularity = "36.7%",
				dps = "271.7k",
				keystone = "+16"
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYjNLYmxMzCMmZmGjxYmZGGmBmZmZmZmZmZmZmZGzAAAAAAAAAAAAYWAAAAAAAAA",
				popularity = "48.5%",
				dps = "512.9k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwYWMYmZmGjxYmxwMzMMzMzMzYmZmZGzMYGAAAAAAAAAAAADAAAAAAAAA",
				popularity = "65.0%",
				dps = "517.8k",
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["MythicPlus"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAwMjZWmZG2mZmZxMmZAAzAAAAAAMDAAAAAAAAMDLA",
				popularity = "20.6%",
				dps = "558.9k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MMmNzMDz2AAAAzMjZWMzMWMzMLMzMDAYGAAAAAgZAAAAAAAAAzMbA",
				popularity = "21.7%",
				dps = "494.7k",
			},
		},
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNzMmZmlZWmZbxMDAAAAMmhlZmZGAAAAAADAAAAAAAMmBAA",
				popularity = "20.9%",
				dps = "386.6k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFjZGzsY2MWMzAAAAAjZmZZmZmBAAAAAwAAAAAAAYGjZAA",
				popularity = "13.6%",
				dps = "450.2k",
			},
		},
		["demonology"] = {
			["MythicPlus"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAAAAAAYmxM2mZmttZmZmxYYGzYMjBzAAAA",
				popularity = "18.6%",
				dps = "355.4k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAAAAAAYmZGz2YmFzMzMjxMGmxMzgxMAAA",
				popularity = "27.0%",
				dps = "456.8k",
			},
		},
	},
	["monk"] = {
		["mistweaver"] = {
			["MythicPlus"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWYmlxMmxMzM2w2sMbDsNbbLzMLLGEzMWYGmhBWmZmhZbMGmlZCAAAAAAAAAAAA",
				popularity = "19.8%",
				dps = "78.1k",
				hps = "171.0k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWsNWGAzMzY7BYx2sNzsYZW2WmZWWANzMzswMMzihZWMzMMbMGsQAAAAAAAAAAAAbA",
				popularity = "23.4%",
				dps = "26.9k",
				hps = "460.4k",
			},
		},
		["brewmaster"] = {
			["MythicPlus"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMYmFzDsNzMzYAAAAAAAssACzAzwMLmxYbGzwswMjlZ5Bm22egFbjZmZ2AAAAAAAAAMYB",
				popularity = "6.5%",
				dps = "204.5k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMjlZsNzMzAAAAAAAglFQYGYGmZhxYbmZGmlhZsNLz02mFbzMjZ2AAAAAAAAAmBb",
				popularity = "23.2%",
				dps = "293.8k",
			},
		},
		["windwalker"] = {
			["Raiding"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMzghhZZGGmBAAAAAAAAAAAstMjRYGYGG2MzYbGzwsNMzwyMBAw2MzYmZMz2MAAAAAAAA",
				popularity = "49.0%",
				dps = "538.8k",
			},
			["MythicPlus"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYYGzyMjxMzAAAAAAAAAAAAbLzYEmhxMMsZmxyMmhZDzMsMTAAsMmhZGzsNDAAAAAAA",
				popularity = "16.3%",
				dps = "395.3k",
				keystone = "+15"
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["MythicPlus"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWowMzMMMzAmZmZmZsAbYzMzsMzwYmZmx2MGDzM2ALAYAAAAAAAAYmZM",
				popularity = "44.1%",
				dps = "589.2k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWogZmhhZGwMDzMzsAbjxYmZbGbGzMmx2MmZMjxGYBADAAAAAAAAzMjB",
				popularity = "45.8%",
				dps = "507.4k",
			},
		},
		["feral"] = {
			["MythicPlus"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZ2mNzsYmZmZWmNYbmZmxMDAAAAAwWwYGwYgmZMDzMzsMDbzMAAAAAAAAAAAAAAAAgZGA",
				popularity = "40.4%",
				dps = "507.0k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMz2YMLmZMzsMbM2mZmxMzAAAAAAsEwMgxANzYGmZmxMmtZGAAAAAAADAAAAAAAAAmZA",
				popularity = "55.4%",
				dps = "576.8k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYDmZmFzyMjBLbstMbzMAAAAAAAAAAAAWGMYGYEMmxMmZGzyQbMAAAAAgBwAmZAAAAAAAAMzA",
				popularity = "10.0%",
				dps = "68.4k",
				hps = "157.5k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbDzMDzCmxYbzYbMzAAAAAAAAAAAAYDGmxMmRzMwDMjZmZmBTbzAAAAAAAAwYAAAAAAAAGjB",
				popularity = "23.9%",
				dps = "40.6k",
				hps = "523.8k",
			},
		},
		["guardian"] = {
			["MythicPlus"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxYmxsMsMzMjxMLMMzsYBgxgZmZimZmZmZGzCsxAAAAAAAmxwAAAAAAAAAmZGA",
				popularity = "26.1%",
				dps = "231.9k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxYmZmlZsMzYwYxDMMzsYZAMgZmZimZmZmZGDDbMAAAAAAghZAAAAAAAAAMzMA",
				popularity = "19.9%",
				dps = "284.6k",
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			["MythicPlus"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmxMzgZmZMmJzMzAAAAAAAmthxMMzMbmZ2mtxYgZYssBAAAjZmxA",
				popularity = "36.2%",
				dps = "517.5k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZMmZGMzMjxMhZGAAAAAAwsNMmZMzMbzMz2sNGDMDjlNAAAYMzMGA",
				popularity = "59.3%",
				dps = "536.0k",
			},
		},
		["vengeance"] = {
			["MythicPlus"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMMjhZkZmhZYmZbmhZsNzwYGMGz2MzsZmZbmhZAAAAAAAAwMzAA",
				popularity = "11.9%",
				dps = "291.9k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMLzMMjtZMjZMDzMjZGbjZYGMAAAAAAAAYmZGA",
				popularity = "14.1%",
				dps = "289.9k",
			},
		},
	},
	["evoker"] = {
		["preservation"] = {
			["MythicPlus"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mtBGzMjZZGzYADAAmZMjBjxMjYmBAAAYmZmM2mZMmZGAAAAAAAGA",
				popularity = "15.3%",
				dps = "76.9k",
				hps = "134.5k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZ2mtZwMzMjZBzsxMAAAzMmxgxYmRYGAAAgZmZyMmZMLzMDAGAAAAAAA",
				popularity = "11.7%",
				dps = "40.3k",
				hps = "448.5k",
			},
		},
		["devastation"] = {
			["Raiding"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmBzsZGMgBGzMNjZmMbjlZmZmhxMbzAmxMbjZmtxMwADAAAAAAA",
				popularity = "23.7%",
				dps = "499.8k",
			},
			["MythicPlus"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAeAzgZGzMmZwMzCGmpZMzkZbsMjZmhxMLzAmxYbMzsNmBzAAAAAAAA",
				popularity = "24.1%",
				dps = "506.3k",
				keystone = "+18"
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMLjlZmZGLDmZWmBzYmNAAAAAAAAMzADGjZqhZmBAAAAzMzsNmZMmZgx2MAAAAAAYG",
				popularity = "32.0%",
				dps = "358.4k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMGbzMzMWGMzsMzwMmZDAAAAAMAAYmBAGzUzYmZAAAAwMmZbMzsNmZgx2MAAAAAAYG",
				popularity = "24.0%",
				dps = "536.1k",
			},
		},
	},
}
addonTable.DB = talentData