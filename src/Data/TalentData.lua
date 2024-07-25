local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["paladin"] = {
		["holy"] = {
			["Raiding"] = {
				talentString = "BEEAAAAAAAAAAAAAAAAAAAAAAAAAAQAARAAACQLJFoUik0ahUSClkEKaiGQSJBJJEpgmkIAgAAFgQSCC",
				popularity = "25.2%",
				dps = "36.6k",
				hps = "423.6k",
			},
			["MythicPlus"] = {
				talentString = "BEEAAAAAAAAAAAAAAAAAAAAAAAABAABAEBAAIAtIFkSJSSrJSLJUSSo0aCgkUEkkQkCIiAASAQBIkII",
				popularity = "5.3%",
				dps = "92.0k",
				hps = "113.2k",
				keystone = "+15"
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "BIEAAAAAAAAAAAAAAAAAAAAAA0SaJkiodAtIJKNJJSEJSAAACAAAAAAAoJRSSRgEkkiASDAiAAIgAE",
				popularity = "21.8%",
				dps = "228.8k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BIEAAAAAAAAAAAAAAAAAAAAAAUSKJSKSK0SSiWTkQIhEAAgAAAAAAAAIRSSTgEkkiQSCAgACAgAE",
				popularity = "4.7%",
				dps = "257.6k",
			},
		},
		["retribution"] = {
			["MythicPlus"] = {
				talentString = "BYEAAAAAAAAAAAAAAAAAAAAAAAAAAQAgIUKtSSr0koIJpIJAAAAAAQaBJJEIJEpEhIEpkoFiIgoUoBAA",
				popularity = "47.5%",
				dps = "512.7k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BYEAAAAAAAAAAAAAAAAAAAAAAAAAAQAgIalSrk0KNiWkkWSAAAAAAABkkQgkQkSESCpkSChICJiShGAA",
				popularity = "75.0%",
				dps = "441.7k",
			},
		},
	},
	["warrior"] = {
		["protection"] = {
			["MythicPlus"] = {
				talentString = "BkEAAAAAAAAAAAAAAAAAAAAAAIQAAAAgkkQSik0SKJJpBRICkIRJJBgQSQDJJIARCAAAAAAAkEAgSrBAC",
				popularity = "21.3%",
				dps = "256.8k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BkEAAAAAAAAAAAAAAAAAAAAAAIQAAAAgkkQSCSLpkkkWDRgQRAlkEgISSCNkkAcAOQIAAAAAAAQSAAHo0aAgA",
				popularity = "18.8%",
				dps = "244.2k",
			},
		},
		["fury"] = {
			["MythicPlus"] = {
				talentString = "BgEAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQggSCQEEiIJRBEiQEEJJplEJJhkQSIRKBIJSEAAAEQQA",
				popularity = "80.4%",
				dps = "496.6k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BgEAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQggSQQEEiIJRBSICEOQIJplEJJhkQSIRKBIJSEAAAEQQA",
				popularity = "56.1%",
				dps = "419.2k",
			},
		},
		["arms"] = {
			["MythicPlus"] = {
				talentString = "BcEAAAAAAAAAAAAAAAAAAAAAAAQplIRkQSiWpEJAAAAQQESKkAFRAiIJhmEhAcAOQkAAAAAAAAQiWiIgQ0QA",
				popularity = "42.9%",
				dps = "542.6k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BcEAAAAAAAAAAAAAAAAAAAAAAAQRikEJkDko0KJBAAAAEEhoQAFRCECJhmEhAESIAAAAAAAAkEkkACRDB",
				popularity = "53.9%",
				dps = "448.2k",
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["MythicPlus"] = {
				talentString = "B0PAAAAAAAAAAAAAAAAAAAAAA4AgWSAoQAAAAAAAAAAAoRkiEaRkQiEJhGERLHIRSSEaRSSA",
				popularity = "72.5%",
				dps = "497.6k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "B0PAAAAAAAAAAAAAAAAAAAAAA4AgWSAoQAAAAAAAAAAAoBhEaikQCJJoJkWUSSkIEaRSSA",
				popularity = "49.4%",
				dps = "408.8k",
			},
		},
		["survival"] = {
			["MythicPlus"] = {
				talentString = "B8PAAAAAAAAAAAAAAAAAAAAAA4ABahkQoEEkkkkWiAEJpEhAAAAAARkSTKaQiESIhCAAAAA",
				popularity = "14.3%",
				dps = "306.3k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "B8PAAAAAAAAAAAAAAAAAAAAAAIhWaBJBKBBJkEJkIEJhkkAAAAAABRRoJkIBhgGAAAAA",
				popularity = "35.7%",
				dps = "391.1k",
			},
		},
		["marksmanship"] = {
			["MythicPlus"] = {
				talentString = "B4PAAAAAAAAAAAAAAAAAAAAAA4ABaBgoggAAAAAEJJHQSCICJJtEp1ERUkimQiESIhGAAAAA",
				popularity = "49.3%",
				dps = "532.0k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "B4PAAAAAAAAAAAAAAAAAAAAAAIHAaBApgAAAAAARiEJJhICJJtEpRIRRoJkkESIoBAAAAA",
				popularity = "37.5%",
				dps = "406.9k",
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			["MythicPlus"] = {
				talentString = "BMQAAAAAAAAAAAAAAAAAAAAAAEJJJJSAAAAAAASJJSLJAAAAAAQrkkgEIJpkWSEkEJBJJalIBA",
				popularity = "40.6%",
				dps = "451.5k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "BMQAAAAAAAAAAAAAAAAAAAAAAEJJhkEEAAAAAASJJSJJAAAAAAgWSCSgkkSaJREEJJJRSTJSAA",
				popularity = "54.8%",
				dps = "454.2k",
			},
		},
		["outlaw"] = {
			["MythicPlus"] = {
				talentString = "BQQAAAAAAAAAAAAAAAAAAAAAAAAElEEJhkkESIRSSolkElkItkAAAAAAAtSkwBSSUgSaBAAAQSCA",
				popularity = "50.9%",
				dps = "554.2k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BQQAAAAAAAAAAAAAAAAAAAAAAAAEkkEJCSSIJCSkkmkElkIlkAAAAAAAaJJhkEFSKpFAAAASCA",
				popularity = "31.7%",
				dps = "405.4k",
			},
		},
		["subtlety"] = {
			["MythicPlus"] = {
				talentString = "BUQAAAAAAAAAAAAAAAAAAAAAAAAEEAAAAAASJJJlEQKQiIJJJJJRi0SJRiWSikkAokSAAAAIBB",
				popularity = "12.5%",
				dps = "158.5k",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "BUQAAAAAAAAAAAAAAAAAAAAAAAAEEAAAAAASJJJlERSKFRICxBSSSISLSS0aJJSSCgSaBAAAgEEA",
				popularity = "78.8%",
				dps = "437.5k",
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["MythicPlus"] = {
				talentString = "BoPAAAAAAAAAAAAAAAAAAAAAAACJJCJJi0SEBJiECSSSkAAAAAAJSSOQEJNhIBAAESSSAAAAA",
				popularity = "23.2%",
				dps = "294.0k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "BoPAAAAAAAAAAAAAAAAAAAAAAACJIkkIHIiERkISIIJJRCAAAAAkIJ5ARk0EiEAAQIJJJAAAA",
				popularity = "33.2%",
				dps = "279.8k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "BsPAAAAAAAAAAAAAAAAAAAAAAICgIkkIHISERkIJhgISkkEJwBIJRkkkkkSSAAAAAAAAAAAAA",
				popularity = "77.3%",
				dps = "457.0k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BsPAAAAAAAAAAAAAAAAAAAAAAICASIJRiIREikECJSSEJIIhkERSSSSKJBAAAAAAAAAAAA",
				popularity = "34.1%",
				dps = "425.8k",
			},
		},
		["unholy"] = {
			["MythicPlus"] = {
				talentString = "BwPAAAAAAAAAAAAAAAAAAAAAAAAiQSicgISERiEhgkIRCAAAAAAAAAKkEhIJpBAQiUEJJJSSA",
				popularity = "73.2%",
				dps = "488.4k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BwPAAAAAAAAAAAAAAAAAAAAAAAAIikEJiERISECJJJRAAAAAAAAAgSSSICAAIJh0SkkkIJA",
				popularity = "88.2%",
				dps = "456.3k",
			},
		},
	},
	["priest"] = {
		["discipline"] = {
			["MythicPlus"] = {
				talentString = "BAQAAAAAAAAAAAAAAAAAAAAAAAAapEJBtISSk0kWSSSIAAAAAAAAAAAQRJN0SSQKSISiQK0SkAlAA",
				popularity = "28.3%",
				dps = "135.0k",
				hps = "149.5k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "BAQAAAAAAAAAAAAAAAAAAAAAAAAapFRQLikEJkSSSSIBAAAAAAAAAAAFl0Og0SCkChgIki0SEBlIA",
				popularity = "17.8%",
				dps = "105.4k",
				hps = "404.5k",
			},
		},
		["shadow"] = {
			["Raiding"] = {
				talentString = "BIQAAAAAAAAAAAAAAAAAAAAAAggkEAAAAAAAAAAAAgQKOAJJt0IJJJRigUIJJRaEIiQKSLkEUQC",
				popularity = "38.7%",
				dps = "439.9k",
			},
			["MythicPlus"] = {
				talentString = "BIQAAAAAAAAAAAAAAAAAAAAAAECCBAAAAAAAAAAAAISKSkk00IJJJBlQJFSSCpJhIiQKSLkAFkA",
				popularity = "75.7%",
				dps = "714.8k",
				keystone = "+21"
			},
		},
		["holy"] = {
			["Raiding"] = {
				talentString = "BEQAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAgWAtkkkEJkWEJBlEKBAAAAUUSL0SSQKESSigSBSESBA",
				popularity = "52.1%",
				dps = "44.3k",
				hps = "423.5k",
			},
			["MythicPlus"] = {
				talentString = "BEQAAAAAAAAAAAAAAAAAAAAAAQEAAAAAAAcgmIlEkERgEJElkkSAAAAAFl0OAlkEoIpIkIkCNSCSBA",
				popularity = "26.0%",
				dps = "163.4k",
				hps = "137.4k",
				keystone = "+16"
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			["MythicPlus"] = {
				talentString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAg0SrIJlkACSjSUSLJOQOAAAAAAgSAJlkolCIOQJJppEoEERgA",
				popularity = "65.4%",
				dps = "511.5k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAgUSrUSCgDk0SShSgkkEBAAAAAoEQSJJoJg0SSahACJSgA",
				popularity = "41.4%",
				dps = "394.8k",
			},
		},
		["enhancement"] = {
			["MythicPlus"] = {
				talentString = "BcQAAAAAAAAAAAAAAAAAAAAAAIRSKRCCJhkk0QJRAAAAAAAAAAAAAKRICJKpIQSTSKHAUKBRASA",
				popularity = "79.2%",
				dps = "451.6k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "BcQAAAAAAAAAAAAAAAAAAAAAAIJJpEJgkESSSDlEAAAAAAAAAAAAAKRICJkmoQSTSKBiSQAIB",
				popularity = "94.0%",
				dps = "431.2k",
			},
		},
		["restoration"] = {
			["Raiding"] = {
				talentString = "BgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQIRSiSCplk0kU0okkSQQJBAINJppkIIJRSQLA",
				popularity = "26.4%",
				dps = "52.4k",
				hps = "424.6k",
			},
			["MythicPlus"] = {
				talentString = "BgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIhkkkkSSJpIJNBNIRQQJiWEISJ5AgIKJJRSAA",
				popularity = "9.6%",
				dps = "119.0k",
				hps = "131.5k",
				keystone = "+16"
			},
		},
	},
	["mage"] = {
		["fire"] = {
			["MythicPlus"] = {
				talentString = "B8DAAAAAAAAAAAAAAAAAAAAAAIJIFNkQSKOAikQEJhkAAAAAAAAAIiIJJUSUSSIJJJpBAAASLA",
				popularity = "70.8%",
				dps = "614.5k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "B8DAAAAAAAAAAAAAAAAAAAAAAQCSRDJRSaCcgkQEJhkAAAAAAAAAgIkIOQJ5AlkkkkkkkGAAAINA",
				popularity = "52.7%",
				dps = "411.0k",
			},
		},
		["arcane"] = {
			["MythicPlus"] = {
				talentString = "B4DAAAAAAAAAAAAAAAAAAAAAAIJIl0QSkkiAyBSERSIRgkkQSLJAAAAAAAAAAAgIJJJkkkIkA",
				popularity = "63.0%",
				dps = "460.8k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "B4DAAAAAAAAAAAAAAAAAAAAAAQEUSDJSkigIJERSIRCkEk0SCAAAAAAAAAAAISSSSkkkEIA",
				popularity = "45.9%",
				dps = "429.4k",
			},
		},
		["frost"] = {
			["Raiding"] = {
				talentString = "BAEAAAAAAAAAAAAAAAAAAAAAAQCUSzBkQkigIJERSkEAAASJRSIRSSIJJJJJBAAAAAAAAAiA",
				popularity = "61.4%",
				dps = "426.3k",
			},
			["MythicPlus"] = {
				talentString = "BAEAAAAAAAAAAAAAAAAAAAAAAQCSRDJRSKOAikQERKJJAAAJkIhkkkkIJJJRSAAAAAAAAAgIA",
				popularity = "69.7%",
				dps = "567.3k",
				keystone = "+21"
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["MythicPlus"] = {
				talentString = "BkQAAAAAAAAAAAAAAAAAAAAAAAHIJJRSCRaKEpIJhUCAAAAUAAAAAAAIENSSkIJJaJJBAkA",
				popularity = "60.7%",
				dps = "452.0k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "BkQAAAAAAAAAAAAAAAAAAAAAAAHIJJRSCkmCkWSSIlAAAAANAAAAAAASEtQkkIJSaJRAAJA",
				popularity = "50.4%",
				dps = "376.9k",
			},
		},
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "BsQAAAAAAAAAAAAAAAAAAAAAAAIJRSCRaKEpJJRSJkkQJSElgWpIJAAAAAAAAAAAACokkkA",
				popularity = "54.8%",
				dps = "658.6k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BsQAAAAAAAAAAAAAAAAAAAAAAggkEJJQaKQaJJhUiWwBUSSkAalikAAAAAAAAAAAAIJokEJA",
				popularity = "41.3%",
				dps = "407.3k",
			},
		},
		["demonology"] = {
			["Raiding"] = {
				talentString = "BoQAAAAAAAAAAAAAAAAAAAAAAggkEJJQaKQaJJhUCAAAAAIBSikSEhkIpolkkQAAAAAAQiA",
				popularity = "34.3%",
				dps = "401.7k",
			},
			["MythicPlus"] = {
				talentString = "BoQAAAAAAAAAAAAAAAAAAAAAAAIJRSCkmCJpdgkESJAAAAAABikkWERSikSaJRCBAAAAAAJJ",
				popularity = "46.6%",
				dps = "507.7k",
				keystone = "+16"
			},
		},
	},
	["monk"] = {
		["mistweaver"] = {
			["MythicPlus"] = {
				talentString = "B4QAAAAAAAAAAAAAAAAAAAAAA0SKFJJHQUKtIkSEJNIlUEAAAAAAAAAAAAg0SUSSIJRrAkk0gQAAEpB",
				popularity = "23.7%",
				dps = "116.6k",
				hps = "171.0k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "B4QAAAAAAAAAAAAAAAAAAAAAAUiCSkoUaNCpEJJlAt0aBAAAAAAAAAAAAk0SUQIJRpAQSLJJRAAEaE",
				popularity = "61.1%",
				dps = "18.6k",
				hps = "448.3k",
			},
		},
		["brewmaster"] = {
			["MythicPlus"] = {
				talentString = "BwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAAAgUiWLJJQSSpRAAAASJUSiEJ0KkkSSSJBQTi0SrkIA",
				popularity = "34.3%",
				dps = "300.8k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAAAQShWJJJQSSrRAAAASLSRiEJUKSSaJJlEgWjIt0KhAA",
				popularity = "39.9%",
				dps = "268.4k",
			},
		},
		["windwalker"] = {
			["Raiding"] = {
				talentString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIRSS0iIRAAAAgEJJFAJJJJCHIlkERClikEJJtEAAAQD",
				popularity = "84.6%",
				dps = "430.6k",
			},
			["MythicPlus"] = {
				talentString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARSkkElISEAAAAQkkUIRgkkIkUSSIJRpQSkk0AAAA0A",
				popularity = "52.0%",
				dps = "493.9k",
				keystone = "+19"
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["MythicPlus"] = {
				talentString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgCAJJJCSCQSIJJFol4ARSSJJkkQoJtIRS0AoAAB",
				popularity = "33.7%",
				dps = "488.9k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgCAJJigkQQSikIFolIJSSJRTcgQol0SSERDgCAE",
				popularity = "62.0%",
				dps = "386.1k",
			},
		},
		["feral"] = {
			["MythicPlus"] = {
				talentString = "BcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAASk0STCSSSSJtDgWSkIJAAAAAAKgQSSgEQSSSQClgWiDAAAAAAgEAAA",
				popularity = "20.1%",
				dps = "378.4k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "BcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAACSLioIJJJl0IaJJxBSCAAAAAgGAJCAQSSSIJUSolkAAAAAAgEAAA",
				popularity = "37.6%",
				dps = "399.1k",
			},
		},
		["restoration"] = {
			["Raiding"] = {
				talentString = "BkGAAAAAAAAAAAAAAAAAAAAAA0ikElWkIhUQiIFhWkEAAAAAAAAAAAAoAIJCCSAkESiUIplIAAAAAgIAAIC",
				popularity = "63.4%",
				dps = "26.8k",
				hps = "421.5k",
			},
			["MythicPlus"] = {
				talentString = "BkGAAAAAAAAAAAAAAAAAAAAAA0IJRDJJpIlkIIFaaRSAAAAAAAAAAAAAB4AJJIIhAJRSyBSBpgDAAAAAAiAAgkA",
				popularity = "24.1%",
				dps = "129.7k",
				hps = "164.5k",
				keystone = "+20"
			},
		},
		["guardian"] = {
			["MythicPlus"] = {
				talentString = "BgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQikISJiEBJpIhkUAAJJBIhIJJJSiUEa4AAAAAAARAJECA",
				popularity = "24.1%",
				dps = "253.2k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQiIJJlElICiiESShCAJCCSgkkkkkIFoFOAAAAAAQEQQCA",
				popularity = "22.5%",
				dps = "242.5k",
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			["MythicPlus"] = {
				talentString = "BEkAAAAAAAAAAAAAAAAAAAAAAIJJRSCSSiQISCAAAAAAIlQkEJJNJplWEBSIKtIJRA",
				popularity = "33.4%",
				dps = "509.4k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BEkAAAAAAAAAAAAAAAAAAAAAAIJRkkgkkISgkAAAAAAASLEJRSSLJplWEBSIKtIJRA",
				popularity = "57.1%",
				dps = "426.5k",
			},
		},
		["vengeance"] = {
			["MythicPlus"] = {
				talentString = "BUkAAAAAAAAAAAAAAAAAAAAAAAASiQiQCSSIhEtkIJaJhIBRkWSSTSkEJBAAAAkkA",
				popularity = "18.8%",
				dps = "284.7k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "BUkAAAAAAAAAAAAAAAAAAAAAAAAiIJJikgkERISJJEaJSSIhkEJRLSIBBAAAAkkEA",
				popularity = "12.9%",
				dps = "264.3k",
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["MythicPlus"] = {
				talentString = "BsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAiEIRSkEkoJikIkESLKJJJhIpkASkUikIRgAA",
				popularity = "66.4%",
				dps = "485.1k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "BsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJSCSaSQABikIRSItokkkEikWCIRSLSikEIQA",
				popularity = "30.7%",
				dps = "453.1k",
			},
		},
		["preservation"] = {
			["Raiding"] = {
				talentString = "BwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAIJplWOASkEpgkWkQAAQSkIIikASAAAASSCJSiIJBAB",
				popularity = "13.2%",
				dps = "48.5k",
				hps = "380.9k",
			},
			["MythicPlus"] = {
				talentString = "BwbBAAAAAAAAAAAAAAAAAAAAAAAAAAASSSkSgIJRKSSEQAAQSkkEiIJQEAAAgkkQSLJiQAA",
				popularity = "27.1%",
				dps = "137.4k",
				hps = "163.8k",
				keystone = "+19"
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "BEcBAAAAAAAAAAAAAAAAAAAAAQSJpFJJKhkkSCSSSDAAAAAAAAJBJaiIhQOQCAAAAkk0ikISCENB",
				popularity = "33.1%",
				dps = "431.0k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BEcBAAAAAAAAAAAAAAAAAAAAAQikWkkoESSkESSSDAAAAAEAAkEAISISSCAAAASk0ikkIJQ0SA",
				popularity = "28.4%",
				dps = "396.4k",
			},
		},
	},
}
addonTable.DB = talentData