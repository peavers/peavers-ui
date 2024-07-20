local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["warrior"] = {
		["protection"] = {
			["Raiding"] = {
				talentString = "BkEAAAAAAAAAAAAAAAAAAAAAAIQAAAAgkkQSCSLpkkkWDRgQRAlkEgISSCNkkAcAOQIAAAAAAAQSAAHo0aAgA",
				popularity = "13.9%",
				dps = "261.3k",
			},
			["MythicPlus"] = {
				talentString = "BkEAAAAAAAAAAAAAAAAAAAAAAIQAAAAgkkQSik0SKJJpBRICkIRJJBgQSQDJJIARCAAAAAAAkEAgSrBAC",
				popularity = "20.9%",
				dps = "240.4k",
				keystone = "+19"
			},
		},
		["fury"] = {
			["MythicPlus"] = {
				talentString = "BgEAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQggSCQEEiIJRBEiQEEJJplEJJhkQSIRKBIJSEAAAEQQA",
				popularity = "84.8%",
				dps = "511.9k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BgEAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQggSQQEEiIJRBSICEOQIJplEJJhkQSIRKBIJSEAAAEQQA",
				popularity = "64.8%",
				dps = "500.0k",
			},
		},
		["arms"] = {
			["Raiding"] = {
				talentString = "BcEAAAAAAAAAAAAAAAAAAAAAAAQRikEJkDko0KJBAAAAEEhoQAFRCECJhmEhAESIAAAAAAAAkEkkACRDB",
				popularity = "41.6%",
				dps = "474.5k",
			},
			["MythicPlus"] = {
				talentString = "BcEAAAAAAAAAAAAAAAAAAAAAAAQplIRkQSiWpEJAAAAQQESKkEUEBIikEaSECwBQkAAAAAAAAQiWiIgQ0QA",
				popularity = "35.3%",
				dps = "469.0k",
				keystone = "+18"
			},
		},
	},
	["paladin"] = {
		["holy"] = {
			["Raiding"] = {
				talentString = "BEEAAAAAAAAAAAAAAAAAAAAAAAAAAQAARAAACQLJFoUik0ahUSClkEKaiGQSJJIJEpgmkIAgAAFgQSCC",
				popularity = "25.6%",
				dps = "50.7k",
				hps = "362.2k",
			},
			["MythicPlus"] = {
				talentString = "BEEAAAAAAAAAAAAAAAAAAAAAAAABAABAEBAAIAtIFkSJSSrg0SClkEKaiCIJFBJJEpAiIAgAAFgQSSI",
				popularity = "5.7%",
				dps = "45.8k",
				hps = "103.9k",
				keystone = "+13"
			},
		},
		["protection"] = {
			["Raiding"] = {
				talentString = "BIEAAAAAAAAAAAAAAAAAAAAAAUSKJSKSK0SSiWTkQIhEAAgAAAAAAAAIkkUkgEkkiQSCAgACAgAE",
				popularity = "4.5%",
				dps = "242.9k",
			},
			["MythicPlus"] = {
				talentString = "BIEAAAAAAAAAAAAAAAAAAAAAA0SaJkiodAtIJKNJJSEhEAAgAAAAAAAAakkkUEIJkkiASDAiAAAIAB",
				popularity = "23.7%",
				dps = "215.6k",
				keystone = "+19"
			},
		},
		["retribution"] = {
			["MythicPlus"] = {
				talentString = "BYEAAAAAAAAAAAAAAAAAAAAAAAAAAQAgIUKtSSr0koIJpIJAAAAAAQaBJJFBSiEpEBCRKJahICgShGAA",
				popularity = "46.7%",
				dps = "520.7k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "BYEAAAAAAAAAAAAAAAAAAAAAAAAAAQAgIalSrk0KNiWkkWSAAAAAAABkkQgkQkSESCpkSChICJiShGAA",
				popularity = "58.7%",
				dps = "440.8k",
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["MythicPlus"] = {
				talentString = "B0PAAAAAAAAAAAAAAAAAAAAAA4AgWSAoQAAAAAAAAAAAoRkiEaRkQiEJhGERLHIRSSEaRSSA",
				popularity = "73.1%",
				dps = "499.4k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "B0PAAAAAAAAAAAAAAAAAAAAAA4AgWSAoQAAAAAAAAAAAoBhEaikQCJJoJkWUSSkIEaRSSA",
				popularity = "48.3%",
				dps = "402.0k",
			},
		},
		["survival"] = {
			["MythicPlus"] = {
				talentString = "B8PAAAAAAAAAAAAAAAAAAAAAA4ABahkwBoEEkkkkWyBCQkkSECAAAAAERKNpoBJSIhEaAAAAAA",
				popularity = "19.2%",
				dps = "341.9k",
				keystone = "+13"
			},
			["Raiding"] = {
				talentString = "B8PAAAAAAAAAAAAAAAAAAAAAAIhWaBJBKBBJkEJkIEJhkkAAAAAABRRoJkIBhgCAAAAA",
				popularity = "30.7%",
				dps = "345.8k",
			},
		},
		["marksmanship"] = {
			["Raiding"] = {
				talentString = "B4PAAAAAAAAAAAAAAAAAAAAAAIHAaBApgAAAAAARiEJJhICJJtEpRIRRoJkkESIoBAAAAA",
				popularity = "23.8%",
				dps = "394.7k",
			},
			["MythicPlus"] = {
				talentString = "B4PAAAAAAAAAAAAAAAAAAAAAA4ABaBgoggAAAAAEJJHQSCICJJtEp1ERUkimQiESIhGAAAAA",
				popularity = "49.8%",
				dps = "531.5k",
				keystone = "+19"
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			["MythicPlus"] = {
				talentString = "BMQAAAAAAAAAAAAAAAAAAAAAAEJJJJSAAAAAAASJJSLJAAAAAAQrlkgEIJpkWSEkEJBJJalIBA",
				popularity = "35.9%",
				dps = "396.1k",
				keystone = "+14"
			},
			["Raiding"] = {
				talentString = "BMQAAAAAAAAAAAAAAAAAAAAAAEJJhkEEAAAAAASJJSJJAAAAAAgWSCSgkkSaJREEJJJRSTJSAA",
				popularity = "46.2%",
				dps = "483.2k",
			},
		},
		["outlaw"] = {
			["MythicPlus"] = {
				talentString = "BQQAAAAAAAAAAAAAAAAAAAAAAAAElEEJhkkESIRSSolkElkItkAAAAAAAtSkwBSSUgSaBAAAQSCA",
				popularity = "42.7%",
				dps = "556.1k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BQQAAAAAAAAAAAAAAAAAAAAAAAAElEEJhkkESIRSSolkElkItkAAAAAAAtWSCHIJRBKpFAAAARCA",
				popularity = "27.6%",
				dps = "504.0k",
			},
		},
		["subtlety"] = {
			["MythicPlus"] = {
				talentString = "BUQAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAgUSSSJBkSRkkIJxBSSSkItIi0aJJSSCgSKBAAAgEEA",
				popularity = "16.7%",
				dps = "271.4k",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "BUQAAAAAAAAAAAAAAAAAAAAAAAAEEAAAAAASJJJlERSKFRICxBSSSISLSS0aJJSSCgSaBAAAgEEA",
				popularity = "78.7%",
				dps = "439.4k",
			},
		},
	},
	["priest"] = {
		["discipline"] = {
			["MythicPlus"] = {
				talentString = "BAQAAAAAAAAAAAAAAAAAAAAAAAAapEJBtISSk0kWSSSIAAAAAAAAAAAQRJN0SSQKSISiQK0SkAlAA",
				popularity = "33.6%",
				dps = "121.1k",
				hps = "140.5k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "BAQAAAAAAAAAAAAAAAAAAAAAAAAapFRQLikEJkSSSSIBAAAAAAAAAAAFl0i0SCkChkkIoQLREUIA",
				popularity = "14.2%",
				dps = "73.9k",
				hps = "325.4k",
			},
		},
		["holy"] = {
			["Raiding"] = {
				talentString = "BEQAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAgWAtkkkEJkWEJBlEKBAAAAUUSL0SSQKESSigSBSESBA",
				popularity = "55.6%",
				dps = "47.2k",
				hps = "390.9k",
			},
			["MythicPlus"] = {
				talentString = "BEQAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAHoJSJBJREIRCRJJpEAAAAQRLtDQJJBpIRikIiSDSCUAA",
				popularity = "31.0%",
				dps = "170.4k",
				hps = "147.2k",
				keystone = "+16"
			},
		},
		["shadow"] = {
			["Raiding"] = {
				talentString = "BIQAAAAAAAAAAAAAAAAAAAAAAggkEAAAAAAAAAAAAgQKOAJJt0IJJJRigUIJJRaEIiQKSLkEUQC",
				popularity = "35.5%",
				dps = "519.1k",
			},
			["MythicPlus"] = {
				talentString = "BIQAAAAAAAAAAAAAAAAAAAAAAECCBAAAAAAAAAAAAISKSkk00IJJJBClUIJJRaEiICpItQSQBJA",
				popularity = "75.4%",
				dps = "702.4k",
				keystone = "+20"
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["Raiding"] = {
				talentString = "BoPAAAAAAAAAAAAAAAAAAAAAAACJIkkIHIiERkISIIJJRCAAAAAkIJ5ARk0EiEAAQIJJJAAAA",
				popularity = "24.8%",
				dps = "300.9k",
			},
			["MythicPlus"] = {
				talentString = "BoPAAAAAAAAAAAAAAAAAAAAAAACJJCJJi0SERkISIIJSkAAAAAAJSSOQEJNhIBAAESSSAAAAA",
				popularity = "25.5%",
				dps = "274.2k",
				keystone = "+15"
			},
		},
		["unholy"] = {
			["MythicPlus"] = {
				talentString = "BwPAAAAAAAAAAAAAAAAAAAAAAAAiQSicgISERiEhgkIRCAAAAAAAAAKkEhIJpBAQiUEJJJSSA",
				popularity = "72.5%",
				dps = "505.2k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BwPAAAAAAAAAAAAAAAAAAAAAAAAIikEJiERISECJJJRAAAAAAAAAgSSSICAAIJh0SkkkIJA",
				popularity = "78.4%",
				dps = "513.9k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "BsPAAAAAAAAAAAAAAAAAAAAAAICgIkkIHISERkIJhgISkkEJwBIJRkkkkkSSAAAAAAAAAAAAA",
				popularity = "83.0%",
				dps = "394.2k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BsPAAAAAAAAAAAAAAAAAAAAAAICACSSkISEhkkECJSSEJIIhkERSSSSKJBAAAAAAAAAAAA",
				popularity = "29.3%",
				dps = "528.8k",
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			["MythicPlus"] = {
				talentString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAg0SrIJlkACSjSUSLJOQOAAAAAAgSAJSCpgiItkkmSgSQEBC",
				popularity = "68.8%",
				dps = "534.7k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAgUSrUSCgDk0SShSgkkEBAAAAAoEQSJJoJg0SSahACJSgA",
				popularity = "38.2%",
				dps = "404.2k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "BgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIhkkkkSSJpIJNBNIpEESJJEoISL5AAiSSSiEIA",
				popularity = "9.2%",
				dps = "94.0k",
				hps = "120.5k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "BgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQIRSiSCplk0kU0okkSQQJBAINJppkIIJRSQLA",
				popularity = "31.0%",
				dps = "64.4k",
				hps = "417.5k",
			},
		},
		["enhancement"] = {
			["Raiding"] = {
				talentString = "BcQAAAAAAAAAAAAAAAAAAAAAAIJJpEJgkESSSDlEAAAAAAAAAAAAAKRIJkgiAJNJpEBQOQCBSA",
				popularity = "82.0%",
				dps = "477.2k",
			},
			["MythicPlus"] = {
				talentString = "BcQAAAAAAAAAAAAAAAAAAAAAAIRSKRCCJhkk0QJRAAAAAAAAAAAAAKRIJkoligk0kkCEKBBBSA",
				popularity = "79.8%",
				dps = "428.7k",
				keystone = "+15"
			},
		},
	},
	["mage"] = {
		["arcane"] = {
			["MythicPlus"] = {
				talentString = "B4DAAAAAAAAAAAAAAAAAAAAAAIRIl0QSkkCISCRkESEIJJk0SCAAAAAAAAAAAISSSCJJJCJA",
				popularity = "72.2%",
				dps = "418.8k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "B4DAAAAAAAAAAAAAAAAAAAAAAQEUSDJSkigIJERSIRCkEk0SCAAAAAAAAAAAISSSSkkkEIA",
				popularity = "42.3%",
				dps = "480.7k",
			},
		},
		["frost"] = {
			["Raiding"] = {
				talentString = "BAEAAAAAAAAAAAAAAAAAAAAAAQCUSzBkQkigIJERSkEAAASJRSIRSSIJJJJJBAAAAAAAAAiA",
				popularity = "56.7%",
				dps = "462.0k",
			},
			["MythicPlus"] = {
				talentString = "BAEAAAAAAAAAAAAAAAAAAAAAAIkIFNkQSagIJERSkkAAAkQiESSSSikkkEJBAAAAAAAAAiA",
				popularity = "68.9%",
				dps = "575.0k",
				keystone = "+19"
			},
		},
		["fire"] = {
			["MythicPlus"] = {
				talentString = "B8DAAAAAAAAAAAAAAAAAAAAAAIJIFNkQSKOAikQEJhkAAAAAAAAAIiIJJUSUSSIJJJpBAAASLA",
				popularity = "72.4%",
				dps = "593.0k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "B8DAAAAAAAAAAAAAAAAAAAAAAQCSRDJRSKCcgkQEJhkAAAAAAAAAgIkIOQJ5AlkkkkkkkGAAAINA",
				popularity = "51.8%",
				dps = "440.0k",
			},
		},
	},
	["warlock"] = {
		["demonology"] = {
			["MythicPlus"] = {
				talentString = "BoQAAAAAAAAAAAAAAAAAAAAAAAIJRSCRaKkkmkESJAAAAAABikkWERSikSaJRCBAAAAAAJJ",
				popularity = "45.7%",
				dps = "508.3k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "BoQAAAAAAAAAAAAAAAAAAAAAAggkEJJQaKQaJJhUCAAAAAIBSikSEhkIpolkkQAAAAAAQiA",
				popularity = "29.0%",
				dps = "382.6k",
			},
		},
		["affliction"] = {
			["MythicPlus"] = {
				talentString = "BkQAAAAAAAAAAAAAAAAAAAAAAAHIJJRSCRaKEpIJhUCAAAAUAAAAAAAIENSSkIJJaJJBAkA",
				popularity = "71.1%",
				dps = "439.4k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "BkQAAAAAAAAAAAAAAAAAAAAAAASSSkkAppQkWSSIlAAAAANAAAAAAASEtQkkIJSaJRAAJA",
				popularity = "58.2%",
				dps = "430.8k",
			},
		},
		["destruction"] = {
			["Raiding"] = {
				talentString = "BsQAAAAAAAAAAAAAAAAAAAAAAggkEJJQaKQaJJhUiWwBUSSkAalikAAAAAAAAAAAAIJokEJA",
				popularity = "31.9%",
				dps = "394.2k",
			},
			["MythicPlus"] = {
				talentString = "BsQAAAAAAAAAAAAAAAAAAAAAAAIJRSCRaKEpJJRSJkkQJSElgWpIJAAAAAAAAAAAACokkkA",
				popularity = "55.0%",
				dps = "663.4k",
				keystone = "+19"
			},
		},
	},
	["monk"] = {
		["mistweaver"] = {
			["Raiding"] = {
				talentString = "B4QAAAAAAAAAAAAAAAAAAAAAAUiCSkoUaNCpEJJlAt0aBAAAAAAAAAAAAk0SUQIJRpAQSLJJRAAEaE",
				popularity = "51.5%",
				dps = "23.2k",
				hps = "409.3k",
			},
			["MythicPlus"] = {
				talentString = "B4QAAAAAAAAAAAAAAAAAAAAAA0SKFJJHQUKtIkSEJNIlUEAAAAAAAAAAAAg0SUSSIJRrIQSSDOABAQkGA",
				popularity = "21.7%",
				dps = "110.7k",
				hps = "157.7k",
				keystone = "+19"
			},
		},
		["brewmaster"] = {
			["Raiding"] = {
				talentString = "BwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAAAQShWJJJQSSrRAAAASLSRiEJUKSSaJJlEgWjIt0KhAA",
				popularity = "45.2%",
				dps = "295.8k",
			},
			["MythicPlus"] = {
				talentString = "BwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAAAgUiWLJJQSSpRAAAASJUSiEJ0KkkSSSJBQTi0SrkIA",
				popularity = "33.9%",
				dps = "267.2k",
				keystone = "+17"
			},
		},
		["windwalker"] = {
			["Raiding"] = {
				talentString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIRSS0iIRAAAAgEJJFAJJJJCHIlkERClikEJJtEAAAQD",
				popularity = "70.0%",
				dps = "499.5k",
			},
			["MythicPlus"] = {
				talentString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARSkkElISEAAAAQkkUIRgkkIkIJhkEtCSkk0AEAAQD",
				popularity = "48.3%",
				dps = "477.7k",
				keystone = "+15"
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["Raiding"] = {
				talentString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgCAJJigkQQSikIFolIJSSJRTcgQol0SSERDgCAE",
				popularity = "55.1%",
				dps = "387.9k",
			},
			["MythicPlus"] = {
				talentString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgCAJJJCSCQSIJJFol4ARSSJJkkQoJtIRS0AoAAB",
				popularity = "31.6%",
				dps = "427.7k",
				keystone = "+17"
			},
		},
		["guardian"] = {
			["MythicPlus"] = {
				talentString = "BgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQikISJiEBJpIhkUAAJJBIhIJJJSiUEa4AAAAAAARAJECA",
				popularity = "25.5%",
				dps = "255.0k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQiIJJlElICiiESShCAJCCSgkkkkkIFoFOAAAAAAQEQQCA",
				popularity = "20.4%",
				dps = "241.8k",
			},
		},
		["feral"] = {
			["MythicPlus"] = {
				talentString = "BcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEJt0kQSSSSJtDgWSkIJAAAAAAKAkkAAkkkESiUCaJJAAAAAAIBAA",
				popularity = "25.4%",
				dps = "404.2k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "BcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAACSLioIJJJl0IaJJxBSCAAAAAgGAJCAQSSSIJUSolkAAAAAAgEAAA",
				popularity = "36.9%",
				dps = "353.6k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "BkGAAAAAAAAAAAAAAAAAAAAAA0IJRDJJpIlkIIFaaRSAAAAAAAAAAAAAB4AJJIIhAJRSyBSBpgDAAAAAAiAAgkA",
				popularity = "25.4%",
				dps = "133.1k",
				hps = "167.5k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BkGAAAAAAAAAAAAAAAAAAAAAA0ikElWkIhUQiIFhWkEAAAAAAAAAAAAoAIJCCSAkESiUIplIAAAAAgIAAIC",
				popularity = "63.4%",
				dps = "30.2k",
				hps = "407.8k",
			},
		},
	},
	["demon-hunter"] = {
		["vengeance"] = {
			["MythicPlus"] = {
				talentString = "BUkAAAAAAAAAAAAAAAAAAAAAAAASiQiQSIJhES0SikolEiEERaJJNJRSIBAAAAkkA",
				popularity = "16.4%",
				dps = "283.3k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BUkAAAAAAAAAAAAAAAAAAAAAAAAiIJJikgkERISJJEaJSSIhkEJRLSIBBAAAAkkEA",
				popularity = "14.1%",
				dps = "281.8k",
			},
		},
		["havoc"] = {
			["MythicPlus"] = {
				talentString = "BEkAAAAAAAAAAAAAAAAAAAAAAIJJRSCSSiQISCAAAAAAIlQkEJJNJplWEBSIKtIJRA",
				popularity = "28.4%",
				dps = "485.2k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BEkAAAAAAAAAAAAAAAAAAAAAAIJRkkgkkISgkAAAAAAASLEJRSSLJplWEBSIKtIJRA",
				popularity = "49.6%",
				dps = "477.9k",
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["Raiding"] = {
				talentString = "BsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJSCSaSQABikIRSItokkkEikWCIRSLSikEIQA",
				popularity = "23.0%",
				dps = "474.6k",
			},
			["MythicPlus"] = {
				talentString = "BsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAiEIRSkEkcAISiEJh0iSSSSISKJgEJtIJSEIA",
				popularity = "60.9%",
				dps = "509.4k",
				keystone = "+17"
			},
		},
		["preservation"] = {
			["MythicPlus"] = {
				talentString = "BwbBAAAAAAAAAAAAAAAAAAAAAAAAAAASSSkSgIJRKSSEQAAQSkkEiIJQEAAAgkkQSLJiQAA",
				popularity = "27.6%",
				dps = "116.2k",
				hps = "138.3k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAIJRKJIkEpgkWkEAAQSISgIJEJBAAAIJJk0kkkEAA",
				popularity = "14.4%",
				dps = "44.6k",
				hps = "428.1k",
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "BEcBAAAAAAAAAAAAAAAAAAAAAQSJpFJJKhkkSCSSSDAAAAAAAAJBJIiECJJAAAAQSSLSiIJQ0E",
				popularity = "34.9%",
				dps = "432.1k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BEcBAAAAAAAAAAAAAAAAAAAAAQikWkkoESSkESSSDAAAAAEAAkEAISISSCAAAASk0ikkIJQ0SA",
				popularity = "29.5%",
				dps = "457.2k",
			},
		},
	},
}
addonTable.DB = talentData