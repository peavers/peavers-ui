local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["warrior"] = {
		["fury"] = {
			["Raiding"] = {
				talentString = "BgEAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQggSQQEEiIJRBSICEOQIJplEJJhkQSIRKBIJSEAAAEQQA",
				popularity = "52.9%",
				dps = "416.3k",
			},
			["MythicPlus"] = {
				talentString = "BgEAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQggSCQEEiIJRBEiQEEJJplEJJhkQSIRKBIJSEAAAEQQA",
				popularity = "82.4%",
				dps = "451.1k",
				keystone = "+18"
			},
		},
		["arms"] = {
			["MythicPlus"] = {
				talentString = "BcEAAAAAAAAAAAAAAAAAAAAAAAQplIRkQSiWpEJAAAAQQEiCBRREQiIJhmEhAEEJAAAAAAAAkolICIENEA",
				popularity = "38.4%",
				dps = "454.7k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "BcEAAAAAAAAAAAAAAAAAAAAAAAQRikEJkDko0KJBAAAAEEhoQAFRCECJhmEhAESIAAAAAAAAkEkkACRDB",
				popularity = "51.9%",
				dps = "438.8k",
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "BkEAAAAAAAAAAAAAAAAAAAAAAIQAAAAgkkQSik0SKJJpBRgAJSUSSACkkQDJJIARCAAAAAAAkEAgSrBAC",
				popularity = "22.2%",
				dps = "237.7k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BkEAAAAAAAAAAAAAAAAAAAAAAIQAAAAgkkQSCSLpkkkWDRgQRAlkEgISSCNkkAcAOQIAAAAAAAQSAAHo0aAgA",
				popularity = "27.1%",
				dps = "237.4k",
			},
		},
	},
	["paladin"] = {
		["protection"] = {
			["Raiding"] = {
				talentString = "BIEAAAAAAAAAAAAAAAAAAAAAAUSKJSKSKIJJaNJJESIBAAIAAAAAAAASEJFBSQSKCJJAACIACIAB",
				popularity = "4.1%",
				dps = "216.4k",
			},
			["MythicPlus"] = {
				talentString = "BIEAAAAAAAAAAAAAAAAAAAAAA0SaJSKi2B0iko0kkIRkIBAAIAAAAAAAAiDkkUEIJkkiACAICAgACQA",
				popularity = "16.2%",
				dps = "208.9k",
				keystone = "+14"
			},
		},
		["retribution"] = {
			["MythicPlus"] = {
				talentString = "BYEAAAAAAAAAAAAAAAAAAAAAAAAAAQAgIUKtSSr0koIJpIJAAAAAAQaQSCBSCRKRIJEpkoFiIIiSBAA",
				popularity = "58.6%",
				dps = "500.3k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BYEAAAAAAAAAAAAAAAAAAAAAAAAAAQAgIalSrk0KNiWkkWSAAAAAAABkkQgkQkSESCpkSChICJiShGAA",
				popularity = "73.6%",
				dps = "437.3k",
			},
		},
		["holy"] = {
			["Raiding"] = {
				talentString = "BEEAAAAAAAAAAAAAAAAAAAAAAAAAAQAARAAACQLJFoUik0ahUSClkEKaiGQSJBJJEpgmkIAgAAFgQSCC",
				popularity = "29.6%",
				dps = "42.1k",
				hps = "434.7k",
			},
			["MythicPlus"] = {
				talentString = "BEEAAAAAAAAAAAAAAAAAAAAAAAABAABAEBAAIAtIFkSJSSrISLJUSSo0aiGIJFBJJEpAiIAgAANgQigA",
				popularity = "7.5%",
				dps = "49.5k",
				hps = "106.6k",
				keystone = "+12"
			},
		},
	},
	["hunter"] = {
		["survival"] = {
			["MythicPlus"] = {
				talentString = "B8PAAAAAAAAAAAAAAAAAAAAAAIBaBJEKBBJJJplkgDQSEkIAAAAAARKkimDQiESIhGAAAAA",
				popularity = "15.4%",
				dps = "301.4k",
				keystone = "+12"
			},
			["Raiding"] = {
				talentString = "B8PAAAAAAAAAAAAAAAAAAAAAAIhWKBJBEEkQSkQiQkESSCAAAAAEEFhmQCBJCKAAAAAA",
				popularity = "37.4%",
				dps = "373.2k",
			},
		},
		["beast-mastery"] = {
			["Raiding"] = {
				talentString = "B0PAAAAAAAAAAAAAAAAAAAAAA4AgWSAoQAAAAAAAAAAAoBhEaikQCJJoJkWUSSkIEaRSSA",
				popularity = "49.7%",
				dps = "402.9k",
			},
			["MythicPlus"] = {
				talentString = "B0PAAAAAAAAAAAAAAAAAAAAAA4AgWSAoQAAAAAAAAAAAoRkiEa5ARCJCJhGERLHIRSSEaRSSA",
				popularity = "71.7%",
				dps = "493.0k",
				keystone = "+18"
			},
		},
		["marksmanship"] = {
			["MythicPlus"] = {
				talentString = "B4PAAAAAAAAAAAAAAAAAAAAAA4ABaBgoggAAAAAEJJHQSCICJJtEp1ERUkimQiESIhGAAAAA",
				popularity = "48.7%",
				dps = "505.2k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "B4PAAAAAAAAAAAAAAAAAAAAAAIHAaBApgAAAAAARiEJJhICJJtEpRIRRoJkkESIoBAAAAA",
				popularity = "38.1%",
				dps = "404.6k",
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			["Raiding"] = {
				talentString = "BMQAAAAAAAAAAAAAAAAAAAAAAEJJhkEEAAAAAASJJSJJAAAAAAgWSCSgkkSaJREEJJJRSTJSAA",
				popularity = "55.4%",
				dps = "448.7k",
			},
			["MythicPlus"] = {
				talentString = "BMQAAAAAAAAAAAAAAAAAAAAAAEJJJJSAAAAAAASJJSLJAAAAAAQrkkgEIJplWSEkEJBJJalIBA",
				popularity = "42.0%",
				dps = "429.8k",
				keystone = "+17"
			},
		},
		["outlaw"] = {
			["Raiding"] = {
				talentString = "BQQAAAAAAAAAAAAAAAAAAAAAAAAEkkEJCSSIJCSkkmkElkIlkAAAAAAAaJJhkEFSKpFAAAASCA",
				popularity = "31.6%",
				dps = "394.2k",
			},
			["MythicPlus"] = {
				talentString = "BQQAAAAAAAAAAAAAAAAAAAAAAAAElEEJhkkESIRSSolkElkItkAAAAAAg0KRCHIJRBKpFAAAARCA",
				popularity = "51.9%",
				dps = "473.3k",
				keystone = "+18"
			},
		},
		["subtlety"] = {
			["MythicPlus"] = {
				talentString = "BUQAAAAAAAAAAAAAAAAAAAAAAAAEEAAAAAASJJJlEQKFRSikEHIJJRi0iI0aJJSSCgSaBAAAgEEA",
				popularity = "33.3%",
				dps = "390.4k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "BUQAAAAAAAAAAAAAAAAAAAAAAAAEEAAAAAASJJJlERSKFRICxBSSSISLSS0aJJSSCgSaBAAAgEEA",
				popularity = "80.0%",
				dps = "430.1k",
			},
		},
	},
	["priest"] = {
		["discipline"] = {
			["MythicPlus"] = {
				talentString = "BAQAAAAAAAAAAAAAAAAAAAAAAABolSkE0iIJRSTaJJJhAAAAAAAAAAAAFl0QLJBpQIiIkCtEJBlAA",
				popularity = "30.7%",
				dps = "117.9k",
				hps = "129.6k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BAQAAAAAAAAAAAAAAAAAAAAAAAAapFRQLikEJkSSSSIBAAAAAAAAAAAFl0Og0SCkChgIki0SEBlIA",
				popularity = "22.0%",
				dps = "86.6k",
				hps = "377.4k",
			},
		},
		["holy"] = {
			["MythicPlus"] = {
				talentString = "BEQAAAAAAAAAAAAAAAAAAAAAAQEAAAAAAAcgmIlEkERgEJElkkSAAAAAFt0QJJBQKSSiIK0IJhUAA",
				popularity = "27.9%",
				dps = "145.2k",
				hps = "132.6k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "BEQAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAgWAtkkkEJkWEJBlEKBAAAAUUSL0SSQKESSigSBSESBA",
				popularity = "55.9%",
				dps = "47.2k",
				hps = "447.0k",
			},
		},
		["shadow"] = {
			["MythicPlus"] = {
				talentString = "BIQAAAAAAAAAAAAAAAAAAAAAAESIEAAAAAAAAAAAAgIpIRSSTjkkkEAl0IJJRaEiICpItQSQBJA",
				popularity = "72.9%",
				dps = "663.7k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BIQAAAAAAAAAAAAAAAAAAAAAAggkEAAAAAAAAAAAAgQKOAJJt0IJJJRigUIJJRaEIiQKSLkEUQC",
				popularity = "37.9%",
				dps = "409.1k",
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["MythicPlus"] = {
				talentString = "BoPAAAAAAAAAAAAAAAAAAAAAAAikkIRSiItIRQiIhgkIRCAAAAAgkkEItESSAAARSSSAAAAA",
				popularity = "20.9%",
				dps = "233.4k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BoPAAAAAAAAAAAAAAAAAAAAAAACJIIJJJiERkISI4AJJRCAAAAAkIJ5ARk0EiEAAQIJJJAAAA",
				popularity = "32.1%",
				dps = "276.5k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "BsPAAAAAAAAAAAAAAAAAAAAAAICgIkkIHIiERSOgkECiIRSSkAHgkERSSSSKJBAAAAAAAAAAAA",
				popularity = "70.6%",
				dps = "439.1k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BsPAAAAAAAAAAAAAAAAAAAAAAICASIJRiIREikECJSSEJIIhkERSSSSKJBAAAAAAAAAAAA",
				popularity = "41.0%",
				dps = "413.2k",
			},
		},
		["unholy"] = {
			["MythicPlus"] = {
				talentString = "BwPAAAAAAAAAAAAAAAAAAAAAAAAiQSicgISERiEhgkIRCAAAAAAAAAKkEhIJpBAQiUEJJJSSA",
				popularity = "64.2%",
				dps = "460.1k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "BwPAAAAAAAAAAAAAAAAAAAAAAAAIikEJiERISECJJJRAAAAAAAAAgSSSICAAIJh0SkkkIJA",
				popularity = "90.2%",
				dps = "459.8k",
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			["MythicPlus"] = {
				talentString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAg0SrIJlkACSjSUSLJOQOAAAAAAgSAJlkQaog0SSaKBKBREIA",
				popularity = "65.4%",
				dps = "480.4k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAgUSrUSCgDk0SShSgkkEBAAAAAoEQSJJoJg0SSahACJSgA",
				popularity = "42.6%",
				dps = "387.1k",
			},
		},
		["enhancement"] = {
			["Raiding"] = {
				talentString = "BcQAAAAAAAAAAAAAAAAAAAAAAIJJpEJgkESSSDlEAAAAAAAAAAAAAKRICJkmoQSTSKBiSQAIB",
				popularity = "92.7%",
				dps = "427.2k",
			},
			["MythicPlus"] = {
				talentString = "BcQAAAAAAAAAAAAAAAAAAAAAAIRSKRCCJhkk0QJRAAAAAAAAAAAAAKRIJkokiASTSKQoEERgE",
				popularity = "79.8%",
				dps = "451.3k",
				keystone = "+17"
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "BgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQIJJJpkUSKJJNBNIpEESJJEog0kgSIkkEJBC",
				popularity = "8.2%",
				dps = "61.4k",
				hps = "114.8k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "BgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQIRSiSCplk0kU0okkSQQJBAINJppkIIJRSQLA",
				popularity = "33.0%",
				dps = "55.0k",
				hps = "421.4k",
			},
		},
	},
	["mage"] = {
		["arcane"] = {
			["Raiding"] = {
				talentString = "B4DAAAAAAAAAAAAAAAAAAAAAAQEUSDJSkigIJERSIRCkEk0SCAAAAAAAAAAAISSSSkkkEIA",
				popularity = "49.7%",
				dps = "428.1k",
			},
			["MythicPlus"] = {
				talentString = "B4DAAAAAAAAAAAAAAAAAAAAAAQiIl0QiDkkmASCRkESEIJJk0SCAAAAAAAAAAAISSSCJJJCJA",
				popularity = "66.1%",
				dps = "369.9k",
				keystone = "+15"
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "BAEAAAAAAAAAAAAAAAAAAAAAAQCSRDJRSKCikQE5AhkAAAkQiESSSSikkkEJBAAAAAAAAAiA",
				popularity = "69.5%",
				dps = "473.0k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BAEAAAAAAAAAAAAAAAAAAAAAAQCUSzBkQkigIJERSkEAAASJRSIRSSIJJJJJBAAAAAAAAAiA",
				popularity = "62.4%",
				dps = "420.2k",
			},
		},
		["fire"] = {
			["MythicPlus"] = {
				talentString = "B8DAAAAAAAAAAAAAAAAAAAAAAIJIFNkEJp4AISCRkDESCAAAAAAAAgIikkQJRJJhkkkkGAAAItA",
				popularity = "64.2%",
				dps = "572.8k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "B8DAAAAAAAAAAAAAAAAAAAAAAQCSRDJRSKCcgkQEJhkAAAAAAAAAgIkIOQJ5AlkkkkkkkGAAAINA",
				popularity = "54.2%",
				dps = "412.7k",
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["MythicPlus"] = {
				talentString = "BkQAAAAAAAAAAAAAAAAAAAAAAASSSkkAppQSaHIJh0CAAAAUAAAAAAAIENSSkIJJaJJBAkA",
				popularity = "60.5%",
				dps = "396.6k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "BkQAAAAAAAAAAAAAAAAAAAAAAASSSkkAppQkWSSIlAAAAANAAAAAAASEtQkkIJSaJRAAJA",
				popularity = "52.0%",
				dps = "356.1k",
			},
		},
		["demonology"] = {
			["Raiding"] = {
				talentString = "BoQAAAAAAAAAAAAAAAAAAAAAAggkEJJQaKQaJJhUCAAAAAIBSikSEhkIpolkkQAAAAAAQiA",
				popularity = "35.2%",
				dps = "400.7k",
			},
			["MythicPlus"] = {
				talentString = "BoQAAAAAAAAAAAAAAAAAAAAAAggkEJJQaKEpdgkESLAAAAAABikkWERSikSaJRCBAAAAAAJJ",
				popularity = "47.5%",
				dps = "501.2k",
				keystone = "+16"
			},
		},
		["destruction"] = {
			["Raiding"] = {
				talentString = "BsQAAAAAAAAAAAAAAAAAAAAAAggkEJJQaKQaJJhUiWwBUSSkAalikAAAAAAAAAAAAIJokEJA",
				popularity = "42.4%",
				dps = "408.8k",
			},
			["MythicPlus"] = {
				talentString = "BsQAAAAAAAAAAAAAAAAAAAAAAAIJRSCkmCRaJJhUCJJUiERJoVKSCAAAAAAAAAAAgAKJJJA",
				popularity = "56.5%",
				dps = "588.4k",
				keystone = "+19"
			},
		},
	},
	["monk"] = {
		["mistweaver"] = {
			["MythicPlus"] = {
				talentString = "B4QAAAAAAAAAAAAAAAAAAAAAA0SKFJJHQUKtIkSEJNIlUEAAAAAAAAAAAAg0SUSSIJRrAkk0gQAAEpB",
				popularity = "23.8%",
				dps = "122.5k",
				hps = "139.8k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "B4QAAAAAAAAAAAAAAAAAAAAAAUiCSkoUaNCpEJJlAt0aBAAAAAAAAAAAAk0SUQIJRpAQSLJJRAAEaE",
				popularity = "57.7%",
				dps = "19.2k",
				hps = "453.1k",
			},
		},
		["brewmaster"] = {
			["MythicPlus"] = {
				talentString = "BwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAAAgUiWLJJQSSpRAAAASJhkIRCtCJpkgkARTi0SrkIA",
				popularity = "26.7%",
				dps = "228.7k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "BwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAAAQShWJJJQSSrRAAAASLSRiEJUKSSaJJlEgWjIt0KhAA",
				popularity = "40.2%",
				dps = "271.3k",
			},
		},
		["windwalker"] = {
			["Raiding"] = {
				talentString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIRSS0iIRAAAAgEJJFAJJJJCHIlkERClikEJJtEAAAQD",
				popularity = "84.9%",
				dps = "433.5k",
			},
			["MythicPlus"] = {
				talentString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARSkkElISEAAAAQkkUIRgkkIcgUSSIJRrQSkk0AcAAAQD",
				popularity = "57.0%",
				dps = "453.0k",
				keystone = "+18"
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["MythicPlus"] = {
				talentString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgCAJJigkAkESSSBaJOQkkUSCJJEaSLSkENAK0AE",
				popularity = "35.3%",
				dps = "518.7k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgCAJJigkQQSikIFolIJSSJRTcgQol0SSERDgCAE",
				popularity = "64.5%",
				dps = "383.8k",
			},
		},
		["guardian"] = {
			["Raiding"] = {
				talentString = "BgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQiIJJlElICiiESShCAJCCSgkkkkkIFoFOAAAAAAQEQQCA",
				popularity = "26.6%",
				dps = "242.0k",
			},
			["MythicPlus"] = {
				talentString = "BgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQikISJiEBJpIhkUoAQSCCSgkkkIJSBaIAAAAAARAJECA",
				popularity = "30.4%",
				dps = "208.3k",
				keystone = "+15"
			},
		},
		["feral"] = {
			["Raiding"] = {
				talentString = "BcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAACSLioIJJJl0IaJJxBSCAAAAAgGAJCAQSSSIJUSolkAAAAAAgEAAA",
				popularity = "36.3%",
				dps = "401.5k",
			},
			["MythicPlus"] = {
				talentString = "BcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEJt0kQSSSSJtDgWSkIJAAAAAAKAkkAAkkkESSSJoRCAAAAAASAAA",
				popularity = "36.8%",
				dps = "385.2k",
				keystone = "+15"
			},
		},
		["restoration"] = {
			["Raiding"] = {
				talentString = "BkGAAAAAAAAAAAAAAAAAAAAAA0ikElWkIhUQiIFhWkEAAAAAAAAAAAAoAIJCCSAkESiUIplIAAAAAgIAAIC",
				popularity = "61.8%",
				dps = "28.5k",
				hps = "435.8k",
			},
			["MythicPlus"] = {
				talentString = "BkGAAAAAAAAAAAAAAAAAAAAAA0IJRDJJpItkIIFaaRSAAAAAAAAAAAAABQSCCSIQSkkcgUQa4AAAAAAgIAUASC",
				popularity = "23.5%",
				dps = "144.1k",
				hps = "129.0k",
				keystone = "+18"
			},
		},
	},
	["demon-hunter"] = {
		["vengeance"] = {
			["Raiding"] = {
				talentString = "BUkAAAAAAAAAAAAAAAAAAAAAAAAiIJJikgkERISJJEaJSSIhkEJRLSIBBAAAAkkEA",
				popularity = "14.0%",
				dps = "262.1k",
			},
			["MythicPlus"] = {
				talentString = "BUkAAAAAAAAAAAAAAAAAAAAAAAASiQiQSIJhES0SikolEiEERaJJNJRSIBAAAAkkA",
				popularity = "24.6%",
				dps = "282.0k",
				keystone = "+19"
			},
		},
		["havoc"] = {
			["MythicPlus"] = {
				talentString = "BEkAAAAAAAAAAAAAAAAAAAAAAIJJRSCSSiIhkkAAAAAAASJEJkk0kkWaREIho0ikEB",
				popularity = "29.0%",
				dps = "435.4k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "BEkAAAAAAAAAAAAAAAAAAAAAAIJRkkgkkISgkAAAAAAASLEJRSSLJplWEBSIKtIJRA",
				popularity = "57.9%",
				dps = "425.2k",
			},
		},
	},
	["evoker"] = {
		["preservation"] = {
			["MythicPlus"] = {
				talentString = "BwbBAAAAAAAAAAAAAAAAAAAAAAAAAAASSSkSgIJRKSSEQAAQSkIHAikERkAAAASSik0yBiIEAA",
				popularity = "22.4%",
				dps = "113.9k",
				hps = "126.3k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "BwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAIJplWOASkEpgkWkQAAQSkIIikASAAAASSCJSiIJBAB",
				popularity = "15.6%",
				dps = "47.9k",
				hps = "382.3k",
			},
		},
		["devastation"] = {
			["Raiding"] = {
				talentString = "BsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJSCSaSQABikIRSItokkkEikWCIRSLSikEIQA",
				popularity = "29.5%",
				dps = "460.4k",
			},
			["MythicPlus"] = {
				talentString = "BsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAiEIRSkEIpJCJCJh0iSSSSISKJgkk0ikIRgAA",
				popularity = "75.8%",
				dps = "484.2k",
				keystone = "+17"
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "BEcBAAAAAAAAAAAAAAAAAAAAAQSJpFJJKhkkSCSSSDAAAAAAAAJBimISIkkAAAAAJJtIJikARTA",
				popularity = "41.2%",
				dps = "384.8k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BEcBAAAAAAAAAAAAAAAAAAAAAQikWkkoESSkESSSDAAAAAEAAkEAISISSCAAAASk0ikkIJQ0SA",
				popularity = "28.7%",
				dps = "395.6k",
			},
		},
	},
}
addonTable.DB = talentData