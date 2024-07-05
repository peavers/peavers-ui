local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["warrior"] = {
		["fury"] = {
			["Raiding"] = {
				talentString = "BgEAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAChIoEARQISQUgEiARSIJpFRSSQyBkkkEpEgkQEAAAAEE",
				popularity = "42.7%",
				dps = "351.2k",
			},
			["MythicPlus"] = {
				talentString = "BgEAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQggSCQEEiIJRBSICEOQIJplEJJhkQSIRKBIJSEAAAEQQA",
				popularity = "82.1%",
				dps = "435.3k",
				keystone = "+17"
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "BkEAAAAAAAAAAAAAAAAAAAAAAIQAAAAgkkQSik0SKJJpBRgQTiElkEACJBNkkgAEJAAAAAAAQSAAKtGAIA",
				popularity = "18.6%",
				dps = "225.5k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "BkEAAAAAAAAAAAAAAAAAAAAAAIQAAAAgkkQSCSLpkkkWDRgQRAlkEgISSCNkkAcAOQIAAAAAAAQSAAHo0aAgA",
				popularity = "18.4%",
				dps = "224.7k",
			},
		},
		["arms"] = {
			["Raiding"] = {
				talentString = "BcEAAAAAAAAAAAAAAAAAAAAAAAQRikEJkDko0KJBAAAAEEhoQAFRCECJhmEhAESIAAAAAAAAkEkkACRDB",
				popularity = "55.2%",
				dps = "420.5k",
			},
			["MythicPlus"] = {
				talentString = "BcEAAAAAAAAAAAAAAAAAAAAAAAQplIRkQSiWpEJAAAAQQEiCJRUEBIikEaSECwBQkAAAAAAAAQiWiIgQ0QA",
				popularity = "35.7%",
				dps = "458.8k",
				keystone = "+17"
			},
		},
	},
	["paladin"] = {
		["holy"] = {
			["MythicPlus"] = {
				talentString = "BEEAAAAAAAAAAAAAAAAAAAAAAAABAABAEBAAIAtIFkSJSSrISLJUSSo0aiGIJFBJJEpAiIAgAANgQigA",
				popularity = "7.6%",
				dps = "76.3k",
				hps = "120.7k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BEEAAAAAAAAAAAAAAAAAAAAAAAAAAQAARAAACQLJFoUik0ahUSClkEKaiGQSJJIJEpgmkIAgAAFgQSCC",
				popularity = "29.2%",
				dps = "48.6k",
				hps = "389.6k",
			},
		},
		["protection"] = {
			["Raiding"] = {
				talentString = "BIEAAAAAAAAAAAAAAAAAAAAAAUSKJSKSK0SSiWTkQIhEAAgAAAAAAAAIRSSTgEkkiQSCAgACAgAE",
				popularity = "6.2%",
				dps = "210.7k",
			},
			["MythicPlus"] = {
				talentString = "BIEAAAAAAAAAAAAAAAAAAAAAA0SaJkiodAtIJKNJJSEJSAAACAAAAAAAoJkkUEIBJpIISDAiAAIgAE",
				popularity = "20.0%",
				dps = "204.2k",
				keystone = "+19"
			},
		},
		["retribution"] = {
			["Raiding"] = {
				talentString = "BYEAAAAAAAAAAAAAAAAAAAAAAAAAAQAAiWp0KJtSjoFJplEAAAAAAQEkkQgkQkSESCpkSChICJiShGAA",
				popularity = "82.4%",
				dps = "416.0k",
			},
			["MythicPlus"] = {
				talentString = "BYEAAAAAAAAAAAAAAAAAAAAAAAAAAQAgIUKtSSr0koIJpIJAAAAAAQaBJJEIJEpEhIEpkoFiIgoUoBAA",
				popularity = "48.9%",
				dps = "508.2k",
				keystone = "+19"
			},
		},
	},
	["hunter"] = {
		["marksmanship"] = {
			["MythicPlus"] = {
				talentString = "B4PAAAAAAAAAAAAAAAAAAAAAA4ABaBgoggAAAAAEJJHQSCICJJtEp1ERUkimQiESIhGAAAAA",
				popularity = "46.5%",
				dps = "464.1k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "B4PAAAAAAAAAAAAAAAAAAAAAAIHAaBApgAAAAAARiEJJhICJJtEpRIRRoJkkESIoBAAAAA",
				popularity = "64.9%",
				dps = "409.7k",
			},
		},
		["beast-mastery"] = {
			["Raiding"] = {
				talentString = "B0PAAAAAAAAAAAAAAAAAAAAAA4AgWSAoQAAAAAAAAAAAoBhEaikQCJJoJkWUSSkIEaRSSA",
				popularity = "73.4%",
				dps = "394.1k",
			},
			["MythicPlus"] = {
				talentString = "B0PAAAAAAAAAAAAAAAAAAAAAA4AgWSAoQAAAAAAAAAAAoRkiEahkQiEJhGERLHIRSSEaRSSA",
				popularity = "75.0%",
				dps = "479.0k",
				keystone = "+18"
			},
		},
		["survival"] = {
			["Raiding"] = {
				talentString = "B8PAAAAAAAAAAAAAAAAAAAAAAIhWaBJBKBBJkEJkIEJhkkAAAAAABRRoJkIBhgCAAAAA",
				popularity = "46.4%",
				dps = "377.5k",
			},
			["MythicPlus"] = {
				talentString = "B8PAAAAAAAAAAAAAAAAAAAAAA4ABaBJEKBBJJJplkgDQkEkIAAAAAQEpUkiGkIhESoBAAAAA",
				popularity = "18.4%",
				dps = "262.2k",
				keystone = "+12"
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			["Raiding"] = {
				talentString = "BMQAAAAAAAAAAAAAAAAAAAAAAEJJhkEEAAAAAASJJSJJAAAAAAgWSCSgkkSaJREEJJJRSTLSAA",
				popularity = "59.4%",
				dps = "418.8k",
			},
			["MythicPlus"] = {
				talentString = "BMQAAAAAAAAAAAAAAAAAAAAAAEJJJJSAAAAAAASJJSLJAAAAAAQrkkgEIJpkWSEkEJBJJalIBA",
				popularity = "33.9%",
				dps = "399.3k",
				keystone = "+17"
			},
		},
		["outlaw"] = {
			["Raiding"] = {
				talentString = "BQQAAAAAAAAAAAAAAAAAAAAAAAAEkkEJCSSIJCSkkmkElkIlkAAAAAAAaJJxBSEFSKpFAAAASCA",
				popularity = "56.8%",
				dps = "374.7k",
			},
			["MythicPlus"] = {
				talentString = "BQQAAAAAAAAAAAAAAAAAAAAAAAAElEEJhkkESIRSSolkElkItkAAAAAAg0KRCHIJRBKpFAAAARCA",
				popularity = "53.8%",
				dps = "460.4k",
				keystone = "+18"
			},
		},
		["subtlety"] = {
			["Raiding"] = {
				talentString = "BUQAAAAAAAAAAAAAAAAAAAAAAAAEEAAAAAASJJJlERSKFRICxBSSSISLSS0aJJSSCgSaBAAAgEEA",
				popularity = "96.1%",
				dps = "411.3k",
			},
			["MythicPlus"] = {
				talentString = "BUQAAAAAAAAAAAAAAAAAAAAAAAAEEAAAAAASJJJlEQKFRSikEHIJJRi0iI0KJJSSCgSaBAAAgEEA",
				popularity = "38.5%",
				dps = "258.5k",
				keystone = "+12"
			},
		},
	},
	["priest"] = {
		["discipline"] = {
			["Raiding"] = {
				talentString = "BAQAAAAAAAAAAAAAAAAAAAAAAAAapFRQLikEJkSSSSIBAAAAAAAAAAAFl0i0SCkChkkIoQLREUIA",
				popularity = "15.7%",
				dps = "91.0k",
				hps = "344.8k",
			},
			["MythicPlus"] = {
				talentString = "BAQAAAAAAAAAAAAAAAAAAAAAAABolSkE0iIJRSTaJJJhAAAAAAAAAAAAFl0QLJBpQISiQKNSkAlAA",
				popularity = "29.3%",
				dps = "120.7k",
				hps = "150.7k",
				keystone = "+17"
			},
		},
		["holy"] = {
			["MythicPlus"] = {
				talentString = "BEQAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAHoJSJBJREIRCRJJpEAAAAQRLtDQJJBpQkIJioUgkgUAA",
				popularity = "23.0%",
				dps = "171.8k",
				hps = "146.0k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "BEQAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAgWAtkkkEJkWEJBlEKBAAAAUUSL0SSQKESSigSBSESBA",
				popularity = "56.6%",
				dps = "47.2k",
				hps = "404.9k",
			},
		},
		["shadow"] = {
			["Raiding"] = {
				talentString = "BIQAAAAAAAAAAAAAAAAAAAAAAgAJBAAAAAAAAAAAAIkiDQSSLtIJJRkUgUIJJRaEIiQKSLkEUQC",
				popularity = "55.4%",
				dps = "413.4k",
			},
			["MythicPlus"] = {
				talentString = "BIQAAAAAAAAAAAAAAAAAAAAAAECCBAAAAAAAAAAAAISKSkk00IJJJBCl0IJJRaEiICpItQSQBJA",
				popularity = "71.9%",
				dps = "661.6k",
				keystone = "+20"
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["Raiding"] = {
				talentString = "BoPAAAAAAAAAAAAAAAAAAAAAAACJIIJJJiERkISI4AJJRCAAAAAkIJ5ARk0EiEAAQIJJJAAAA",
				popularity = "31.1%",
				dps = "257.2k",
			},
			["MythicPlus"] = {
				talentString = "BoPAAAAAAAAAAAAAAAAAAAAAAACJJCJJyBSLSEkISIIJSkAAAAAAJSSOQEJNhIBAAESSSAAAAA",
				popularity = "16.9%",
				dps = "249.2k",
				keystone = "+15"
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "BsPAAAAAAAAAAAAAAAAAAAAAAICACJJyBiIREJSSIISSkkEJwBIJRkkkkkSSAAAAAAAAAAAAA",
				popularity = "70.6%",
				dps = "375.9k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "BsPAAAAAAAAAAAAAAAAAAAAAAICACSSkISEkkkECJSSEJIIhkERSSSSKJBAAAAAAAAAAAA",
				popularity = "33.3%",
				dps = "410.3k",
			},
		},
		["unholy"] = {
			["Raiding"] = {
				talentString = "BwPAAAAAAAAAAAAAAAAAAAAAAAAIikEJiERISECJJJRAAAAAAAAAgSSSICAAIJh0SkkkIJA",
				popularity = "94.1%",
				dps = "439.0k",
			},
			["MythicPlus"] = {
				talentString = "BwPAAAAAAAAAAAAAAAAAAAAAAAAiQSicgISERiEhgkIRCAAAAAAAAAKkEhIJpBAQiUEJJJSSA",
				popularity = "64.7%",
				dps = "468.7k",
				keystone = "+17"
			},
		},
	},
	["shaman"] = {
		["enhancement"] = {
			["Raiding"] = {
				talentString = "BcQAAAAAAAAAAAAAAAAAAAAAAIJJpEJgkESSSDlEAAAAAAAAAAAAAKRIJkgiAJNJpEBQOQCBSA",
				popularity = "97.6%",
				dps = "403.0k",
			},
			["MythicPlus"] = {
				talentString = "BcQAAAAAAAAAAAAAAAAAAAAAAIRSKRCCJhkk0QJRAAAAAAAAAAAAAKRICJkiAJNJpEQpEEBIB",
				popularity = "76.6%",
				dps = "427.0k",
				keystone = "+17"
			},
		},
		["elemental"] = {
			["MythicPlus"] = {
				talentString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAg0SrIJlkACSjSUSLJOQOAAAAAAgSAJlkQKASLJpRElSQEBC",
				popularity = "64.0%",
				dps = "500.8k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAgUSrUSCgDk0SShSgkkEBAAAAAoEQSJJoJg0SSahACJSgA",
				popularity = "62.9%",
				dps = "382.7k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "BgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQIJJJpkUSKJJNBNIpFEUiokWoICBKhokkkkEA",
				popularity = "8.8%",
				dps = "76.9k",
				hps = "121.5k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "BgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQIRSiSCplk0kU0okkSQQJBAINJppkIIJRSQLA",
				popularity = "30.1%",
				dps = "53.8k",
				hps = "420.9k",
			},
		},
	},
	["mage"] = {
		["fire"] = {
			["MythicPlus"] = {
				talentString = "B8DAAAAAAAAAAAAAAAAAAAAAAIJIFNkQSaCikQE5AhkAAAAAAAAAIiIJJUSUSSIJJJpBAAASLA",
				popularity = "67.4%",
				dps = "563.9k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "B8DAAAAAAAAAAAAAAAAAAAAAAQCSRDJRSaCcgkQEJhkAAAAAAAAAgIkIOQJ5AlkkkkkkkGAAAINA",
				popularity = "60.1%",
				dps = "390.0k",
			},
		},
		["arcane"] = {
			["MythicPlus"] = {
				talentString = "B4DAAAAAAAAAAAAAAAAAAAAAAIJIl0QiDkkCISCRkESEIJJk0SCAAAAAAAAAAAISSSCJJJCJA",
				popularity = "59.1%",
				dps = "375.9k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "B4DAAAAAAAAAAAAAAAAAAAAAAQEUSDJSkigIJERSIRCkEk0SCAAAAAAAAAAAISSSSkkkEIA",
				popularity = "61.6%",
				dps = "411.6k",
			},
		},
		["frost"] = {
			["Raiding"] = {
				talentString = "BAEAAAAAAAAAAAAAAAAAAAAAAQCUSzBkQkigIJERSkEAAASJRSIRSSIJJJJJBAAAAAAAAAiA",
				popularity = "73.0%",
				dps = "412.3k",
			},
			["MythicPlus"] = {
				talentString = "BAEAAAAAAAAAAAAAAAAAAAAAAIJIFNkEJpAikQERKJJAAAJkIhkkkkIJJJRSAAAAAAAAAgIA",
				popularity = "66.5%",
				dps = "518.3k",
				keystone = "+19"
			},
		},
	},
	["warlock"] = {
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "BsQAAAAAAAAAAAAAAAAAAAAAAoBSSkkQkmCRaSSIlQSClIRUCalikAAAAAAAAAAAAIgSSSC",
				popularity = "54.5%",
				dps = "585.4k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BsQAAAAAAAAAAAAAAAAAAAAAAggkEJJQaKQaJJhUiWwBUSSkAalikAAAAAAAAAAAAIJokEJA",
				popularity = "46.1%",
				dps = "409.1k",
			},
		},
		["demonology"] = {
			["MythicPlus"] = {
				talentString = "BoQAAAAAAAAAAAAAAAAAAAAAAggkEJJEppoEpdgkESLAAAAAABikkWERSikSaJRCBAAAAAARC",
				popularity = "41.9%",
				dps = "540.6k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "BoQAAAAAAAAAAAAAAAAAAAAAAggkEJJQaKQaJJhUCAAAAAIBSikSEhkIpolkkQAAAAAAQiA",
				popularity = "55.2%",
				dps = "378.8k",
			},
		},
		["affliction"] = {
			["MythicPlus"] = {
				talentString = "BkQAAAAAAAAAAAAAAAAAAAAAAgcgkkEJJQaKEpdgkESBAAAAUAAAAAAAIENSSkIJJaJJBAkA",
				popularity = "46.2%",
				dps = "348.6k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "BkQAAAAAAAAAAAAAAAAAAAAAAAHIJJRSCkmCkWSSIlAAAAANAAAAAAASEtQkkIJSaJRAAJA",
				popularity = "75.4%",
				dps = "399.9k",
			},
		},
	},
	["monk"] = {
		["brewmaster"] = {
			["Raiding"] = {
				talentString = "BwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAAAQShWJJJQSSrRAAAASLSRiEJUKSSaJJlEgWjIt0KhAA",
				popularity = "34.8%",
				dps = "243.1k",
			},
			["MythicPlus"] = {
				talentString = "BwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAAAgUiWLJJQSSpRAAAASJRJJSkQrQSKJIBENJSLtSiAA",
				popularity = "35.2%",
				dps = "240.1k",
				keystone = "+14"
			},
		},
		["mistweaver"] = {
			["MythicPlus"] = {
				talentString = "B4QAAAAAAAAAAAAAAAAAAAAAA0SKFJJHQUKtIkSEJNIlUEAAAAAAAAAAAAg0SUSSIJRrAkk0gQAAEpB",
				popularity = "26.9%",
				dps = "113.6k",
				hps = "160.0k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "B4QAAAAAAAAAAAAAAAAAAAAAAUiCSkoUaNCpEJJlAt0aBAAAAAAAAAAAAk0SUQIJRpAQSLJJRAAEaE",
				popularity = "60.1%",
				dps = "22.7k",
				hps = "441.9k",
			},
		},
		["windwalker"] = {
			["Raiding"] = {
				talentString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIRSS0iIRAAAAgEJJFAJJJJCHIlkERClikEJJtEAAAQD",
				popularity = "84.8%",
				dps = "408.5k",
			},
			["MythicPlus"] = {
				talentString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARSkkElISEAAAAQkkUIRgkkItkUSSIJRrIJRCNAAAANA",
				popularity = "55.0%",
				dps = "444.1k",
				keystone = "+16"
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["Raiding"] = {
				talentString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgCAJJigkQQSikIFolIJSSJRTcgQol0SSERDgCAE",
				popularity = "79.9%",
				dps = "399.3k",
			},
			["MythicPlus"] = {
				talentString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgCAJJigkAkESSSBaJOQkkUSCJJEaSLSkENAK0AE",
				popularity = "37.3%",
				dps = "482.8k",
				keystone = "+17"
			},
		},
		["guardian"] = {
			["MythicPlus"] = {
				talentString = "BgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQikISJiEBJpIhkUoAQSCCSgkkkIJSBaIAAAAAARAJECA",
				popularity = "29.7%",
				dps = "230.0k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "BgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQiIJJlElICiiESShCAJCCSgkkkkkIFoFOAAAAAAQEQQCA",
				popularity = "28.9%",
				dps = "237.3k",
			},
		},
		["feral"] = {
			["MythicPlus"] = {
				talentString = "BcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAASk0STCSSSSJtDgWSkIJAAAAAAKAkIBAkkkESiUCaJJAAAAAAIBAA",
				popularity = "19.2%",
				dps = "296.8k",
				keystone = "+12"
			},
			["Raiding"] = {
				talentString = "BcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAACSLioIJJJl0IaJJxBSCAAAAAgGAJCAQSSSIJUSolkAAAAAAgEAAA",
				popularity = "48.9%",
				dps = "407.5k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "BkGAAAAAAAAAAAAAAAAAAAAAA0IJRDJJpIlkIIFaaRSAAAAAAAAAAAAABIJCCSIQSkkkUQgDAAAAAAiAAgkA",
				popularity = "26.0%",
				dps = "120.3k",
				hps = "165.6k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BkGAAAAAAAAAAAAAAAAAAAAAA0ikElWkIhUQiIFhWkEAAAAAAAAAAAAoAIJCCSAkESiUIplIAAAAAgIAAIC",
				popularity = "65.6%",
				dps = "28.5k",
				hps = "439.2k",
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			["MythicPlus"] = {
				talentString = "BEkAAAAAAAAAAAAAAAAAAAAAAIJJRSCSSiQISCAAAAAAIlIRSIJNJplWEBSIKtIJRA",
				popularity = "23.0%",
				dps = "456.1k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BEkAAAAAAAAAAAAAAAAAAAAAAIJRkkgkkISgkAAAAAAASLEJRSSLJplWEBSIKtIJRA",
				popularity = "70.8%",
				dps = "405.6k",
			},
		},
		["vengeance"] = {
			["Raiding"] = {
				talentString = "BUkAAAAAAAAAAAAAAAAAAAAAAAAiIJJikgkERISJJEaJSSIhkEJRLSIBBAAAAkkEA",
				popularity = "17.7%",
				dps = "241.2k",
			},
			["MythicPlus"] = {
				talentString = "BUkAAAAAAAAAAAAAAAAAAAAAAAASiQiQSIJhES0SikolEiEERaJJNJRSIBAAAAkkA",
				popularity = "19.1%",
				dps = "264.9k",
				keystone = "+20"
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["MythicPlus"] = {
				talentString = "BsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAiEIRSkEIplIkIkESLKJJJhIpkAEJikIJBCE",
				popularity = "76.3%",
				dps = "469.9k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "BsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJSCSaSQABikIRSItoEJJhcgkWCIRSLSikEIQA",
				popularity = "29.7%",
				dps = "415.8k",
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "BEcBAAAAAAAAAAAAAAAAAAAAAQSJpFJJKhkkSCSSSDAAAAAAAAJBiWiIhQOQCAAAAkk0ikISCENB",
				popularity = "40.6%",
				dps = "415.7k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BEcBAAAAAAAAAAAAAAAAAAAAAQikWkkoESSkESSSDAAAAAEAAkEAISISSCAAAASk0ikkIJQ0SA",
				popularity = "29.8%",
				dps = "380.9k",
			},
		},
		["preservation"] = {
			["Raiding"] = {
				talentString = "BwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAIJplSOACJRKIpFJRAAQSkIIikASAAAASSCJSiIJBAB",
				popularity = "13.5%",
				dps = "52.9k",
				hps = "425.1k",
			},
			["MythicPlus"] = {
				talentString = "BwbBAAAAAAAAAAAAAAAAAAAAAAAAAAASSSkSgIJRKSSEAAAkEJJHQiQSQSCAAAIJBJlkICBAA",
				popularity = "24.0%",
				dps = "109.4k",
				hps = "142.5k",
				keystone = "+17"
			},
		},
	},
}
addonTable.DB = talentData