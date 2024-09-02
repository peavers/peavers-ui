local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["paladin"] = {
		["protection"] = {
			["Raiding"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMziZWwMzMsZmZYYGmBAAYAAAAAAAINMzMLGYmhZmFDzMzGAMGAADYAGAAAAAAzA",
				popularity = "8.2%",
				dps = "333.6k",
			},
			["MythicPlus"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjZYWM2eAzYmxymZmxMGzYGAAAAAAAAAA0WDzMziBmZYmZxAmNAYMwAwAGgBAAAAAwMA",
				popularity = "24.7%",
				dps = "233.8k",
				keystone = "+17"
			},
		},
		["holy"] = {
			["Raiding"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAGDAAwAsNzMzYGzMLMmlZGWmBmtNTbFMzyMYmZYMLgZGDAYAgNghZmxDYAAAAAAwA",
				popularity = "7.7%",
				dps = "47.4k",
				hps = "429.9k",
			},
			["MythicPlus"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAADAAGAwYAAAAsNmZmZGzMLMmFzwyMwstNTbFmZWMYmZYMLgxYAAzAgNghZmZYAAAAAAA",
				popularity = "14.3%",
				dps = "57.7k",
				hps = "151.8k",
				keystone = "+17"
			},
		},
		["retribution"] = {
			["Raiding"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAjpNLbzMbLbjx2YmttZ2AAAAAAwYimZ2MwMYMLjhZGmlZZGGGMMjxyCbAAAAAAAAA",
				popularity = "38.5%",
				dps = "628.1k",
			},
			["MythicPlus"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAjpNLbzMbLbzM2mZmllx2AAAAAAwsNRzMMwMDjZZMYGYWmx2wgBjxyCbAAAAAAAAA",
				popularity = "15.3%",
				dps = "563.0k",
				keystone = "+18"
			},
		},
	},
	["warrior"] = {
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAA4BEDAAAAzMzMmZGmZbmlZmZ2wYQjBjZAsMmZG2YmZMDMjZAAAAAAAzMAALbbAGAAAAAYjB",
				popularity = "23.8%",
				dps = "338.3k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzwMzgZbmlZmZ22YMMNDMzMAMmZGwMzADzwAAAAAAAmZAAziNADAAAAAsZA",
				popularity = "27.6%",
				dps = "338.1k",
			},
		},
		["fury"] = {
			["MythicPlus"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagxAMMDjhZsBDzMzMMjZGbbzMmZmNmZegZmhZYz2MMzYAAAgwAAAAAAbA",
				popularity = "32.4%",
				dps = "630.0k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYWGmZ2ghZMGmhZssNzYmZ2Ym5BmZGmhNbzwMjBAAACDAAAAAsBA",
				popularity = "16.9%",
				dps = "647.9k",
			},
		},
		["arms"] = {
			["Raiding"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAAzYmZMzMzsZZZZmBAAAADmGmBLGzAzYMzMYmhhxwMMAAAAAAA4BGz2MzMACAAAAAAGA",
				popularity = "31.4%",
				dps = "684.8k",
			},
			["MythicPlus"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYsNzMMmxMzitllZmBAAAgBTDzMsMMDMzCzMDmZYMDMjZAAAAAAAwMmlxYA2CAAAAAAA",
				popularity = "8.6%",
				dps = "517.5k",
				keystone = "+14"
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["Raiding"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgBAAAAAAgZMMmZmhZGmhZYWmZMzMzMZGGzMmZGzMmhxYmZYMDjZwG",
				popularity = "61.7%",
				dps = "669.0k",
			},
			["MythicPlus"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgBAAAAAAgZMzDMmZMMzMmhxYMzYmZmZyMMmxMzMmZMDjhZGmlBzyMYD",
				popularity = "67.8%",
				dps = "504.0k",
				keystone = "+17"
			},
		},
		["marksmanship"] = {
			["MythicPlus"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMGmxYGzYmZmZGmZMMmNAAAAAAAMDjZMzMzMzkZMGmZYMMzyMYD",
				popularity = "31.7%",
				dps = "591.9k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmZGMzMDzMzYmZmxYmxMAAAAAAAAzwYmZmZGzoZGjhZGYGzYmxA",
				popularity = "26.4%",
				dps = "606.7k",
			},
		},
		["survival"] = {
			["Raiding"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMAAAAAAzMz2MmZGmZMzwMDzMjZGDAAAAAAAAAAAAAAaGmxMzMzYGMMGmZYMMjZGzC",
				popularity = "58.3%",
				dps = "515.1k",
			},
			["MythicPlus"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMAAAAAAzM2mxMzMjZMzYGjxYmZmBAAAAAAAAAAAAAAaGGzMzMzYmhBGmZYMmZWmBb",
				popularity = "40.5%",
				dps = "431.3k",
				keystone = "+14"
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			["Raiding"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhZmxyMAAAAAAMLwyMAAAAAA022MzwDMzYMzMLz2YMGMzMzMzYmNLjZAAAAAAAA",
				popularity = "62.1%",
				dps = "628.1k",
			},
			["MythicPlus"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmZmxMAAAAAAAzyMmtZAAAAAAotlZmBzMGzMzysNGDmZmZGMzMbWGDAAAAAAgB",
				popularity = "26.0%",
				dps = "538.6k",
				keystone = "+17"
			},
		},
		["outlaw"] = {
			["MythicPlus"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwwYmZwMzwMMMzMzMjZmplZMLzAAAAAAgttZmhHYmhFmZZ2GAAAAmZGAAAAAAYG",
				popularity = "48.1%",
				dps = "220.8k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwMzYGDmZGmhBzYmZMzMtMjZZGAAAAAAstNzMYmZsMmZZ2GAAAAmZGAAAAAAYG",
				popularity = "43.3%",
				dps = "525.8k",
			},
		},
		["subtlety"] = {
			["Raiding"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAzyYmlJDLbYGjhZmZmZmZGz2YMzstNzMmZmBjZWmtBAAAgZwAAAAAAAD",
				popularity = "54.6%",
				dps = "541.9k",
			},
			["MythicPlus"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAzyYmlJDLwMGzMzMzMzMzMmtxwYbxMjZmZwYmlZbAAAAMzgBAAAAAAzA",
				popularity = "33.3%",
				dps = "642.1k",
				keystone = "+15"
			},
		},
	},
	["priest"] = {
		["discipline"] = {
			["MythicPlus"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlxYw2YMzMmZzsMzMzMMDAAAAAAAAAAAWsMbMbzMwsYGzYMGjF2mpZmYZAAAAAAA",
				popularity = "16.7%",
				dps = "63.9k",
				hps = "114.1k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtxYw2YMzMmZzsMzMzMMDAAAAAAAAAAAWsMbjZbmBmFGmZmxgF2mpxELAAAAAAA",
				popularity = "8.6%",
				dps = "86.9k",
				hps = "415.7k",
			},
		},
		["shadow"] = {
			["Raiding"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAgBzMDAAAAAAAAAAAAwws4BYmZ2mNmZmZ2GzsMYWYmZmxsxAjxwsY2mamBLYGAAAAAA",
				popularity = "34.5%",
				dps = "520.5k",
			},
			["MythicPlus"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMYYAAAAAAAAAAAAAGzsYGzMzmNmZmZ2GzAmlHwMzMjZjBGjZMLmtpmZwCmBAAAAAA",
				popularity = "26.4%",
				dps = "486.3k",
				keystone = "+16"
			},
		},
		["holy"] = {
			["MythicPlus"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAYZY8ALzgZmZMwMmhxyMzsMAAAAA2mtHglZmHAziZWmxMjxYZxGmRNLAAAAAAA",
				popularity = "16.9%",
				dps = "120.1k",
				hps = "152.1k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAbDYbmZmZGzwsNGzMYZGWGAAAAYWsMbDbzMDmFGmZmxglFYGTNLAAAAAAA",
				popularity = "56.7%",
				dps = "47.3k",
				hps = "467.2k",
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["MythicPlus"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghxMzMjZMmZsMMmZaGGmZmZMAAAAAYmZmZmZmZ2MzMGAAAMzMzAAAAAAAAAAAwMYD",
				popularity = "10.0%",
				dps = "270.2k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzMjZmxYsMjZmZaGGmZMjZAAAAAYmZmZmZmZ2MzMGAAAMzMzMAAAAAAAAAAAMYD",
				popularity = "10.1%",
				dps = "317.9k",
			},
		},
		["unholy"] = {
			["MythicPlus"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGjZmZYYGzMzMNjhZGzYAAAAAAAAAMMzYGzMzMDAYDMLGzMzMMzAAAAAAYAmBA",
				popularity = "45.8%",
				dps = "493.2k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMjZ8ADDzYmZmphZmZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGAAAAAgBwMA",
				popularity = "58.4%",
				dps = "529.4k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAAgZGjZmxYYGzMzMzMGmJzYYYGMzYmhZmZmZmZZmBAAAAAAAAAAAAAAAAAgZmZMDA",
				popularity = "66.2%",
				dps = "658.8k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAA8AAMzYmZMGDzYmZmZmxwMZGDDwMzYmhZmZmZmZZmBAAAAAAAAAAAAAAAAAgZmZMDA",
				popularity = "25.9%",
				dps = "597.8k",
			},
		},
	},
	["mage"] = {
		["arcane"] = {
			["MythicPlus"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAMzgZzCmhZmFDMzMGTjZZmBAAAAAwAAAAAAAAAAAAwGALzYYmxYYMzMzYmZMzMzMMG",
				popularity = "38.0%",
				dps = "465.2k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMbmtZBzwYW8A8AmZYMNzsMDAAAAAADAAAAAAAAAAAAbAsMjhZGjhxMzMjZmxMzMzwYA",
				popularity = "34.0%",
				dps = "477.2k",
			},
		},
		["fire"] = {
			["MythicPlus"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAMjZxsZBzMmZWAmZYaMzYmBAAAAAwAAAAAAMzMzMzYGzMjFjZGGMzsMjFDGAAAAAAAA",
				popularity = "40.0%",
				dps = "297.2k",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgBAAAAAYMzMzMmxMzYxYmh5BwMLzgZhBAAAAAAA",
				popularity = "40.4%",
				dps = "428.9k",
			},
		},
		["frost"] = {
			["Raiding"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwYWMYmZmGjxYmxwMzMMzMzMzYmZmZGzMYGAAAAAAAAAAAADAAAAAAAAA",
				popularity = "59.6%",
				dps = "519.7k",
			},
			["MythicPlus"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwMziBzYmGjxYmZGGmBmZmZmZmZmZmZmZGzAAAAAAAAAAAAYWAAAAAAAAA",
				popularity = "65.7%",
				dps = "443.1k",
				keystone = "+15"
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			["MythicPlus"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMbzyyMjxgZjxMDmZGAAAAAAAAAAAAgZZaGw2CzMNMzMjZsMzMDYmFLjZmZmZGzwA",
				popularity = "31.1%",
				dps = "605.1k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMLz2yYwYmZZbmZmZmxYAAAAAAAAAAAAAYamZY2WMzMxMmZWwyMmBjhZZmZGDMjxA",
				popularity = "17.0%",
				dps = "608.8k",
			},
		},
		["enhancement"] = {
			["MythicPlus"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzyMDGzMDzMzshlZMDAAAAAAAAAAAAAAAAAAz2kBmlFzMzwYmZ2MWmZmglhxMDAwM",
				popularity = "52.6%",
				dps = "520.4k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzyMDYmZYmZmtZmlZAAAAAAAAAAAAAAAAAAAzykZwssYmZmxwMzCWmZmAjlxMDAwM",
				popularity = "64.8%",
				dps = "570.7k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMjZmlZGmhZbsYAAAAAAAMzMLjZMzMkxiZmpxMDDsMjZsYWmxsMGAAD",
				popularity = "11.8%",
				dps = "67.3k",
				hps = "133.2k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmZGLzGbGWAAAAAAgZMLjx2MzMTmtFmZaMDzshFzMDGDzyYAAM",
				popularity = "12.4%",
				dps = "39.4k",
				hps = "438.7k",
			},
		},
	},
	["warlock"] = {
		["demonology"] = {
			["Raiding"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAAAAAAYmZGz2YmFzMzMjxMGmxMzgxMAAA",
				popularity = "27.6%",
				dps = "462.6k",
			},
			["MythicPlus"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhZmtZegZY2GAAAAAAAAAAzDAAAAAAYmxM2mZmttZmZmxYYGzYMjBzAAAA",
				popularity = "40.7%",
				dps = "363.1k",
				keystone = "+13"
			},
		},
		["affliction"] = {
			["Raiding"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MwsNzMDzyAAAAmZmZWMzMWMzMLMzMDAYGAAAAAgZAAAAAAAAAzMbA",
				popularity = "29.3%",
				dps = "542.3k",
			},
			["MythicPlus"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZY2GAAAwMjZWmZegx2MzMLmxMDAYGAAAAAgZAAAAAAAAgZYB",
				popularity = "21.2%",
				dps = "496.6k",
				keystone = "+16"
			},
		},
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzihxsZmZYWmNzMmZmlZWmZbxMDAAAAMmhlZmZGAAAAAADAAAAAAAMmBAA",
				popularity = "52.4%",
				dps = "333.7k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFjZGzsY2MWMzAAAAAjZmZZmZmBAAAAAwAAAAAAAYGjZAA",
				popularity = "10.9%",
				dps = "466.2k",
			},
		},
	},
	["monk"] = {
		["brewmaster"] = {
			["MythicPlus"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAzYMmBmFzsNmZGDAAAAAAglFMiZGYGGbwYbmZGmNmZsYZm22sZbmZMzGAAAAAAAAYMYB",
				popularity = "5.1%",
				dps = "157.2k",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMjlZsNzMzAAAAAAAglFQYGYGmZhxYZmZGmlhZsNbz02mFbzMjZ2AAAAAAAAAmBb",
				popularity = "23.0%",
				dps = "299.3k",
			},
		},
		["mistweaver"] = {
			["MythicPlus"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWYmlxMmxMzM2w2sMbDsNbbLzMWgpxMjFmhZYYsNzMDzGjBLzEAAAAAAAAAAAwC",
				popularity = "25.2%",
				dps = "78.5k",
				hps = "149.6k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWsNWGAzMzY7BYx2sNzsYZW2WmZWWANzMzswMMzihZWMzMMbMGsQAAAAAAAAAAAAbA",
				popularity = "22.1%",
				dps = "26.0k",
				hps = "449.2k",
			},
		},
		["windwalker"] = {
			["MythicPlus"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYGzYWmZMmZGAAAAAAAAAAAYbZYEzMMmhhNzw2MzMMbDzglZCAglxMMzwsNDAAAAAAA",
				popularity = "18.2%",
				dps = "338.6k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMzghhZZGGmBAAAAAAAAAAAstMjRYGYGG2MzYbGzwsNMzwyMBAw2MzYmZMz2MAAAAAAAA",
				popularity = "46.4%",
				dps = "544.7k",
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["MythicPlus"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWogZmZMMzAmZYmZmFYjZzMzsMzwYmZmx2MGDzM2ALAYAAAAAAAAYmZM",
				popularity = "39.3%",
				dps = "616.6k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWGFmZmhhZGwMDzMGG2GjxMz2M2MmZMjtZMzYGjNwCAGAAAAAAAAmZYA",
				popularity = "49.3%",
				dps = "534.2k",
			},
		},
		["feral"] = {
			["Raiding"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMz2YMLmZMzsMbM2mZmxMzAAAAAAsEwMgxANzYGmZmxMmtZGAAAAAAADAAAAAAAAAmZA",
				popularity = "55.2%",
				dps = "591.9k",
			},
			["MythicPlus"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZ2mNzsYmZmZWmNYbmZmxMDAAAAAwSAzYAzMjmZMDzMzsMMbMAAAAAAAAAAAAAAAAwMzA",
				popularity = "37.5%",
				dps = "393.8k",
				keystone = "+12"
			},
		},
		["guardian"] = {
			["Raiding"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxYmZmlZsMzYwYxDMMzsYBgBMzMT0MzMzMzYWGsxAAAAAAAGmBAAAAAAAAwMzA",
				popularity = "16.0%",
				dps = "291.4k",
			},
			["MythicPlus"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxYmxsMsMzMjxMLMMzsYBgxgZmZimZmZmZGzCsxAAAAAAAmxwAAAAAAAAAmZGA",
				popularity = "27.4%",
				dps = "225.6k",
				keystone = "+15"
			},
		},
		["restoration"] = {
			["Raiding"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbDzMDzCmxYbzYbMzAAAAAAAAAAAAYDGmxMmRzMwDMjZmZmBTbzAAAAAAAAwYAAAAAAAAGjB",
				popularity = "22.2%",
				dps = "38.5k",
				hps = "480.8k",
			},
			["MythicPlus"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYDzMzsYWmZMYZjttxMDAAAAAAAAAAAgtZYwMzMGxAmZmZmZsg2AAAAAAYAAMzAAAAAAAAwMM",
				popularity = "12.6%",
				dps = "116.6k",
				hps = "110.7k",
				keystone = "+17"
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			["Raiding"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZMmZGMzMjxMhZGAAAAAAwsNMmZMzMbzMz2sNGDMDjlNAAAYMzMGA",
				popularity = "58.1%",
				dps = "548.5k",
			},
			["MythicPlus"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmxMzgZmZMmJzMzAAAAAAAmthxMMzMbmZ2mtxYgZYssBAAAjZmxA",
				popularity = "23.3%",
				dps = "399.4k",
				keystone = "+17"
			},
		},
		["vengeance"] = {
			["Raiding"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMLzMMjtZMjZMDzMjZGbjZYGMAAAAAAAAYmZGA",
				popularity = "12.8%",
				dps = "313.3k",
			},
			["MythicPlus"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMMjhZmMzMMDzMbzMMjtZGGzgxY2mZmNzMmZYGAAAAAAAAMzMA",
				popularity = "11.2%",
				dps = "254.8k",
				keystone = "+17"
			},
		},
	},
	["evoker"] = {
		["preservation"] = {
			["MythicPlus"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mtBGzMjZZGzYADAAMMjZgxMjGzMAAAAzMzkhZmHYMzMAAAAAAAMA",
				popularity = "11.6%",
				dps = "63.2k",
				hps = "131.3k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZ2mtZwMzMjZBzsxMAAAzMmxgxYmRYGAAAgZmZyMmZMLzMDAGAAAAAAA",
				popularity = "10.0%",
				dps = "35.2k",
				hps = "454.8k",
			},
		},
		["devastation"] = {
			["MythicPlus"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzMYmNzYmBMYGzMNmZmMbjtxMzMm5BmZbGwMmxYmZbGDMAAAAAAAA",
				popularity = "15.2%",
				dps = "0",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmBzsZGMgBGzMNjZmMbjlxMzMMzMbzAmxMbjZmlxMwADAAAAAAA",
				popularity = "12.6%",
				dps = "523.2k",
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMLjlZmZGLDmZWmBzYmNAAAAAwAAgZGYwYYqhZmBAAAAzMzsNmZWGzMwYbGAAAAAAMD",
				popularity = "41.7%",
				dps = "340.4k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMGbzMzMWGMzsMzwMmZDAAAAAMAAYmBAGzUzYmZAAAAwMmZbMzsNmZgx2MAAAAAAYG",
				popularity = "23.3%",
				dps = "524.5k",
			},
		},
	},
}
addonTable.DB = talentData