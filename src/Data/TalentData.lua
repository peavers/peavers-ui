local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["warrior"] = {
		["fury"] = {
			["MythicPlus"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAAagxAjhZYMmZmNYYmZMMDzMbbzMmZmNmZMzMMDb2mhZGDAAAEGAAAAAYDA",
				popularity = "26.0%",
				dps = "713.8k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYWGmZ2ghZMGmhZmttZGzMzGzMmZGmhNbzwMjBAAACDAAAAAsBA",
				popularity = "17.9%",
				dps = "619.1k",
			},
		},
		["arms"] = {
			["MythicPlus"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYsNzMMmxMzitllZmBAAAgBTDjhlZMDMzyYmZwMDjZgZYAAAAAAAwMmlxYA2CAAAAAAA",
				popularity = "15.9%",
				dps = "640.7k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAgtZMjxMzMzmlllZGAAAAMYaYGsYMDMjxMzgZGGGDzwAAAAAAAgZMbzMDABAAAAAADA",
				popularity = "24.4%",
				dps = "661.9k",
			},
		},
		["protection"] = {
			["Raiding"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzwMzgZbmlZmZ22YMMNDMzMAMmZGwMzADzwAAAAAAAmZAAziNADAAAAAsZA",
				popularity = "31.7%",
				dps = "268.3k",
			},
			["MythicPlus"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmZGmZbmlZmZ2wYQjBzMDgFGzwGzMjZgZMDAAAAAAYmBAYZbDwAAAAAAYGA",
				popularity = "18.3%",
				dps = "289.3k",
				keystone = "+18"
			},
		},
	},
	["paladin"] = {
		["protection"] = {
			["Raiding"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMzixyDYmZmhNzMjZeQYYGAAgBAAAAAAg0wMzsYgZGmZWMMzMbAwYAAMgBYAAAAAAYA",
				popularity = "10.2%",
				dps = "236.3k",
			},
			["MythicPlus"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjZYWM2eAzYmxymZmxMGzYGAAgBAAAAAAg2aYmZYADmZWMYmZDAGDYAMgBYAAAAAAYG",
				popularity = "28.8%",
				dps = "215.4k",
				keystone = "+19"
			},
		},
		["holy"] = {
			["MythicPlus"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAADAAGAwYAAAAsNmZmZbMzsYGziZYZGYZbbm2KMzsYwMzwYWAzMGAwAAbADzMDGAAAAAAA",
				popularity = "16.0%",
				dps = "91.7k",
				hps = "190.8k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAGDAAwAsMzMzYbMzssZMLMsMjxsttZargZWmBzMDjZBMzYAADAsBMMzMeADAAAAAAA",
				popularity = "9.3%",
				dps = "66.9k",
				hps = "452.4k",
			},
		},
		["retribution"] = {
			["MythicPlus"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAjptlltZmtltZGbzDMzyyYbAAAAAAY2myMzwAzMMmlxgZgZZGbDDGMYZhNAAAAAAAAA",
				popularity = "12.3%",
				dps = "581.7k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAMttssNzstsNGbjZ22mZDAAAAAAjpMzMbGYGMmlxwMDzysMDDDGMGLLsNAAAAAAAAA",
				popularity = "39.9%",
				dps = "629.0k",
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["MythicPlus"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADAAAAAAAzYmHYMzYYmZMDjxYmxMzMzkZYMzYmZMzYGGjZmhxMMmBb",
				popularity = "58.5%",
				dps = "598.3k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADAAAAAAAzYYMzMDzMMDzwsMzYmZmZyMMmZMzMmZMDjxMzwYGGzgN",
				popularity = "55.3%",
				dps = "717.8k",
			},
		},
		["marksmanship"] = {
			["MythicPlus"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZMMjxMmxMzMzMMzYYMbAAAAAAAYGGzYmZmZmJzYMMzwYYmlZwG",
				popularity = "42.1%",
				dps = "584.6k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxMzMYmZGmZmxMzMjxMjZAAAAAAAAmhxMzMzMmRzMGDzMwMmxMjB",
				popularity = "30.8%",
				dps = "512.1k",
			},
		},
		["survival"] = {
			["Raiding"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMAAAAAAmZmtZMzMMzYmhZGmZGzMGAAAAAAAAAAAAAA0MMjZmZmxMYYMMzwYYGzMmF",
				popularity = "51.1%",
				dps = "481.2k",
			},
			["MythicPlus"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMAAAAAAmZsNjZmZGzYmxMGjxMzMDAAAAAAAAAAAAAA0MMmxMzMmZYYMMzwsMMzyMYD",
				popularity = "46.9%",
				dps = "539.8k",
				keystone = "+18"
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			["MythicPlus"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAwMjZmxMWmBAAAAAgZB2mBAAAAAg22mZGegZGjZmZZWGMGzMmZmZmZsttMmBAAAAAAAA",
				popularity = "23.5%",
				dps = "490.1k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhZmxyMAAAAAAMbwyMAAAAAA022MzwDMzYMzMLz2YMGMzMzMzYmNLjZAAAAAAAA",
				popularity = "55.3%",
				dps = "559.7k",
			},
		},
		["outlaw"] = {
			["MythicPlus"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwwYmZwMzwMMMzMzMjZmplZMLzAAAAAAgttxM8AzMjFmZZ2GAAAAzMDAAAAAAwMA",
				popularity = "32.2%",
				dps = "397.4k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwMzYGDmZGmhBzYmZMzMtMjZZGAAAAAAstNzMYmZsMmZZ2GAAAAmZGAAAAAAwMA",
				popularity = "49.7%",
				dps = "434.9k",
			},
		},
		["subtlety"] = {
			["Raiding"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAzyYmlJDLbYGjhZmZmZmZGz2YMzstNzMmZmBjZWmtBAAAgZwAAAAAAAG",
				popularity = "51.5%",
				dps = "509.7k",
			},
			["MythicPlus"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAMDAAAAAAYWGzsMZYBmxYmZmZmZmZmxsMGGbbjZMzMjxYmlZbAAAAYGMAAAAAAgB",
				popularity = "51.3%",
				dps = "442.8k",
				keystone = "+18"
			},
		},
	},
	["priest"] = {
		["holy"] = {
			["MythicPlus"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAegNjZZGMzYMwMmhxyMzsMAAAAgFbzGWmZGYhZZGzMGjlFYmRNLDAAAAAAA",
				popularity = "29.0%",
				dps = "148.7k",
				hps = "158.7k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAbDYbmZmZGzwsNGzMYZGWGAAAAwilZbYbmZwswwMzMGssAzYqZBAAAAAAA",
				popularity = "57.0%",
				dps = "46.9k",
				hps = "458.5k",
			},
		},
		["discipline"] = {
			["MythicPlus"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlxMD2GjZmxMbmtZmZmhBAAAAAAAAAAAWsMbYbmZwswwYMGzsw2MNzELDAAAAAAA",
				popularity = "21.4%",
				dps = "121.6k",
				hps = "139.2k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtxYw2YMzMmhZZmZmZYGAAAAAAAAAAAsYZ2eAz2MDMLMMYMMLmtZaMxyYAAAAAAA",
				popularity = "8.6%",
				dps = "94.3k",
				hps = "383.3k",
			},
		},
		["shadow"] = {
			["Raiding"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAgBzMDAAAAAAAAAAAAwws4BYmZ2mNmZmZ2GzYwswMzMjZjBGjhZxsN1MDWwMAAAAAAA",
				popularity = "22.9%",
				dps = "481.9k",
			},
			["MythicPlus"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMDDDAAAAAAAAAAAAwYmFzYmZ2sxMzMz2YYwsxMzMMbMwYMjZxsN1MDWwMAAAAAAA",
				popularity = "23.3%",
				dps = "558.9k",
				keystone = "+19"
			},
		},
	},
	["death-knight"] = {
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAAgZGjZMGzYYmZmZmxMmJzYYYGMzYmhZmZmZmZZmBAAAAAAAAAAAAAAAAAAzMzYGA",
				popularity = "68.3%",
				dps = "718.8k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAA8AAMzYmZMGDzYmZmZmxwMZGDDwMzYmhZmZmZmZZmBAAAAAAAAAAAAAAAAAAzMzYGA",
				popularity = "40.4%",
				dps = "622.7k",
			},
		},
		["blood"] = {
			["MythicPlus"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghxMzYMzMmZYYmZmmZMMzYGDAAAAAmZmZmZmZmNzMjBAAAzMzMAAAAAAAAAAAYGsB",
				popularity = "15.4%",
				dps = "313.5k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzMjZmxYsMjZmZaGGmZMjZAAAAAYmZmZmZmZ2MzMGAAAMzMzMAAAAAAAAAAAYwC",
				popularity = "17.9%",
				dps = "299.1k",
			},
		},
		["unholy"] = {
			["Raiding"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMzMjHYYYGzMzMNMmZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGAAAAAADgZA",
				popularity = "51.4%",
				dps = "542.4k",
			},
			["MythicPlus"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMMDDzMjZmphxMzYGDAAAAAAAAghZGzYmZmZAAbgZxYmZmhZGAAAAAAzAMDA",
				popularity = "55.8%",
				dps = "652.9k",
				keystone = "+19"
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			["MythicPlus"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMLz2yYGGzMbbzMjZmxYAAAAAAAAAAAAAMLTzAz2CzMNGzMjhlZMDmlxiFzMDYmxYA",
				popularity = "32.9%",
				dps = "606.3k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMLz2yYwYmZZbmZmZmxYAAAAAAAAAAAAAw0MzwstYmZiZMzsglZMDGDzyMzMGYGjB",
				popularity = "29.4%",
				dps = "611.4k",
			},
		},
		["enhancement"] = {
			["MythicPlus"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzyMDGmZYmZmNsMjBAAAAAAAAAAAAAAAAAAmlJzgZhhxYMzMLGLzMTW2sMMmZAAM",
				popularity = "64.1%",
				dps = "493.0k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzyMDYmZYmZmNsMDAAAAAAAAAAAAAAAAAAwsMZGMLLmZmZMMzshlZmJwYZMzAAMD",
				popularity = "85.0%",
				dps = "473.0k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMjZmlZGmhZbsYGAAAAAAgZmZZMzyMzQmNMz0YmxMwyMmBzCmlZGAAD",
				popularity = "9.2%",
				dps = "113.3k",
				hps = "169.1k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmZGLzGbGWAAAAAAgZMLjx2MzMTmtFmZaMDzshFzMDGDzyYAAM",
				popularity = "21.1%",
				dps = "45.1k",
				hps = "412.3k",
			},
		},
	},
	["mage"] = {
		["arcane"] = {
			["Raiding"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMbmtZBzwYW8A8AmZYMNzsMDAAAAAADAAAAAAAAAAAAbAsMjhZGzMMmZGjZmxMzMzwYA",
				popularity = "34.9%",
				dps = "471.2k",
			},
			["MythicPlus"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAMgZbWMmhZmFYMzwYamZZMAAAAAAGAAAAAAAAAAAAWAYZGDzMGDjZmZGzMjZmZmhxA",
				popularity = "50.4%",
				dps = "475.7k",
				keystone = "+19"
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMYjtZxYGPwMzCMmZ0YMzYMzwwMwMzMzMzMzMzMzMzYGAAAAAAAAAAAAzCAAAAAAAAA",
				popularity = "61.5%",
				dps = "498.6k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwMziBzYmGjxYmxwMzMMzMzMzYmZmZGzMYGAAAAAAAAAAAAzCAAAAAAAAA",
				popularity = "66.5%",
				dps = "518.3k",
			},
		},
		["fire"] = {
			["Raiding"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgBAAAAAYMzMzMmxMzYxYmh5BwMLzgZhBAAAAAAA",
				popularity = "46.3%",
				dps = "451.2k",
			},
			["MythicPlus"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAMjhZbWwMjZmFDMzMmGjxMAAAAAAMAAAAAAzMzMzMmxMzYxYmhBzMLzYxgBAAAAAAA",
				popularity = "61.1%",
				dps = "463.5k",
				keystone = "+17"
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["MythicPlus"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAwMjZWmZG2mZmZxMmZAAzAAAAAAMDAAAAAAAAMDLA",
				popularity = "25.6%",
				dps = "470.8k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MMmNzMDz2AAAAzMjZWMzMWMzMLMzMDAYGAAAAAgZAAAAAAAAAzMbA",
				popularity = "48.0%",
				dps = "443.5k",
			},
		},
		["demonology"] = {
			["MythicPlus"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAAAAAAYGmZ2GzsZmZmZMmxMmZGDDzMAAA",
				popularity = "23.9%",
				dps = "443.4k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAAAAAAYmZGz2YmFzMzMjxMGmxMzgxMAAA",
				popularity = "28.0%",
				dps = "434.8k",
			},
		},
		["destruction"] = {
			["Raiding"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzihxsZmZY2mFzYGzsY2MWMzAAAAAjZmZZmZmBAAAAAgBAAAAAAwMGzAA",
				popularity = "11.9%",
				dps = "462.7k",
			},
			["MythicPlus"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNzMmZmlZWmZbxMDAAAAMmhlZmZGAAAAAAGAAAAAAAYMDAA",
				popularity = "20.2%",
				dps = "483.7k",
				keystone = "+18"
			},
		},
	},
	["monk"] = {
		["brewmaster"] = {
			["MythicPlus"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAMGjZwMLmHYbmZmxAAAAAAAYZBEmBmhZWMD2mxMMLMzYZWmpttHYx2YmZmNAAAAAAAAAD2A",
				popularity = "10.9%",
				dps = "227.0k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAMGjZYGLzYbmZmBAAAAAAALLgwMwMMzCjx2MzMMLDzYbWmptNL2mZGzsBAAAAAAAAMD2A",
				popularity = "19.8%",
				dps = "293.1k",
			},
		},
		["mistweaver"] = {
			["MythicPlus"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMswMLjZMjZmZshtZZ2GYb22WmZWWMoxMjFmhZYglZmZY2YMMLzEAAAAAAAAAAAA",
				popularity = "26.2%",
				dps = "100.2k",
				hps = "168.0k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMsYbsMAmZmx2DwitZbmZxysstMzssAamZmZhZYmFDzsYmZY2YMYhAAAAAAAAAAAA2A",
				popularity = "27.2%",
				dps = "30.3k",
				hps = "446.9k",
			},
		},
		["windwalker"] = {
			["MythicPlus"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAwMmZwwMmlZGjZmBAAAAAAAAAAA2WwMhZYmZYYbmhtZMDzGzMYZmAAYZMDzMmZbGAAAAAAAA",
				popularity = "23.3%",
				dps = "483.4k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYmZZmBDDzyMMMDAAAAAAAAAAAYbZGjghxMMsNmx2MmhZbYmhlZCAgtZmxMzYmtZAAAAAAAA",
				popularity = "49.0%",
				dps = "515.2k",
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["MythicPlus"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWogZmhhZGwMzYmZmFYjZzMzsMzwYmZmx2MGDzM2ALAYAAAAAAAAYmZM",
				popularity = "50.2%",
				dps = "564.3k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWogZmhhZGwMDzMzsAbjxYmZbGbGzMmHw2MbzMmxYDsAgBAAAAAAAgZmxA",
				popularity = "35.0%",
				dps = "459.1k",
			},
		},
		["guardian"] = {
			["Raiding"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxYmZmlZsMzYwYxDMMzsYZAMgZmZimZmZmZGDDbMAAAAAAghZAAAAAAAAAMzMA",
				popularity = "16.7%",
				dps = "276.0k",
			},
			["MythicPlus"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxYmxsMsMzMjxMLMMzsYbAMGMzMT0MzMMzYWMsxAAAAAAAmxwAAAAAAAAAmZGA",
				popularity = "25.3%",
				dps = "247.3k",
				keystone = "+19"
			},
		},
		["feral"] = {
			["Raiding"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMz2YMLmZMzsMbM2mZmxMzAAAAAAsEwMgxANzYGmZmxMmtZGAAAAAAADAAAAAAAAAmZA",
				popularity = "50.3%",
				dps = "533.0k",
			},
			["MythicPlus"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZ2mNzsYmZmZWmNYbmZmxMDAAAAAwSAmZwwMjmZMzYmZmlZYjBAAAAAwAAAAAAAAAAgxA",
				popularity = "38.7%",
				dps = "467.4k",
				keystone = "+16"
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYDmZmFzyMjBLbstMbzMAAAAAAAAAAAAWGMYGYEMmxMmZGzyQbMAAAAAgBwAmZAAAAAAAAMzA",
				popularity = "9.4%",
				dps = "92.5k",
				hps = "176.4k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbDzMDzCmxYbzYbMzAAAAAAAAAAAAYZAmhxMamBMjZmZMMTbzAAAAAAAAwYAAAAAAAAMzwA",
				popularity = "27.7%",
				dps = "41.1k",
				hps = "532.1k",
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			["MythicPlus"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmxMzgZmZMmJzMzAAAAAAAmlhxMMzMbmZ2mtxYgZYssBAAAGzMjBA",
				popularity = "25.2%",
				dps = "522.9k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZMmZGMzMjxMhZGAAAAAAwsNMmZMzMbzMz2sNGDMDjlNAAAwYmZMA",
				popularity = "60.0%",
				dps = "495.2k",
			},
		},
		["vengeance"] = {
			["MythicPlus"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMMjhxkZmhZYGbzMmZsNzwYGMGz2MzwMz2MjZGAAAAAAAAYmZA",
				popularity = "14.8%",
				dps = "269.1k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMLzMMjtZMjZMDzMjZGbjZYGMAAAAAAAAwMzMA",
				popularity = "15.7%",
				dps = "276.3k",
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["MythicPlus"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzAzYmxMDMPAMMTzYmJz2YZmZmZYMzyMAzMz2YmZZmZgBGAAAAAAA",
				popularity = "43.3%",
				dps = "467.1k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmBzsZGMgBGzMNjZmMbjlZmZmhxMbzAmxMbjZmtxMwADAAAAAAA",
				popularity = "26.3%",
				dps = "505.3k",
			},
		},
		["preservation"] = {
			["MythicPlus"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mtBGzMjZZGzYAAAwMjZMzixYmRMzAAAAMzMyYZmxYMDAAAAAAADA",
				popularity = "14.3%",
				dps = "81.9k",
				hps = "149.5k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZ2mtZwMzMjZBzsxMAAAzMmxgxYmRYGAAAgZmZyMmZMLzMDAGAAAAAAA",
				popularity = "9.9%",
				dps = "49.7k",
				hps = "429.2k",
			},
		},
		["augmentation"] = {
			["Raiding"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMGbzMzMWGMzsMzwMmZDAAAAAMAAYmBAGzUzYmZAAAAwMmZbMzsNmZgx2MAAAAAAwM",
				popularity = "26.4%",
				dps = "532.8k",
			},
			["MythicPlus"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMLjlZmZGLDmZWmBzYmNAAAAAwAAgZGMDGDTNMzMAAAAYmZmtxMjxMDM2mBAAAAAAmB",
				popularity = "29.6%",
				dps = "417.1k",
				keystone = "+19"
			},
		},
	},
}
addonTable.DB = talentData