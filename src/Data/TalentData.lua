local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["paladin"] = {
		["holy"] = {
			["Raiding"] = {
				talentString = "BEEAAAAAAAAAAAAAAAAAAAAAAAAAAQAARAAACQLJFoUik0ahUSClkEKaiGQSJBJJEpgmkIAgAAFgQSCC",
				popularity = "26.0%",
				dps = "39.1k",
				hps = "345.8k",
			},
			["MythicPlus"] = {
				talentString = "BEEAAAAAAAAAAAAAAAAAAAAAAAABAABAEBAAIAtIFkSJSSrISLJUSSo0aiGIJFBJJEpAiIAgAANgQigA",
				popularity = "8.2%",
				dps = "80.6k",
				hps = "122.8k",
				keystone = "+16"
			},
		},
		["retribution"] = {
			["MythicPlus"] = {
				talentString = "BYEAAAAAAAAAAAAAAAAAAAAAAAAAAQAgIUKtSSr0koIJpIJAAAAAAQaBJCBSCRKRICRKJahICioUoBAA",
				popularity = "57.3%",
				dps = "505.3k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BYEAAAAAAAAAAAAAAAAAAAAAAAAAAQAAiWp0KJtSjoFJplEAAAAAAQEkkQgEEpEhkQKpkQkICJiShGAA",
				popularity = "54.6%",
				dps = "444.1k",
			},
		},
		["protection"] = {
			["Raiding"] = {
				talentString = "BIEAAAAAAAAAAAAAAAAAAAAAA0SaJkiodAtkko0kkIRkIBAAIAAAAAAAgmQSCHASCJpIICAICEACIAB",
				popularity = "3.7%",
				dps = "160.4k",
			},
			["MythicPlus"] = {
				talentString = "BIEAAAAAAAAAAAAAAAAAAAAAA0SaJkiodAtIJKNJJSEJSAAACAAAAAAAoJkkUEIJkkiASDAiAAIgAE",
				popularity = "18.2%",
				dps = "226.9k",
				keystone = "+19"
			},
		},
	},
	["warrior"] = {
		["protection"] = {
			["MythicPlus"] = {
				talentString = "BkEAAAAAAAAAAAAAAAAAAAAAAIQAAAAgkkQSik0SKJJpBRgAJSSJJBIQSQDJJIARCAAAAAAAkEAgSrBAC",
				popularity = "22.1%",
				dps = "264.1k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BkEAAAAAAAAAAAAAAAAAAAAAAIQAAAAgkkQSCSLpkkkWDRgQRAlkEgISSCNkkAcAOQIAAAAAAAQSAAHo0aAgA",
				popularity = "25.0%",
				dps = "239.4k",
			},
		},
		["arms"] = {
			["MythicPlus"] = {
				talentString = "BcEAAAAAAAAAAAAAAAAAAAAAAAQplIRkQSiWpEJAAAAQQESKkEUEBIikEaSECwBQkAAAAAAAAQiWiIgQ0QA",
				popularity = "41.2%",
				dps = "510.3k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BcEAAAAAAAAAAAAAAAAAAAAAAAQRikEJkDko0KJBAAAAEEhoQAFRCECJhmEhAESIAAAAAAAAkEkkACRDB",
				popularity = "36.8%",
				dps = "470.0k",
			},
		},
		["fury"] = {
			["Raiding"] = {
				talentString = "BgEAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQggSQQEEiIJRBSICEOQIJplEJJhkQSIRKBIJSEAAAEQQA",
				popularity = "61.6%",
				dps = "484.2k",
			},
			["MythicPlus"] = {
				talentString = "BgEAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQggSCQEEiIJRBEiQEEJJplEJJhkQSIRKBIJSEAAAEQQA",
				popularity = "83.2%",
				dps = "459.4k",
				keystone = "+18"
			},
		},
	},
	["hunter"] = {
		["marksmanship"] = {
			["MythicPlus"] = {
				talentString = "B4PAAAAAAAAAAAAAAAAAAAAAA4ABaBgoggAAAAAEJJHQSCICJJtEp1ERUkimQiESIhGAAAAA",
				popularity = "53.5%",
				dps = "502.0k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "B4PAAAAAAAAAAAAAAAAAAAAAA4ABaBgoggAAAAAEJJHQSCICJJtEpVER0kimQiESIhGAAAAA",
				popularity = "23.9%",
				dps = "521.1k",
			},
		},
		["beast-mastery"] = {
			["MythicPlus"] = {
				talentString = "B0PAAAAAAAAAAAAAAAAAAAAAA4AgWSAoQAAAAAAAAAAAoRkiEa5ARCJCJhGERLHIRSSEaRSSA",
				popularity = "72.8%",
				dps = "490.7k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "B0PAAAAAAAAAAAAAAAAAAAAAA4AgWSAoQAAAAAAAAAAAoBhEaikQCJJoJkWUSSkIEaRSSA",
				popularity = "44.9%",
				dps = "400.3k",
			},
		},
		["survival"] = {
			["MythicPlus"] = {
				talentString = "B8PAAAAAAAAAAAAAAAAAAAAAA4ABahkQoEEkkkkWyBCQIpEhAAAAAARkSTKaQiESIhGAAAAA",
				popularity = "11.2%",
				dps = "316.5k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "B8PAAAAAAAAAAAAAAAAAAAAAAIhWaBJBKBBJkEJkIEJhkkAAAAAABRRoJkIBhgCAAAAA",
				popularity = "14.3%",
				dps = "310.4k",
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			["MythicPlus"] = {
				talentString = "BMQAAAAAAAAAAAAAAAAAAAAAAEJJJJSAAAAAAASJJSLJAAAAAAQrkkgEIJpkSSEkEJBJJalIBA",
				popularity = "41.9%",
				dps = "552.9k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BMQAAAAAAAAAAAAAAAAAAAAAAEJJhkEEAAAAAASJJSJJAAAAAAgWSCSgkkSaJREEJJJRSTJSAA",
				popularity = "47.6%",
				dps = "441.2k",
			},
		},
		["outlaw"] = {
			["Raiding"] = {
				talentString = "BQQAAAAAAAAAAAAAAAAAAAAAAAAAJEJBSSIhEJJJpJJRJJSJJAAAAAAItWSCSSUIpkWAAAAIJA",
				popularity = "35.5%",
				dps = "440.8k",
			},
			["MythicPlus"] = {
				talentString = "BQQAAAAAAAAAAAAAAAAAAAAAAAAElEEJhkkESIRSSolkElkItkAAAAAAAtSSCHIJRBKpFAAAARCA",
				popularity = "54.4%",
				dps = "539.7k",
				keystone = "+19"
			},
		},
		["subtlety"] = {
			["MythicPlus"] = {
				talentString = "BUQAAAAAAAAAAAAAAAAAAAAAAAAEEAAAAAASJJJlEQKFRSikEHIJJRi0iI0aJJSSCgSaBAAAgEEA",
				popularity = "25.9%",
				dps = "401.3k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "BUQAAAAAAAAAAAAAAAAAAAAAAAAEEAAAAAASJJJlERSKFRICxBSSSISLSS0aJJSSCgSaBAAAgEEA",
				popularity = "78.8%",
				dps = "430.5k",
			},
		},
	},
	["priest"] = {
		["holy"] = {
			["MythicPlus"] = {
				talentString = "BEQAAAAAAAAAAAAAAAAAAAAAAQEAAAAAAAcgmIlEkERgEJElkkSAAAAAFl0QJJBQKJSiIKFIJhUAA",
				popularity = "29.2%",
				dps = "153.1k",
				hps = "126.4k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "BEQAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAgWAtkkkEJkWEJBlEKBAAAAUUSL0SSQKESSigSBSESBA",
				popularity = "52.6%",
				dps = "53.8k",
				hps = "397.4k",
			},
		},
		["discipline"] = {
			["Raiding"] = {
				talentString = "BAQAAAAAAAAAAAAAAAAAAAAAAAAapFRQLikEJkSSSSIBAAAAAAAAAAAFl0ItkApQIJigi0SEBlIA",
				popularity = "10.5%",
				dps = "72.5k",
				hps = "291.6k",
			},
			["MythicPlus"] = {
				talentString = "BAQAAAAAAAAAAAAAAAAAAAAAAABolSkE0iIJRSTaJJJhAAAAAAAAAAAAFl0QLJBpQKiICpQLRSQBA",
				popularity = "27.8%",
				dps = "156.9k",
				hps = "144.4k",
				keystone = "+19"
			},
		},
		["shadow"] = {
			["Raiding"] = {
				talentString = "BIQAAAAAAAAAAAAAAAAAAAAAAggkEAAAAAAAAAAAAgQKOAJJt0IJJJRigUIJJRaEIiQKSLkEUQC",
				popularity = "31.7%",
				dps = "505.4k",
			},
			["MythicPlus"] = {
				talentString = "BIQAAAAAAAAAAAAAAAAAAAAAAESIEAAAAAAAAAAAAgIpIRSSTjkkkEHggUIJJRaEIiEpItQSQBJA",
				popularity = "73.7%",
				dps = "732.6k",
				keystone = "+20"
			},
		},
	},
	["death-knight"] = {
		["frost"] = {
			["MythicPlus"] = {
				talentString = "BsPAAAAAAAAAAAAAAAAAAAAAAICgIkkIHIiERSOgkECiIRSSkAHgkERSSSSKJBAAAAAAAAAAAA",
				popularity = "74.0%",
				dps = "496.6k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BsPAAAAAAAAAAAAAAAAAAAAAAICASIJRiIREikECJSSEJIIhkERSSSSKJBAAAAAAAAAAAA",
				popularity = "24.5%",
				dps = "483.7k",
			},
		},
		["blood"] = {
			["MythicPlus"] = {
				talentString = "BoPAAAAAAAAAAAAAAAAAAAAAAAikkIRSiItIRQiIhgkIRCAAAAAgkkEItESSAAARSSSAAAAA",
				popularity = "22.8%",
				dps = "249.7k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BoPAAAAAAAAAAAAAAAAAAAAAAACJIkkIHIiERkISIIJJRCAAAAAkIJ5ARk0EiEAAQIJJJAAAA",
				popularity = "24.2%",
				dps = "308.1k",
			},
		},
		["unholy"] = {
			["MythicPlus"] = {
				talentString = "BwPAAAAAAAAAAAAAAAAAAAAAAAAiQSicgISERiEhgkIRCAAAAAAAAAKkEhIJpBAQiUEJJJSSA",
				popularity = "70.3%",
				dps = "519.7k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BwPAAAAAAAAAAAAAAAAAAAAAAAAIikEJiERISECJJJRAAAAAAAAAgSSSICAAIJh0SkkkIJA",
				popularity = "74.8%",
				dps = "510.7k",
			},
		},
	},
	["shaman"] = {
		["enhancement"] = {
			["MythicPlus"] = {
				talentString = "BcQAAAAAAAAAAAAAAAAAAAAAAIRSKRCCJhkk0QJRAAAAAAAAAAAAAKRICJkioQSTSKBRpEEASA",
				popularity = "74.2%",
				dps = "465.9k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "BcQAAAAAAAAAAAAAAAAAAAAAAIJJpEJgkESSSDlEAAAAAAAAAAAAAKRIJkgiAJNJpEBQOQCBSA",
				popularity = "80.5%",
				dps = "469.7k",
			},
		},
		["restoration"] = {
			["Raiding"] = {
				talentString = "BgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQIRSiSCplk0kU0okkSQQJBAINJppkIIJRSQLA",
				popularity = "25.5%",
				dps = "65.1k",
				hps = "394.2k",
			},
			["MythicPlus"] = {
				talentString = "BgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQIJJJpkUSKJJNBNIpEEUSCpBINJoEiSSSkEIA",
				popularity = "8.6%",
				dps = "87.6k",
				hps = "134.5k",
				keystone = "+16"
			},
		},
		["elemental"] = {
			["MythicPlus"] = {
				talentString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAg0SrIJlkACSjSUSLJOQOAAAAAAgSASJJkCpUiUSiSKBlSQAIA",
				popularity = "70.2%",
				dps = "521.7k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAgUSrUSCgDk0SShSgkkEBAAAAAoEgUSCpJBSLJppEokQEgA",
				popularity = "35.8%",
				dps = "357.6k",
			},
		},
	},
	["mage"] = {
		["fire"] = {
			["MythicPlus"] = {
				talentString = "B8DAAAAAAAAAAAAAAAAAAAAAAIJIFNkEJp4AISCRkDESCAAAAAAAAgIikkQJRJJhkkkkGAAAItA",
				popularity = "63.6%",
				dps = "588.9k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "B8DAAAAAAAAAAAAAAAAAAAAAAIRSCNHQCJpIwBSCREhkAAAAAAAAAgIkIOQJ5AlkkkkkkkGAAAINA",
				popularity = "50.7%",
				dps = "439.9k",
			},
		},
		["arcane"] = {
			["MythicPlus"] = {
				talentString = "B4DAAAAAAAAAAAAAAAAAAAAAAQiIFNkEJp4AISCRkDESSgkkQSLJAAAAAAAAAAAgIJJJkkkIkA",
				popularity = "64.9%",
				dps = "439.7k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "B4DAAAAAAAAAAAAAAAAAAAAAAQEUSDJSkigIJERSIRCkEk0SCAAAAAAAAAAAISSSSkkkEIA",
				popularity = "49.2%",
				dps = "462.7k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "BAEAAAAAAAAAAAAAAAAAAAAAAQCSRDJRSKOAikQE5ARSCAAQCJSIJJJJSSSSkEAAAAAAAAAICA",
				popularity = "72.8%",
				dps = "525.2k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BAEAAAAAAAAAAAAAAAAAAAAAAQEUSDJJRKCIJERSkEAAASJRSIRSSIJJJJJBAAAAAAAAAiA",
				popularity = "51.7%",
				dps = "446.2k",
			},
		},
	},
	["warlock"] = {
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "BsQAAAAAAAAAAAAAAAAAAAAAAAIJRSCkmCRaJJhUCJJUiERJoVKSCAAAAAAAAAAAgAKJJJA",
				popularity = "57.7%",
				dps = "577.5k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BsQAAAAAAAAAAAAAAAAAAAAAAggkEJJQaKQaJJhUiWwBUSSkAalikAAAAAAAAAAAAIJokEJA",
				popularity = "35.4%",
				dps = "403.4k",
			},
		},
		["demonology"] = {
			["Raiding"] = {
				talentString = "BoQAAAAAAAAAAAAAAAAAAAAAAggkEJJQaKQaJJhUCAAAAAIBSikSEhkIpolkkQAAAAAAQiA",
				popularity = "26.9%",
				dps = "398.6k",
			},
			["MythicPlus"] = {
				talentString = "BoQAAAAAAAAAAAAAAAAAAAAAAggkEJJQaKEpdgkESJAAAAAABikkWERSikSaJRCBAAAAAAJJ",
				popularity = "52.6%",
				dps = "513.2k",
				keystone = "+17"
			},
		},
		["affliction"] = {
			["MythicPlus"] = {
				talentString = "BkQAAAAAAAAAAAAAAAAAAAAAAAJJJRSCkmCRaSSIlAAAAAFAAAAAAACRjkEJSSiWSSAAJA",
				popularity = "62.6%",
				dps = "453.2k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "BkQAAAAAAAAAAAAAAAAAAAAAAAHIJJRSCkmCkWSSIlAAAAANAAAAAAASEtQkkIJSaJRAAJA",
				popularity = "58.5%",
				dps = "398.0k",
			},
		},
	},
	["monk"] = {
		["mistweaver"] = {
			["MythicPlus"] = {
				talentString = "B4QAAAAAAAAAAAAAAAAAAAAAA0SKFJJHQUKtIkSEJNIlUEAAAAAAAAAAAAg0SUSSIJRrIQSSDOABAQkGA",
				popularity = "27.2%",
				dps = "122.4k",
				hps = "142.7k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "B4QAAAAAAAAAAAAAAAAAAAAAAUiCSkoUaNCpEJJlAt0aBAAAAAAAAAAAAk0SUQIJRpAQSLJJRAAEaE",
				popularity = "45.7%",
				dps = "20.6k",
				hps = "377.9k",
			},
		},
		["brewmaster"] = {
			["MythicPlus"] = {
				talentString = "BwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAAAgUiWLJJQSSpRAAAASJUSiEJ0KkkSOQSJBENJSLtSIA",
				popularity = "28.6%",
				dps = "273.6k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "BwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAAAQShWJJJQSSrRAAAASLSRiEJUKSSaJJlEgWjIt0KhAA",
				popularity = "37.9%",
				dps = "248.0k",
			},
		},
		["windwalker"] = {
			["MythicPlus"] = {
				talentString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARSkkElISEAAAAQkkUIRgkkIcgUSSIJRrQSkk0AcAAAQD",
				popularity = "55.2%",
				dps = "473.9k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIRSS0iIRAAAAgEJJFAJJJJCHIlkERClikEJJtEAAAQD",
				popularity = "65.8%",
				dps = "502.4k",
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["MythicPlus"] = {
				talentString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgCAJJigkAkESSSBaJOQkkUSCJJEaSLSkENAK0AE",
				popularity = "42.7%",
				dps = "536.1k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgCAJJigkQQSikIFolIJSSJRTcgQol0SSERDgCAE",
				popularity = "52.0%",
				dps = "363.0k",
			},
		},
		["feral"] = {
			["MythicPlus"] = {
				talentString = "BcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEJt0kQSSSSJtDgWSkIJAAAAAAKAkkAQCJJJhkIlgWiDAAAAAAgEAAA",
				popularity = "31.3%",
				dps = "435.3k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "BcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAACSLioIJJJl0IaJJxBSCAAAAAgGAJCAQSSSIJUSolkAAAAAAgEAAA",
				popularity = "39.3%",
				dps = "400.3k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "BkGAAAAAAAAAAAAAAAAAAAAAA0IJRDJJpItkIIFaaRSAAAAAAAAAAAAABIJJIIhAJRSSSBBAAAAAAiAAgkA",
				popularity = "21.5%",
				dps = "142.1k",
				hps = "134.6k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BkGAAAAAAAAAAAAAAAAAAAAAA0ikElWkIhUQiIFhWkEAAAAAAAAAAAAoAIJCCSAkESiUIplIAAAAAgIAAIC",
				popularity = "61.5%",
				dps = "30.0k",
				hps = "427.0k",
			},
		},
		["guardian"] = {
			["MythicPlus"] = {
				talentString = "BgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQikISJiEBJpIhkUAAJJASISSSikIFhGCAAAAAQEQChA",
				popularity = "31.0%",
				dps = "229.3k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "BgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQiIJJlElICiiESShCAJCCSgkkkkkIFoFOAAAAAAQEQQCA",
				popularity = "16.1%",
				dps = "194.0k",
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			["MythicPlus"] = {
				talentString = "BEkAAAAAAAAAAAAAAAAAAAAAAIJJRSCSSiQISCAAAAAAIlIRSIJNJplWEBSIKtIJRA",
				popularity = "26.7%",
				dps = "473.8k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BEkAAAAAAAAAAAAAAAAAAAAAAIJRkkgkkISgkAAAAAAASLEJRSSLJplWEBSIKtIJRA",
				popularity = "49.2%",
				dps = "473.5k",
			},
		},
		["vengeance"] = {
			["Raiding"] = {
				talentString = "BUkAAAAAAAAAAAAAAAAAAAAAAAAiIJJikgkERISJJEaJSSIhkEJRLSIBBAAAAkkEA",
				popularity = "16.1%",
				dps = "273.6k",
			},
			["MythicPlus"] = {
				talentString = "BUkAAAAAAAAAAAAAAAAAAAAAAAASiQiQSIJhES0SikolEiEERaJJNJRSIBAAAAkkA",
				popularity = "27.3%",
				dps = "285.4k",
				keystone = "+20"
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["MythicPlus"] = {
				talentString = "BsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAiEIRSkEIpJCJCJh0iSSSSISKJgkk0ikIRgAA",
				popularity = "70.0%",
				dps = "471.7k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJSCSaSQABikIRSItokkkEikWCIRSLSikEIQA",
				popularity = "26.9%",
				dps = "455.8k",
			},
		},
		["preservation"] = {
			["MythicPlus"] = {
				talentString = "BwbBAAAAAAAAAAAAAAAAAAAAAAAAAAASSSkSgIJRKSSEAAAkEJJpJCJBRCAAAIJhk0SiIEAA",
				popularity = "24.6%",
				dps = "132.3k",
				hps = "147.8k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAIJplSOACJRKIpFJBAAIRioIikASAAAASSQSLJHISSAQA",
				popularity = "10.8%",
				dps = "22.6k",
				hps = "361.6k",
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "BEcBAAAAAAAAAAAAAAAAAAAAAQSJpFJJKhkkSCSSSDAAAAAAAAJBimISIkkAAAAAJJtIJikARTA",
				popularity = "36.8%",
				dps = "431.6k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BEcBAAAAAAAAAAAAAAAAAAAAAQikWkkoESSkESSSDAAAAAEAAkEAISISSCAAAASk0ikkIJQ0SA",
				popularity = "23.9%",
				dps = "474.0k",
			},
		},
	},
}
addonTable.DB = talentData