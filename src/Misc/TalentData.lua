local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["warrior"] = {
		["arms"] = {
			Mythic-plus = {
				talentString = "BcEAAAAAAAAAAAAAAAAAAAAAAAQplIRkQSiWpEJAAAAQQEiCJRUEBIikEaSECwBQkAAAAAAAAQiWiIgQ0QA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BcEAAAAAAAAAAAAAAAAAAAAAAAQRikEJkDko0KJBAAAAEEhoQAFRCECJhmEhAESIAAAAAAAAkEkkACRDB",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
		["fury"] = {
			Mythic-plus = {
				talentString = "BgEAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQggSCQEEiIJRBEiQEEJJplEJJhkQSIRKBIJSEAAAEQQA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BgEAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQggSQQEEiIJRBSICEOQIJplEJJhkQSIRKBIJSEAAAEQQA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
		["protection"] = {
			Mythic-plus = {
				talentString = "BkEAAAAAAAAAAAAAAAAAAAAAAIQAAAAgkkQSik0SKJJpBRgQRiElkEACJBNkkgAEJAAAAAAAQSAAKtGAIA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BkEAAAAAAAAAAAAAAAAAAAAAAIQAAAAgkkQSCSLpkkkWDRgQRAlkEgISSCNkkAcAOQIAAAAAAAQSAAHo0aAgA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
	},
	["paladin"] = {
		["holy"] = {
			Mythic-plus = {
				talentString = "BEEAAAAAAAAAAAAAAAAAAAAAAAABAABAEBAAIAtIFkSJSSrISLJUSSo0aiGIJFBJJEpAiIAgAANgQigA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BEEAAAAAAAAAAAAAAAAAAAAAAAAAAQAARAAACQLJFoUik0ahUSClkEKaiGQSJBJJEpgmkIAgAAFgQSCC",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
		["protection"] = {
			Mythic-plus = {
				talentString = "BIEAAAAAAAAAAAAAAAAAAAAAA0SaJkiodAtIJKNJJSEJSAAACAAAAAAAoJkkUEIBJpIg0AgIQCAgAE",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BIEAAAAAAAAAAAAAAAAAAAAAA0SaJkiodAtkko0kkIRkIBAAIAAAAAAAACJJEIJkkigIAgIQCAgAE",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
		["retribution"] = {
			Mythic-plus = {
				talentString = "BYEAAAAAAAAAAAAAAAAAAAAAAAAAAQAgIUKtSSr0koIJpIJAAAAAAQaQSCBSCRKRICRKJahISgoUoBAA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BYEAAAAAAAAAAAAAAAAAAAAAAAAAAQAgIalSrk0KNiWkkWSAAAAAAABkkQgkQkSESCpkSChICJiShGAA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			Mythic-plus = {
				talentString = "B0PAAAAAAAAAAAAAAAAAAAAAA4AQaJBgCBAAAAAAAAAAgGRKSoFSCHISkEKQEtcgEJJRoFJJB",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "B0PAAAAAAAAAAAAAAAAAAAAAA4AgWSAoQAAAAAAAAAAAoBhEaikQCJJoJkWUSSkIEaRSSA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
		["marksmanship"] = {
			Mythic-plus = {
				talentString = "B4PAAAAAAAAAAAAAAAAAAAAAA4ABaBgoggAAAAAEJJHQSCICJJtEp1ERUkimQiESIhGAAAAA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "B4PAAAAAAAAAAAAAAAAAAAAAA4ABaBgoggAAAAAEJJHQSCICJJtEpVER0kimQiESIhGAAAAA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
		["survival"] = {
			Mythic-plus = {
				talentString = "B8PAAAAAAAAAAAAAAAAAAAAAA4ABaBJEKBBJJJplkgDQkEkIAAAAAQEp0kiGkIhESoBAAAAA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "B8PAAAAAAAAAAAAAAAAAAAAAAIhWaBJBKBBJkEJkIEJhkkAAAAAABRRoJkIBhgCAAAAA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			Mythic-plus = {
				talentString = "BMQAAAAAAAAAAAAAAAAAAAAAAEJJJJSAAAAAAASJJSLJAAAAAAQrEJIBSSKplEBJRSQSiWJJBA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BMQAAAAAAAAAAAAAAAAAAAAAAEJJhkEEAAAAAASJJSJJAAAAAAgWSCSgkkSaJREEJJJRSTJSAA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
		["outlaw"] = {
			Mythic-plus = {
				talentString = "BQQAAAAAAAAAAAAAAAAAAAAAAAAElEEJhkkESIRSSolkElkItkAAAAAAAtSkwBSSUgSaBAAAQSCA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BQQAAAAAAAAAAAAAAAAAAAAAAAAElEEJhkkESIRSSolkElkItkAAAAAAAtWSCHIJRBKpFAAAARCA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
		["subtlety"] = {
			Mythic-plus = {
				talentString = "BUQAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAgUSSSJBkSRkkIJxBSSSkItIi0KJJSSCgSaBAAAQEEA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BUQAAAAAAAAAAAAAAAAAAAAAAAAEEAAAAAASJJJlERSKFRICxBSSSISLSS0aJJSSCgSaBAAAgEEA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
	},
	["priest"] = {
		["discipline"] = {
			Mythic-plus = {
				talentString = "BAQAAAAAAAAAAAAAAAAAAAAAAAAapEJBtISSk0kWSSSIAAAAAAAAAAAQRJN0SSQKEikIkCtEJBlAA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BAQAAAAAAAAAAAAAAAAAAAAAAAAapFRQLikEJkSSSSIBAAAAAAAAAAAFl0Og0SCkChgIki0SEBlIA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
		["holy"] = {
			Mythic-plus = {
				talentString = "BEQAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAHoJSJBJREIRCRJJpEAAAAAt0OAlkApQkIJioUIJJhUAA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BEQAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAgWAtkkkEJkWEJBlEKBAAAAUUSL0SSQKESSigSBSESBA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
		["shadow"] = {
			Mythic-plus = {
				talentString = "BIQAAAAAAAAAAAAAAAAAAAAAAECCBAAAAAAAAAAAAISKSkk00IJJJBlQJNSSCpRIiIki0CJBFkA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BIQAAAAAAAAAAAAAAAAAAAAAAggkEAAAAAAAAAAAAgQKOAJJt0IJJJRigUIJJRaEIiQKSLkEUQC",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			Mythic-plus = {
				talentString = "BoPAAAAAAAAAAAAAAAAAAAAAAAikkIRSiIiERkISIIJSkAAAAAAIJJBSLhkEAAQkkkEAAAA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BoPAAAAAAAAAAAAAAAAAAAAAAACJIkkIHIiERkISIIJJRCAAAAAkIJ5ARk0EiEAAQIJJJAAAA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
		["frost"] = {
			Mythic-plus = {
				talentString = "BsPAAAAAAAAAAAAAAAAAAAAAAICgIkkIHIiERkIJhgISkkEJwBIJRkkkkkSSAAAAAAAAAAAAA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BsPAAAAAAAAAAAAAAAAAAAAAAICASIJRiIREikECJSSEJIIhkERSSSSKJBAAAAAAAAAAAA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
		["unholy"] = {
			Mythic-plus = {
				talentString = "BwPAAAAAAAAAAAAAAAAAAAAAAAAiQSicgISERiEhgkIRCAAAAAAAAAKkEhIJpBAQiUEJJJSSA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BwPAAAAAAAAAAAAAAAAAAAAAAAAIikEJiERISECJJJRAAAAAAAAAgSSSICAAIJh0SkkkIJA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			Mythic-plus = {
				talentString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAg0SrIJlkACSjSUSLJOQOAAAAAAgSAJlkQKog0SSaKBKBREIA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAgUSrUSCgDk0SShSgkkEBAAAAAoEQSJJoJg0SSahACJSgA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
		["enhancement"] = {
			Mythic-plus = {
				talentString = "BcQAAAAAAAAAAAAAAAAAAAAAAIRSKRCCJhkk0QJRAAAAAAAAAAAAAKRIJkokikCSRSKAKBxBEIB",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BcQAAAAAAAAAAAAAAAAAAAAAAIJJpEJgkESSSDlEAAAAAAAAAAAAAKRIJkgiAJNJpEBQOQCBSA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
		["restoration"] = {
			Mythic-plus = {
				talentString = "BgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIpJJJJRSJpIRJBNIpEESJJKpgCSLBgUKJRkEIA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQIRSiSCplk0kU0okkSQQJBAINJppkIIJRSQLA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
	},
	["mage"] = {
		["arcane"] = {
			Mythic-plus = {
				talentString = "B4DAAAAAAAAAAAAAAAAAAAAAAIJIl0QSkkiASCRkESEIJJk0SCAAAAAAAAAAAISSSCJJJCJA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "B4DAAAAAAAAAAAAAAAAAAAAAAQEUSDJSkigIJERSIRCkEk0SCAAAAAAAAAAAISSSSkkkEIA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
		["fire"] = {
			Mythic-plus = {
				talentString = "B8DAAAAAAAAAAAAAAAAAAAAAAIJIFNk4AJp5AgkQEJpIJAAAAAAAAAiISSClElkESSSSaAAAg0C",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "B8DAAAAAAAAAAAAAAAAAAAAAAQCSRDJRSKCcgkQEJhkAAAAAAAAAgIkIOQJ5AlkkkkkkkGAAAINA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
		["frost"] = {
			Mythic-plus = {
				talentString = "BAEAAAAAAAAAAAAAAAAAAAAAAIJIFNkQSKOAikQERKJJAAAJkIhkkkkIJJJRSAAAAAAAAAgIA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BAEAAAAAAAAAAAAAAAAAAAAAAQCUSzBkQkigIJERSkEAAASJRSIRSSIJJJJJBAAAAAAAAAiA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			Mythic-plus = {
				talentString = "BkQAAAAAAAAAAAAAAAAAAAAAAAHIJJRSCkmCRKHIJhUCAAAAUAAAAAAAIENSSkIJJaJJBAkA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BkQAAAAAAAAAAAAAAAAAAAAAAAHIJJRSCkmCkWSSIlAAAAANAAAAAAASEtQkkIJSaJRAAJA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
		["demonology"] = {
			Mythic-plus = {
				talentString = "BoQAAAAAAAAAAAAAAAAAAAAAAcACSSkkApooEpdgkESLAAAAAABikkWERSikSaJRCBAAAAAARC",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BoQAAAAAAAAAAAAAAAAAAAAAAggkEJJQaKQaJJhUCAAAAAIBSikSEhkIpolkkQAAAAAAQiA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
		["destruction"] = {
			Mythic-plus = {
				talentString = "BsQAAAAAAAAAAAAAAAAAAAAAAAIJRSCRaKEpJJRSJkkQJSElgWpIJAAAAAAAAAAAACokkkA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BsQAAAAAAAAAAAAAAAAAAAAAAggkEJJQaKQaJJhUiWwBUSSkAalikAAAAAAAAAAAAIJokEJA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
	},
	["monk"] = {
		["brewmaster"] = {
			Mythic-plus = {
				talentString = "BwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAAAgUiWLJJQSSpRAAAASJUSiEJ0KkkSOQSJBENJSLtSIA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAAAQShWJJJQSSrRAAAASLSRiEJUKSSaJJlEgWjIt0KhAA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
		["mistweaver"] = {
			Mythic-plus = {
				talentString = "B4QAAAAAAAAAAAAAAAAAAAAAA0SKFJJHQUKtIkSEJNIlUEAAAAAAAAAAAAgASSIJRrIJRSSDOABAQkGA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "B4QAAAAAAAAAAAAAAAAAAAAAAUiCSkoUaNCpEJJlAt0aBAAAAAAAAAAAAk0SUQIJRpAQSLJJRAAEaE",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
		["windwalker"] = {
			Mythic-plus = {
				talentString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARSkkElISEAAAAQkkUIRgkkIkUSSIJRrIJRyBSDAAAQD",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAhEJJRLiEBAAAASkkUAkkkkk0SCERCtikQSSLBBAAQD",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
	},
	["druid"] = {
		["balance"] = {
			Mythic-plus = {
				talentString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgCAJJigkAkESSSBaJOQkkUSCJJEaSLSkENAK0AE",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgCAJJigkQQSikIFolIJSSJRTcgQol0SSERDgCAE",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
		["feral"] = {
			Mythic-plus = {
				talentString = "BcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEJt0kQSSSSJtDgWSkIJAAAAAAKAkkAIJkkkESSUCa4AAAAAAAIBAA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAACSLioIJJJl0IaJJxBSCAAAAAgGAJCAQSSSIJUSolkAAAAAAgEAAA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
		["guardian"] = {
			Mythic-plus = {
				talentString = "BgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQikISJiEBJpIhkUAAJJASISSSikIFhGCAAAAAQEQChA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQiIJJlElICiiESShCAJCCSgkkkkkIFoFOAAAAAAQEQQCA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
		["restoration"] = {
			Mythic-plus = {
				talentString = "BkGAAAAAAAAAAAAAAAAAAAAAA0IJRDJJpIlkIIFaaRSAAAAAAAAAAAAABIJJIIhAJRSSSBBAAAAAAiAAgkA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BkGAAAAAAAAAAAAAAAAAAAAAA0ikElWkIhUQiIFhWkEAAAAAAAAAAAAoAIJCCSAkESiUIplIAAAAAgIAAIC",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			Mythic-plus = {
				talentString = "BEkAAAAAAAAAAAAAAAAAAAAAAIJJRSCSSiIhkkAAAAAAASLEJkk0kkWaREIho0ikEB",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BEkAAAAAAAAAAAAAAAAAAAAAAIJRkkgkkISgkAAAAAAASLEJRSSLJplWEBSIKtIJRA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
		["vengeance"] = {
			Mythic-plus = {
				talentString = "BUkAAAAAAAAAAAAAAAAAAAAAAAASiIJCJhkESIRLJSiWSISQEplk0kEJBBAAAAkkA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BUkAAAAAAAAAAAAAAAAAAAAAAAAiIJJikgkERISJJEaJSSIhkEJRLSIBBAAAAkkEA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			Mythic-plus = {
				talentString = "BsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAiEIRSkEkkGCJSkESLKJJJhIpkAEJtIJiEIQA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJSCSaSQABikIRSItokkkEikWCIRSLSikEIQA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
		["preservation"] = {
			Mythic-plus = {
				talentString = "BwbBAAAAAAAAAAAAAAAAAAAAAAAAAAASSSkSgIJRKSSEQAAQSkkEiIJQEAAAgkkQSLJiQAA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAIJplSOACJRKIpFJRAAQSkIIikASAAAASSCJSiIJBAB",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
		["augmentation"] = {
			Mythic-plus = {
				talentString = "BEcBAAAAAAAAAAAAAAAAAAAAAQSJpFJJKhkkSCSSSDAAAAAAAAJBJaiIhQkAAAAAJJtIJJSCENB",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
			Raiding = {
				talentString = "BEcBAAAAAAAAAAAAAAAAAAAAAQikWkkoESSkESSSDAAAAAEAAkEAISISSCAAAASk0ikkIJQ0SA",
				popularity = "N/A",
				hps = "N/A",
				dps = "N/A"
			},
		},
	},
}