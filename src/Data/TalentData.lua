local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["warrior"] = {
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmZGmZbmlZmZ2wYQjBzMDgFGzwGzMjZgZMDAAAAAAYmBAYZbDwAAAAAAMDA",
				popularity = "17.9%",
				dps = "286.5k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzwMzgZbmlZmZ22YMMNDMzMAMmZGwMzADzwAAAAAAAmZAAziNADAAAAAsZA",
				popularity = "32.1%",
				dps = "267.0k",
			},
		},
		["arms"] = {
			["Raiding"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAgtZMjxMzMzmlllZGAAAAMYaYGsYMDMjxMzgZGGGDzwAAAAAAAgZMbzMDABAAAAAADA",
				popularity = "23.7%",
				dps = "661.7k",
			},
			["MythicPlus"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYsNzMMmxMzitllZmBAAAgBTDjhlZMDMzyYmZwMDjZgZYAAAAAAAwMmlxYA2CAAAAAAA",
				popularity = "15.7%",
				dps = "654.9k",
				keystone = "+18"
			},
		},
		["fury"] = {
			["MythicPlus"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAAagxAjhZYMmZmNYYmZMMDzMbbzMmZmNmZMzMMDb2mhZGDAAAEGAAAAAYDA",
				popularity = "25.9%",
				dps = "717.0k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYWGmZ2ghZMGmhZmttZGzMzGzMmZGmhNbzwMjBAAACDAAAAAsBA",
				popularity = "17.6%",
				dps = "620.2k",
			},
		},
	},
	["paladin"] = {
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjZYWM2eAzYmxymZmxMGzYGAAgBAAAAAAg2aYmZYADmZWMYmZDAGDYAMgBYAAAAAAMD",
				popularity = "29.1%",
				dps = "216.1k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMzixyDYmZmhNzMjZeQYYGAAgBAAAAAAg0wMzsYgZGmZWMMzMbAwYAAMgBYAAAAAAMA",
				popularity = "10.0%",
				dps = "236.2k",
			},
		},
		["holy"] = {
			["MythicPlus"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAADAAGAwYAAAAsNmZmZbMzsYGziZYZGYZbbm2KMzsYwMzwYWAzMGAwAAbADzMDGAAAAAAA",
				popularity = "15.8%",
				dps = "90.9k",
				hps = "191.9k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAGDAAwAsMzMzYbMzssZMLMsMjxsttZargZWmBzMDjZBMzYAADAsBMMzMeADAAAAAAA",
				popularity = "8.8%",
				dps = "66.9k",
				hps = "452.4k",
			},
		},
		["retribution"] = {
			["MythicPlus"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAjptlltZmtltZGbzDMzyyYbAAAAAAY2myMzwAzMMmlxgZgZZGbDDGMYZhNAAAAAAAAA",
				popularity = "12.4%",
				dps = "590.5k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAwAAMttssNzstsNGbjZ22mZDAAAAAAjpMzMbGYGMmlxwMDzysMDDDGMGLLsNAAAAAAAAA",
				popularity = "39.9%",
				dps = "627.6k",
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["MythicPlus"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgBAAAAAAgZMzDMmZMMzMmhxYMzYmZmZyMMmZMzMmZMDjxMzwYGGzgN",
				popularity = "58.6%",
				dps = "598.7k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgBAAAAAAgZMMmZmhZGmhZYWmZMzMzMZGGzMmZGzMmhxYmZYMDjZwG",
				popularity = "55.2%",
				dps = "718.3k",
			},
		},
		["marksmanship"] = {
			["Raiding"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmZGMzMDzMzYmZmxYmxMAAAAAAAAzwYmZmZGzoZGjhZGYGzYmxA",
				popularity = "29.7%",
				dps = "512.1k",
			},
			["MythicPlus"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMGmxYGzYmZmZGmZMMmNAAAAAAAMDjZMzMzMzkZMGmZYMMzyMYD",
				popularity = "40.0%",
				dps = "581.9k",
				keystone = "+18"
			},
		},
		["survival"] = {
			["MythicPlus"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMAAAAAAzM2mxMzMjZMzYGjxYmZmBAAAAAAAAAAAAAAaGGzYmZGzMMMGmZYWGmZZGsB",
				popularity = "45.2%",
				dps = "535.8k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMAAAAAAzMz2MmZGmZMzwMDzMjZGDAAAAAAAAAAAAAAaGmxMzMzYGMMGmZYMMjZGzC",
				popularity = "50.5%",
				dps = "480.4k",
			},
		},
	},
	["rogue"] = {
		["outlaw"] = {
			["Raiding"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwMzYGDmZGmhBzYmZMzMtMjZZGAAAAAAstNzMYmZsMmZZ2GAAAAmZGAAAAAAYG",
				popularity = "49.8%",
				dps = "433.8k",
			},
			["MythicPlus"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwwYmZwMzwMMMzMzMjZmplZMLzAAAAAAwstMmhHYmZswMLzyAAAAwMDAAAAAAYG",
				popularity = "32.1%",
				dps = "397.7k",
				keystone = "+17"
			},
		},
		["assassination"] = {
			["Raiding"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhZmxyMAAAAAAMbwyMAAAAAA022MzwDMzYMzMLz2YMGMzMzMzYmNLjZAAAAAAAA",
				popularity = "55.8%",
				dps = "559.0k",
			},
			["MythicPlus"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAwMjZmxMWmBAAAAAgZB2mBAAAAAg22mZGegZGjZmZZWGMGzMmZmZmZsttMmBAAAAAAA",
				popularity = "22.8%",
				dps = "503.3k",
				keystone = "+16"
			},
		},
		["subtlety"] = {
			["Raiding"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAzyYmlJDLbYGjhZmZmZmZGz2YMzstNzMmZmBjZWmtBAAAgZwAAAAAAAD",
				popularity = "51.8%",
				dps = "509.9k",
			},
			["MythicPlus"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAMDAAAAAAYWGzsMZYBmxYmZmZmZmZmxsMGGbbjZMzMjxYmlZbAAAAYGMAAAAAAwA",
				popularity = "51.0%",
				dps = "442.8k",
				keystone = "+18"
			},
		},
	},
	["priest"] = {
		["discipline"] = {
			["Raiding"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtxYw2YMzMmhZZmZmZYGAAAAAAAAAAAsYZ2eAz2MDMLMMYMMLmtZaMxyYAAAAAAA",
				popularity = "8.3%",
				dps = "94.2k",
				hps = "382.6k",
			},
			["MythicPlus"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlxMD2GjZmxMbmtZmZmhBAAAAAAAAAAAWsMbYbmZwswwYMGzsw2MNzELDAAAAAAA",
				popularity = "21.3%",
				dps = "121.6k",
				hps = "141.1k",
				keystone = "+18"
			},
		},
		["holy"] = {
			["MythicPlus"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAwDsZMLzgZGjBmxMMWmZmlBAAAAGWmNsMzMwCzyMMjxYhNmZmaWAAAAAAAA",
				popularity = "29.1%",
				dps = "147.4k",
				hps = "158.8k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CEQAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAbDYbmZmZGzwsNGzMYZGWGAAAAwilZbYbmZwswwMzMGssAzYqZBAAAAAAA",
				popularity = "57.7%",
				dps = "46.4k",
				hps = "455.9k",
			},
		},
		["shadow"] = {
			["MythicPlus"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMDDDAAAAAAAAAAAAwYmFzYmZ2sxMzMz2YYwsxMzMMbMwYMjZxsN1MDWwMAAAAAAA",
				popularity = "22.8%",
				dps = "559.4k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAgBzMDAAAAAAAAAAAAwws4BYmZ2mNmZmZ2GzYwswMzMjZjBGjhZxsN1MDWwMAAAAAAA",
				popularity = "22.9%",
				dps = "481.5k",
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["MythicPlus"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghxMzYMzMmZYYmZmmZMMzYGDAAAAAmZmZmZmZmNzMjBAAAzMzMAAAAAAAAAAAMD2A",
				popularity = "15.2%",
				dps = "314.8k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzMjZmxYsMjZmZaGGmZMjZAAAAAYmZmZmZmZ2MzMGAAAMzMzMAAAAAAAAAAAMYB",
				popularity = "17.3%",
				dps = "299.1k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAAgZGjZMGzYYmZmZmxMmJzYYYGMzYmhZmZmZmZZmBAAAAAAAAAAAAAAAAAgZmZMDA",
				popularity = "68.4%",
				dps = "723.9k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAA8AAMzYmZMGDzYmZmZmxwMZGDDwMzYmhZmZmZmZZmBAAAAAAAAAAAAAAAAAgZmZMDA",
				popularity = "39.2%",
				dps = "621.0k",
			},
		},
		["unholy"] = {
			["MythicPlus"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAgZGzMMDDzMjZmphxMzYGDAAAAAAAAghZGzYmZmZAAbgZxYmZmhZGAAAAAgZAmBA",
				popularity = "56.7%",
				dps = "642.5k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAzMzMjHYYYGzMzMNMmZGzYAAAAAAAAAMMzYGjxMAgZzMMLGzMzMmZGAAAAAgBwMA",
				popularity = "51.6%",
				dps = "542.9k",
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			["MythicPlus"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMLz2yYGGzMbbzMjZmxYAAAAAAAAAAAAAmlpZgZbhZmGjZmxwyMmBzyYxiZmBMzYM",
				popularity = "34.4%",
				dps = "604.3k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAMLz2yYwYmZZbmZmZmxYAAAAAAAAAAAAAYamZY2WMzMxMmZWwyMmBjhZZmZGDMjxA",
				popularity = "32.1%",
				dps = "612.9k",
			},
		},
		["enhancement"] = {
			["Raiding"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzyMDYmZYmZmNsMDAAAAAAAAAAAAAAAAAAYWmMDmlFzMzMGmZ2wyMzEYsMmZAAmB",
				popularity = "81.5%",
				dps = "472.8k",
			},
			["MythicPlus"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzyMDGmZYmZmNsMjBAAAAAAAAAAAAAAAAAAzykZwswwYMmZmFjlZmJLbWGGzMAAG",
				popularity = "62.3%",
				dps = "487.4k",
				keystone = "+19"
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAzMzMjZmlZGmhZbsYGAAAAAAgZmZZMzyMzQmNMz0YmxMwyMmBzCmlZGAAD",
				popularity = "9.6%",
				dps = "107.8k",
				hps = "167.0k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAjZmZWmx2YmZGLzGbGWAAAAAAgZMLjx2MzMTmtFmZaMDzshFzMDGDzyYAAM",
				popularity = "20.4%",
				dps = "44.9k",
				hps = "416.1k",
			},
		},
	},
	["mage"] = {
		["arcane"] = {
			["MythicPlus"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAMgZbWMmhZmFYMzwYamZZMAAAAAAGAAAAAAAAAAAAWAYZGDzMGDjZmZGzMjZmZmhxA",
				popularity = "51.6%",
				dps = "470.0k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMbmtZBzwYW8A8AmZYMNzsMDAAAAAADAAAAAAAAAAAAbAsMjhZGzMMmZGjZmxMzMzwYA",
				popularity = "35.6%",
				dps = "469.9k",
			},
		},
		["fire"] = {
			["Raiding"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgBAAAAAYMzMzMmxMzYxYmh5BwMLzgZhBAAAAAAA",
				popularity = "45.6%",
				dps = "451.7k",
			},
			["MythicPlus"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAMYzsNLGzwMzCMmZYaMzYMAAAAAAGAAAAAgZmZmZGzYmZsYMzwgZmlZsYwAAAAAAAA",
				popularity = "61.6%",
				dps = "463.6k",
				keystone = "+18"
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMYjtZxYGPwMzCMmZ0YMzYMzwwMwMzMzMzMzMzMzMzYGAAAAAAAAAAAAzCAAAAAAAAA",
				popularity = "59.8%",
				dps = "493.4k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwMziBzYmGjxYmxwMzMMzMzMzYmZmZGzMYGAAAAAAAAAAAAzCAAAAAAAAA",
				popularity = "66.4%",
				dps = "518.5k",
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["Raiding"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MMmNzMDz2AAAAzMjZWMzMWMzMLMzMDAYGAAAAAgZAAAAAAAAAzMbA",
				popularity = "47.7%",
				dps = "443.0k",
			},
			["MythicPlus"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAwMjZWmZG2mZmZxMmZAAzAAAAAAMDAAAAAAAAMDLA",
				popularity = "25.2%",
				dps = "471.2k",
				keystone = "+18"
			},
		},
		["demonology"] = {
			["MythicPlus"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAAAAAAYGmZ2GzsZmZmZMmxMmZGDDzMAAA",
				popularity = "24.6%",
				dps = "441.2k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CoQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAAAAAAAAzAAAAAAYmZGz2YmFzMzMjxMGmxMzgxMAAA",
				popularity = "27.6%",
				dps = "435.4k",
			},
		},
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWmNzMmZmlZWmZbxMDAAAAMmhlZmZGAAAAAADAAAAAAAMmBAA",
				popularity = "20.1%",
				dps = "482.1k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmBmtZmZYWmFzYGzsY2MWMzAAAAAjZmZZmZmBAAAAAwAAAAAAAYGjZAA",
				popularity = "11.6%",
				dps = "462.4k",
			},
		},
	},
	["monk"] = {
		["brewmaster"] = {
			["MythicPlus"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMYmFzDsNzMzYAAAAAAAssACzAzwMLmBbzYGmFmZsMLz022DsYbMzMzGAAAAAAAAgBb",
				popularity = "11.2%",
				dps = "228.1k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMjlZsNzMzAAAAAAAglFQYGYGmZhxYbmZGmlhZsNLz02mFbzMjZ2AAAAAAAAAmBb",
				popularity = "19.7%",
				dps = "292.4k",
			},
		},
		["windwalker"] = {
			["Raiding"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMzghhZZGGmBAAAAAAAAAAAstMjRwwYGG2GzYbGzwsNMzwyMBAw2MzYmZMz2MAAAAAAAA",
				popularity = "48.8%",
				dps = "514.6k",
			},
			["MythicPlus"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYYGzyMjxMzAAAAAAAAAAAAbLYmwMMzMMsNzw2MmhZjZGsMTAAsMmhZGzsNDAAAAAAA",
				popularity = "22.6%",
				dps = "483.5k",
				keystone = "+17"
			},
		},
		["mistweaver"] = {
			["Raiding"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWsNWGAzMzY7BYx2sNzsYZW2WmZWWANzMzswMMzihZWMzMMbMGsQAAAAAAAAAAAAbA",
				popularity = "27.4%",
				dps = "29.7k",
				hps = "445.0k",
			},
			["MythicPlus"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWYmlxMmxMzM2w2sMbDsNbbLzMLLG0YmxCzwMMwyMzMMbMGmlZCAAAAAAAAAAAA",
				popularity = "26.4%",
				dps = "99.3k",
				hps = "168.0k",
				keystone = "+19"
			},
		},
	},
	["druid"] = {
		["feral"] = {
			["MythicPlus"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZ2mNzsYmZmZWmNYbmZmxMDAAAAAwSAzMwA0MjZYmZGzw2MDAAAAAgBMAAAAAAAAAYmB",
				popularity = "39.5%",
				dps = "466.3k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMz2YMLmZMzsMbM2mZmxMzAAAAAAsEwMgxANzYGmZmxMmtZGAAAAAAADAAAAAAAAAmZA",
				popularity = "50.6%",
				dps = "532.7k",
			},
		},
		["balance"] = {
			["MythicPlus"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWoYMzMMmZGwMDzMzsALYzMzsMzwYmZmx2MGDzM2ALAYAAAAAAAAYmZM",
				popularity = "49.7%",
				dps = "575.7k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWogZmhhZGwMDzMzsAbjxYmZbGbGzMmHw2MbzMmxYDsAgBAAAAAAAgZmxA",
				popularity = "34.3%",
				dps = "460.4k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsxMzYDmZmFzyMjBLbstMbzMAAAAAAAAAAAAWGMYGYEMmxMmZGzyQbMAAAAAgBwAmZAAAAAAAAMzA",
				popularity = "9.5%",
				dps = "90.8k",
				hps = "175.1k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CkGAAAAAAAAAAAAAAAAAAAAAAsNmZGLbDzMDzCmxYbzYbMzAAAAAAAAAAAAYZAmhxMamBMjZmZMMTbzAAAAAAAAwYAAAAAAAAMzwA",
				popularity = "27.4%",
				dps = "40.5k",
				hps = "534.3k",
			},
		},
		["guardian"] = {
			["Raiding"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxYmZmlZsMzYwYxDMMzsYZAMgZmZimZmZmZGDDbMAAAAAAghZAAAAAAAAAMzMA",
				popularity = "17.3%",
				dps = "277.6k",
			},
			["MythicPlus"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxYmxsMsMzMjxMLMMzsYbAMGMzMT0MzMMzYWMsxAAAAAAAmxwAAAAAAAAAmZGA",
				popularity = "25.6%",
				dps = "245.7k",
				keystone = "+19"
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			["MythicPlus"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZmxMzgZmZMmJzMzAAAAAAAmlhxMMzMbmZ2mtxYgZYssBAAAjZmxA",
				popularity = "26.3%",
				dps = "519.7k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CEkAAAAAAAAAAAAAAAAAAAAAAYmZMmZGMzMjxMhZGAAAAAAwsNMmZMzMbzMz2sNGDMDjlNAAAYMzMGA",
				popularity = "60.2%",
				dps = "495.1k",
			},
		},
		["vengeance"] = {
			["Raiding"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMLzMMjtZMjZMDzMjZGbjZYGMAAAAAAAAYmZGA",
				popularity = "15.9%",
				dps = "275.3k",
			},
			["MythicPlus"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAmZMMjhxkZmhZYGbzMmZsNzwYGMGz2MzwMz2MjZGAAAAAAAAMzMA",
				popularity = "14.4%",
				dps = "269.0k",
				keystone = "+20"
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["Raiding"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmBzsZGMgBGzMNjZmMbjlZmZmhxMbzAmxMbjZmtxMwADAAAAAAA",
				popularity = "33.0%",
				dps = "500.6k",
			},
			["MythicPlus"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzAzYmBDMDMmZaGzMZ2GLzMzMDjZWmBMjZ2GzMmZGYgBAAAAAAA",
				popularity = "66.3%",
				dps = "459.2k",
				keystone = "+17"
			},
		},
		["preservation"] = {
			["Raiding"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZ2mtZwMzMjZBzsxMAAAzMmxgxYmRYGAAAgZmZyMmZMLzMDAGAAAAAAA",
				popularity = "10.1%",
				dps = "47.8k",
				hps = "434.9k",
			},
			["MythicPlus"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mtBGzMjZZGzYAAAwMjZMz2MGmZixMAAAgZmRzYbmxYMDAAAAAAADA",
				popularity = "16.3%",
				dps = "86.5k",
				hps = "153.6k",
				keystone = "+16"
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMLjlZmZGLDmZWmBzYmNAAAAAwAAgZGMDGDTNMzMAAAAYmZmtxMjxMDM2mBAAAAAAzA",
				popularity = "28.4%",
				dps = "418.2k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMGbzMzMWGMzsMzwMmZDAAAAAMAAYmBAGzUzYmZAAAAwMmZbMzsNmZgx2MAAAAAAYG",
				popularity = "25.7%",
				dps = "533.1k",
			},
		},
	},
}
addonTable.DB = talentData