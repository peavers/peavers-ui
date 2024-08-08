local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["warrior"] = {
		["fury"] = {
			["Raiding"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAagZAjhZYWGmZ2ghZMGmhZmttZGzMzGzMmZGmhNbzwMjBAAACDAAAAAsBA",
				popularity = "16.9%",
				dps = "621.3k",
			},
			["MythicPlus"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAAagxAjhZYMmZmNYYmZMMDzMbbzMmZmNmZMzMMDb2mhZGDAAAEGAAAAAYDA",
				popularity = "25.9%",
				dps = "717.0k",
				keystone = "+20"
			},
		},
		["arms"] = {
			["MythicPlus"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAYsNzMMmxMzitllZmBAAAgBTDjhlZMDMzyYmZwMDjZgZYAAAAAAAwMmlxYA2CAAAAAAA",
				popularity = "15.7%",
				dps = "654.9k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CcEAAAAAAAAAAAAAAAAAAAAAAAgtZMjxMzMzmlllZGAAAAMYaYGsYMDMjxMzgZGGGDzwAAAAAAAgZMbzMDABAAAAAADA",
				popularity = "23.2%",
				dps = "663.4k",
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzMmZGmZbmlZmZ2wYQjBzMDgFGzwGzMjZgZMDAAAAAAYmBAYZbDwAAAAAAMDA",
				popularity = "17.9%",
				dps = "286.5k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAYEDAAAAzMzwMzgZbmlZmZ22YMMNDMzMAMmZGwMzADzwAAAAAAAmZAAziNADAAAAAsZA",
				popularity = "33.0%",
				dps = "268.0k",
			},
		},
	},
	["paladin"] = {
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
				popularity = "8.6%",
				dps = "67.5k",
				hps = "452.1k",
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
				popularity = "40.4%",
				dps = "627.5k",
			},
		},
		["protection"] = {
			["Raiding"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsMmZMzixyDYmZmhNzMjZeQYYGAAgBAAAAAAg0wMzsYgZGmZWMMzMbAwYAAMgBYAAAAAAMA",
				popularity = "10.4%",
				dps = "250.0k",
			},
			["MythicPlus"] = {
				talentString = "CIEAAAAAAAAAAAAAAAAAAAAAAsNjZYWM2eAzYmxymZmxMGzYGAAgBAAAAAAg2aYmZYADmZWMYmZDAGDYAMgBYAAAAAAMD",
				popularity = "29.1%",
				dps = "216.1k",
				keystone = "+19"
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
				popularity = "55.1%",
				dps = "718.8k",
			},
		},
		["marksmanship"] = {
			["MythicPlus"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMzMGmxYGzYmZmZGmZMMmNAAAAAAAMDjZMzMzMzkZMGmZYMMzyMYD",
				popularity = "40.0%",
				dps = "581.9k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmZGMzMDzMzYmZmxYmxMAAAAAAAAzwYmZmZGzoZGjhZGYGzYmxA",
				popularity = "29.0%",
				dps = "511.6k",
			},
		},
		["survival"] = {
			["Raiding"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMAAAAAAzMz2MmZGmZMzwMDzMjZGDAAAAAAAAAAAAAAaGmxMzMzYGMMGmZYMMjZGzC",
				popularity = "51.0%",
				dps = "479.9k",
			},
			["MythicPlus"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAMAAAAAAzM2mxMzMjZMzYGjxYmZmBAAAAAAAAAAAAAAaGGzYmZGzMMMGmZYWGmZZGsB",
				popularity = "45.2%",
				dps = "535.8k",
				keystone = "+18"
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			["MythicPlus"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAwMjZmxMWmBAAAAAgZB2mBAAAAAg22mZGegZGjZmZZWGMGzMmZmZmZsttMmBAAAAAAA",
				popularity = "22.8%",
				dps = "503.3k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAMjZmhZmxyMAAAAAAMbwyMAAAAAA022MzwDMzYMzMLz2YMGMzMzMzYmNLjZAAAAAAAA",
				popularity = "56.5%",
				dps = "559.3k",
			},
		},
		["outlaw"] = {
			["Raiding"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwMzYGDmZGmhBzYmZMzMtMjZZGAAAAAAstNzMYmZsMmZZ2GAAAAmZGAAAAAAYG",
				popularity = "48.9%",
				dps = "435.6k",
			},
			["MythicPlus"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAMwwYmZwMzwMMMzMzMjZmplZMLzAAAAAAwstMmhHYmZswMLzyAAAAwMDAAAAAAYG",
				popularity = "32.1%",
				dps = "397.7k",
				keystone = "+17"
			},
		},
		["subtlety"] = {
			["Raiding"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAzyYmlJDLbYGjhZmZmZmZGz2YMzstNzMmZmBjZWmtBAAAgZwAAAAAAAD",
				popularity = "52.5%",
				dps = "512.5k",
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
			["MythicPlus"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mlxMD2GjZmxMbmtZmZmhBAAAAAAAAAAAWsMbYbmZwswwYMGzsw2MNzELDAAAAAAA",
				popularity = "21.3%",
				dps = "121.6k",
				hps = "141.1k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAA2mtxYw2YMzMmhZZmZmZYGAAAAAAAAAAAsYZ2eAz2MDMLMMYMMLmtZaMxyYAAAAAAA",
				popularity = "8.4%",
				dps = "93.9k",
				hps = "389.6k",
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
				popularity = "58.5%",
				dps = "46.2k",
				hps = "458.6k",
			},
		},
		["shadow"] = {
			["Raiding"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAgBzMDAAAAAAAAAAAAwws4BYmZ2mNmZmZ2GzYwswMzMjZjBGjhZxsN1MDWwMAAAAAAA",
				popularity = "23.8%",
				dps = "491.1k",
			},
			["MythicPlus"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMDDDAAAAAAAAAAAAwYmFzYmZ2sxMzMz2YYwsxMzMMbMwYMjZxsN1MDWwMAAAAAAA",
				popularity = "22.8%",
				dps = "559.4k",
				keystone = "+19"
			},
		},
	},
	["death-knight"] = {
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAAgZGjZMGzYYmZmZmxMmJzYYYGMzYmhZmZmZmZZmBAAAAAAAAAAAAAAAAAgZmZMDA",
				popularity = "68.4%",
				dps = "723.9k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAA8AAMzYmZMGDzYmZmZmxwMZGDDwMzYmhZmZmZmZZmBAAAAAAAAAAAAAAAAAgZmZMDA",
				popularity = "39.4%",
				dps = "622.4k",
			},
		},
		["blood"] = {
			["MythicPlus"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghxMzYMzMmZYYmZmmZMMzYGDAAAAAmZmZmZmZmNzMjBAAAzMzMAAAAAAAAAAAMD2A",
				popularity = "15.2%",
				dps = "314.8k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAghBzMjZmxYsMjZmZaGGmZMjZAAAAAYmZmZmZmZ2MzMGAAAMzMzMAAAAAAAAAAAMYB",
				popularity = "16.8%",
				dps = "298.0k",
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
				popularity = "51.9%",
				dps = "543.8k",
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
				popularity = "32.0%",
				dps = "611.5k",
			},
		},
		["enhancement"] = {
			["Raiding"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAMzMzyMDYmZYmZmNsMDAAAAAAAAAAAAAAAAAAYWmMDmlFzMzMGmZ2wyMzEYsMmZAAmB",
				popularity = "81.4%",
				dps = "471.9k",
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
				popularity = "20.1%",
				dps = "43.7k",
				hps = "417.4k",
			},
		},
	},
	["mage"] = {
		["frost"] = {
			["MythicPlus"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMYjtZxYGPwMzCMmZ0YMzYMzwwMwMzMzMzMzMzMzMzYGAAAAAAAAAAAAzCAAAAAAAAA",
				popularity = "59.8%",
				dps = "493.4k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzYzsZBzwMziBzYmGjxYmxwMzMMzMzMzYmZmZGzMYGAAAAAAAAAAAAzCAAAAAAAAA",
				popularity = "68.1%",
				dps = "517.2k",
			},
		},
		["arcane"] = {
			["MythicPlus"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAMgZbWMmhZmFYMzwYamZZMAAAAAAGAAAAAAAAAAAAWAYZGDzMGDjZmZGzMjZmZmhxA",
				popularity = "51.6%",
				dps = "470.0k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAYMbmtZBzwYW8A8AmZYMNzsMDAAAAAADAAAAAAAAAAAAbAsMjhZGzMMmZGjZmxMzMzwYA",
				popularity = "36.8%",
				dps = "467.3k",
			},
		},
		["fire"] = {
			["MythicPlus"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAMYzsNLGzwMzCMmZYaMzYMAAAAAAGAAAAAgZmZmZGzYmZsYMzwgZmlZsYwAAAAAAAA",
				popularity = "61.6%",
				dps = "463.6k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "C8DAAAAAAAAAAAAAAAAAAAAAAYMMbzCmZmxsYgZGmGzMmBAAAAAgBAAAAAYMzMzMmxMzYxYmh5BwMLzgZhBAAAAAAA",
				popularity = "45.4%",
				dps = "451.1k",
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["MythicPlus"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEzmhxsZmZYWGAAAwMjZWmZG2mZmZxMmZAAzAAAAAAMDAAAAAAAAMDLA",
				popularity = "25.2%",
				dps = "471.2k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAAzMzMzMjY2MMmNzMDz2AAAAzMjZWMzMWMzMLMzMDAYGAAAAAgZAAAAAAAAAzMbA",
				popularity = "47.2%",
				dps = "441.6k",
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
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAAmZmZmZEziBmtZmZY2mFjZGzsY2MWMzAAAAAjZmZZmZmBAAAAAwAAAAAAAYGjZAA",
				popularity = "11.8%",
				dps = "448.9k",
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
				popularity = "26.9%",
				dps = "433.3k",
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["MythicPlus"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWoYMzMMmZGwMDzMzsALYzMzsMzwYmZmx2MGDzM2ALAYAAAAAAAAYmZM",
				popularity = "49.7%",
				dps = "575.7k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWogZmhhZGwMDzMzsAbjxYmZbGbGzMmHw2MbzMmxYDsAgBAAAAAAAgZmxA",
				popularity = "33.3%",
				dps = "459.1k",
			},
		},
		["feral"] = {
			["MythicPlus"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmZ2mNzsYmZmZWmNYbmZmxMDAAAAAwSAzMwA0MjZYmZGzw2MDAAAAAgBMAAAAAAAAAYmB",
				popularity = "39.5%",
				dps = "466.3k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMz2YMLmZMzsMbM2mZmxMzAAAAAAsEwMgxANzYGmZmxMmtZGAAAAAAADAAAAAAAAAmZA",
				popularity = "51.8%",
				dps = "532.8k",
			},
		},
		["guardian"] = {
			["Raiding"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxYmZmlZsMzYwYxDMMzsYZAMgZmZimZmZmZGDDbMAAAAAAghZAAAAAAAAAMzMA",
				popularity = "18.6%",
				dps = "276.2k",
			},
			["MythicPlus"] = {
				talentString = "CgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmxYmxsMsMzMjxMLMMzsYbAMGMzMT0MzMMzYWMsxAAAAAAAmxwAAAAAAAAAmZGA",
				popularity = "25.6%",
				dps = "245.7k",
				keystone = "+19"
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
				popularity = "27.3%",
				dps = "41.3k",
				hps = "535.5k",
			},
		},
	},
	["monk"] = {
		["windwalker"] = {
			["MythicPlus"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAYGzMYYGzyMjxMzAAAAAAAAAAAAbLYmwMMzMMsNzw2MmhZjZGsMTAAsMmhZGzsNDAAAAAAA",
				popularity = "22.6%",
				dps = "483.5k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAMzsMzghhZZGGmBAAAAAAAAAAAstMjRwwYGG2GzYbGzwsNMzwyMBAw2MzYmZMz2MAAAAAAAA",
				popularity = "49.9%",
				dps = "511.8k",
			},
		},
		["mistweaver"] = {
			["MythicPlus"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWYmlxMmxMzM2w2sMbDsNbbLzMLLG0YmxCzwMMwyMzMMbMGmlZCAAAAAAAAAAAA",
				popularity = "26.4%",
				dps = "99.3k",
				hps = "168.0k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGWsNWGAzMzY7BYx2sNzsYZW2WmZWWANzMzswMMzihZWMzMMbMGsQAAAAAAAAAAAAbA",
				popularity = "26.2%",
				dps = "29.2k",
				hps = "442.0k",
			},
		},
		["brewmaster"] = {
			["MythicPlus"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMYmFzDsNzMzYAAAAAAAssACzAzwMLmBbzYGmFmZsMLz022DsYbMzMzGAAAAAAAAgBb",
				popularity = "11.2%",
				dps = "228.1k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAGjxMMjlZsNzMzAAAAAAAglFQYGYGmZhxYbmZGmlhZsNLz02mFbzMjZ2AAAAAAAAAmBb",
				popularity = "20.4%",
				dps = "289.1k",
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
				popularity = "60.5%",
				dps = "496.2k",
			},
		},
		["vengeance"] = {
			["Raiding"] = {
				talentString = "CUkAAAAAAAAAAAAAAAAAAAAAAAAGjZmZMmZkZmxYYMLzMMjtZMjZMDzMjZGbjZYGMAAAAAAAAYmZGA",
				popularity = "15.6%",
				dps = "280.2k",
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
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMLjlZmZGLDmZWmBzYmNAAAAAwAAgZGMDGDTNMzMAAAAYmZmtxMjxMDM2mBAAAAAAzA",
				popularity = "28.4%",
				dps = "418.2k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAwMGbzMzMWGMzsMzwMmZDAAAAAMAAYmBAGzUzYmZAAAAwMmZbMzsNmZgx2MAAAAAAYG",
				popularity = "25.6%",
				dps = "537.1k",
			},
		},
		["devastation"] = {
			["MythicPlus"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGzAzYmBDMDMmZaGzMZ2GLzMzMDjZWmBMjZ2GzMmZGYgBAAAAAAA",
				popularity = "66.3%",
				dps = "459.2k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzYmBzsZGMgBGzMNjZmMbjlZmZmhxMbzAmxMbjZmtxMwADAAAAAAA",
				popularity = "33.4%",
				dps = "501.0k",
			},
		},
		["preservation"] = {
			["MythicPlus"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2mtBGzMjZZGzYAAAwMjZMz2MGmZixMAAAgZmRzYbmxYMDAAAAAAADA",
				popularity = "16.3%",
				dps = "86.5k",
				hps = "153.6k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAYmZ2mtZwMzMjZBzsxMAAAzMmxgxYmRYGAAAgZmZyMmZMLzMDAGAAAAAAA",
				popularity = "10.9%",
				dps = "47.6k",
				hps = "431.2k",
			},
		},
	},
}
addonTable.DB = talentData