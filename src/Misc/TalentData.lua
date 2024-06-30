local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["warrior"] = {
		["arms"] = {
			MythicPlus = {
				talentString = "BcEAAAAAAAAAAAAAAAAAAAAAAAQplIRkQSiWpEJAAAAQQEiCJRUEBIikEaSECwBQkAAAAAAAAQiWiIgQ0QA",
				popularity = "44.7%",
				hps = "N/A",
				dps = "576.1k"
			},
			Raiding = {
				talentString = "BcEAAAAAAAAAAAAAAAAAAAAAAAQRikEJkDko0KJBAAAAEEhoQAFRCECJhmEhAESIAAAAAAAAkEkkACRDB",
				popularity = "41.9%",
				hps = "N/A",
				dps = "41.9%"
			},
		},
		["fury"] = {
			MythicPlus = {
				talentString = "BgEAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQggSCQEEiIJRBEiQEEJJplEJJhkQSIRKBIJSEAAAEQQA",
				popularity = "83.8%",
				hps = "N/A",
				dps = "510.2k"
			},
			Raiding = {
				talentString = "BgEAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQggSQQEEiIJRBSICEOQIJplEJJhkQSIRKBIJSEAAAEQQA",
				popularity = "64.2%",
				hps = "N/A",
				dps = "64.2%"
			},
		},
		["protection"] = {
			MythicPlus = {
				talentString = "BkEAAAAAAAAAAAAAAAAAAAAAAIQAAAAgkkQSik0SKJJpBRgQRiElkEACJBNkkgAEJAAAAAAAQSAAKtGAIA",
				popularity = "20.5%",
				hps = "N/A",
				dps = "295.5k"
			},
			Raiding = {
				talentString = "BkEAAAAAAAAAAAAAAAAAAAAAAIQAAAAgkkQSCSLpkkkWDRgQRAlkEgISSCNkkAcAOQIAAAAAAAQSAAHo0aAgA",
				popularity = "11.8%",
				hps = "N/A",
				dps = "11.8%"
			},
		},
	},
	["paladin"] = {
		["holy"] = {
			MythicPlus = {
				talentString = "BEEAAAAAAAAAAAAAAAAAAAAAAAABAABAEBAAIAtIFkSJSSrISLJUSSo0aiGIJFBJJEpAiIAgAANgQigA",
				popularity = "5.8%",
				hps = "129.2k",
				dps = "83.9k"
			},
			Raiding = {
				talentString = "BEEAAAAAAAAAAAAAAAAAAAAAAAAAAQAARAAACQLJFoUik0ahUSClkEKaiGQSJBJJEpgmkIAgAAFgQSCC",
				popularity = "24.2%",
				hps = "24.2%",
				dps = "50.3k"
			},
		},
		["protection"] = {
			MythicPlus = {
				talentString = "BIEAAAAAAAAAAAAAAAAAAAAAA0SaJkiodAtIJKNJJSEJSAAACAAAAAAAoJkkUEIBJpIg0AgIQCAgAE",
				popularity = "22.1%",
				hps = "N/A",
				dps = "248.8k"
			},
			Raiding = {
				talentString = "BIEAAAAAAAAAAAAAAAAAAAAAA0SaJkiodAtkko0kkIRkIBAAIAAAAAAAACJJEIJkkigIAgIQCAgAE",
				popularity = "4.1%",
				hps = "N/A",
				dps = "4.1%"
			},
		},
		["retribution"] = {
			MythicPlus = {
				talentString = "BYEAAAAAAAAAAAAAAAAAAAAAAAAAAQAgIUKtSSr0koIJpIJAAAAAAQaQSCBSCRKRICRKJahISgoUoBAA",
				popularity = "62.2%",
				hps = "N/A",
				dps = "576.1k"
			},
			Raiding = {
				talentString = "BYEAAAAAAAAAAAAAAAAAAAAAAAAAAQAgIalSrk0KNiWkkWSAAAAAAABkkQgkQkSESCpkSChICJiShGAA",
				popularity = "63.2%",
				hps = "N/A",
				dps = "63.2%"
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			MythicPlus = {
				talentString = "B0PAAAAAAAAAAAAAAAAAAAAAA4AQaJBgCBAAAAAAAAAAgGRKSoFSCHISkEKQEtcgEJJRoFJJB",
				popularity = "74.7%",
				hps = "N/A",
				dps = "548.2k"
			},
			Raiding = {
				talentString = "B0PAAAAAAAAAAAAAAAAAAAAAA4AgWSAoQAAAAAAAAAAAoBhEaikQCJJoJkWUSSkIEaRSSA",
				popularity = "50.1%",
				hps = "N/A",
				dps = "50.1%"
			},
		},
		["marksmanship"] = {
			MythicPlus = {
				talentString = "B4PAAAAAAAAAAAAAAAAAAAAAA4ABaBgoggAAAAAEJJHQSCICJJtEp1ERUkimQiESIhGAAAAA",
				popularity = "54.0%",
				hps = "N/A",
				dps = "561.8k"
			},
			Raiding = {
				talentString = "B4PAAAAAAAAAAAAAAAAAAAAAA4ABaBgoggAAAAAEJJHQSCICJJtEpVER0kimQiESIhGAAAAA",
				popularity = "25.5%",
				hps = "N/A",
				dps = "25.5%"
			},
		},
		["survival"] = {
			MythicPlus = {
				talentString = "B8PAAAAAAAAAAAAAAAAAAAAAA4ABaBJEKBBJJJplkgDQkEkIAAAAAQEp0kiGkIhESoBAAAAA",
				popularity = "11.1%",
				hps = "N/A",
				dps = "322.6k"
			},
			Raiding = {
				talentString = "B8PAAAAAAAAAAAAAAAAAAAAAAIhWaBJBKBBJkEJkIEJhkkAAAAAABRRoJkIBhgCAAAAA",
				popularity = "29.8%",
				hps = "N/A",
				dps = "29.8%"
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			MythicPlus = {
				talentString = "BMQAAAAAAAAAAAAAAAAAAAAAAEJJJJSAAAAAAASJJSLJAAAAAAQrEJIBSSKplEBJRSQSiWJJBA",
				popularity = "38.7%",
				hps = "N/A",
				dps = "495.6k"
			},
			Raiding = {
				talentString = "BMQAAAAAAAAAAAAAAAAAAAAAAEJJhkEEAAAAAASJJSJJAAAAAAgWSCSgkkSaJREEJJJRSTJSAA",
				popularity = "46.9%",
				hps = "N/A",
				dps = "46.9%"
			},
		},
		["outlaw"] = {
			MythicPlus = {
				talentString = "BQQAAAAAAAAAAAAAAAAAAAAAAAAElEEJhkkESIRSSolkElkItkAAAAAAAtSkwBSSUgSaBAAAQSCA",
				popularity = "59.3%",
				hps = "N/A",
				dps = "558.1k"
			},
			Raiding = {
				talentString = "BQQAAAAAAAAAAAAAAAAAAAAAAAAElEEJhkkESIRSSolkElkItkAAAAAAAtWSCHIJRBKpFAAAARCA",
				popularity = "27.9%",
				hps = "N/A",
				dps = "27.9%"
			},
		},
		["subtlety"] = {
			MythicPlus = {
				talentString = "BUQAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAgUSSSJBkSRkkIJxBSSSkItIi0KJJSSCgSaBAAAQEEA",
				popularity = "11.9%",
				hps = "N/A",
				dps = "334.2k"
			},
			Raiding = {
				talentString = "BUQAAAAAAAAAAAAAAAAAAAAAAAAEEAAAAAASJJJlERSKFRICxBSSSISLSS0aJJSSCgSaBAAAgEEA",
				popularity = "74.1%",
				hps = "N/A",
				dps = "74.1%"
			},
		},
	},
	["priest"] = {
		["discipline"] = {
			MythicPlus = {
				talentString = "BAQAAAAAAAAAAAAAAAAAAAAAAAAapEJBtISSk0kWSSSIAAAAAAAAAAAQRJN0SSQKEikIkCtEJBlAA",
				popularity = "28.1%",
				hps = "135.6k",
				dps = "147.4k"
			},
			Raiding = {
				talentString = "BAQAAAAAAAAAAAAAAAAAAAAAAAAapFRQLikEJkSSSSIBAAAAAAAAAAAFl0Og0SCkChgIki0SEBlIA",
				popularity = "17.3%",
				hps = "17.3%",
				dps = "85.6k"
			},
		},
		["holy"] = {
			MythicPlus = {
				talentString = "BEQAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAHoJSJBJREIRCRJJpEAAAAAt0OAlkApQkIJioUIJJhUAA",
				popularity = "26.1%",
				hps = "136.1k",
				dps = "151.7k"
			},
			Raiding = {
				talentString = "BEQAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAgWAtkkkEJkWEJBlEKBAAAAUUSL0SSQKESSigSBSESBA",
				popularity = "51.6%",
				hps = "51.6%",
				dps = "44.9k"
			},
		},
		["shadow"] = {
			MythicPlus = {
				talentString = "BIQAAAAAAAAAAAAAAAAAAAAAAECCBAAAAAAAAAAAAISKSkk00IJJJBlQJNSSCpRIiIki0CJBFkA",
				popularity = "77.7%",
				hps = "N/A",
				dps = "798.1k"
			},
			Raiding = {
				talentString = "BIQAAAAAAAAAAAAAAAAAAAAAAggkEAAAAAAAAAAAAgQKOAJJt0IJJJRigUIJJRaEIiQKSLkEUQC",
				popularity = "33.6%",
				hps = "N/A",
				dps = "33.6%"
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			MythicPlus = {
				talentString = "BoPAAAAAAAAAAAAAAAAAAAAAAAikkIRSiIiERkISIIJSkAAAAAAIJJBSLhkEAAQkkkEAAAA",
				popularity = "19.6%",
				hps = "N/A",
				dps = "290.6k"
			},
			Raiding = {
				talentString = "BoPAAAAAAAAAAAAAAAAAAAAAAACJIkkIHIiERkISIIJJRCAAAAAkIJ5ARk0EiEAAQIJJJAAAA",
				popularity = "29.8%",
				hps = "N/A",
				dps = "29.8%"
			},
		},
		["frost"] = {
			MythicPlus = {
				talentString = "BsPAAAAAAAAAAAAAAAAAAAAAAICgIkkIHIiERkIJhgISkkEJwBIJRkkkkkSSAAAAAAAAAAAAA",
				popularity = "77.4%",
				hps = "N/A",
				dps = "642.5k"
			},
			Raiding = {
				talentString = "BsPAAAAAAAAAAAAAAAAAAAAAAICASIJRiIREikECJSSEJIIhkERSSSSKJBAAAAAAAAAAAA",
				popularity = "31.4%",
				hps = "N/A",
				dps = "31.4%"
			},
		},
		["unholy"] = {
			MythicPlus = {
				talentString = "BwPAAAAAAAAAAAAAAAAAAAAAAAAiQSicgISERiEhgkIRCAAAAAAAAAKkEhIJpBAQiUEJJJSSA",
				popularity = "72.0%",
				hps = "N/A",
				dps = "603.0k"
			},
			Raiding = {
				talentString = "BwPAAAAAAAAAAAAAAAAAAAAAAAAIikEJiERISECJJJRAAAAAAAAAgSSSICAAIJh0SkkkIJA",
				popularity = "77.2%",
				hps = "N/A",
				dps = "77.2%"
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			MythicPlus = {
				talentString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAg0SrIJlkACSjSUSLJOQOAAAAAAgSAJlkQKog0SSaKBKBREIA",
				popularity = "69.7%",
				hps = "N/A",
				dps = "600.7k"
			},
			Raiding = {
				talentString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAgUSrUSCgDk0SShSgkkEBAAAAAoEQSJJoJg0SSahACJSgA",
				popularity = "37.0%",
				hps = "N/A",
				dps = "37.0%"
			},
		},
		["enhancement"] = {
			MythicPlus = {
				talentString = "BcQAAAAAAAAAAAAAAAAAAAAAAIRSKRCCJhkk0QJRAAAAAAAAAAAAAKRIJkokikCSRSKAKBxBEIB",
				popularity = "81.5%",
				hps = "N/A",
				dps = "507.5k"
			},
			Raiding = {
				talentString = "BcQAAAAAAAAAAAAAAAAAAAAAAIJJpEJgkESSSDlEAAAAAAAAAAAAAKRIJkgiAJNJpEBQOQCBSA",
				popularity = "81.0%",
				hps = "N/A",
				dps = "81.0%"
			},
		},
		["restoration"] = {
			MythicPlus = {
				talentString = "BgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIpJJJJRSJpIRJBNIpEESJJKpgCSLBgUKJRkEIA",
				popularity = "9.8%",
				hps = "140.7k",
				dps = "156.0k"
			},
			Raiding = {
				talentString = "BgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQIRSiSCplk0kU0okkSQQJBAINJppkIIJRSQLA",
				popularity = "30.2%",
				hps = "30.2%",
				dps = "64.5k"
			},
		},
	},
	["mage"] = {
		["arcane"] = {
			MythicPlus = {
				talentString = "B4DAAAAAAAAAAAAAAAAAAAAAAIJIl0QSkkiASCRkESEIJJk0SCAAAAAAAAAAAISSSCJJJCJA",
				popularity = "69.4%",
				hps = "N/A",
				dps = "473.4k"
			},
			Raiding = {
				talentString = "B4DAAAAAAAAAAAAAAAAAAAAAAQEUSDJSkigIJERSIRCkEk0SCAAAAAAAAAAAISSSSkkkEIA",
				popularity = "40.3%",
				hps = "N/A",
				dps = "40.3%"
			},
		},
		["fire"] = {
			MythicPlus = {
				talentString = "B8DAAAAAAAAAAAAAAAAAAAAAAIJIFNk4AJp5AgkQEJpIJAAAAAAAAAiISSClElkESSSSaAAAg0C",
				popularity = "71.8%",
				hps = "N/A",
				dps = "644.7k"
			},
			Raiding = {
				talentString = "B8DAAAAAAAAAAAAAAAAAAAAAAQCSRDJRSKCcgkQEJhkAAAAAAAAAgIkIOQJ5AlkkkkkkkGAAAINA",
				popularity = "51.5%",
				hps = "N/A",
				dps = "51.5%"
			},
		},
		["frost"] = {
			MythicPlus = {
				talentString = "BAEAAAAAAAAAAAAAAAAAAAAAAIJIFNkQSKOAikQERKJJAAAJkIhkkkkIJJJRSAAAAAAAAAgIA",
				popularity = "73.1%",
				hps = "N/A",
				dps = "631.6k"
			},
			Raiding = {
				talentString = "BAEAAAAAAAAAAAAAAAAAAAAAAQCUSzBkQkigIJERSkEAAASJRSIRSSIJJJJJBAAAAAAAAAiA",
				popularity = "52.5%",
				hps = "N/A",
				dps = "52.5%"
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			MythicPlus = {
				talentString = "BkQAAAAAAAAAAAAAAAAAAAAAAAHIJJRSCkmCRKHIJhUCAAAAUAAAAAAAIENSSkIJJaJJBAkA",
				popularity = "66.9%",
				hps = "N/A",
				dps = "502.7k"
			},
			Raiding = {
				talentString = "BkQAAAAAAAAAAAAAAAAAAAAAAAHIJJRSCkmCkWSSIlAAAAANAAAAAAASEtQkkIJSaJRAAJA",
				popularity = "56.6%",
				hps = "N/A",
				dps = "56.6%"
			},
		},
		["demonology"] = {
			MythicPlus = {
				talentString = "BoQAAAAAAAAAAAAAAAAAAAAAAcACSSkkApooEpdgkESLAAAAAABikkWERSikSaJRCBAAAAAARC",
				popularity = "52.0%",
				hps = "N/A",
				dps = "553.6k"
			},
			Raiding = {
				talentString = "BoQAAAAAAAAAAAAAAAAAAAAAAggkEJJQaKQaJJhUCAAAAAIBSikSEhkIpolkkQAAAAAAQiA",
				popularity = "27.4%",
				hps = "N/A",
				dps = "27.4%"
			},
		},
		["destruction"] = {
			MythicPlus = {
				talentString = "BsQAAAAAAAAAAAAAAAAAAAAAAAIJRSCRaKEpJJRSJkkQJSElgWpIJAAAAAAAAAAAACokkkA",
				popularity = "57.1%",
				hps = "N/A",
				dps = "711.0k"
			},
			Raiding = {
				talentString = "BsQAAAAAAAAAAAAAAAAAAAAAAggkEJJQaKQaJJhUiWwBUSSkAalikAAAAAAAAAAAAIJokEJA",
				popularity = "31.6%",
				hps = "N/A",
				dps = "31.6%"
			},
		},
	},
	["monk"] = {
		["brewmaster"] = {
			MythicPlus = {
				talentString = "BwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAAAgUiWLJJQSSpRAAAASJUSiEJ0KkkSOQSJBENJSLtSIA",
				popularity = "38.7%",
				hps = "N/A",
				dps = "313.7k"
			},
			Raiding = {
				talentString = "BwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAAAQShWJJJQSSrRAAAASLSRiEJUKSSaJJlEgWjIt0KhAA",
				popularity = "39.4%",
				hps = "N/A",
				dps = "39.4%"
			},
		},
		["mistweaver"] = {
			MythicPlus = {
				talentString = "B4QAAAAAAAAAAAAAAAAAAAAAA0SKFJJHQUKtIkSEJNIlUEAAAAAAAAAAAAgASSIJRrIJRSSDOABAQkGA",
				popularity = "23.9%",
				hps = "157.5k",
				dps = "126.7k"
			},
			Raiding = {
				talentString = "B4QAAAAAAAAAAAAAAAAAAAAAAUiCSkoUaNCpEJJlAt0aBAAAAAAAAAAAAk0SUQIJRpAQSLJJRAAEaE",
				popularity = "54.2%",
				hps = "54.2%",
				dps = "19.7k"
			},
		},
		["windwalker"] = {
			MythicPlus = {
				talentString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARSkkElISEAAAAQkkUIRgkkIkUSSIJRrIJRyBSDAAAQD",
				popularity = "62.2%",
				hps = "N/A",
				dps = "540.5k"
			},
			Raiding = {
				talentString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAhEJJRLiEBAAAASkkUAkkkkk0SCERCtikQSSLBBAAQD",
				popularity = "65.6%",
				hps = "N/A",
				dps = "65.6%"
			},
		},
	},
	["druid"] = {
		["balance"] = {
			MythicPlus = {
				talentString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgCAJJigkAkESSSBaJOQkkUSCJJEaSLSkENAK0AE",
				popularity = "51.7%",
				hps = "N/A",
				dps = "610.1k"
			},
			Raiding = {
				talentString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgCAJJigkQQSikIFolIJSSJRTcgQol0SSERDgCAE",
				popularity = "55.5%",
				hps = "N/A",
				dps = "55.5%"
			},
		},
		["feral"] = {
			MythicPlus = {
				talentString = "BcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEJt0kQSSSSJtDgWSkIJAAAAAAKAkkAIJkkkESSUCa4AAAAAAAIBAA",
				popularity = "36.8%",
				hps = "N/A",
				dps = "480.0k"
			},
			Raiding = {
				talentString = "BcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAACSLioIJJJl0IaJJxBSCAAAAAgGAJCAQSSSIJUSolkAAAAAAgEAAA",
				popularity = "35.8%",
				hps = "N/A",
				dps = "35.8%"
			},
		},
		["guardian"] = {
			MythicPlus = {
				talentString = "BgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQikISJiEBJpIhkUAAJJASISSSikIFhGCAAAAAQEQChA",
				popularity = "31.4%",
				hps = "N/A",
				dps = "275.4k"
			},
			Raiding = {
				talentString = "BgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQiIJJlElICiiESShCAJCCSgkkkkkIFoFOAAAAAAQEQQCA",
				popularity = "16.6%",
				hps = "N/A",
				dps = "16.6%"
			},
		},
		["restoration"] = {
			MythicPlus = {
				talentString = "BkGAAAAAAAAAAAAAAAAAAAAAA0IJRDJJpIlkIIFaaRSAAAAAAAAAAAAABIJJIIhAJRSSSBBAAAAAAiAAgkA",
				popularity = "24.5%",
				hps = "152.0k",
				dps = "142.8k"
			},
			Raiding = {
				talentString = "BkGAAAAAAAAAAAAAAAAAAAAAA0ikElWkIhUQiIFhWkEAAAAAAAAAAAAoAIJCCSAkESiUIplIAAAAAgIAAIC",
				popularity = "65.0%",
				hps = "65.0%",
				dps = "30.3k"
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			MythicPlus = {
				talentString = "BEkAAAAAAAAAAAAAAAAAAAAAAIJJRSCSSiIhkkAAAAAAASLEJkk0kkWaREIho0ikEB",
				popularity = "23.7%",
				hps = "N/A",
				dps = "552.1k"
			},
			Raiding = {
				talentString = "BEkAAAAAAAAAAAAAAAAAAAAAAIJRkkgkkISgkAAAAAAASLEJRSSLJplWEBSIKtIJRA",
				popularity = "49.9%",
				hps = "N/A",
				dps = "49.9%"
			},
		},
		["vengeance"] = {
			MythicPlus = {
				talentString = "BUkAAAAAAAAAAAAAAAAAAAAAAAASiIJCJhkESIRLJSiWSISQEplk0kEJBBAAAAkkA",
				popularity = "29.3%",
				hps = "N/A",
				dps = "319.0k"
			},
			Raiding = {
				talentString = "BUkAAAAAAAAAAAAAAAAAAAAAAAAiIJJikgkERISJJEaJSSIhkEJRLSIBBAAAAkkEA",
				popularity = "11.8%",
				hps = "N/A",
				dps = "11.8%"
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			MythicPlus = {
				talentString = "BsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAiEIRSkEkkGCJSkESLKJJJhIpkAEJtIJiEIQA",
				popularity = "74.2%",
				hps = "N/A",
				dps = "561.7k"
			},
			Raiding = {
				talentString = "BsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJSCSaSQABikIRSItokkkEikWCIRSLSikEIQA",
				popularity = "23.4%",
				hps = "N/A",
				dps = "23.4%"
			},
		},
		["preservation"] = {
			MythicPlus = {
				talentString = "BwbBAAAAAAAAAAAAAAAAAAAAAAAAAAASSSkSgIJRKSSEQAAQSkkEiIJQEAAAgkkQSLJiQAA",
				popularity = "31.1%",
				hps = "156.7k",
				dps = "146.6k"
			},
			Raiding = {
				talentString = "BwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAIJplSOACJRKIpFJRAAQSkIIikASAAAASSCJSiIJBAB",
				popularity = "12.7%",
				hps = "12.7%",
				dps = "54.7k"
			},
		},
		["augmentation"] = {
			MythicPlus = {
				talentString = "BEcBAAAAAAAAAAAAAAAAAAAAAQSJpFJJKhkkSCSSSDAAAAAAAAJBJaiIhQkAAAAAJJtIJJSCENB",
				popularity = "33.4%",
				hps = "N/A",
				dps = "465.9k"
			},
			Raiding = {
				talentString = "BEcBAAAAAAAAAAAAAAAAAAAAAQikWkkoESSkESSSDAAAAAEAAkEAISISSCAAAASk0ikkIJQ0SA",
				popularity = "28.2%",
				hps = "N/A",
				dps = "28.2%"
			},
		},
	},
}