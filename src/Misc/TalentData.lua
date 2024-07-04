local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["paladin"] = {
		["protection"] = {
			["Raiding"] = {
				talentString = "BIEAAAAAAAAAAAAAAAAAAAAAAUSKJSKSK0SSiWTkQIhEAAgAAAAAAAAIRkQCSQSKCJJAACIACIAB",
				popularity = "4.6%",
				dps = "208.5k",
			},
			["MythicPlus"] = {
				talentString = "BIEAAAAAAAAAAAAAAAAAAAAAA0SaJkiodAtIJKNJJSEJSAAACAAAAAAAoJRSSRgEkkiASDAiAAIgAE",
				popularity = "21.8%",
				dps = "251.0k",
				keystone = "+19"
			},
		},
		["holy"] = {
			["MythicPlus"] = {
				talentString = "BEEAAAAAAAAAAAAAAAAAAAAAAAABAABAEBAAIAtIFkSJSSrISLJUSSo0aiGIJFBJJEpAiIAgAANgQigA",
				popularity = "7.3%",
				dps = "122.4k",
				hps = "138.8k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "BEEAAAAAAAAAAAAAAAAAAAAAAAAAAQAARAAACQLJFoUik0ahUSClkEKaiGQSJJIJEpgmkIAgAAFgQSCC",
				popularity = "25.0%",
				dps = "46.0k",
				hps = "407.8k",
			},
		},
		["retribution"] = {
			["MythicPlus"] = {
				talentString = "BYEAAAAAAAAAAAAAAAAAAAAAAAAAAQAgIUKtSSr0koIJpIJAAAAAAQaBJJEIJEpEBCRKJahICioUoBAA",
				popularity = "60.7%",
				dps = "581.6k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BYEAAAAAAAAAAAAAAAAAAAAAAAAAAQAgIalSrk0KNiWkkWSAAAAAAABkkQgkQkSESCpkSChICJiShGAA",
				popularity = "82.6%",
				dps = "415.3k",
			},
		},
	},
	["warrior"] = {
		["fury"] = {
			["MythicPlus"] = {
				talentString = "BgEAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQggSCQEEiIJRBEiQEEJJplEJJhkQSIRKBIJSEAAAEQQA",
				popularity = "83.5%",
				dps = "518.1k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BgEAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAChIoEARQISQUgEiARSIJpFRSSQyBkkkEpEgkQEAAAAEE",
				popularity = "37.4%",
				dps = "345.5k",
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "BkEAAAAAAAAAAAAAAAAAAAAAAIQAAAAgkkQSik0SKJJpBRgAJSSJJBIQSQDJJIARCAAAAAAAkEAgSrBAC",
				popularity = "21.6%",
				dps = "285.3k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BkEAAAAAAAAAAAAAAAAAAAAAAIQAAAAgkkQSCSLpkkkWDRgQRAlkEgISSCNkkAcAOQIAAAAAAAQSAAHo0aAgA",
				popularity = "19.8%",
				dps = "213.1k",
			},
		},
		["arms"] = {
			["MythicPlus"] = {
				talentString = "BcEAAAAAAAAAAAAAAAAAAAAAAAQplIRkQSiWpEJAAAAQQEiCJRUEBIikEaSECwBQkAAAAAAAAQiWiIgQ0QA",
				popularity = "46.0%",
				dps = "567.8k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BcEAAAAAAAAAAAAAAAAAAAAAAAQRikEJkDko0KJBAAAAEEhoQAFRCECJhmEhAESIAAAAAAAAkEkkACRDB",
				popularity = "52.2%",
				dps = "422.0k",
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["MythicPlus"] = {
				talentString = "B0PAAAAAAAAAAAAAAAAAAAAAA4AgWSAoQAAAAAAAAAAAoRkiEa5ARCJCJhGERLHIRSSEaRSSA",
				popularity = "74.4%",
				dps = "557.2k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "B0PAAAAAAAAAAAAAAAAAAAAAA4AgWSAoQAAAAAAAAAAAoBhEaikQCJJoJkWUSSkIEaRSSA",
				popularity = "73.2%",
				dps = "391.8k",
			},
		},
		["marksmanship"] = {
			["MythicPlus"] = {
				talentString = "B4PAAAAAAAAAAAAAAAAAAAAAA4ABaBgoggAAAAAEJJHQSCICJJtEp1ERUkimQiESIhGAAAAA",
				popularity = "50.4%",
				dps = "557.5k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "B4PAAAAAAAAAAAAAAAAAAAAAAIHAaBApgAAAAAARiEJJhICJJtEpRIRRoJkkESIoBAAAAA",
				popularity = "60.1%",
				dps = "378.8k",
			},
		},
		["survival"] = {
			["Raiding"] = {
				talentString = "B8PAAAAAAAAAAAAAAAAAAAAAAIhWaBJBKBBJkEJkIEJhkkAAAAAABRRoJkIBhgCAAAAA",
				popularity = "41.8%",
				dps = "338.3k",
			},
			["MythicPlus"] = {
				talentString = "B8PAAAAAAAAAAAAAAAAAAAAAA4ABaBJEKBBJJJplkgDQkEkIAAAAAQEp0kiGkIhESoBAAAAA",
				popularity = "13.8%",
				dps = "334.7k",
				keystone = "+13"
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			["Raiding"] = {
				talentString = "BMQAAAAAAAAAAAAAAAAAAAAAAEJJhkEEAAAAAASJJSLJAAAAAAgWSCSgkkSaJREEJJJRSTLSAA",
				popularity = "56.5%",
				dps = "421.8k",
			},
			["MythicPlus"] = {
				talentString = "BMQAAAAAAAAAAAAAAAAAAAAAAEJJJJSAAAAAAASJJSLJAAAAAAQrEJIBSSKplEBJRSQSiWJJBA",
				popularity = "34.3%",
				dps = "546.7k",
				keystone = "+18"
			},
		},
		["outlaw"] = {
			["Raiding"] = {
				talentString = "BQQAAAAAAAAAAAAAAAAAAAAAAAAEkkEJCSSIJCSkkmkElkIlkAAAAAAAaJJxBSEFSKpFAAAASCA",
				popularity = "60.3%",
				dps = "361.0k",
			},
			["MythicPlus"] = {
				talentString = "BQQAAAAAAAAAAAAAAAAAAAAAAAAElEEJhkkESIRSSolkElkItkAAAAAAAtSkwBSSUgSaBAAAQSCA",
				popularity = "59.4%",
				dps = "568.4k",
				keystone = "+20"
			},
		},
		["subtlety"] = {
			["Raiding"] = {
				talentString = "BUQAAAAAAAAAAAAAAAAAAAAAAAAEEAAAAAASJJJlERSKFRICxBSSSISLSS0aJJSSCgSaBAAAgEEA",
				popularity = "92.7%",
				dps = "407.5k",
			},
			["MythicPlus"] = {
				talentString = "BUQAAAAAAAAAAAAAAAAAAAAAAAAEEAAAAAASJJJlEQKFRSikEHIJJRi0iI0KJJSSCgSaBAAAgEEA",
				popularity = "11.1%",
				dps = "327.7k",
				keystone = "+12"
			},
		},
	},
	["priest"] = {
		["holy"] = {
			["Raiding"] = {
				talentString = "BEQAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAgWAtkkkEJkWEJBlEKBAAAAUUSL0SSQKESSigSBSESBA",
				popularity = "55.1%",
				dps = "50.5k",
				hps = "416.3k",
			},
			["MythicPlus"] = {
				talentString = "BEQAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAHoJSJBJREIRCRJJpEAAAAAt0OAlkApQkIJioUIJJhUAA",
				popularity = "24.6%",
				dps = "153.3k",
				hps = "135.1k",
				keystone = "+17"
			},
		},
		["discipline"] = {
			["MythicPlus"] = {
				talentString = "BAQAAAAAAAAAAAAAAAAAAAAAAAAapEJBtISSk0kWSSSIAAAAAAAAAAAQRJN0SSQKEikIkCtEJBlAA",
				popularity = "29.1%",
				dps = "141.7k",
				hps = "138.5k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BAQAAAAAAAAAAAAAAAAAAAAAAAAapFRQLikEJkSSSSIBAAAAAAAAAAAFl0ItkApQIJigi0SEBlIA",
				popularity = "14.2%",
				dps = "89.7k",
				hps = "299.9k",
			},
		},
		["shadow"] = {
			["MythicPlus"] = {
				talentString = "BIQAAAAAAAAAAAAAAAAAAAAAAECCBAAAAAAAAAAAAISKSkk00IJJJBlQJNSSCpRIiIki0CJBFkA",
				popularity = "79.1%",
				dps = "803.6k",
				keystone = "+22"
			},
			["Raiding"] = {
				talentString = "BIQAAAAAAAAAAAAAAAAAAAAAAgAJBAAAAAAAAAAAAIkiDQSSLtIJJRkUgUIJJRaEIiQKSLkEUQC",
				popularity = "52.4%",
				dps = "415.9k",
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["MythicPlus"] = {
				talentString = "BoPAAAAAAAAAAAAAAAAAAAAAAAikkIRSiIiERkISIIJSkAAAAAAIJJBSLhkEAAQkkkEAAAA",
				popularity = "20.1%",
				dps = "283.8k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BoPAAAAAAAAAAAAAAAAAAAAAAACJIIJJJiERkISI4AJJRCAAAAAkIJ5ARk0EiEAAQIJJJAAAA",
				popularity = "30.9%",
				dps = "253.9k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "BsPAAAAAAAAAAAAAAAAAAAAAAICgIkkIHIiERkIJhgISkkEJwBIJRkkkkkSSAAAAAAAAAAAAA",
				popularity = "76.0%",
				dps = "663.2k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BsPAAAAAAAAAAAAAAAAAAAAAAICASIJRiIREikECJSSEJIIhkERSSSSKJBAAAAAAAAAAAA",
				popularity = "41.4%",
				dps = "372.1k",
			},
		},
		["unholy"] = {
			["MythicPlus"] = {
				talentString = "BwPAAAAAAAAAAAAAAAAAAAAAAAAiQSicgISERiEhgkIRCAAAAAAAAAKkEhIJpBAQiUEJJJSSA",
				popularity = "70.2%",
				dps = "601.9k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BwPAAAAAAAAAAAAAAAAAAAAAAAAIikEJiERISECJJJRAAAAAAAAAgSSSICAAIJh0SkkkIJA",
				popularity = "94.6%",
				dps = "439.1k",
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			["MythicPlus"] = {
				talentString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAg0SrIJlkACSjSUSLJOQOAAAAAAgSAJlkQKog0SSaKBKBREIA",
				popularity = "67.0%",
				dps = "592.4k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAgUSrUSCgDk0SShSgkkEBAAAAAoEQSJJoJg0SSahACJSgA",
				popularity = "59.7%",
				dps = "384.3k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "BgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIpJJJJRSJpIRJBNIpEESJJKpgCSLBgUKJRkEIA",
				popularity = "10.4%",
				dps = "148.7k",
				hps = "141.4k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQIRSiSCplk0kU0okkSQQJBAINJppkIIJRSQLA",
				popularity = "26.4%",
				dps = "50.5k",
				hps = "435.1k",
			},
		},
		["enhancement"] = {
			["Raiding"] = {
				talentString = "BcQAAAAAAAAAAAAAAAAAAAAAAIJJpEJgkESSSDlEAAAAAAAAAAAAAKRICJkmoQSTSKBiSQAIB",
				popularity = "97.5%",
				dps = "398.7k",
			},
			["MythicPlus"] = {
				talentString = "BcQAAAAAAAAAAAAAAAAAAAAAAIRSKRCCJhkk0QJRAAAAAAAAAAAAAKRIJkokikCSRSKAKBxBEIB",
				popularity = "80.6%",
				dps = "503.4k",
				keystone = "+18"
			},
		},
	},
	["mage"] = {
		["arcane"] = {
			["MythicPlus"] = {
				talentString = "B4DAAAAAAAAAAAAAAAAAAAAAAAIl0SkIJpAikQEJhIBSSCJtkAAAAAAAAAAAAikkkQSSiQCA",
				popularity = "69.1%",
				dps = "482.6k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "B4DAAAAAAAAAAAAAAAAAAAAAAQESJNkIJpJgkQEJhEJQSQSLJAAAAAAAAAAAgIJJJRSSSgA",
				popularity = "67.7%",
				dps = "405.6k",
			},
		},
		["fire"] = {
			["MythicPlus"] = {
				talentString = "B8DAAAAAAAAAAAAAAAAAAAAAAIJIFNkQSKOAikQEJhkAAAAAAAAAIiIJJUSUSSIJJJpBAAASLA",
				popularity = "71.9%",
				dps = "656.9k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "B8DAAAAAAAAAAAAAAAAAAAAAAIRSCNHQCJpIwBSCREhkAAAAAAAAAgIkIOQJ5AlkkkkkkkGAAAINA",
				popularity = "57.6%",
				dps = "392.2k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "BAEAAAAAAAAAAAAAAAAAAAAAAIJIFNkQSKOAikQERKJJAAAJkIhkkkkIJJJRSAAAAAAAAAgIA",
				popularity = "74.1%",
				dps = "644.0k",
				keystone = "+22"
			},
			["Raiding"] = {
				talentString = "BAEAAAAAAAAAAAAAAAAAAAAAAQCUSzBkQkigIJERSkEAAASJRSIRSSIJJJJJBAAAAAAAAAiA",
				popularity = "72.1%",
				dps = "410.8k",
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["MythicPlus"] = {
				talentString = "BkQAAAAAAAAAAAAAAAAAAAAAAAHIJJRSCkmCRKHIJhUCAAAAUAAAAAAAIENSSkIJJaJJBAkA",
				popularity = "63.6%",
				dps = "510.6k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "BkQAAAAAAAAAAAAAAAAAAAAAAAHIJJRSCkmCkWSSIlAAAAANAAAAAAASEtQkkIJSaJRAAJA",
				popularity = "76.7%",
				dps = "396.1k",
			},
		},
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "BsQAAAAAAAAAAAAAAAAAAAAAAAIJRSCRaKEpJJRSJkkQJSElgWpIJAAAAAAAAAAAACokkkA",
				popularity = "56.8%",
				dps = "716.6k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BsQAAAAAAAAAAAAAAAAAAAAAAggkEJJQaKQaJJhUiWwBUSSkAalikAAAAAAAAAAAAIJokEJA",
				popularity = "47.0%",
				dps = "401.2k",
			},
		},
		["demonology"] = {
			["Raiding"] = {
				talentString = "BoQAAAAAAAAAAAAAAAAAAAAAAggkEJJQaKQaJJhUCAAAAAIBSikSEhkIpolkkQAAAAAAQiA",
				popularity = "55.8%",
				dps = "381.6k",
			},
			["MythicPlus"] = {
				talentString = "BoQAAAAAAAAAAAAAAAAAAAAAAAIJRSCkmCJpdgkESLAAAAAABikkWERSikSaJRCBAAAAAAJJ",
				popularity = "55.1%",
				dps = "565.7k",
				keystone = "+17"
			},
		},
	},
	["monk"] = {
		["brewmaster"] = {
			["MythicPlus"] = {
				talentString = "BwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAAAgUiWLJJQSSpRAAAASJUSiEJ0KkkSOQSJBENJSLtSIA",
				popularity = "36.8%",
				dps = "312.2k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "BwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAAAQShWLJJQSSrRAAAASJSJJSkQpIJplcgUSAaNi0SrECA",
				popularity = "38.0%",
				dps = "241.2k",
			},
		},
		["mistweaver"] = {
			["MythicPlus"] = {
				talentString = "B4QAAAAAAAAAAAAAAAAAAAAAA0SKFJJHQUKtIkSEJNIlUEAAAAAAAAAAAAg0SUSSIJRpAkk0gQAAEpB",
				popularity = "25.3%",
				dps = "120.3k",
				hps = "158.5k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "B4QAAAAAAAAAAAAAAAAAAAAAAUiCSkoUaNCpEJJlAt0aBAAAAAAAAAAAAk0SUQIJRpAQSLJJRAAEaE",
				popularity = "62.3%",
				dps = "22.1k",
				hps = "449.5k",
			},
		},
		["windwalker"] = {
			["MythicPlus"] = {
				talentString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARSkkElISEAAAAQkkUIRgkkIkUSSIJRrIJRyBSDAAAQD",
				popularity = "59.1%",
				dps = "554.5k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIRSS0iIRAAAAgEJJFAJJJJCHIlkERClikEJJtEAAAQD",
				popularity = "81.7%",
				dps = "410.9k",
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["MythicPlus"] = {
				talentString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgCAJJigkAkESSSBaJOQkkUSCJJEaSLSkENAK0AE",
				popularity = "49.0%",
				dps = "611.3k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgCAJJigkQQSikIFolIJSSJRTcgQol0SSERDgCAE",
				popularity = "80.1%",
				dps = "396.9k",
			},
		},
		["feral"] = {
			["MythicPlus"] = {
				talentString = "BcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEJt0kQSSSSJtDgWSkIJAAAAAAKAkkAgQSSSIJHIlgWiDAAAAAAgEAAA",
				popularity = "34.7%",
				dps = "499.1k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "BcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAACSLioIJJJl0IaJJxBSCAAAAAgGAJCAQSSSIJUSolkAAAAAAgEAAA",
				popularity = "47.8%",
				dps = "402.8k",
			},
		},
		["guardian"] = {
			["MythicPlus"] = {
				talentString = "BgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQikISJiEBJpIhkUAAJJASISSSikIFhGCAAAAAQEQChA",
				popularity = "30.2%",
				dps = "262.4k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQiIJJlElICiiESShCAJCCSgkkkkkIFoFOAAAAAAQEQQCA",
				popularity = "32.2%",
				dps = "227.1k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "BkGAAAAAAAAAAAAAAAAAAAAAA0IJRDJJpIlkIIFaaRSAAAAAAAAAAAAABhkkggECkEJJSBpBAAAAAgIAAIJ",
				popularity = "23.8%",
				dps = "143.8k",
				hps = "152.2k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BkGAAAAAAAAAAAAAAAAAAAAAA0ikElWkIhUQiIFhWkEAAAAAAAAAAAAoAIJCCSAkESiUIplIAAAAAgIAAIC",
				popularity = "66.5%",
				dps = "30.6k",
				hps = "412.3k",
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			["MythicPlus"] = {
				talentString = "BEkAAAAAAAAAAAAAAAAAAAAAAIJJRSCSSiIhkkAAAAAAASLEJkk0kkWaREIho0ikEB",
				popularity = "24.8%",
				dps = "546.9k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BEkAAAAAAAAAAAAAAAAAAAAAAIJRkkgkkISgkAAAAAAASLEJRSSLJplWEBSIKtIJRA",
				popularity = "67.9%",
				dps = "411.0k",
			},
		},
		["vengeance"] = {
			["Raiding"] = {
				talentString = "BUkAAAAAAAAAAAAAAAAAAAAAAAAiIJJikgkERISJJEaJSSIhkEJRLSIBBAAAAkkEA",
				popularity = "23.8%",
				dps = "241.6k",
			},
			["MythicPlus"] = {
				talentString = "BUkAAAAAAAAAAAAAAAAAAAAAAAASiIJCJhkESIRLJSiWSISQEplk0kEJBBAAAAkkA",
				popularity = "32.3%",
				dps = "320.9k",
				keystone = "+21"
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["Raiding"] = {
				talentString = "BsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJSCSaSQABikIRSItoEJJhcgkWCIRSLSikEIQA",
				popularity = "33.6%",
				dps = "423.6k",
			},
			["MythicPlus"] = {
				talentString = "BsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAiEIRSkEIphQiEJh0iSSSSISKJARSLSikEIQA",
				popularity = "72.6%",
				dps = "556.1k",
				keystone = "+19"
			},
		},
		["preservation"] = {
			["MythicPlus"] = {
				talentString = "BwbBAAAAAAAAAAAAAAAAAAAAAAAAAAASSSkSgIJRKSSEQAAQSkkEiIJQEAAAgkkQSLJiQAA",
				popularity = "29.6%",
				dps = "148.3k",
				hps = "160.7k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAIJplSOASkEpgkWkQAAQSkIIikASAAAASSCJSiIJBAB",
				popularity = "14.7%",
				dps = "45.1k",
				hps = "376.9k",
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "BEcBAAAAAAAAAAAAAAAAAAAAAQSJpFJJKhkkSCSSSDAAAAAAAAJBimISIkkAAAAAJJtIJikARTA",
				popularity = "30.7%",
				dps = "469.1k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "BEcBAAAAAAAAAAAAAAAAAAAAAQikWkkoESSkESSSDAAAAAEAAkEAISISSCAAAASk0ikkIJQ0SA",
				popularity = "24.4%",
				dps = "379.1k",
			},
		},
	},
}
addonTable.DB = talentData