local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["warrior"] = {
		["protection"] = {
			["Raiding"] = {
				talentString = "BkEAAAAAAAAAAAAAAAAAAAAAAIQAAAAgkkQSCSLpkkkWDRgQRAlkEgISSCNkkAcAOQIAAAAAAAQSAAHo0aAgA",
				popularity = "13.0%",
				dps = "264.5k",
			},
			["MythicPlus"] = {
				talentString = "BkEAAAAAAAAAAAAAAAAAAAAAAIQAAAAgkkQSik0SKJJpBRICkIRJJBgQSQDJJIARCAAAAAAAkEAgSrBAC",
				popularity = "21.5%",
				dps = "256.5k",
				keystone = "+19"
			},
		},
		["fury"] = {
			["MythicPlus"] = {
				talentString = "BgEAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQggSCQEEiIJRBEiQEEJJplEJJhkQSIRKBIJSEAAAEQQA",
				popularity = "81.1%",
				dps = "502.7k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BgEAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQggSQQEEiIJRBSICEOQIJplEJJhkQSIRKBIJSEAAAEQQA",
				popularity = "65.0%",
				dps = "490.6k",
			},
		},
		["arms"] = {
			["MythicPlus"] = {
				talentString = "BcEAAAAAAAAAAAAAAAAAAAAAAAQplIRkQSiWpEJAAAAQQESKkAFRAiIJhmEhAcAOQkAAAAAAAAQiWiIgQ0QA",
				popularity = "41.6%",
				dps = "532.5k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BcEAAAAAAAAAAAAAAAAAAAAAAAQRikEJkDko0KJBAAAAEEhoQAFRCECJhmEhAESIAAAAAAAAkEkkACRDB",
				popularity = "41.3%",
				dps = "476.5k",
			},
		},
	},
	["paladin"] = {
		["holy"] = {
			["MythicPlus"] = {
				talentString = "BEEAAAAAAAAAAAAAAAAAAAAAAAABAABAEBAAIAtIFkSJSSrJSLJUSSo0aCgkUEkkQkCIiAASAQBIkII",
				popularity = "5.2%",
				dps = "99.2k",
				hps = "120.9k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "BEEAAAAAAAAAAAAAAAAAAAAAAAAAAQAARAAACQLJFoUik0ahUSClkEKaiGQSJBJJEpgmkIAgAAFgQSCC",
				popularity = "23.0%",
				dps = "48.4k",
				hps = "359.9k",
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "BIEAAAAAAAAAAAAAAAAAAAAAA0SaJkiodAtIJKNJJSEJSAAACAAAAAAAoJRSSRgEkkiASDAiAAIgAE",
				popularity = "22.0%",
				dps = "223.2k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BIEAAAAAAAAAAAAAAAAAAAAAAUSKJSKSK0SSiWTkQIhEAAgAAAAAAAAIkkUkgEkkiQSCAgACAgAE",
				popularity = "4.2%",
				dps = "250.3k",
			},
		},
		["retribution"] = {
			["MythicPlus"] = {
				talentString = "BYEAAAAAAAAAAAAAAAAAAAAAAAAAAQAgIUKtSSr0koIJpIJAAAAAAQaBJJFBSiEpEBCRKJahICgShGAA",
				popularity = "48.0%",
				dps = "512.1k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "BYEAAAAAAAAAAAAAAAAAAAAAAAAAAQAgIalSrk0KNiWkkWSAAAAAAABkkQgkQkSESCpkSChICJiShGAA",
				popularity = "58.9%",
				dps = "445.1k",
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["MythicPlus"] = {
				talentString = "B0PAAAAAAAAAAAAAAAAAAAAAA4AgWSAoQAAAAAAAAAAAoRkiEaRkQiEJhGERLHIRSSEaRSSA",
				popularity = "72.2%",
				dps = "494.1k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "B0PAAAAAAAAAAAAAAAAAAAAAA4AgWSAoQAAAAAAAAAAAoBhEaikQCJJoJkWUSSkIEaRSSA",
				popularity = "45.5%",
				dps = "404.8k",
			},
		},
		["survival"] = {
			["MythicPlus"] = {
				talentString = "B8PAAAAAAAAAAAAAAAAAAAAAA4ABaBJEKBBJJJplkgDQkEkIAAAAAQEHoVkiGSiESIhGAAAAA",
				popularity = "12.6%",
				dps = "310.1k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "B8PAAAAAAAAAAAAAAAAAAAAAAIhWaBJBKBBJkEJkIEJhkkAAAAAABRRoJkIBhgCAAAAA",
				popularity = "33.3%",
				dps = "362.5k",
			},
		},
		["marksmanship"] = {
			["Raiding"] = {
				talentString = "B4PAAAAAAAAAAAAAAAAAAAAAAIHAaBApgAAAAAARiEJJhICJJtEpRIRRoJkkESIoBAAAAA",
				popularity = "24.0%",
				dps = "412.9k",
			},
			["MythicPlus"] = {
				talentString = "B4PAAAAAAAAAAAAAAAAAAAAAA4ABaBgoggAAAAAEJJHQSCICJJtEp1ERUkimQiESIhGAAAAA",
				popularity = "48.5%",
				dps = "531.7k",
				keystone = "+19"
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			["Raiding"] = {
				talentString = "BMQAAAAAAAAAAAAAAAAAAAAAAEJJhkEEAAAAAASJJSJJAAAAAAgWSCSgkkSaJREEJJJRSTJSAA",
				popularity = "46.3%",
				dps = "478.6k",
			},
			["MythicPlus"] = {
				talentString = "BMQAAAAAAAAAAAAAAAAAAAAAAEJJJJSAAAAAAASJJSLJAAAAAAQrkkgEIJpkWSEkEJBJJalIBA",
				popularity = "42.1%",
				dps = "440.2k",
				keystone = "+16"
			},
		},
		["outlaw"] = {
			["MythicPlus"] = {
				talentString = "BQQAAAAAAAAAAAAAAAAAAAAAAAAElEEJhkkESIRSSolkElkItkAAAAAAAtSkwBSSUgSaBAAAQSCA",
				popularity = "51.8%",
				dps = "556.6k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BQQAAAAAAAAAAAAAAAAAAAAAAAAElEEJhkkESIRSSolkElkItkAAAAAAAtWSCHIJRBKpFAAAARCA",
				popularity = "28.7%",
				dps = "493.4k",
			},
		},
		["subtlety"] = {
			["Raiding"] = {
				talentString = "BUQAAAAAAAAAAAAAAAAAAAAAAAAEEAAAAAASJJJlERSKFRICxBSSSISLSS0aJJSSCgSaBAAAgEEA",
				popularity = "77.2%",
				dps = "445.7k",
			},
			["MythicPlus"] = {
				talentString = "BUQAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAgUSSSJBkSRkkIJxBSSSkItIi0aJJSSCgSKBAAAgEEA",
				popularity = "14.8%",
				dps = "297.9k",
				keystone = "+12"
			},
		},
	},
	["priest"] = {
		["discipline"] = {
			["MythicPlus"] = {
				talentString = "BAQAAAAAAAAAAAAAAAAAAAAAAAAapEJBtISSk0kWSSSIAAAAAAAAAAAQRJN0SSQKSISiQK0SkAlAA",
				popularity = "29.2%",
				dps = "135.6k",
				hps = "148.8k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "BAQAAAAAAAAAAAAAAAAAAAAAAAAapFRQLikEJkSSSSIBAAAAAAAAAAAFl0i0SCkChkkIoQLREUIA",
				popularity = "16.2%",
				dps = "76.8k",
				hps = "338.3k",
			},
		},
		["holy"] = {
			["Raiding"] = {
				talentString = "BEQAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAgWAtkkkEJkWEJBlEKBAAAAUUSL0SSQKESSigSBSESBA",
				popularity = "51.7%",
				dps = "45.0k",
				hps = "388.2k",
			},
			["MythicPlus"] = {
				talentString = "BEQAAAAAAAAAAAAAAAAAAAAAAQEAAAAAAAcgmIlEkERgEJElkkSAAAAAFl0OAlkEoIpIkIkCNSCSBA",
				popularity = "26.1%",
				dps = "166.8k",
				hps = "139.6k",
				keystone = "+16"
			},
		},
		["shadow"] = {
			["Raiding"] = {
				talentString = "BIQAAAAAAAAAAAAAAAAAAAAAAggkEAAAAAAAAAAAAgQKOAJJt0IJJJRigUIJJRaEIiQKSLkEUQC",
				popularity = "34.3%",
				dps = "509.7k",
			},
			["MythicPlus"] = {
				talentString = "BIQAAAAAAAAAAAAAAAAAAAAAAECCBAAAAAAAAAAAAISKSkk00IJJJBlQJFSSCpJhIiQKSLkAFkA",
				popularity = "75.3%",
				dps = "713.0k",
				keystone = "+21"
			},
		},
	},
	["death-knight"] = {
		["frost"] = {
			["MythicPlus"] = {
				talentString = "BsPAAAAAAAAAAAAAAAAAAAAAAICgIkkIHISERkIJhgISkkEJwBIJRkkkkkSSAAAAAAAAAAAAA",
				popularity = "78.4%",
				dps = "455.2k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BsPAAAAAAAAAAAAAAAAAAAAAAICACJJkISEhkkECJSSEJIIhkERSSSSKJBAAAAAAAAAAAA",
				popularity = "28.8%",
				dps = "528.7k",
			},
		},
		["blood"] = {
			["MythicPlus"] = {
				talentString = "BoPAAAAAAAAAAAAAAAAAAAAAAACJJCJJi0SERkISIIJSkAAAAAAJSSOQEJNhIBAAESSSAAAAA",
				popularity = "23.1%",
				dps = "286.7k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "BoPAAAAAAAAAAAAAAAAAAAAAAACJIkkIHIiERkISIIJJRCAAAAAkIJ5ARk0EiEAAQIJJJAAAA",
				popularity = "26.8%",
				dps = "306.5k",
			},
		},
		["unholy"] = {
			["MythicPlus"] = {
				talentString = "BwPAAAAAAAAAAAAAAAAAAAAAAAAiQSicgISERiEhgkIRCAAAAAAAAAKkEhIJpBAQiUEJJJSSA",
				popularity = "72.8%",
				dps = "480.4k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BwPAAAAAAAAAAAAAAAAAAAAAAAAIikEJiERISECJJJRAAAAAAAAAgSSSICAAIJh0SkkkIJA",
				popularity = "77.0%",
				dps = "512.1k",
			},
		},
	},
	["shaman"] = {
		["enhancement"] = {
			["MythicPlus"] = {
				talentString = "BcQAAAAAAAAAAAAAAAAAAAAAAIRSKRCCJhkk0QJRAAAAAAAAAAAAAKRICJKpIQSTSKHAUKBRASA",
				popularity = "80.0%",
				dps = "458.4k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "BcQAAAAAAAAAAAAAAAAAAAAAAIJJpEJgkESSSDlEAAAAAAAAAAAAAKRICJkmoQSTSKBiSQAIB",
				popularity = "81.0%",
				dps = "480.1k",
			},
		},
		["elemental"] = {
			["MythicPlus"] = {
				talentString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAg0SrIJlkACSjSUSLJOQOAAAAAAgSAJlkolCIOQJJppEoEERgA",
				popularity = "64.4%",
				dps = "513.2k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAgUSrUSCgDk0SShSgkkEBAAAAAoEgUSCpJBSLJppEokQEgA",
				popularity = "39.3%",
				dps = "411.0k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "BgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIhkkkkSSJpIJNBNIRQQJiWEISJ5AgIKJJRSAA",
				popularity = "9.5%",
				dps = "119.6k",
				hps = "129.4k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "BgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQIRSiSCplk0kU0okkSQQJBAINJppkIIJRSQLA",
				popularity = "29.7%",
				dps = "65.4k",
				hps = "398.4k",
			},
		},
	},
	["mage"] = {
		["arcane"] = {
			["Raiding"] = {
				talentString = "B4DAAAAAAAAAAAAAAAAAAAAAAQEUSDJSkigIJERSIRCkEk0SCAAAAAAAAAAAISSSSkkkEIA",
				popularity = "42.5%",
				dps = "486.2k",
			},
			["MythicPlus"] = {
				talentString = "B4DAAAAAAAAAAAAAAAAAAAAAAQiIFNkEJp5AgkQEJpIJBSSCJtkAAAAAAAAAAAAikkkQSSiQCA",
				popularity = "66.0%",
				dps = "456.8k",
				keystone = "+16"
			},
		},
		["fire"] = {
			["Raiding"] = {
				talentString = "B8DAAAAAAAAAAAAAAAAAAAAAAQCSRDJRSKCcgkQEJhkAAAAAAAAAgIkIOQJ5AlkkkkkkkGAAAINA",
				popularity = "50.8%",
				dps = "437.7k",
			},
			["MythicPlus"] = {
				talentString = "B8DAAAAAAAAAAAAAAAAAAAAAAIJIFNkQSKOAikQEJhkAAAAAAAAAIiIJJUSUSSIJJJpBAAASLA",
				popularity = "71.3%",
				dps = "614.9k",
				keystone = "+20"
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "BAEAAAAAAAAAAAAAAAAAAAAAAQCSRDJRSKOAikQERKJJAAAJkIhkkkkIJJJRSAAAAAAAAAgIA",
				popularity = "70.2%",
				dps = "562.7k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "BAEAAAAAAAAAAAAAAAAAAAAAAQCUSzBkQkigIJERSkEAAASJRSIRSSIJJJJJBAAAAAAAAAiA",
				popularity = "54.9%",
				dps = "461.0k",
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["MythicPlus"] = {
				talentString = "BkQAAAAAAAAAAAAAAAAAAAAAAAHIJJRSCRaKEpIJhUCAAAAUAAAAAAAIENSSkIJJaJJBAkA",
				popularity = "61.9%",
				dps = "452.0k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "BkQAAAAAAAAAAAAAAAAAAAAAAASSSkkAppQkWSSIlAAAAANAAAAAAASEtQkkIJSaJRAAJA",
				popularity = "57.3%",
				dps = "432.1k",
			},
		},
		["demonology"] = {
			["MythicPlus"] = {
				talentString = "BoQAAAAAAAAAAAAAAAAAAAAAAAIJRSCkmCJpdgkESJAAAAAABikkWERSikSaJRCBAAAAAAJJ",
				popularity = "47.1%",
				dps = "509.2k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "BoQAAAAAAAAAAAAAAAAAAAAAAggkEJJQaKQaJJhUCAAAAAIBSikSEhkIpolkkQAAAAAAQiA",
				popularity = "29.5%",
				dps = "391.9k",
			},
		},
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "BsQAAAAAAAAAAAAAAAAAAAAAAAIJRSCRaKEpJJRSJkkQJSElgWpIJAAAAAAAAAAAACokkkA",
				popularity = "54.6%",
				dps = "666.7k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BsQAAAAAAAAAAAAAAAAAAAAAAggkEJJQaKQaJJhUiWwBUSSkAalikAAAAAAAAAAAAIJokEJA",
				popularity = "31.8%",
				dps = "399.4k",
			},
		},
	},
	["monk"] = {
		["mistweaver"] = {
			["Raiding"] = {
				talentString = "B4QAAAAAAAAAAAAAAAAAAAAAAUiCSkoUaNCpEJJlAt0aBAAAAAAAAAAAAk0SUQIJRpAQSLJJRAAEaE",
				popularity = "52.1%",
				dps = "22.5k",
				hps = "402.7k",
			},
			["MythicPlus"] = {
				talentString = "B4QAAAAAAAAAAAAAAAAAAAAAA0SKFJJHQUKtIkSEJNIlUEAAAAAAAAAAAAg0SUSSIJRrAkk0gQAAEpB",
				popularity = "22.9%",
				dps = "119.2k",
				hps = "173.1k",
				keystone = "+19"
			},
		},
		["brewmaster"] = {
			["Raiding"] = {
				talentString = "BwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAAAQShWJJJQSSrRAAAASLSRiEJUKSSaJJlEgWjIt0KhAA",
				popularity = "43.4%",
				dps = "294.2k",
			},
			["MythicPlus"] = {
				talentString = "BwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAAAgUiWLJJQSSpRAAAASJUSiEJ0KkkSSSJBQTi0SrkIA",
				popularity = "33.2%",
				dps = "292.7k",
				keystone = "+17"
			},
		},
		["windwalker"] = {
			["MythicPlus"] = {
				talentString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARSkkElISEAAAAQkkUIRgkkk0SSJESS0KIRSSDAAAQD",
				popularity = "49.5%",
				dps = "493.8k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIRSS0iIRAAAAgEJJFAJJJJCHIlkERClikEJJtEAAAQD",
				popularity = "69.0%",
				dps = "496.6k",
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["MythicPlus"] = {
				talentString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgCAJJJCSCQSIJJFol4ARSSJJkkQoJtIRS0AoAAB",
				popularity = "33.2%",
				dps = "497.9k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgCAJJigkQQSikIFolIJSSJRTcgQol0SSERDgCAE",
				popularity = "55.3%",
				dps = "421.3k",
			},
		},
		["guardian"] = {
			["MythicPlus"] = {
				talentString = "BgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQikISJiEBJpIhkUAAJJBIhIJJJSiUEa4AAAAAAARAJECA",
				popularity = "24.5%",
				dps = "251.1k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQiIJJlElICiiESShCAJCCSgkkkkkIFoFOAAAAAAQEQQCA",
				popularity = "19.0%",
				dps = "241.3k",
			},
		},
		["restoration"] = {
			["Raiding"] = {
				talentString = "BkGAAAAAAAAAAAAAAAAAAAAAA0ikElWkIhUQiIFhWkEAAAAAAAAAAAAoAIJCCSAkESiUIplIAAAAAgIAAIC",
				popularity = "63.1%",
				dps = "28.7k",
				hps = "397.8k",
			},
			["MythicPlus"] = {
				talentString = "BkGAAAAAAAAAAAAAAAAAAAAAA0IJRDJJpIlkIIFaaRSAAAAAAAAAAAAAB4AJJIIhAJRSyBSBpgDAAAAAAiAAgkA",
				popularity = "24.5%",
				dps = "131.3k",
				hps = "166.8k",
				keystone = "+20"
			},
		},
		["feral"] = {
			["MythicPlus"] = {
				talentString = "BcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAASk0STCSSSSJtDgSSkIJAAAAAAKAkkEAJkkkEJJRJoBAAAAAAIBAA",
				popularity = "18.6%",
				dps = "364.6k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "BcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAACSLioIJJJl0IaJJxBSCAAAAAgGAJCAQSSSIJUSolkAAAAAAgEAAA",
				popularity = "36.4%",
				dps = "396.4k",
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["MythicPlus"] = {
				talentString = "BsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAiEIRSkEkoJikIkESLKJJJhIpkASkUikIRgAA",
				popularity = "65.0%",
				dps = "486.1k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "BsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJSCSaSQABikIRSItokkkEikWCIRSLSikEIQA",
				popularity = "23.7%",
				dps = "480.2k",
			},
		},
		["preservation"] = {
			["Raiding"] = {
				talentString = "BwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAIJRKJIkEpgkWkEAAQSSikmISCAAAAgkkQikIJSAQA",
				popularity = "12.6%",
				dps = "46.4k",
				hps = "428.0k",
			},
			["MythicPlus"] = {
				talentString = "BwbBAAAAAAAAAAAAAAAAAAAAAAAAAAASSSkSgIJRKSSEQAAQSkkEiIJQEAAAgkkQSLJiQAA",
				popularity = "26.3%",
				dps = "135.6k",
				hps = "157.7k",
				keystone = "+19"
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "BEcBAAAAAAAAAAAAAAAAAAAAAQSJpFJJKhkkSCSSSDAAAAAAAAJBJaiIhQOQCAAAAkk0ikISCENB",
				popularity = "34.1%",
				dps = "425.5k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BEcBAAAAAAAAAAAAAAAAAAAAAQikWkkoESSkESSSDAAAAAEAAkEAISISSCAAAASk0ikkIJQ0SA",
				popularity = "28.7%",
				dps = "453.3k",
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			["MythicPlus"] = {
				talentString = "BEkAAAAAAAAAAAAAAAAAAAAAAIJJRSCSSiQISCAAAAAAIlQkEJJNJplWEBSIKtIJRA",
				popularity = "32.6%",
				dps = "509.9k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BEkAAAAAAAAAAAAAAAAAAAAAAIJRkkgkkISgkAAAAAAASLEJRSSLJplWEBSIKtIJRA",
				popularity = "48.9%",
				dps = "478.8k",
			},
		},
		["vengeance"] = {
			["Raiding"] = {
				talentString = "BUkAAAAAAAAAAAAAAAAAAAAAAAAiIJJikgkERISJJEaJSSIhkEJRLSIBBAAAAkkEA",
				popularity = "12.6%",
				dps = "283.6k",
			},
			["MythicPlus"] = {
				talentString = "BUkAAAAAAAAAAAAAAAAAAAAAAAASiQiQCSSIhEtkIJaJhIBRkWSSTSkEJBAAAAkkA",
				popularity = "17.7%",
				dps = "287.7k",
				keystone = "+21"
			},
		},
	},
}
addonTable.DB = talentData