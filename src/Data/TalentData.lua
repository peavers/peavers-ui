local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["warrior"] = {
		["fury"] = {
			["MythicPlus"] = {
				talentString = "BgEAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQggSCQEEiIJRBEiQEEJJplEJJhkQSIRKBIJSEAAAEQQA",
				popularity = "80.5%",
				dps = "494.1k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CgEAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAACkAiQCpESSDCJiQCJp1SikkGJRSCJ00SIJCAAAABAAAAA0A",
				popularity = "21.1%",
				dps = "615.1k",
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "BkEAAAAAAAAAAAAAAAAAAAAAAIQAAAAgkkQSik0SKJJpBRICkIRJJBgQSQDJJIARCAAAAAAAkEAgSrBAC",
				popularity = "20.8%",
				dps = "256.6k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CkEAAAAAAAAAAAAAAAAAAAAAAIQAAAAIJJkkg0SKJJp1ICRCkkAQkkASSgQCBAAAAAAkEAQKaACAAAAAoJA",
				popularity = "34.3%",
				dps = "238.4k",
			},
		},
		["arms"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "BcEAAAAAAAAAAAAAAAAAAAAAAAQplIRkQSiWpEJAAAAQQESKkAFRAiIJhmEhAcAOQkAAAAAAAAQiWiIgQ0QA",
				popularity = "43.0%",
				dps = "539.3k",
				keystone = "+20"
			},
		},
	},
	["paladin"] = {
		["protection"] = {
			["MythicPlus"] = {
				talentString = "BIEAAAAAAAAAAAAAAAAAAAAAA0SaJkiodAtIJKNJJSEJSAAACAAAAAAAoJRSSRgEkkiASDAiAAIgAE",
				popularity = "21.6%",
				dps = "227.1k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BIEAAAAAAAAAAAAAAAAAAAAAA0SaJkiodAlIJKNJ5ASEJSAAAAAAAAAAAaCJJFBSCJpIISDAiAAIgAE",
				popularity = "1.7%",
				dps = "168.3k",
			},
		},
		["holy"] = {
			["Raiding"] = {
				talentString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAQAARAAACQJJJRLSSpJShQJRkWrJaAJlEkkQkCIJCAIAQDIkk4ACAAAAAAA",
				popularity = "17.5%",
				dps = "67.2k",
				hps = "440.6k",
			},
			["MythicPlus"] = {
				talentString = "BEEAAAAAAAAAAAAAAAAAAAAAAAABAABAEBAAIAtIFkSJSSrJSLJUSSo0aCgkUEkkQkCIiAASAQBIkII",
				popularity = "5.5%",
				dps = "92.0k",
				hps = "113.2k",
				keystone = "+15"
			},
		},
		["retribution"] = {
			["MythicPlus"] = {
				talentString = "BYEAAAAAAAAAAAAAAAAAAAAAAAAAAQAgIUKtSSr0koIJpIJAAAAAAQaBJJEIJEpEhIEpkoFiIgoUoBAA",
				popularity = "47.1%",
				dps = "516.2k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAQAAiWp0SSr0ioFJtWSDAAAAAARQSSTgEEpEhkQKpkQIIIiShWAAAAAAAAA",
				popularity = "42.5%",
				dps = "591.8k",
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["MythicPlus"] = {
				talentString = "B0PAAAAAAAAAAAAAAAAAAAAAA4AgWSAoQAAAAAAAAAAAoRkiEa5ARCJCJhGERLHIRSSEaRSSA",
				popularity = "72.7%",
				dps = "499.2k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "C0PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAgEhIJJkESIhUSikkkQCRSkkIJSIikEiEiE0A",
				popularity = "43.9%",
				dps = "762.1k",
			},
		},
		["survival"] = {
			["Raiding"] = {
				talentString = "C8PAAAAAAAAAAAAAAAAAAAAAAEAAAAAAJJtEJJkEJhkQSikIAAAAAAAAAAAAAAQCJSSSiEEiQSICJSiUA",
				popularity = "46.0%",
				dps = "454.8k",
			},
			["MythicPlus"] = {
				talentString = "B8PAAAAAAAAAAAAAAAAAAAAAA4ABahkQoEEkkkkWiAEJpEhAAAAAARkSTKaQiESIhCAAAAA",
				popularity = "13.0%",
				dps = "306.3k",
				keystone = "+15"
			},
		},
		["marksmanship"] = {
			["MythicPlus"] = {
				talentString = "B4PAAAAAAAAAAAAAAAAAAAAAA4ABaBgoggAAAAAEJJHQSCICJJtEp1ERUkimQiESIhGAAAAA",
				popularity = "47.7%",
				dps = "529.1k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "C4PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAASkkEkkESSikkERSkAAAAAAAAkQkkkkIhkICJBSkIJC",
				popularity = "50.0%",
				dps = "433.2k",
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			["MythicPlus"] = {
				talentString = "BMQAAAAAAAAAAAAAAAAAAAAAAEJJJJSAAAAAAASJJSLJAAAAAAQrkkgEIJpkWSEkEJBJJalIBA",
				popularity = "42.4%",
				dps = "451.5k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CMQAAAAAAAAAAAAAAAAAAAAAAkIJhkElEAAAAAASDKJAAAAAAo1SS4AJRkkUSLiIIJJJJSaKRCAAAAAAAA",
				popularity = "51.4%",
				dps = "549.0k",
			},
		},
		["outlaw"] = {
			["MythicPlus"] = {
				talentString = "BQQAAAAAAAAAAAAAAAAAAAAAAAAElEEJhkkESIRSSolkElkItkAAAAAAAtSkwBSSUgSaBAAAQSCA",
				popularity = "50.1%",
				dps = "550.3k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CQQAAAAAAAAAAAAAAAAAAAAAAAAEIJRigkESIIRSikElEpkAAAAAAgWLS4AJJKkUSLAAAASSCAAAAAAIB",
				popularity = "45.0%",
				dps = "403.8k",
			},
		},
		["subtlety"] = {
			["MythicPlus"] = {
				talentString = "BUQAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAgUSSSJBkSRkkIJxBSSSkItIi0aJJSSCgSKBAAAgEEA",
				popularity = "9.8%",
				dps = "297.9k",
				keystone = "+12"
			},
			["Raiding"] = {
				talentString = "CUQAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAgUikSIUaIRESSSSSSkWEJp1SSkkEEJl0CAAAAJIAAAAAAgA",
				popularity = "55.6%",
				dps = "495.6k",
			},
		},
	},
	["priest"] = {
		["discipline"] = {
			["MythicPlus"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAAapEJBtISSk0kWSSSIAAAAAAAAAAAQRJN0SSQKSISiQK0SkAlAAAAAAAA",
				popularity = "27.0%",
				dps = "133.4k",
				hps = "152.9k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CAQAAAAAAAAAAAAAAAAAAAAAAAAapFJBtISCJkSSSSIBAAAAAAAAAAAlUSj0SCkChQiQKOQLREUiAAAAAAA",
				popularity = "7.8%",
				dps = "111.9k",
				hps = "434.2k",
			},
		},
		["shadow"] = {
			["Raiding"] = {
				talentString = "CIQAAAAAAAAAAAAAAAAAAAAAAgAJBAAAAAAAAAAAAIkiDQSSLtIJJRkIIFSSSkGBiIki0CJBFkAAAAAAA",
				popularity = "26.3%",
				dps = "467.5k",
			},
			["MythicPlus"] = {
				talentString = "BIQAAAAAAAAAAAAAAAAAAAAAAECCBAAAAAAAAAAAAISKSkk00IJJJBlQJFSSCpJhIiQKSLkAFkA",
				popularity = "75.5%",
				dps = "712.9k",
				keystone = "+21"
			},
		},
		["holy"] = {
			["Raiding"] = {
				talentString = "BEQAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAgWAtkkkEJkWEJBlEKBAAAAUUSL0SSQKEJSigSBSESBA",
				popularity = "49.2%",
				dps = "45.6k",
				hps = "461.9k",
			},
			["MythicPlus"] = {
				talentString = "BEQAAAAAAAAAAAAAAAAAAAAAAQEAAAAAAAcgmIlEkERgEJElkkSAAAAAFl0OAlkEoIpIkIkCNSCSBA",
				popularity = "26.7%",
				dps = "160.0k",
				hps = "136.7k",
				keystone = "+16"
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["MythicPlus"] = {
				talentString = "BoPAAAAAAAAAAAAAAAAAAAAAAACJJCJJi0SEBJiECSSSkAAAAAAJSSOQEJNhIBAAESSSAAAAA",
				popularity = "22.3%",
				dps = "291.8k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CoPAAAAAAAAAAAAAAAAAAAAAAgQQSikERUSkkEJESiEJAAAAAkkkkkkkmkEBAAAJJJBAAAAAAAAAAABF",
				popularity = "33.9%",
				dps = "316.3k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "BsPAAAAAAAAAAAAAAAAAAAAAAICgIkkIHISERkIJhgISkkEJwBIJRkkkkkSSAAAAAAAAAAAAA",
				popularity = "78.6%",
				dps = "458.0k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CsPAAAAAAAAAAAAAAAAAAAAAAcAASikERESkkkkEhESECQSikQSSSSSJJAAAAAAAAAAAAAAAAAAIJJSA",
				popularity = "41.8%",
				dps = "612.9k",
			},
		},
		["unholy"] = {
			["Raiding"] = {
				talentString = "CwPAAAAAAAAAAAAAAAAAAAAAAAAJJScgQIRSSiQSSiEBAAAAAAAAQIJSERCAINJkiIJJRSCAAAAAgAIBA",
				popularity = "41.1%",
				dps = "542.0k",
			},
			["MythicPlus"] = {
				talentString = "BwPAAAAAAAAAAAAAAAAAAAAAAAAiQSicgISERiEhgkIRCAAAAAAAAAKkEhIJpBAQiUEJJJSSA",
				popularity = "74.1%",
				dps = "489.6k",
				keystone = "+17"
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAg0SrIJlkACSjSUSLJOQOAAAAAAgSAJlkolCIOQJJppEoEERgA",
				popularity = "65.9%",
				dps = "507.5k",
				keystone = "+19"
			},
		},
		["enhancement"] = {
			["MythicPlus"] = {
				talentString = "BcQAAAAAAAAAAAAAAAAAAAAAAIRSKRCCJhkk0QJRAAAAAAAAAAAAAKRICJkiAJNJpEQpEEBIB",
				popularity = "76.9%",
				dps = "451.4k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "CcQAAAAAAAAAAAAAAAAAAAAAAkkkSSAJJkkkGKJAAAAAAAAAAAAAAAAAAApESQKFJJJCJphSSCQUikAAkA",
				popularity = "82.5%",
				dps = "457.4k",
			},
		},
		["restoration"] = {
			["Raiding"] = {
				talentString = "Link not found",
			},
			["MythicPlus"] = {
				talentString = "BgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIhkkkkSSJpIJNBNIRQQJiWEISJ5AgIKJJRSAA",
				popularity = "9.3%",
				dps = "118.6k",
				hps = "131.4k",
				keystone = "+16"
			},
		},
	},
	["mage"] = {
		["fire"] = {
			["MythicPlus"] = {
				talentString = "B8DAAAAAAAAAAAAAAAAAAAAAAIJIFNkQSKOAikQEJhkAAAAAAAAAIiIJJUSUSSIJJJpBAAASLA",
				popularity = "70.8%",
				dps = "612.1k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
		["arcane"] = {
			["MythicPlus"] = {
				talentString = "B4DAAAAAAAAAAAAAAAAAAAAAAIJIl0QSkkiAyBSERSIRgkkQSLJAAAAAAAAAAAgIJJJkkkIkA",
				popularity = "61.2%",
				dps = "457.7k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "C4DAAAAAAAAAAAAAAAAAAAAAAISTapgEiUcAOgkQEJpkAAAAAAQAAAAAAAAAAAAoBQJRIJSCRSiIJRSSSIC",
				popularity = "25.4%",
				dps = "437.3k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "BAEAAAAAAAAAAAAAAAAAAAAAAQCSRDJRSKOAikQERKJJAAAJkIhkkkkIJJJRSAAAAAAAAAgIA",
				popularity = "69.9%",
				dps = "564.1k",
				keystone = "+21"
			},
			["Raiding"] = {
				talentString = "CAEAAAAAAAAAAAAAAAAAAAAAAkENppgESSRQiERERSESSCJJJJRSSSikgEAAAAAAAAAAAApAAAAAAAAA",
				popularity = "62.7%",
				dps = "511.0k",
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["MythicPlus"] = {
				talentString = "BkQAAAAAAAAAAAAAAAAAAAAAAAHIJJRSCRaKEpIJhUCAAAAUAAAAAAAIENSSkIJJaJJBAkA",
				popularity = "61.7%",
				dps = "450.8k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "CkQAAAAAAAAAAAAAAAAAAAAAAgkkkkkApJQaSSItAAAAJJSKSSUkkUIJJAgEAAAAAAJAAAAAAAAgk0A",
				popularity = "39.5%",
				dps = "463.9k",
			},
		},
		["demonology"] = {
			["MythicPlus"] = {
				talentString = "BoQAAAAAAAAAAAAAAAAAAAAAAAIJRSCkmCJpdgkESJAAAAAABikkWERSikSaJRCBAAAAAAJJ",
				popularity = "45.5%",
				dps = "504.5k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "BsQAAAAAAAAAAAAAAAAAAAAAAAIJRSCRaKEpJJRSJkkQJSElgWpIJAAAAAAAAAAAACokkkA",
				popularity = "54.3%",
				dps = "656.8k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CsQAAAAAAAAAAAAAAAAAAAAAAASSSSCkmQkmkESJNRkIFpkoIJAAAAQSSSJJJBAAAAAgAAAAAAAQEJAA",
				popularity = "14.8%",
				dps = "442.5k",
			},
		},
	},
	["monk"] = {
		["brewmaster"] = {
			["MythicPlus"] = {
				talentString = "BwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAAAgUiWLJJQSSpRAAAASJUSiEJ0KkkSSSJBQTi0SrkIA",
				popularity = "34.5%",
				dps = "302.0k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "CwQAAAAAAAAAAAAAAAAAAAAAAAAAAAERkQiSiWSSCAAAAAAAKFAkAJkUIiWSSIlQiWKJaNNtkEJNAAAAAAAAgE0A",
				popularity = "24.9%",
				dps = "262.4k",
			},
		},
		["mistweaver"] = {
			["Raiding"] = {
				talentString = "C4QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEKaRJASSi2BoolWSKKp0KJpUASSSKkQSRIpIJh0ICKAAAAAAAAAAAAoB",
				popularity = "25.5%",
				dps = "29.6k",
				hps = "485.6k",
			},
			["MythicPlus"] = {
				talentString = "B4QAAAAAAAAAAAAAAAAAAAAAA0SKFJJHQUKtIkSEJNIlUEAAAAAAAAAAAAg0SUSSIJRrAkk0gQAAEpB",
				popularity = "23.4%",
				dps = "118.4k",
				hps = "169.6k",
				keystone = "+19"
			},
		},
		["windwalker"] = {
			["Raiding"] = {
				talentString = "C0QAAAAAAAAAAAAAAAAAAAAAAIJlkgQIlECJAAAAAAAAAAAgWJRACRChWkolIh0CJhSCAAaJJSSk0SAAAAAAAA",
				popularity = "41.1%",
				dps = "524.4k",
			},
			["MythicPlus"] = {
				talentString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARSkkElISEAAAAQkkUIRgkkIkUSSIJRpQSkk0AAAA0A",
				popularity = "50.5%",
				dps = "494.6k",
				keystone = "+19"
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["MythicPlus"] = {
				talentString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgCAJJJCSCQSIJJFol4ARSSJJkkQoJtIRS0AoAAB",
				popularity = "32.8%",
				dps = "482.9k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKAkkQIJgkQSSKQLiIJtENRSkDol0SiERDUAQAAAAAAAAIJRA",
				popularity = "53.5%",
				dps = "469.0k",
			},
		},
		["feral"] = {
			["MythicPlus"] = {
				talentString = "BcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAASk0STCSSSSJtDgWSkIJAAAAAAKgQSSgEQSSSQClgWiDAAAAAAgEAAA",
				popularity = "21.6%",
				dps = "383.4k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "CcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAk0iIFJRSKpR0SSikEAAAAAgCgEQEQSkQSSkItkAAAAAAAIAAAAAAAAAIJA",
				popularity = "43.5%",
				dps = "551.0k",
			},
		},
		["guardian"] = {
			["MythicPlus"] = {
				talentString = "BgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQikISJiEBJpIhkUAAJJBIhIJJJSiUEa4AAAAAAARAJECA",
				popularity = "23.9%",
				dps = "249.5k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "BkGAAAAAAAAAAAAAAAAAAAAAA0IJRDJJpIlkIIFaaRSAAAAAAAAAAAAAB4AJJIIhAJRSyBSBpgDAAAAAAiAAgkA",
				popularity = "23.9%",
				dps = "128.5k",
				hps = "165.6k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "Link not found",
			},
		},
	},
	["demon-hunter"] = {
		["vengeance"] = {
			["Raiding"] = {
				talentString = "BUkAAAAAAAAAAAAAAAAAAAAAAAAiIJJikgkERISJJEaJSSIhkEJRLSIBBAAAAkkEA",
				popularity = "14.0%",
				dps = "259.6k",
			},
			["MythicPlus"] = {
				talentString = "BUkAAAAAAAAAAAAAAAAAAAAAAAASiQiQCSSIhEtkIJaJhIBRkWSSTSkEJBAAAAkkA",
				popularity = "19.0%",
				dps = "284.2k",
				keystone = "+21"
			},
		},
		["havoc"] = {
			["MythicPlus"] = {
				talentString = "BEkAAAAAAAAAAAAAAAAAAAAAAIJJRSCSSiQISCAAAAAAIlQkEJJNJplWEBSIKtIJRA",
				popularity = "32.3%",
				dps = "504.8k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BEkAAAAAAAAAAAAAAAAAAAAAAIJRkkgkkISgkAAAAAAASLEJRSSLJplWEBSIKtIJRA",
				popularity = "61.5%",
				dps = "489.1k",
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["Raiding"] = {
				talentString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJSCSaSQABikIRSItokkkEikWCIRSLSSLSgABAAAAAAA",
				popularity = "27.9%",
				dps = "484.9k",
			},
			["MythicPlus"] = {
				talentString = "BsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAiEIRSkEkoJikIkESLKJJJhIpkASkUikIRgAA",
				popularity = "66.5%",
				dps = "483.8k",
				keystone = "+18"
			},
		},
		["preservation"] = {
			["MythicPlus"] = {
				talentString = "BwbBAAAAAAAAAAAAAAAAAAAAAAAAAAASSSkSgIJRKSSEQAAQSkkEiIJQEAAAgkkQSLJiQAA",
				popularity = "27.4%",
				dps = "138.0k",
				hps = "165.8k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAkkEROQSiEkCSaSCBAAJRigISCkEAAAgkkQikIlkAABAAAAACA",
				popularity = "11.4%",
				dps = "32.3k",
				hps = "368.7k",
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "BEcBAAAAAAAAAAAAAAAAAAAAAQSJpFJJKhkkSCSSSDAAAAAAAAJBJaiIhQOQCAAAAkk0ikISCENB",
				popularity = "33.6%",
				dps = "431.6k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "CEcBAAAAAAAAAAAAAAAAAAAAAQiolkkoEkkSSIRSDAAAAAEAAkEAISIRSCAAAASk0ik0ikARLBAAAAAASA",
				popularity = "28.5%",
				dps = "532.9k",
			},
		},
	},
}
addonTable.DB = talentData