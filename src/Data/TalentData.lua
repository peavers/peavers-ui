local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["paladin"] = {
		["holy"] = {
			["Raiding"] = {
				talentString = "BEEAAAAAAAAAAAAAAAAAAAAAAAAAAQAARAAACQLJFoUik0ahUSClkEKaiGQSJBJJEpgmkIAgAAFgQSCC",
				popularity = "24.7%",
				dps = "49.7k",
				hps = "360.1k",
			},
			["MythicPlus"] = {
				talentString = "BEEAAAAAAAAAAAAAAAAAAAAAAAABAABAEBAAIAtIFkSJSSrg0SClkEKaiCIJFBJJEpAiIAgAAFgQSSI",
				popularity = "4.1%",
				dps = "45.8k",
				hps = "105.6k",
				keystone = "+13"
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "BIEAAAAAAAAAAAAAAAAAAAAAA0SaJkiodAtIJKNJJSEhEAAgAAAAAAAAakkkUEIJkkiASDAiAAAIAB",
				popularity = "22.8%",
				dps = "216.0k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BIEAAAAAAAAAAAAAAAAAAAAAAUSKJSKSK0SSiWTkQIhEAAgAAAAAAAAIkkUkgEkkiQSCAgACAgAE",
				popularity = "4.8%",
				dps = "250.3k",
			},
		},
		["retribution"] = {
			["Raiding"] = {
				talentString = "BYEAAAAAAAAAAAAAAAAAAAAAAAAAAQAgIalSrk0KNiWkkWSAAAAAAABkkQgkQkSESCpkSChICJiShGAA",
				popularity = "58.6%",
				dps = "442.2k",
			},
			["MythicPlus"] = {
				talentString = "BYEAAAAAAAAAAAAAAAAAAAAAAAAAAQAgIUKtSSr0koIJpIJAAAAAAQaBJJFBSiEpEBCRKJahICgShGAA",
				popularity = "48.8%",
				dps = "512.7k",
				keystone = "+18"
			},
		},
	},
	["warrior"] = {
		["arms"] = {
			["MythicPlus"] = {
				talentString = "BcEAAAAAAAAAAAAAAAAAAAAAAAQplIRkQSiWpEJAAAAQQESKkEUEBIikEaSECwBQkAAAAAAAAQiWiIgQ0QA",
				popularity = "38.3%",
				dps = "493.9k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BcEAAAAAAAAAAAAAAAAAAAAAAAQRikEJkDko0KJBAAAAEEhoQAFRCECJhmEhAESIAAAAAAAAkEkkACRDB",
				popularity = "41.2%",
				dps = "474.0k",
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "BkEAAAAAAAAAAAAAAAAAAAAAAIQAAAAgkkQSik0SKJJpBRICkIRJJBgQSQDJJIARCAAAAAAAkEAgSrBAC",
				popularity = "22.7%",
				dps = "246.9k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BkEAAAAAAAAAAAAAAAAAAAAAAIQAAAAgkkQSCSLpkkkWDRgQRAlkEgISSCNkkAcAOQIAAAAAAAQSAAHo0aAgA",
				popularity = "12.6%",
				dps = "261.3k",
			},
		},
		["fury"] = {
			["Raiding"] = {
				talentString = "BgEAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQggSQQEEiIJRBSICEOQIJplEJJhkQSIRKBIJSEAAAEQQA",
				popularity = "63.9%",
				dps = "496.9k",
			},
			["MythicPlus"] = {
				talentString = "BgEAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQggSCQEEiIJRBEiQEEJJplEJJhkQSIRKBIJSEAAAEQQA",
				popularity = "84.3%",
				dps = "509.3k",
				keystone = "+19"
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["Raiding"] = {
				talentString = "B0PAAAAAAAAAAAAAAAAAAAAAA4AgWSAoQAAAAAAAAAAAoBhEaikQCJJoJkWUSSkIEaRSSA",
				popularity = "47.9%",
				dps = "404.3k",
			},
			["MythicPlus"] = {
				talentString = "B0PAAAAAAAAAAAAAAAAAAAAAA4AgWSAoQAAAAAAAAAAAoRkiEaRkQiEJhGERLHIRSSEaRSSA",
				popularity = "72.6%",
				dps = "500.9k",
				keystone = "+18"
			},
		},
		["marksmanship"] = {
			["MythicPlus"] = {
				talentString = "B4PAAAAAAAAAAAAAAAAAAAAAA4ABaBgoggAAAAAEJJHQSCICJJtEp1ERUkimQiESIhGAAAAA",
				popularity = "49.2%",
				dps = "531.8k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "B4PAAAAAAAAAAAAAAAAAAAAAAIHAaBApgAAAAAARiEJJhICJJtEpRIRRoJkkESIoBAAAAA",
				popularity = "23.0%",
				dps = "393.9k",
			},
		},
		["survival"] = {
			["MythicPlus"] = {
				talentString = "B8PAAAAAAAAAAAAAAAAAAAAAA4ABahkwBoEEkkkkWyBCQkkSECAAAAAERKNpoBJSIhEaAAAAAA",
				popularity = "17.9%",
				dps = "339.1k",
				keystone = "+13"
			},
			["Raiding"] = {
				talentString = "B8PAAAAAAAAAAAAAAAAAAAAAAIhWaBJBKBBJkEJkIEJhkkAAAAAABRRoJkIBhgCAAAAA",
				popularity = "33.7%",
				dps = "348.9k",
			},
		},
	},
	["rogue"] = {
		["outlaw"] = {
			["MythicPlus"] = {
				talentString = "BQQAAAAAAAAAAAAAAAAAAAAAAAAElEEJhkkESIRSSolkElkItkAAAAAAg0KRCHIJRBKpFAAAASCA",
				popularity = "47.3%",
				dps = "556.1k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BQQAAAAAAAAAAAAAAAAAAAAAAAAElEEJhkkESIRSSolkElkItkAAAAAAAtWSCHIJRBKpFAAAARCA",
				popularity = "27.9%",
				dps = "501.6k",
			},
		},
		["assassination"] = {
			["MythicPlus"] = {
				talentString = "BMQAAAAAAAAAAAAAAAAAAAAAAEJJJJSAAAAAAASJJSLJAAAAAAQrkkgEIJpkWSEkEJBJJalIBA",
				popularity = "39.2%",
				dps = "401.3k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "BMQAAAAAAAAAAAAAAAAAAAAAAEJJhkEEAAAAAASJJSJJAAAAAAgWSCSgkkSaJREEJJJRSTJSAA",
				popularity = "46.5%",
				dps = "481.2k",
			},
		},
		["subtlety"] = {
			["MythicPlus"] = {
				talentString = "BUQAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAgUSSSJBkSRkkIJxBSSSkItIi0aJJSSCgSKBAAAgEEA",
				popularity = "20.0%",
				dps = "264.2k",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "BUQAAAAAAAAAAAAAAAAAAAAAAAAEEAAAAAASJJJlERSKFRICxBSSSISLSS0aJJSSCgSaBAAAgEEA",
				popularity = "77.7%",
				dps = "444.6k",
			},
		},
	},
	["priest"] = {
		["shadow"] = {
			["MythicPlus"] = {
				talentString = "BIQAAAAAAAAAAAAAAAAAAAAAAECCBAAAAAAAAAAAAISKSkk00IJJJBlQJFSSCpJhIiQKSLkAFkA",
				popularity = "75.0%",
				dps = "706.4k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "BIQAAAAAAAAAAAAAAAAAAAAAAggkEAAAAAAAAAAAAgQKOAJJt0IJJJRigUIJJRaEIiQKSLkEUQC",
				popularity = "35.2%",
				dps = "515.5k",
			},
		},
		["holy"] = {
			["MythicPlus"] = {
				talentString = "BEQAAAAAAAAAAAAAAAAAAAAAAQEAAAAAAAcgmIlEkERgEJElkkSAAAAAFl0OAlkEoIpIkIkCNSCSBA",
				popularity = "27.8%",
				dps = "166.7k",
				hps = "144.2k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "BEQAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAgWAtkkkEJkWEJBlEKBAAAAUUSL0SSQKESSigSBSESBA",
				popularity = "55.5%",
				dps = "46.3k",
				hps = "388.7k",
			},
		},
		["discipline"] = {
			["Raiding"] = {
				talentString = "BAQAAAAAAAAAAAAAAAAAAAAAAAAapFRQLikEJkSSSSIBAAAAAAAAAAAFl0i0SCkChkkIoQLREUIA",
				popularity = "15.2%",
				dps = "77.0k",
				hps = "338.9k",
			},
			["MythicPlus"] = {
				talentString = "BAQAAAAAAAAAAAAAAAAAAAAAAAAapEJBtISSk0kWSSSIAAAAAAAAAAAQRJN0SSQKSISiQK0SkAlAA",
				popularity = "31.3%",
				dps = "124.5k",
				hps = "142.4k",
				keystone = "+18"
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["MythicPlus"] = {
				talentString = "BoPAAAAAAAAAAAAAAAAAAAAAAACJJCJJi0SERkISIIJSkAAAAAAJSSOQEJNhIBAAESSSAAAAA",
				popularity = "24.6%",
				dps = "282.5k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "BoPAAAAAAAAAAAAAAAAAAAAAAACJIkkIHIiERkISIIJJRCAAAAAkIJ5ARk0EiEAAQIJJJAAAA",
				popularity = "25.2%",
				dps = "308.0k",
			},
		},
		["frost"] = {
			["Raiding"] = {
				talentString = "BsPAAAAAAAAAAAAAAAAAAAAAAICACSSkISEhkkECJSSEJIIhkERSSSSKJBAAAAAAAAAAAA",
				popularity = "29.0%",
				dps = "528.8k",
			},
			["MythicPlus"] = {
				talentString = "BsPAAAAAAAAAAAAAAAAAAAAAAICgIkkIHISERkIJhgISkkEJwBIJRkkkkkSSAAAAAAAAAAAAA",
				popularity = "80.9%",
				dps = "403.7k",
				keystone = "+17"
			},
		},
		["unholy"] = {
			["MythicPlus"] = {
				talentString = "BwPAAAAAAAAAAAAAAAAAAAAAAAAiQSicgISERiEhgkIRCAAAAAAAAAKkEhIJpBAQiUEJJJSSA",
				popularity = "72.2%",
				dps = "507.2k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BwPAAAAAAAAAAAAAAAAAAAAAAAAIikEJiERISECJJJRAAAAAAAAAgSSSICAAIJh0SkkkIJA",
				popularity = "78.2%",
				dps = "513.0k",
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			["MythicPlus"] = {
				talentString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAg0SrIJlkACSjSUSLJOQOAAAAAAgSAJSCpgiItkkmSgSQEBC",
				popularity = "69.8%",
				dps = "529.0k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAgUSrUSCgDk0SShSgkkEBAAAAAoEgUSCpJBSLJppEokQEgA",
				popularity = "38.7%",
				dps = "403.6k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "BgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIhkkkkSSJpIJNBNIRQQJiWEISJ5AgIKJJRSAA",
				popularity = "8.7%",
				dps = "95.8k",
				hps = "126.5k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "BgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQIRSiSCplk0kU0okkSQQJBAINJppkIIJRSQLA",
				popularity = "30.1%",
				dps = "63.0k",
				hps = "411.1k",
			},
		},
		["enhancement"] = {
			["Raiding"] = {
				talentString = "BcQAAAAAAAAAAAAAAAAAAAAAAIJJpEJgkESSSDlEAAAAAAAAAAAAAKRIJkgiAJNJpEBQOQCBSA",
				popularity = "82.0%",
				dps = "479.2k",
			},
			["MythicPlus"] = {
				talentString = "BcQAAAAAAAAAAAAAAAAAAAAAAIRSKRCCJhkk0QJRAAAAAAAAAAAAAKRICJKpIUSSTSKgoEEASA",
				popularity = "78.2%",
				dps = "460.1k",
				keystone = "+18"
			},
		},
	},
	["mage"] = {
		["frost"] = {
			["MythicPlus"] = {
				talentString = "BAEAAAAAAAAAAAAAAAAAAAAAAQCSRDJRSKOAikQERKJJAAAJkIhkkkkIJJJRSAAAAAAAAAgIA",
				popularity = "72.0%",
				dps = "566.4k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "BAEAAAAAAAAAAAAAAAAAAAAAAQCUSzBkQkigIJERSkEAAASJRSIRSSIJJJJJBAAAAAAAAAiA",
				popularity = "56.0%",
				dps = "460.7k",
			},
		},
		["arcane"] = {
			["Raiding"] = {
				talentString = "B4DAAAAAAAAAAAAAAAAAAAAAAQEUSDJSkigIJERSIRCkEk0SCAAAAAAAAAAAISSSSkkkEIA",
				popularity = "42.6%",
				dps = "479.3k",
			},
			["MythicPlus"] = {
				talentString = "B4DAAAAAAAAAAAAAAAAAAAAAAIRIl0QSkkCISCRkESEIJJk0SCAAAAAAAAAAAISSSCJJJCJA",
				popularity = "61.9%",
				dps = "421.9k",
				keystone = "+16"
			},
		},
		["fire"] = {
			["MythicPlus"] = {
				talentString = "B8DAAAAAAAAAAAAAAAAAAAAAAIJIFNkQSKOAikQEJhkAAAAAAAAAIiIJJUSUSSIJJJpBAAASLA",
				popularity = "71.3%",
				dps = "595.5k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "B8DAAAAAAAAAAAAAAAAAAAAAAQCSRDJRSKCcgkQEJhkAAAAAAAAAgIkIOQJ5AlkkkkkkkGAAAINA",
				popularity = "50.9%",
				dps = "439.8k",
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["MythicPlus"] = {
				talentString = "BkQAAAAAAAAAAAAAAAAAAAAAAAHIJJRSCRaKEpIJhUCAAAAUAAAAAAAIENSSkIJJaJJBAkA",
				popularity = "66.7%",
				dps = "452.0k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "BkQAAAAAAAAAAAAAAAAAAAAAAAHIJJRSCkmCkWSSIlAAAAANAAAAAAASEtQkkIJSaJRAAJA",
				popularity = "55.9%",
				dps = "430.3k",
			},
		},
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "BsQAAAAAAAAAAAAAAAAAAAAAAAIJRSCRaKEpJJRSJkkQJSElgWpIJAAAAAAAAAAAACokkkA",
				popularity = "53.6%",
				dps = "664.8k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BsQAAAAAAAAAAAAAAAAAAAAAAggkEJJQaKQaJJhUiWwBUSSkAalikAAAAAAAAAAAAIJokEJA",
				popularity = "32.8%",
				dps = "396.8k",
			},
		},
		["demonology"] = {
			["MythicPlus"] = {
				talentString = "BoQAAAAAAAAAAAAAAAAAAAAAAAIJRSCRaKkkmkESJAAAAAABikkWERSikSaJRCBAAAAAAJJ",
				popularity = "46.0%",
				dps = "512.3k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "BoQAAAAAAAAAAAAAAAAAAAAAAggkEJJQaKQaJJhUCAAAAAIBSikSEhkIpolkkQAAAAAAQiA",
				popularity = "29.4%",
				dps = "383.1k",
			},
		},
	},
	["monk"] = {
		["brewmaster"] = {
			["MythicPlus"] = {
				talentString = "BwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAAAgUiWLJJQSSpRAAAASJUSiEJ0KkkSSSJBQTi0SrkIA",
				popularity = "32.3%",
				dps = "268.4k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAAAQShWJJJQSSrRAAAASLSRiEJUKSSaJJlEgWjIt0KhAA",
				popularity = "46.8%",
				dps = "294.7k",
			},
		},
		["mistweaver"] = {
			["MythicPlus"] = {
				talentString = "B4QAAAAAAAAAAAAAAAAAAAAAA0SKFJJHQUKtIkSEJNIlUEAAAAAAAAAAAAg0SUSSIJRrIQSSDOABAQkGA",
				popularity = "22.0%",
				dps = "112.2k",
				hps = "160.7k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "B4QAAAAAAAAAAAAAAAAAAAAAAUiCSkoUaNCpEJJlAt0aBAAAAAAAAAAAAk0SUQIJRpAQSLJJRAAEaE",
				popularity = "50.0%",
				dps = "23.0k",
				hps = "407.9k",
			},
		},
		["windwalker"] = {
			["MythicPlus"] = {
				talentString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARSkkElISEAAAAQkkUIRgkkIcgUSSIJRpQSkk0AcAAAQD",
				popularity = "51.0%",
				dps = "496.8k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIRSS0iIRAAAAgEJJFAJJJJCHIlkERClikEJJtEAAAQD",
				popularity = "69.5%",
				dps = "497.4k",
			},
		},
	},
	["druid"] = {
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "BkGAAAAAAAAAAAAAAAAAAAAAA0IJRDJJpIlkIIFaaRSAAAAAAAAAAAAAB4AJJIIhAJRSyBSBpgDAAAAAAiAAgkA",
				popularity = "24.9%",
				dps = "132.2k",
				hps = "168.0k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BkGAAAAAAAAAAAAAAAAAAAAAA0ikElWkIhUQiIFhWkEAAAAAAAAAAAAoAIJCCSAkESiUIplIAAAAAgIAAIC",
				popularity = "63.2%",
				dps = "29.2k",
				hps = "401.9k",
			},
		},
		["balance"] = {
			["MythicPlus"] = {
				talentString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgCAJJJCSCQSIJJFol4ARSSJJkkQoJtIRS0AoAAB",
				popularity = "33.4%",
				dps = "463.4k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgCAJJigkQQSikIFolIJSSJRTcgQol0SSERDgCAE",
				popularity = "55.0%",
				dps = "388.6k",
			},
		},
		["feral"] = {
			["Raiding"] = {
				talentString = "BcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAACSLioIJJJl0IaJJxBSCAAAAAgGAJCAQSSSIJUSolkAAAAAAgEAAA",
				popularity = "37.4%",
				dps = "394.6k",
			},
			["MythicPlus"] = {
				talentString = "BcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEJt0kQSSSSJtDgWSkIJAAAAAAKAkkAAkkkESiUCaJJAAAAAAIBAA",
				popularity = "21.6%",
				dps = "404.2k",
				keystone = "+15"
			},
		},
		["guardian"] = {
			["Raiding"] = {
				talentString = "BgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQiIJJlElICiiESShCAJCCSgkkkkkIFoFOAAAAAAQEQQCA",
				popularity = "18.4%",
				dps = "241.7k",
			},
			["MythicPlus"] = {
				talentString = "BgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQikISJiEBJpIhkUAAJJBIhIJJJSiUEa4AAAAAAARAJECA",
				popularity = "24.7%",
				dps = "254.4k",
				keystone = "+19"
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			["MythicPlus"] = {
				talentString = "BEkAAAAAAAAAAAAAAAAAAAAAAIJJRSCSSiQISCAAAAAAIlQkEJJNJplWEBSIKtIJRA",
				popularity = "32.4%",
				dps = "517.1k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BEkAAAAAAAAAAAAAAAAAAAAAAIJRkkgkkISgkAAAAAAASLEJRSSLJplWEBSIKtIJRA",
				popularity = "49.4%",
				dps = "478.3k",
			},
		},
		["vengeance"] = {
			["MythicPlus"] = {
				talentString = "BUkAAAAAAAAAAAAAAAAAAAAAAAASiQiQCSSIhEtkIJaJhIBRkWSSTSkEJBAAAAkkA",
				popularity = "17.4%",
				dps = "282.4k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "BUkAAAAAAAAAAAAAAAAAAAAAAAAiIJJikgkERISJJEaJSSIhkEJRLSIBBAAAAkkEA",
				popularity = "13.9%",
				dps = "281.3k",
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["Raiding"] = {
				talentString = "BsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJSCSaSQABikIRSItokkkEikWCIRSLSikEIQA",
				popularity = "23.6%",
				dps = "473.3k",
			},
			["MythicPlus"] = {
				talentString = "BsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAiEIRSkEkcAISiEJh0iSSSSISKJgEJtIJSEIA",
				popularity = "63.0%",
				dps = "499.7k",
				keystone = "+17"
			},
		},
		["preservation"] = {
			["MythicPlus"] = {
				talentString = "BwbBAAAAAAAAAAAAAAAAAAAAAAAAAAASSSkSgIJRKSSEQAAQSkkEiIJQEAAAgkkQSLJiQAA",
				popularity = "27.0%",
				dps = "116.2k",
				hps = "138.3k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAIJRKJIkEpgkWkEAAQSISgIJEJBAAAIJJk0kkkEAA",
				popularity = "13.8%",
				dps = "46.4k",
				hps = "428.1k",
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "BEcBAAAAAAAAAAAAAAAAAAAAAQSJpFJJKhkkSCSSSDAAAAAAAAJBJIiECJJAAAAQSSLSiIJQ0E",
				popularity = "33.9%",
				dps = "425.3k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BEcBAAAAAAAAAAAAAAAAAAAAAQikWkkoESSkESSSDAAAAAEAAkEAISISSCAAAASk0ikkIJQ0SA",
				popularity = "29.7%",
				dps = "454.6k",
			},
		},
	},
}
addonTable.DB = talentData