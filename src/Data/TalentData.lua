local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["paladin"] = {
		["holy"] = {
			["Raiding"] = {
				talentString = "BEEAAAAAAAAAAAAAAAAAAAAAAAAAAQAARAAACQLJFoUik0ahUSClkEKaiGQSJBJJEpgmkIAgAAFgQSCC",
				popularity = "26.7%",
				dps = "43.9k",
				hps = "429.4k",
			},
			["MythicPlus"] = {
				talentString = "BEEAAAAAAAAAAAAAAAAAAAAAAAABAABAEBAAIAtIFkSJSSrISLJUSSo0aiGIJFBJJEpAiIAgAANgQigA",
				popularity = "8.8%",
				dps = "60.5k",
				hps = "85.0k",
				keystone = "+12"
			},
		},
		["protection"] = {
			["Raiding"] = {
				talentString = "BIEAAAAAAAAAAAAAAAAAAAAAAUSKJSKiyB0iEaNJJSQIBAAIAAAAAAAASEJFBSQSKCJJNAICIACIAB",
				popularity = "4.5%",
				dps = "207.6k",
			},
			["MythicPlus"] = {
				talentString = "BIEAAAAAAAAAAAAAAAAAAAAAA0SaJkiodAtkko0kkIRkIBAAAAAAAAAAoJOQSSRgEkkiACAICkAAIAB",
				popularity = "16.3%",
				dps = "173.9k",
				keystone = "+14"
			},
		},
		["retribution"] = {
			["MythicPlus"] = {
				talentString = "BYEAAAAAAAAAAAAAAAAAAAAAAAAAAQAgIUKtSSr0koIJpIJAAAAAAQaQSCBSCRKRIJEpkoFiIIiSBAA",
				popularity = "56.5%",
				dps = "504.2k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BYEAAAAAAAAAAAAAAAAAAAAAAAAAAQAgIalSrk0KNiWkkWSAAAAAAABkkQgkQkSESCpkSChICJiShGAA",
				popularity = "72.0%",
				dps = "437.1k",
			},
		},
	},
	["warrior"] = {
		["fury"] = {
			["Raiding"] = {
				talentString = "BgEAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQggSQQEEiIJRBSICEOQIJplEJJhkQSIRKBIJSEAAAEQQA",
				popularity = "49.1%",
				dps = "443.3k",
			},
			["MythicPlus"] = {
				talentString = "BgEAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQggSCQEEiIJRBSICEEJJplEJJhkQSIRKBIJSEAAAEQQA",
				popularity = "84.3%",
				dps = "394.6k",
				keystone = "+14"
			},
		},
		["arms"] = {
			["Raiding"] = {
				talentString = "BcEAAAAAAAAAAAAAAAAAAAAAAAQRikEJkDko0KJBAAAAEEhoQAFRCECJhmEhAESIAAAAAAAAkEkkACRDB",
				popularity = "51.1%",
				dps = "445.0k",
			},
			["MythicPlus"] = {
				talentString = "BcEAAAAAAAAAAAAAAAAAAAAAAAQplIRkQSiWpEJAAAAQQEiCJRUEBIikEaSECwBQkAAAAAAAAQiWiIgQ0QA",
				popularity = "42.3%",
				dps = "413.9k",
				keystone = "+14"
			},
		},
		["protection"] = {
			["Raiding"] = {
				talentString = "BkEAAAAAAAAAAAAAAAAAAAAAAIQAAAAgkkQSCSLpkkkWDRgQRAlkEgISSCNkkAcAOQIAAAAAAAQSAAHo0aAgA",
				popularity = "25.4%",
				dps = "238.7k",
			},
			["MythicPlus"] = {
				talentString = "BkEAAAAAAAAAAAAAAAAAAAAAAIQAAAAgkkQSik0SKJJpBRgQRiElkEACJBNkkgAEJAAAAAAAQSAAKtGAIA",
				popularity = "22.4%",
				dps = "213.8k",
				keystone = "+15"
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["MythicPlus"] = {
				talentString = "B0PAAAAAAAAAAAAAAAAAAAAAA4AgWSAoQAAAAAAAAAAAoRkiEa5ARCJCJhGERLHIRSSEaRSSA",
				popularity = "71.2%",
				dps = "504.8k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "B0PAAAAAAAAAAAAAAAAAAAAAA4AgWSAoQAAAAAAAAAAAoBhEaikQCJJoJkWUSSkIEaRSSA",
				popularity = "46.5%",
				dps = "406.3k",
			},
		},
		["marksmanship"] = {
			["Raiding"] = {
				talentString = "B4PAAAAAAAAAAAAAAAAAAAAAAIHAaBApgAAAAAARiEJJhICJJtEpRIRRoJkkESIoBAAAAA",
				popularity = "38.6%",
				dps = "386.5k",
			},
			["MythicPlus"] = {
				talentString = "B4PAAAAAAAAAAAAAAAAAAAAAA4ABaBgoggAAAAAEJJHQSCICJJtEp1ERUkimQiESIhGAAAAA",
				popularity = "44.1%",
				dps = "437.2k",
				keystone = "+18"
			},
		},
		["survival"] = {
			["Raiding"] = {
				talentString = "B8PAAAAAAAAAAAAAAAAAAAAAAIhWKBJBEEkQSkQiQkESSCAAAAAEEFhmQCBJCKAAAAAA",
				popularity = "30.7%",
				dps = "362.0k",
			},
			["MythicPlus"] = {
				talentString = "B8PAAAAAAAAAAAAAAAAAAAAAAIBaBJEKBBJJJplkgDQSEkIAAAAAARKkimDQiESIhGAAAAA",
				popularity = "37.5%",
				dps = "277.5k",
				keystone = "+12"
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			["MythicPlus"] = {
				talentString = "BMQAAAAAAAAAAAAAAAAAAAAAAEJJJJSAAAAAAASJJSLJAAAAAAQrEJIBSSKpkEBJRSQSiWJJBA",
				popularity = "41.2%",
				dps = "419.8k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "BMQAAAAAAAAAAAAAAAAAAAAAAEJJhkEEAAAAAASJJSJJAAAAAAgWSCSgkkSaJREEJJJRSTJSAA",
				popularity = "61.4%",
				dps = "447.8k",
			},
		},
		["outlaw"] = {
			["MythicPlus"] = {
				talentString = "BQQAAAAAAAAAAAAAAAAAAAAAAAAElEEJhkkESIRSSolkElkItkAAAAAAAtSSCHIJRBKpEAAAASCA",
				popularity = "35.5%",
				dps = "338.8k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "BQQAAAAAAAAAAAAAAAAAAAAAAAAEkkEJCSSIJCSkkmkElkIlkAAAAAAAaJJhkEFSKpFAAAASCA",
				popularity = "28.4%",
				dps = "375.1k",
			},
		},
		["subtlety"] = {
			["Raiding"] = {
				talentString = "BUQAAAAAAAAAAAAAAAAAAAAAAAAEEAAAAAASJJJlERSKFRICxBSSSISLSS0aJJSSCgSaBAAAgEEA",
				popularity = "80.6%",
				dps = "426.4k",
			},
			["MythicPlus"] = {
				talentString = "BUQAAAAAAAAAAAAAAAAAAAAAAAAEEAAAAAASJJJlEQKFRSikEHIJJRi0iI0aJJSSCgSaBAAAgEEA",
				popularity = "50.0%",
				dps = "389.0k",
				keystone = "+15"
			},
		},
	},
	["priest"] = {
		["discipline"] = {
			["MythicPlus"] = {
				talentString = "BAQAAAAAAAAAAAAAAAAAAAAAAABolSkE0iIJRSTaJJJhAAAAAAAAAAAAFl0QLJBpQIiIkCtEJBlAA",
				popularity = "28.3%",
				dps = "105.4k",
				hps = "117.6k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "BAQAAAAAAAAAAAAAAAAAAAAAAAAapFRQLikEJkSSSSIBAAAAAAAAAAAFl0Og0SCkChgIki0SEBlIA",
				popularity = "21.6%",
				dps = "83.9k",
				hps = "314.9k",
			},
		},
		["holy"] = {
			["Raiding"] = {
				talentString = "BEQAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAgWAtkkkEJkWEJBlEKBAAAAUUSL0SSQKESSigSBSESBA",
				popularity = "49.1%",
				dps = "48.4k",
				hps = "469.4k",
			},
			["MythicPlus"] = {
				talentString = "BEQAAAAAAAAAAAAAAAAAAAAAAQEAAAAAAAcgmIlEkERgEJElkkSAAAAA0SLUSCkCpkIJioQjkEUAA",
				popularity = "23.3%",
				dps = "118.6k",
				hps = "111.7k",
				keystone = "+15"
			},
		},
		["shadow"] = {
			["MythicPlus"] = {
				talentString = "BIQAAAAAAAAAAAAAAAAAAAAAAESIEAAAAAAAAAAAAgIpIRSSTjkkkEAl0IJJRaEiICpItQSQBJA",
				popularity = "69.4%",
				dps = "647.1k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BIQAAAAAAAAAAAAAAAAAAAAAAggkEAAAAAAAAAAAAgQKOAJJt0IJJJRigUIJJRaEIiQKSLkEUQC",
				popularity = "36.0%",
				dps = "404.7k",
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["Raiding"] = {
				talentString = "BoPAAAAAAAAAAAAAAAAAAAAAAACJIIJJJiERkISI4AJJRCAAAAAkIJ5ARk0EiEAAQIJJJAAAA",
				popularity = "34.1%",
				dps = "275.1k",
			},
			["MythicPlus"] = {
				talentString = "BoPAAAAAAAAAAAAAAAAAAAAAAACJJCJJi0iERkISIIJSkAAAAAAJSSOQEJNhIBAAESSSAAAAA",
				popularity = "19.8%",
				dps = "221.1k",
				keystone = "+13"
			},
		},
		["unholy"] = {
			["MythicPlus"] = {
				talentString = "BwPAAAAAAAAAAAAAAAAAAAAAAAAiQSicgISERiEhgkIRCAAAAAAAAAKkEhIJpBAQiUEJJJSSA",
				popularity = "50.0%",
				dps = "422.9k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "BwPAAAAAAAAAAAAAAAAAAAAAAAAIikEJiERISECJJJRAAAAAAAAAgSSSICAAIJh0SkkkIJA",
				popularity = "88.4%",
				dps = "455.7k",
			},
		},
		["frost"] = {
			["Raiding"] = {
				talentString = "BsPAAAAAAAAAAAAAAAAAAAAAAICASIJRiIREikECJSSEJIIhkERSSSSKJBAAAAAAAAAAAA",
				popularity = "38.5%",
				dps = "370.9k",
			},
			["MythicPlus"] = {
				talentString = "BsPAAAAAAAAAAAAAAAAAAAAAAICgIkkIHIiERkIJhgISkkEJwBIJRkkkkkSSAAAAAAAAAAAAA",
				popularity = "80.0%",
				dps = "365.4k",
				keystone = "+16"
			},
		},
	},
	["shaman"] = {
		["enhancement"] = {
			["Raiding"] = {
				talentString = "BcQAAAAAAAAAAAAAAAAAAAAAAIJJpEJgkESSSDlEAAAAAAAAAAAAAKRICJkmoQSTSKBiSQAIB",
				popularity = "91.7%",
				dps = "429.0k",
			},
			["MythicPlus"] = {
				talentString = "BcQAAAAAAAAAAAAAAAAAAAAAAIRSKRCCJhkk0QJRAAAAAAAAAAAAAKRIJkokiASTSKQoEERgE",
				popularity = "78.4%",
				dps = "425.3k",
				keystone = "+17"
			},
		},
		["elemental"] = {
			["Raiding"] = {
				talentString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAgUSrUSCgDk0SShSgkkEBAAAAAoEQSJJoJg0SSahACJSgA",
				popularity = "38.2%",
				dps = "392.5k",
			},
			["MythicPlus"] = {
				talentString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAg0SrIJlkACSjSUSLJOQOAAAAAAgSAJlkQaog0SSaKBKBREIA",
				popularity = "57.9%",
				dps = "433.9k",
				keystone = "+17"
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "BgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIpJJJJRSJpIRJBNIpEEUSCBKINJAJlSSSkEIA",
				popularity = "8.1%",
				dps = "100.0k",
				hps = "93.3k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "BgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQIRSiSCplk0kU0okkSQQJBAINJppkIIJRSQLA",
				popularity = "30.9%",
				dps = "53.5k",
				hps = "439.1k",
			},
		},
	},
	["mage"] = {
		["fire"] = {
			["MythicPlus"] = {
				talentString = "B8DAAAAAAAAAAAAAAAAAAAAAAIJIFNkEJp4AISCRkDESCAAAAAAAAgIikkQJRJJhkkkkGAAAItA",
				popularity = "69.3%",
				dps = "546.5k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "B8DAAAAAAAAAAAAAAAAAAAAAAQCJFNkQSKCOgkQEJhkAAAAAAAAAgIkIOQJ5AlkkkkkkkGAAAINA",
				popularity = "56.6%",
				dps = "409.9k",
			},
		},
		["arcane"] = {
			["MythicPlus"] = {
				talentString = "B4DAAAAAAAAAAAAAAAAAAAAAAIISJNkEJp5AwBSCRkDEJJBSSCJtkAAAAAAAAAAAAikkkQSSiQCA",
				popularity = "71.4%",
				dps = "335.0k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "B4DAAAAAAAAAAAAAAAAAAAAAAQCUSDJEpIIJJERSIRCkEk0SCAAAAAAAAAAAISSSSkkkEIA",
				popularity = "52.3%",
				dps = "429.4k",
			},
		},
		["frost"] = {
			["Raiding"] = {
				talentString = "BAEAAAAAAAAAAAAAAAAAAAAAAQCUSzBkQkigIJERSkEAAASJRSIRSSIJJJJJBAAAAAAAAAiA",
				popularity = "63.6%",
				dps = "415.1k",
			},
			["MythicPlus"] = {
				talentString = "BAEAAAAAAAAAAAAAAAAAAAAAAIJIFNkQSKASSERSKJJAAAJkIhkkkkIJJJRSAAAAAAAAAgIA",
				popularity = "68.4%",
				dps = "435.6k",
				keystone = "+17"
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["MythicPlus"] = {
				talentString = "BkQAAAAAAAAAAAAAAAAAAAAAAASSSkkAppQSaHIJh0CAAAAUAAAAAAAIENSSkIJJaJJBAkA",
				popularity = "61.5%",
				dps = "382.1k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "BkQAAAAAAAAAAAAAAAAAAAAAAASSSkkAppQkWSSIlAAAAANAAAAAAASEtQkkIJSaJRAAJA",
				popularity = "55.3%",
				dps = "360.2k",
			},
		},
		["demonology"] = {
			["MythicPlus"] = {
				talentString = "BoQAAAAAAAAAAAAAAAAAAAAAAggkEJJQaKEpdgkESLAAAAAABikkWERSikSaJRCBAAAAAAJJ",
				popularity = "44.2%",
				dps = "451.8k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "BoQAAAAAAAAAAAAAAAAAAAAAAggkEJJQaKQaJJhUCAAAAAIBSikSEhkIpolkkQAAAAAAQiA",
				popularity = "32.9%",
				dps = "379.7k",
			},
		},
		["destruction"] = {
			["Raiding"] = {
				talentString = "BsQAAAAAAAAAAAAAAAAAAAAAAggkEJJQaKQaJJhUiWwBUSSkAalikAAAAAAAAAAAAIJokEJA",
				popularity = "43.7%",
				dps = "410.8k",
			},
			["MythicPlus"] = {
				talentString = "BsQAAAAAAAAAAAAAAAAAAAAAAAIJRSCRaKEpdgkESJkkQJSElgWpIJAAAAAAAAAAAACokkkA",
				popularity = "54.8%",
				dps = "515.1k",
				keystone = "+17"
			},
		},
	},
	["monk"] = {
		["mistweaver"] = {
			["Raiding"] = {
				talentString = "B4QAAAAAAAAAAAAAAAAAAAAAAUiCSkoUaNCpEJJlAt0aBAAAAAAAAAAAAk0SUQIJRpAQSLJJRAAEaE",
				popularity = "56.8%",
				dps = "19.3k",
				hps = "455.4k",
			},
			["MythicPlus"] = {
				talentString = "B4QAAAAAAAAAAAAAAAAAAAAAA0SKFJJElSLCpERSDSJFBAAAAAAAAAAAAItElkESS0KAJJNIEAARaC",
				popularity = "20.5%",
				dps = "107.7k",
				hps = "129.3k",
				keystone = "+14"
			},
		},
		["brewmaster"] = {
			["MythicPlus"] = {
				talentString = "BwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAAAgUiWLJJQSSpRAAAAShUSiEJ0KIplkUSAHQTi0SrkIA",
				popularity = "34.3%",
				dps = "214.4k",
				keystone = "+13"
			},
			["Raiding"] = {
				talentString = "BwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAAAQShWJJJQSSrRAAAASLUSiEJUKSSaJJlEgWjIt0KhAA",
				popularity = "40.0%",
				dps = "258.4k",
			},
		},
		["windwalker"] = {
			["Raiding"] = {
				talentString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIRSS0iIRAAAAgEJJFAJJJJCJFJRkQpIJRSSLBAAA0A",
				popularity = "85.7%",
				dps = "432.9k",
			},
			["MythicPlus"] = {
				talentString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARSkkElISEAAAAQkkUIRgkkIcgUSSIJRrQSkk0AcAAAQD",
				popularity = "58.2%",
				dps = "402.9k",
				keystone = "+18"
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["Raiding"] = {
				talentString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgCAJJigkQQSikIFolIJSSJRTcgQol0SSERDgCAE",
				popularity = "61.3%",
				dps = "379.3k",
			},
			["MythicPlus"] = {
				talentString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgCAJJigkAkEJJHIFol4ARSSJJkkQoJtIRS0AoQBQA",
				popularity = "46.6%",
				dps = "498.5k",
				keystone = "+17"
			},
		},
		["feral"] = {
			["MythicPlus"] = {
				talentString = "BcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAASk0STCSSSSJtDgWSkIJAAAAAAaAkkgAQSSSIJJtAIAAAAAAIBAA",
				popularity = "28.6%",
				dps = "311.7k",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "BcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAACSLioIJJJl0IaJJxBSCAAAAAgGAJCAQSSSIJUSolkAAAAAAgEAAA",
				popularity = "36.4%",
				dps = "389.1k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "BkGAAAAAAAAAAAAAAAAAAAAAA0IJRDJJpItkIIFaaRSAAAAAAAAAAAAABQSCCSIQSkkcgUQa4AAAAAAgIAUASC",
				popularity = "24.8%",
				dps = "126.2k",
				hps = "123.7k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "BkGAAAAAAAAAAAAAAAAAAAAAA0ikElWkIhUQiIFhWkEAAAAAAAAAAAAoAIJCCSAkESiUIplIAAAAAgIAAIC",
				popularity = "62.5%",
				dps = "30.6k",
				hps = "428.7k",
			},
		},
		["guardian"] = {
			["MythicPlus"] = {
				talentString = "BgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQikISJiEBJpIhkUAAJJQSSgkkkIJSBaIAAAAAARAJECA",
				popularity = "32.9%",
				dps = "190.0k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "BgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQiIJJlElICiiESShCAJCCSgkkkkkIFoFOAAAAAAQEQQCA",
				popularity = "23.1%",
				dps = "239.5k",
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			["MythicPlus"] = {
				talentString = "BEkAAAAAAAAAAAAAAAAAAAAAAIJJRSCSSiIhkkAAAAAAASJEJkk0kkWaREIho0ikEB",
				popularity = "37.1%",
				dps = "381.6k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "BEkAAAAAAAAAAAAAAAAAAAAAAIJRkkgkkISgkAAAAAAASLEJRSSLJplWEBSIKtIJRA",
				popularity = "56.3%",
				dps = "432.3k",
			},
		},
		["vengeance"] = {
			["MythicPlus"] = {
				talentString = "BUkAAAAAAAAAAAAAAAAAAAAAAAASiIJCJhkESIRLJSiWSISQEplk0kEJBBAAAAkkA",
				popularity = "30.6%",
				dps = "287.5k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BUkAAAAAAAAAAAAAAAAAAAAAAAAiIJJikgkERISJJEaJSSIhkEJRLSIBBAAAAkkEA",
				popularity = "20.6%",
				dps = "261.4k",
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["MythicPlus"] = {
				talentString = "BsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAiEIRSkEIBCJSkESLKJJJhIpkASSSLSiIBCE",
				popularity = "68.9%",
				dps = "415.4k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "BsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJSCSaSQABikIRSItokkkEikWCIRSLSikEIQA",
				popularity = "32.5%",
				dps = "473.8k",
			},
		},
		["preservation"] = {
			["MythicPlus"] = {
				talentString = "BwbBAAAAAAAAAAAAAAAAAAAAAAAAAAASSSkWgIJRKSSEAAAkEJSICJBJJAAAgkkIJSiIEAA",
				popularity = "26.7%",
				dps = "139.3k",
				hps = "98.7k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "BwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAIJplWOASkEpgkWkQAAQSkIIikASAAAASSCJSiIJBAB",
				popularity = "14.9%",
				dps = "45.2k",
				hps = "375.7k",
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "BEcBAAAAAAAAAAAAAAAAAAAAAQSJpFJJKhkkSCSSSDAAAAAAAAJBimISIkkAAAAAJJtIJikARTA",
				popularity = "40.3%",
				dps = "347.2k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "BEcBAAAAAAAAAAAAAAAAAAAAAQikWkkoESSkESSSDAAAAAEAAkEAISISSCAAAASk0ikkIJQ0SA",
				popularity = "23.0%",
				dps = "398.7k",
			},
		},
	},
}
addonTable.DB = talentData