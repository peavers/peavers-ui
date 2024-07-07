local addonName, addonTable = ...
addonTable.TalentDB = addonTable.TalentDB or {}

addonTable.TalentDB = {
	["warrior"] = {
		["fury"] = {
			["MythicPlus"] = {
				talentString = "BgEAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQggSCQEEiIJRBEiQEEJJplEJJhkQSIRKBIJSEAAAEQQA",
				popularity = "84.0%",
				dps = "452.0k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BgEAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAChIoEARQISQUgEiARSIJpFRSSQyBkkkEpEgkQEAAAAEE",
				popularity = "42.7%",
				dps = "358.1k",
			},
		},
		["arms"] = {
			["MythicPlus"] = {
				talentString = "BcEAAAAAAAAAAAAAAAAAAAAAAAQplIRkQSiWpEJAAAAQQESKkEUEBIikEaSECwBQkAAAAAAAAQiWiIgQ0QA",
				popularity = "38.3%",
				dps = "492.7k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "BcEAAAAAAAAAAAAAAAAAAAAAAAQRikEJkDko0KJBAAAAEEhoQAFRCECJhmEhAESIAAAAAAAAkEkkACRDB",
				popularity = "54.9%",
				dps = "421.1k",
			},
		},
		["protection"] = {
			["Raiding"] = {
				talentString = "BkEAAAAAAAAAAAAAAAAAAAAAAIQAAAAgkkQSCSLpkkkWDRgQRAlkEgISSCNkkAcAOQIAAAAAAAQSAAHo0aAgA",
				popularity = "16.7%",
				dps = "224.2k",
			},
			["MythicPlus"] = {
				talentString = "BkEAAAAAAAAAAAAAAAAAAAAAAIQAAAAgkkQSik0SKJJpBRgAJSUSSAiQSQDJJIARCAAAAAAAkEAgSrBAC",
				popularity = "21.7%",
				dps = "250.7k",
				keystone = "+18"
			},
		},
	},
	["paladin"] = {
		["protection"] = {
			["MythicPlus"] = {
				talentString = "BIEAAAAAAAAAAAAAAAAAAAAAA0SaJkiodAtIJKNJJSEJSAAACAAAAAAAoJkkUEIBJpIISDAiAAIgAE",
				popularity = "21.5%",
				dps = "238.7k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BIEAAAAAAAAAAAAAAAAAAAAAAUSKJSKSK0SSiWTkQIhEAAgAAAAAAAAIRSSTgEkkiQSCAgACAgAE",
				popularity = "5.5%",
				dps = "223.2k",
			},
		},
		["holy"] = {
			["MythicPlus"] = {
				talentString = "BEEAAAAAAAAAAAAAAAAAAAAAAAABAABAEBAAIAtIFkSJSSrISLJUSSo0aiGIJFBJJEpAiIAgAANgQigA",
				popularity = "6.2%",
				dps = "75.5k",
				hps = "126.0k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BEEAAAAAAAAAAAAAAAAAAAAAAAAAAQAARAAACQLJFoUik0ahUSClkEKaiGQSJJIJEpgmkIAgAAFgQSCC",
				popularity = "23.8%",
				dps = "44.5k",
				hps = "390.0k",
			},
		},
		["retribution"] = {
			["MythicPlus"] = {
				talentString = "BYEAAAAAAAAAAAAAAAAAAAAAAAAAAQAgIUKtSSr0koIJpIJAAAAAAQaBJJEIJEpEhIEpkoFiIgoUoBAA",
				popularity = "48.4%",
				dps = "499.9k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BYEAAAAAAAAAAAAAAAAAAAAAAAAAAQAgIalSrk0KNiWkkWSAAAAAAABkkQgkQkSESCpkSChICJiShGAA",
				popularity = "83.7%",
				dps = "420.0k",
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["Raiding"] = {
				talentString = "B0PAAAAAAAAAAAAAAAAAAAAAA4AgWSAoQAAAAAAAAAAAoBhEaikQCJJoJkWUSSkIEaRSSA",
				popularity = "73.6%",
				dps = "394.1k",
			},
			["MythicPlus"] = {
				talentString = "B0PAAAAAAAAAAAAAAAAAAAAAA4AgWSAoQAAAAAAAAAAAoRkiEaRkQiEJhGERLHIRSSEaRSSA",
				popularity = "74.2%",
				dps = "488.1k",
				keystone = "+18"
			},
		},
		["marksmanship"] = {
			["Raiding"] = {
				talentString = "B4PAAAAAAAAAAAAAAAAAAAAAAIHAaBApgAAAAAARiEJJhICJJtEpRIRRoJkkESIoBAAAAA",
				popularity = "63.1%",
				dps = "411.5k",
			},
			["MythicPlus"] = {
				talentString = "B4PAAAAAAAAAAAAAAAAAAAAAA4ABaBgoggAAAAAEJJHQSCICJJtEp1ERUkimQiESIhGAAAAA",
				popularity = "48.0%",
				dps = "488.4k",
				keystone = "+17"
			},
		},
		["survival"] = {
			["MythicPlus"] = {
				talentString = "B8PAAAAAAAAAAAAAAAAAAAAAA4ABaBJEKBBJJJplkgDQSEkIAAAAAQEpUkiGkIhESoBAAAAA",
				popularity = "13.4%",
				dps = "301.5k",
				keystone = "+10"
			},
			["Raiding"] = {
				talentString = "B8PAAAAAAAAAAAAAAAAAAAAAAIhWaBJBKBBJkEJkIEJhkkAAAAAABRRoJkIBhgCAAAAA",
				popularity = "46.4%",
				dps = "378.5k",
			},
		},
	},
	["rogue"] = {
		["outlaw"] = {
			["MythicPlus"] = {
				talentString = "BQQAAAAAAAAAAAAAAAAAAAAAAAAElEEJhkkESIRSSolkElkItkAAAAAAg0KRCHIJRBKpFAAAARCA",
				popularity = "56.7%",
				dps = "499.1k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BQQAAAAAAAAAAAAAAAAAAAAAAAAEkkEJCSSIJCSkkmkElkIlkAAAAAAAaJJxBSEFSKpFAAAASCA",
				popularity = "55.6%",
				dps = "375.9k",
			},
		},
		["assassination"] = {
			["MythicPlus"] = {
				talentString = "BMQAAAAAAAAAAAAAAAAAAAAAAEJJJJSAAAAAAASJJSLJAAAAAAQrkkgEIJpkWSEkEJBJJalIBA",
				popularity = "25.5%",
				dps = "440.7k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BMQAAAAAAAAAAAAAAAAAAAAAAEJJhkEEAAAAAASJJSJJAAAAAAgWSCSgkkSaJREEJJJRSTLSAA",
				popularity = "58.1%",
				dps = "418.8k",
			},
		},
		["subtlety"] = {
			["Raiding"] = {
				talentString = "BUQAAAAAAAAAAAAAAAAAAAAAAAAEEAAAAAASJJJlERSKFRICxBSSSISLSS0aJJSSCgSaBAAAgEEA",
				popularity = "94.1%",
				dps = "413.7k",
			},
			["MythicPlus"] = {
				talentString = "BUQAAAAAAAAAAAAAAAAAAAAAAAAEEAAAAAASJJJlEQKFRSikEHIJJRi0iI0KJJSSCgSaBAAAgEEA",
				popularity = "16.2%",
				dps = "272.1k",
				keystone = "+12"
			},
		},
	},
	["priest"] = {
		["discipline"] = {
			["MythicPlus"] = {
				talentString = "BAQAAAAAAAAAAAAAAAAAAAAAAAAapEJBtISSk0kWSSSIAAAAAAAAAAAQRJN0SSQKEikIkCtEJBlAA",
				popularity = "29.1%",
				dps = "127.4k",
				hps = "159.7k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BAQAAAAAAAAAAAAAAAAAAAAAAAAapFRQLikEJkSSSSIBAAAAAAAAAAAFl0ItkApQIiIki0SEBlIA",
				popularity = "14.6%",
				dps = "87.0k",
				hps = "361.4k",
			},
		},
		["holy"] = {
			["MythicPlus"] = {
				talentString = "BEQAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAHoJSJBJREIRCRJJpEAAAAQRLtQJJBpQkQiIpUgkAFA",
				popularity = "24.7%",
				dps = "162.2k",
				hps = "144.4k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BEQAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAgWAtkkkEJkWEJBlEKBAAAAUUSL0SSQKESSigSBSESBA",
				popularity = "53.9%",
				dps = "45.9k",
				hps = "400.2k",
			},
		},
		["shadow"] = {
			["Raiding"] = {
				talentString = "BIQAAAAAAAAAAAAAAAAAAAAAAgAJBAAAAAAAAAAAAIkiDQSSLtIJJRkUgUIJJRaEIiQKSLkEUQC",
				popularity = "56.5%",
				dps = "414.9k",
			},
			["MythicPlus"] = {
				talentString = "BIQAAAAAAAAAAAAAAAAAAAAAAECCBAAAAAAAAAAAAISKSkk00IJJJBCl0IJJRaEiICpItQSQBJA",
				popularity = "74.0%",
				dps = "681.8k",
				keystone = "+21"
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["MythicPlus"] = {
				talentString = "BoPAAAAAAAAAAAAAAAAAAAAAAAikkIkkISLSERiIhgkIRCAAAAAgkkEItESSAAARSSSAAAAA",
				popularity = "20.6%",
				dps = "243.7k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BoPAAAAAAAAAAAAAAAAAAAAAAACJIIJJJiERkISI4AJJRCAAAAAkIJ5ARk0EiEAAQIJJJAAAA",
				popularity = "33.0%",
				dps = "259.1k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "BsPAAAAAAAAAAAAAAAAAAAAAAICgIkkIHIiERkIJhgISkkEJwBIJRkkkkkSSAAAAAAAAAAAAA",
				popularity = "73.1%",
				dps = "446.5k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BsPAAAAAAAAAAAAAAAAAAAAAAICASIJRiIREikECJSSEJIIhkERSSSSKJBAAAAAAAAAAAA",
				popularity = "32.3%",
				dps = "406.6k",
			},
		},
		["unholy"] = {
			["Raiding"] = {
				talentString = "BwPAAAAAAAAAAAAAAAAAAAAAAAAIikEJiERISECJJJRAAAAAAAAAgSSSICAAIJh0SkkkIJA",
				popularity = "94.1%",
				dps = "437.4k",
			},
			["MythicPlus"] = {
				talentString = "BwPAAAAAAAAAAAAAAAAAAAAAAAAiQSicgISERiEhgkIRCAAAAAAAAAKkEhIJpBAQiUEJJJSSA",
				popularity = "73.0%",
				dps = "486.0k",
				keystone = "+18"
			},
		},
	},
	["shaman"] = {
		["enhancement"] = {
			["MythicPlus"] = {
				talentString = "BcQAAAAAAAAAAAAAAAAAAAAAAIRSKRCCJhkk0QJRAAAAAAAAAAAAAKRICJKpIpg0kkSAKBJASA",
				popularity = "83.4%",
				dps = "445.6k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "BcQAAAAAAAAAAAAAAAAAAAAAAIJJpEJgkESSSDlEAAAAAAAAAAAAAKRICJkmoQSTSKBiSQAIB",
				popularity = "97.6%",
				dps = "405.0k",
			},
		},
		["elemental"] = {
			["MythicPlus"] = {
				talentString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAg0SrIJlkACSjSUSLJOQOAAAAAAgSAJlkolCg0SSaKBKBREIA",
				popularity = "63.6%",
				dps = "515.5k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAgUSrUSCgDk0SShSgkkEBAAAAAoEQSJJoJg0SSahACJSgA",
				popularity = "61.4%",
				dps = "380.7k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "BgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIpJJJJRSJpIRJBNIpEEUSCpEg0SOAQSpkkESgA",
				popularity = "10.4%",
				dps = "144.2k",
				hps = "142.8k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQIRSiSCplk0kU0okkSQQJBAINJppkIIJRSQLA",
				popularity = "28.3%",
				dps = "51.1k",
				hps = "407.3k",
			},
		},
	},
	["mage"] = {
		["fire"] = {
			["MythicPlus"] = {
				talentString = "B8DAAAAAAAAAAAAAAAAAAAAAAIJIFNkQSKOAikQEJhkAAAAAAAAAIiIJJUSUSSIJJJpBAAASLA",
				popularity = "70.1%",
				dps = "572.9k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "B8DAAAAAAAAAAAAAAAAAAAAAAQCSRDJRSaCcgkQEJhkAAAAAAAAAgIkIOQJ5AlkkkkkkkGAAAINA",
				popularity = "56.7%",
				dps = "390.7k",
			},
		},
		["arcane"] = {
			["MythicPlus"] = {
				talentString = "B4DAAAAAAAAAAAAAAAAAAAAAAIJIl0QiDkkCISCRkESEIJJk0SCAAAAAAAAAAAISSSCJJJCJA",
				popularity = "66.3%",
				dps = "400.8k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "B4DAAAAAAAAAAAAAAAAAAAAAAQEUSDJSkigIJERSIRCkEk0SCAAAAAAAAAAAISSSSkkkEIA",
				popularity = "64.3%",
				dps = "409.6k",
			},
		},
		["frost"] = {
			["Raiding"] = {
				talentString = "BAEAAAAAAAAAAAAAAAAAAAAAAQCUSzBkQkigIJERSkEAAASJRSIRSSIJJJJJBAAAAAAAAAiA",
				popularity = "72.7%",
				dps = "414.9k",
			},
			["MythicPlus"] = {
				talentString = "BAEAAAAAAAAAAAAAAAAAAAAAAIJIFNkQSKgIJERSkkAAAkQiESSSSikkkEJBAAAAAAAAAiA",
				popularity = "69.8%",
				dps = "510.2k",
				keystone = "+21"
			},
		},
	},
	["warlock"] = {
		["destruction"] = {
			["Raiding"] = {
				talentString = "BsQAAAAAAAAAAAAAAAAAAAAAAggkEJJQaKQaJJhUiWwBUSSkAalikAAAAAAAAAAAAIJokEJA",
				popularity = "44.8%",
				dps = "408.7k",
			},
			["MythicPlus"] = {
				talentString = "BsQAAAAAAAAAAAAAAAAAAAAAAAIJRSCkmCRaJJhUCJJUiERJoVKSCAAAAAAAAAAAgAKJJJA",
				popularity = "58.3%",
				dps = "595.9k",
				keystone = "+19"
			},
		},
		["demonology"] = {
			["MythicPlus"] = {
				talentString = "BoQAAAAAAAAAAAAAAAAAAAAAAAIJRSCkmCJpdgkESLAAAAAABikkWERSikSaJRCBAAAAAAJJ",
				popularity = "44.7%",
				dps = "490.1k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BoQAAAAAAAAAAAAAAAAAAAAAAggkEJJQaKQaJJhUCAAAAAIBSikSEhkIpolkkQAAAAAAQiA",
				popularity = "56.2%",
				dps = "382.1k",
			},
		},
		["affliction"] = {
			["Raiding"] = {
				talentString = "BkQAAAAAAAAAAAAAAAAAAAAAAAHIJJRSCkmCkWSSIlAAAAANAAAAAAASEtQkkIJSaJRAAJA",
				popularity = "76.4%",
				dps = "399.0k",
			},
			["MythicPlus"] = {
				talentString = "BkQAAAAAAAAAAAAAAAAAAAAAAAHIJJRSCRaKEpIJhUCAAAAUAAAAAAAIENSSkIJJaJJBAkA",
				popularity = "50.4%",
				dps = "424.0k",
				keystone = "+15"
			},
		},
	},
	["monk"] = {
		["brewmaster"] = {
			["MythicPlus"] = {
				talentString = "BwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAAAgUiWLJJQSSpRAAAASLRJJikk0KkkWCAENJSLtSiAA",
				popularity = "29.7%",
				dps = "270.4k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "BwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAAAQShWJJJQSSrRAAAASLSRiEJUKSSaJJlEgWjIt0KhAA",
				popularity = "43.0%",
				dps = "239.3k",
			},
		},
		["mistweaver"] = {
			["Raiding"] = {
				talentString = "B4QAAAAAAAAAAAAAAAAAAAAAAUiCSkoUaNCpEJJlAt0aBAAAAAAAAAAAAk0SUQIJRpAQSLJJRAAEaE",
				popularity = "59.8%",
				dps = "22.4k",
				hps = "433.0k",
			},
			["MythicPlus"] = {
				talentString = "B4QAAAAAAAAAAAAAAAAAAAAAA0SKFJJHQUKtIkSEJNIlUEAAAAAAAAAAAAg0SUSSIJRrAkk0gQAAEpB",
				popularity = "25.9%",
				dps = "118.9k",
				hps = "165.5k",
				keystone = "+17"
			},
		},
		["windwalker"] = {
			["MythicPlus"] = {
				talentString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARSkkElISEAAAAQkkUIRgkkIkUSSkkEtCSkk0AAAAUA",
				popularity = "58.5%",
				dps = "467.2k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAhEJJRLiEBAAAASkkUAkkkkk0SCERCtikQSSLBBAAQD",
				popularity = "85.7%",
				dps = "406.6k",
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["MythicPlus"] = {
				talentString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgCAJJigkAkESSSBaJOQkkUSCJJEaSLSkENAK0AE",
				popularity = "36.5%",
				dps = "471.3k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgCAJJigkQQSikIFolIJSSJRTcgQol0SSERDgCAE",
				popularity = "81.3%",
				dps = "400.3k",
			},
		},
		["guardian"] = {
			["MythicPlus"] = {
				talentString = "BgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQikISJiEBJpIhkUAAJJASISSSikIFhGCAAAAAQEQChA",
				popularity = "27.7%",
				dps = "243.0k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQiIJJlElICiiESShCAJCCSgkkkkkIFoFOAAAAAAQEQQCA",
				popularity = "24.5%",
				dps = "236.0k",
			},
		},
		["feral"] = {
			["MythicPlus"] = {
				talentString = "BcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAASk0STCSSSSJtDgWSkIJAAAAAAKAkkEAQSSSIJSJoFJAAAAAAIBAA",
				popularity = "20.0%",
				dps = "372.0k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "BcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAACSLioIJJJl0IaJJxBSCAAAAAgGAJCAQSSSIJUSolkAAAAAAgEAAA",
				popularity = "51.1%",
				dps = "402.6k",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "BkGAAAAAAAAAAAAAAAAAAAAAA0IJRDJJpIlkIIFaaRSAAAAAAAAAAAAgSQIJCCSIQSkkIFkGAAAAAAiAAgkA",
				popularity = "26.0%",
				dps = "124.3k",
				hps = "163.4k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BkGAAAAAAAAAAAAAAAAAAAAAA0ikElWkIhUQiIFhWkEAAAAAAAAAAAAoAIJCCSAkESiUIplIAAAAAgIAAIC",
				popularity = "65.4%",
				dps = "28.6k",
				hps = "423.1k",
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			["Raiding"] = {
				talentString = "BEkAAAAAAAAAAAAAAAAAAAAAAIJRkkgkkISgkAAAAAAASLEJRSSLJplWEBSIKtIJRA",
				popularity = "69.9%",
				dps = "407.3k",
			},
			["MythicPlus"] = {
				talentString = "BEkAAAAAAAAAAAAAAAAAAAAAAIJJRSCSSiQISCAAAAAAIlIRSIJNJplWEBSIKtIJRA",
				popularity = "24.7%",
				dps = "457.8k",
				keystone = "+17"
			},
		},
		["vengeance"] = {
			["MythicPlus"] = {
				talentString = "BUkAAAAAAAAAAAAAAAAAAAAAAAASiQiQSIJhES0SikolEiEERaJJNJRSIBAAAAkkA",
				popularity = "18.9%",
				dps = "267.7k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BUkAAAAAAAAAAAAAAAAAAAAAAAAiIJJikgkERISJJEaJSSIhkEJRLSIBBAAAAkkEA",
				popularity = "18.1%",
				dps = "244.8k",
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["Raiding"] = {
				talentString = "BsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJSCSaSQABikIRSItoEJJhcgkWCIRSLSikEIQA",
				popularity = "31.8%",
				dps = "416.5k",
			},
			["MythicPlus"] = {
				talentString = "BsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAiEIRSkEIplIkIkESLKJJJhIpkAEJikIJBCE",
				popularity = "69.7%",
				dps = "474.2k",
				keystone = "+18"
			},
		},
		["preservation"] = {
			["MythicPlus"] = {
				talentString = "BwbBAAAAAAAAAAAAAAAAAAAAAAAAAAASSSkSgIJRKSSEQAAQSkIHQi4AJBRCAAAIJJSSLHIiQAA",
				popularity = "26.4%",
				dps = "128.2k",
				hps = "154.4k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "BwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAIJplWOASkEpgkWkQAAQSkIIikASAAAASSCJSiIJBAB",
				popularity = "11.5%",
				dps = "46.3k",
				hps = "404.0k",
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "BEcBAAAAAAAAAAAAAAAAAAAAAQSJpFJJKhkkSCSSSDAAAAAAAAJBJkISIkDkAAAAAJJtIJikARTA",
				popularity = "38.8%",
				dps = "406.4k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "BEcBAAAAAAAAAAAAAAAAAAAAAQikWkkoESSkESSSDAAAAAEAAkEAISISSCAAAASk0ikkIJQ0SA",
				popularity = "31.6%",
				dps = "381.6k",
			},
		},
	},
}
