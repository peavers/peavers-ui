local addonName, addonTable = ...
addonTable.DB = addonTable.DB or {}

local talentData = {
	["warrior"] = {
		["fury"] = {
			["MythicPlus"] = {
				talentString = "BgEAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQggSCQEEiIJRBEiQEEJJplEJJhkQSIRKBIJSEAAAEQQA",
				popularity = "83.4%",
				dps = "465.5k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "BgEAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQggSQQEEiIJRBSICEOQIJplEJJhkQSIRKBIJSEAAAEQQA",
				popularity = "54.9%",
				dps = "419.4k",
			},
		},
		["arms"] = {
			["MythicPlus"] = {
				talentString = "BcEAAAAAAAAAAAAAAAAAAAAAAAQplIRkQSiWpEJAAAAQQESKkEUEBIikEaSECwBQkAAAAAAAAQiWiIgQ0QA",
				popularity = "42.9%",
				dps = "519.3k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BcEAAAAAAAAAAAAAAAAAAAAAAAQRikEJkDko0KJBAAAAEEhoQAFRCECJhmEhAESIAAAAAAAAkEkkACRDB",
				popularity = "53.7%",
				dps = "445.0k",
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "BkEAAAAAAAAAAAAAAAAAAAAAAIQAAAAgkkQSik0SKJJpBRgQRiElkEACJBNkkgAEJAAAAAAAQSAAKtGAIA",
				popularity = "23.6%",
				dps = "254.6k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "BkEAAAAAAAAAAAAAAAAAAAAAAIQAAAAgkkQSCSLpkkkWDRgQRAlkEgISSCNkkAcAOQIAAAAAAAQSAAHo0aAgA",
				popularity = "19.6%",
				dps = "245.2k",
			},
		},
	},
	["paladin"] = {
		["holy"] = {
			["MythicPlus"] = {
				talentString = "BEEAAAAAAAAAAAAAAAAAAAAAAAABAABAEBAAIAtIFkSJSSrISLJUSSo0aiGIJFBJJEpAiIAgAANgQigA",
				popularity = "9.7%",
				dps = "74.9k",
				hps = "122.4k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "BEEAAAAAAAAAAAAAAAAAAAAAAAAAAQAARAAACQLJFoUik0ahUSClkEKaiGQSJBJJEpgmkIAgAAFgQSCC",
				popularity = "25.4%",
				dps = "37.9k",
				hps = "427.5k",
			},
		},
		["protection"] = {
			["MythicPlus"] = {
				talentString = "BIEAAAAAAAAAAAAAAAAAAAAAA0SaJkiodAtIJKNJJSEJSAAACAAAAAAAoJkkUEIJkkiASDAiAAIgAE",
				popularity = "16.9%",
				dps = "228.3k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BIEAAAAAAAAAAAAAAAAAAAAAAUSKJSKiyB0iEaNJJSQIBAAIAAAAAAAASEJFBSQSKCJJNAICIACIAB",
				popularity = "3.6%",
				dps = "209.6k",
			},
		},
		["retribution"] = {
			["MythicPlus"] = {
				talentString = "BYEAAAAAAAAAAAAAAAAAAAAAAAAAAQAgIUKtSSr0koIJpIJAAAAAAQaQSCBSCRKRICRKJahICioUoBAA",
				popularity = "56.1%",
				dps = "502.7k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BYEAAAAAAAAAAAAAAAAAAAAAAAAAAQAgIalSrk0KNiWkkWSAAAAAAABkkQgkQkSESCpkSChICJiShGAA",
				popularity = "74.8%",
				dps = "439.9k",
			},
		},
	},
	["hunter"] = {
		["beast-mastery"] = {
			["MythicPlus"] = {
				talentString = "B0PAAAAAAAAAAAAAAAAAAAAAA4AgWSAoQAAAAAAAAAAAoRkiEa5ARCJCJhGERLHIRSSEaRSSA",
				popularity = "72.9%",
				dps = "492.6k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "B0PAAAAAAAAAAAAAAAAAAAAAA4AgWSAoQAAAAAAAAAAAoBhEaikQCJJoJkWUSSkIEaRSSA",
				popularity = "49.2%",
				dps = "405.7k",
			},
		},
		["marksmanship"] = {
			["MythicPlus"] = {
				talentString = "B4PAAAAAAAAAAAAAAAAAAAAAA4ABaBgoggAAAAAEJJHQSCICJJtEp1ERUkimQiESIhGAAAAA",
				popularity = "53.0%",
				dps = "502.8k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "B4PAAAAAAAAAAAAAAAAAAAAAAIHAaBApgAAAAAARiEJJhICJJtEpRIRRoJkkESIoBAAAAA",
				popularity = "40.3%",
				dps = "407.8k",
			},
		},
		["survival"] = {
			["MythicPlus"] = {
				talentString = "B8PAAAAAAAAAAAAAAAAAAAAAAIBahkQoEEIJJplI4AEJpEhAAAAAAEpQKaEJSOgEOQoBAAAAA",
				popularity = "12.6%",
				dps = "273.4k",
				keystone = "+12"
			},
			["Raiding"] = {
				talentString = "B8PAAAAAAAAAAAAAAAAAAAAAAIhWaBJBKBBJkEJkIEJhkkAAAAAABRRoJkIBhgGAAAAA",
				popularity = "39.8%",
				dps = "391.2k",
			},
		},
	},
	["rogue"] = {
		["assassination"] = {
			["MythicPlus"] = {
				talentString = "BMQAAAAAAAAAAAAAAAAAAAAAAEJJJJSAAAAAAASJJSLJAAAAAAQrkkgEIJpkSSEkEJBJJalIBA",
				popularity = "41.3%",
				dps = "555.9k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BMQAAAAAAAAAAAAAAAAAAAAAAEJJhkEEAAAAAASJJSJJAAAAAAgWSCSgkkSaJREEJJJRSTJSAA",
				popularity = "55.6%",
				dps = "449.6k",
			},
		},
		["outlaw"] = {
			["MythicPlus"] = {
				talentString = "BQQAAAAAAAAAAAAAAAAAAAAAAAAElEEJhkkESIRSSolkElkItkAAAAAAAtSSCHIJRBKpFAAAARCA",
				popularity = "52.8%",
				dps = "544.8k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "BQQAAAAAAAAAAAAAAAAAAAAAAAAEkkEJCSSIJCSkkmkElkIlkAAAAAAAaJJhkEFSKpFAAAASCA",
				popularity = "31.5%",
				dps = "406.2k",
			},
		},
		["subtlety"] = {
			["MythicPlus"] = {
				talentString = "BUQAAAAAAAAAAAAAAAAAAAAAAAAEEAAAAAASJJJlEQKFRSikEHIJJRi0iI0aJJSSCgSaBAAAgEEA",
				popularity = "25.6%",
				dps = "383.7k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "BUQAAAAAAAAAAAAAAAAAAAAAAAAEEAAAAAASJJJlERSKFRICxBSSSISLSS0aJJSSCgSaBAAAgEEA",
				popularity = "81.5%",
				dps = "438.4k",
			},
		},
	},
	["priest"] = {
		["discipline"] = {
			["MythicPlus"] = {
				talentString = "BAQAAAAAAAAAAAAAAAAAAAAAAABolSkE0iIJRSTaJJJhAAAAAAAAAAAAFl0QLJBpQKiICpQLRSQBA",
				popularity = "28.4%",
				dps = "166.6k",
				hps = "146.4k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BAQAAAAAAAAAAAAAAAAAAAAAAAAapFRQLikEJkSSSSIBAAAAAAAAAAAFl0Og0SCkChgIki0SEBlIA",
				popularity = "19.6%",
				dps = "103.9k",
				hps = "411.7k",
			},
		},
		["holy"] = {
			["MythicPlus"] = {
				talentString = "BEQAAAAAAAAAAAAAAAAAAAAAAQEAAAAAAAcgmIlEkERgEJElkkSAAAAAFl0QJJBQKJSiIKFIJhUAA",
				popularity = "29.9%",
				dps = "150.7k",
				hps = "128.1k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "BEQAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAgWAtkkkEJkWEJBlEKBAAAAUUSL0SSQKESSigSBSESBA",
				popularity = "52.1%",
				dps = "44.7k",
				hps = "428.6k",
			},
		},
		["shadow"] = {
			["MythicPlus"] = {
				talentString = "BIQAAAAAAAAAAAAAAAAAAAAAAESIEAAAAAAAAAAAAgIpIRSSTjkkkEIUShkkQaEiICpItQSQBJA",
				popularity = "73.9%",
				dps = "725.3k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BIQAAAAAAAAAAAAAAAAAAAAAAggkEAAAAAAAAAAAAgQKOAJJt0IJJJRigUIJJRaEIiQKSLkEUQC",
				popularity = "37.9%",
				dps = "440.1k",
			},
		},
	},
	["death-knight"] = {
		["blood"] = {
			["MythicPlus"] = {
				talentString = "BoPAAAAAAAAAAAAAAAAAAAAAAAikkIRSiItIRQiIhgkIRCAAAAAgkkEItESSAAARSSSAAAAA",
				popularity = "20.7%",
				dps = "256.2k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BoPAAAAAAAAAAAAAAAAAAAAAAACJIIJJJiERkISI4AJJRCAAAAAkIJ5ARk0EiEAAQIJJJAAAA",
				popularity = "34.1%",
				dps = "279.6k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "BsPAAAAAAAAAAAAAAAAAAAAAAICgIkkIHIiERSOgkECiIRSSkAHgkERSSSSKJBAAAAAAAAAAAA",
				popularity = "71.2%",
				dps = "485.1k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BsPAAAAAAAAAAAAAAAAAAAAAAICASIJRiIREikECJSSEJIIhkERSSSSKJBAAAAAAAAAAAA",
				popularity = "33.7%",
				dps = "421.5k",
			},
		},
		["unholy"] = {
			["MythicPlus"] = {
				talentString = "BwPAAAAAAAAAAAAAAAAAAAAAAAAiQSicgISERiEhgkIRCAAAAAAAAAKkEhIJpBAQiUEJJJSSA",
				popularity = "70.8%",
				dps = "524.5k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BwPAAAAAAAAAAAAAAAAAAAAAAAAIikEJiERISECJJJRAAAAAAAAAgSSSICAAIJh0SkkkIJA",
				popularity = "88.8%",
				dps = "456.5k",
			},
		},
	},
	["shaman"] = {
		["elemental"] = {
			["MythicPlus"] = {
				talentString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAg0SrIJlkACSjSUSLJOQOAAAAAAgSASJJKpAItkkWKBKBRAC",
				popularity = "69.4%",
				dps = "524.2k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BYQAAAAAAAAAAAAAAAAAAAAAAAAAAAAgUSrUSCgDk0SShSgkkEBAAAAAoEQSJJoJg0SSahACJSgA",
				popularity = "41.7%",
				dps = "396.4k",
			},
		},
		["enhancement"] = {
			["Raiding"] = {
				talentString = "BcQAAAAAAAAAAAAAAAAAAAAAAIJJpEJgkESSSDlEAAAAAAAAAAAAAKRICJoJQSTSKpEiSQAIB",
				popularity = "93.6%",
				dps = "428.8k",
			},
			["MythicPlus"] = {
				talentString = "BcQAAAAAAAAAAAAAAAAAAAAAAIRSKRCCJhkk0QJRAAAAAAAAAAAAAKRICJkioQSTSKBRpEEASA",
				popularity = "75.3%",
				dps = "464.0k",
				keystone = "+18"
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "BgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQIJJJpkUSKJJNBNIpEESJJEog0kgSIkkEJBC",
				popularity = "7.9%",
				dps = "83.7k",
				hps = "129.7k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "BgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQIRSiSCplk0kU0okkSQQJBAINJppkIIJRSQLA",
				popularity = "27.8%",
				dps = "53.7k",
				hps = "427.5k",
			},
		},
	},
	["mage"] = {
		["arcane"] = {
			["MythicPlus"] = {
				talentString = "B4DAAAAAAAAAAAAAAAAAAAAAAQiIFNkEJp4AISCRkDESSgkkQSLJAAAAAAAAAAAgIJJJkkkIkA",
				popularity = "65.4%",
				dps = "444.6k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "B4DAAAAAAAAAAAAAAAAAAAAAAQEUSDJSkigIJERSIRCkEk0SCAAAAAAAAAAAISSSSkkkEIA",
				popularity = "48.3%",
				dps = "425.6k",
			},
		},
		["fire"] = {
			["MythicPlus"] = {
				talentString = "B8DAAAAAAAAAAAAAAAAAAAAAAIJIFNkEJp4AISCRkDESCAAAAAAAAgIikkQJRJJhkkkkGAAAItA",
				popularity = "62.4%",
				dps = "583.5k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "B8DAAAAAAAAAAAAAAAAAAAAAAQCSRDJRSaCcgkQEJhkAAAAAAAAAgIkIOQJ5AlkkkkkkkGAAAINA",
				popularity = "52.2%",
				dps = "412.4k",
			},
		},
		["frost"] = {
			["MythicPlus"] = {
				talentString = "BAEAAAAAAAAAAAAAAAAAAAAAAIRIFNkEJp4AISCRERSCAAQCJSIJJJJSSSSkEAAAAAAAAAICA",
				popularity = "72.2%",
				dps = "517.6k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BAEAAAAAAAAAAAAAAAAAAAAAAQCUSzBkQkigIJERSkEAAASJRSIRSSIJJJJJBAAAAAAAAAiA",
				popularity = "61.6%",
				dps = "425.6k",
			},
		},
	},
	["warlock"] = {
		["affliction"] = {
			["MythicPlus"] = {
				talentString = "BkQAAAAAAAAAAAAAAAAAAAAAAAHIJJRSCRaKEpIJhUCAAAAUAAAAAAAIENSSkIJJaJJBAkA",
				popularity = "63.2%",
				dps = "449.8k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "BkQAAAAAAAAAAAAAAAAAAAAAAAHIJJRSCkmCkWSSIlAAAAANAAAAAAASEtQkkIJSaJRAAJA",
				popularity = "50.5%",
				dps = "358.0k",
			},
		},
		["demonology"] = {
			["MythicPlus"] = {
				talentString = "BoQAAAAAAAAAAAAAAAAAAAAAAggkEJJQaKEpdgkESJAAAAAABikkWERSikSaJRCBAAAAAAJJ",
				popularity = "51.6%",
				dps = "519.5k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BoQAAAAAAAAAAAAAAAAAAAAAAggkEJJQaKQaJJhUCAAAAA4ABikkSEhkIpkWSSCBAAAAAAJC",
				popularity = "34.3%",
				dps = "427.5k",
			},
		},
		["destruction"] = {
			["MythicPlus"] = {
				talentString = "BsQAAAAAAAAAAAAAAAAAAAAAAAIJRSCkmCRaJJhUCJJUiERJoVKSCAAAAAAAAAAAgAKJJJA",
				popularity = "56.4%",
				dps = "585.9k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BsQAAAAAAAAAAAAAAAAAAAAAAggkEJJQaKQaJJhUiWwBUSSkAalikAAAAAAAAAAAAIJokEJA",
				popularity = "41.8%",
				dps = "405.2k",
			},
		},
	},
	["monk"] = {
		["mistweaver"] = {
			["MythicPlus"] = {
				talentString = "B4QAAAAAAAAAAAAAAAAAAAAAA0SKFJJHQUKtIkSEJNIlUEAAAAAAAAAAAAg0SUSSIJRrAkk0gQAAEpB",
				popularity = "27.5%",
				dps = "125.5k",
				hps = "143.4k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "B4QAAAAAAAAAAAAAAAAAAAAAAUiCSkoUaNCpEJJlAt0aBAAAAAAAAAAAAk0SUQIJRpAQSLJJRAAEaE",
				popularity = "58.0%",
				dps = "19.0k",
				hps = "453.1k",
			},
		},
		["brewmaster"] = {
			["MythicPlus"] = {
				talentString = "BwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAAAgUiWLJJQSSpRAAAASJUSiEJ0KkkSOQSJBENJSLtSIA",
				popularity = "30.1%",
				dps = "274.4k",
				keystone = "+16"
			},
			["Raiding"] = {
				talentString = "BwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAAAQShWJJJQSSrRAAAASLSRiEJUKSSaJJlEgWjIt0KhAA",
				popularity = "40.1%",
				dps = "266.1k",
			},
		},
		["windwalker"] = {
			["MythicPlus"] = {
				talentString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARSkkElISEAAAAQkkUIRgkkIcgUSSIJRrQSkk0AcAAAQD",
				popularity = "56.9%",
				dps = "482.1k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "B0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIRSS0iIRAAAAgEJJFAJJJJCHIlkERClikEJJtEAAAQD",
				popularity = "84.4%",
				dps = "431.2k",
			},
		},
	},
	["druid"] = {
		["balance"] = {
			["MythicPlus"] = {
				talentString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgCAJJigkAkESSSBaJOQkkUSCJJEaSLSkENAK0AE",
				popularity = "41.3%",
				dps = "548.6k",
				keystone = "+18"
			},
			["Raiding"] = {
				talentString = "BYGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgCAJJigkQQSikIFolIJSSJRTcgQol0SSERDgCAE",
				popularity = "62.4%",
				dps = "384.0k",
			},
		},
		["feral"] = {
			["MythicPlus"] = {
				talentString = "BcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEJt0kQSSSSJtDgWSkIJAAAAAAaAkkAAkkkESSSJhGOAAAAAAASAAA",
				popularity = "30.0%",
				dps = "414.2k",
				keystone = "+15"
			},
			["Raiding"] = {
				talentString = "BcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAACSLioIJJJl0IaJJxBSCAAAAAgGAJCAQSSSIJUSolkAAAAAAgEAAA",
				popularity = "37.1%",
				dps = "398.4k",
			},
		},
		["guardian"] = {
			["Raiding"] = {
				talentString = "BgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQiIJJlElICiiESShCAJCCSgkkkkkIFoFOAAAAAAQEQQCA",
				popularity = "21.4%",
				dps = "243.6k",
			},
			["MythicPlus"] = {
				talentString = "BgGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQikISJiEBJpIhkUAAJJASISSSikIFhGCAAAAAQEQChA",
				popularity = "31.7%",
				dps = "230.9k",
				keystone = "+15"
			},
		},
		["restoration"] = {
			["MythicPlus"] = {
				talentString = "BkGAAAAAAAAAAAAAAAAAAAAAA0IJRDJJpItkIIFaaRSAAAAAAAAAAAAABhkkggECkESSSBBAAAAAAiAAgkA",
				popularity = "21.8%",
				dps = "142.8k",
				hps = "137.1k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BkGAAAAAAAAAAAAAAAAAAAAAA0ikElWkIhUQiIFhWkEAAAAAAAAAAAAoAIJCCSAkESiUIplIAAAAAgIAAIC",
				popularity = "62.4%",
				dps = "26.8k",
				hps = "420.9k",
			},
		},
	},
	["demon-hunter"] = {
		["havoc"] = {
			["MythicPlus"] = {
				talentString = "BEkAAAAAAAAAAAAAAAAAAAAAAIJJRSCSSiQISCAAAAAAIlIRSIJNJplWEBSIKtIJRA",
				popularity = "27.6%",
				dps = "483.0k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BEkAAAAAAAAAAAAAAAAAAAAAAIJRkkgkkISgkAAAAAAASLEJRSSLJplWEBSIKtIJRA",
				popularity = "56.4%",
				dps = "426.3k",
			},
		},
		["vengeance"] = {
			["MythicPlus"] = {
				talentString = "BUkAAAAAAAAAAAAAAAAAAAAAAAASiQiQSIJhES0SikolEiEERaJJNJRSIBAAAAkkA",
				popularity = "25.8%",
				dps = "282.7k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BUkAAAAAAAAAAAAAAAAAAAAAAAAiIJJikgkERISJJkolIRiESSkEtIhEEAAAAQSSA",
				popularity = "13.1%",
				dps = "262.8k",
			},
		},
	},
	["evoker"] = {
		["devastation"] = {
			["MythicPlus"] = {
				talentString = "BsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAiEIRSkEIpJCJCJh0iSSSSISKJgkk0ikIRgAA",
				popularity = "71.7%",
				dps = "477.2k",
				keystone = "+17"
			},
			["Raiding"] = {
				talentString = "BsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJSCSaSQABikIRSItokkkEikWCIRSLSikEIQA",
				popularity = "30.9%",
				dps = "453.8k",
			},
		},
		["augmentation"] = {
			["MythicPlus"] = {
				talentString = "BEcBAAAAAAAAAAAAAAAAAAAAAQSJpFJJKhkkSCSSSDAAAAAAAAJBimISIkkAAAAAJJtIJikARTA",
				popularity = "37.2%",
				dps = "439.7k",
				keystone = "+20"
			},
			["Raiding"] = {
				talentString = "BEcBAAAAAAAAAAAAAAAAAAAAAQikWkkoESSkESSSDAAAAAEAAkEAISISSCAAAASk0ikkIJQ0SA",
				popularity = "29.0%",
				dps = "391.8k",
			},
		},
		["preservation"] = {
			["MythicPlus"] = {
				talentString = "BwbBAAAAAAAAAAAAAAAAAAAAAAAAAAASSSkSgIJRKSSEAAAkEJJpJCJBRCAAAIJhk0SiIEAA",
				popularity = "26.2%",
				dps = "130.6k",
				hps = "143.4k",
				keystone = "+19"
			},
			["Raiding"] = {
				talentString = "BwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAIJplWOASkEpgkWkQAAQSkIIikASAAAASSCJSiIJBAB",
				popularity = "12.9%",
				dps = "47.3k",
				hps = "382.2k",
			},
		},
	},
}
addonTable.DB = talentData