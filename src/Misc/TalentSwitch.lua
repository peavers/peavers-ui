local addonName, addonTable = ...

addonTable.Talents = addonTable.Talents or {}
local Talents = addonTable.Talents

local version = C_Traits.GetLoadoutSerializationVersion and C_Traits.GetLoadoutSerializationVersion() or 1

-- Cache for node lists and node orders
local nodesList = {}
local nodeOrderList = {}

function Talents:GetNodes(specID, configID, treeID)
	if nodesList[specID] then
		return nodesList[specID]
	end
	local nodeOrder = {}
	for _, nodeID in pairs(C_Traits.GetTreeNodes(treeID)) do
		local nodeInfo = C_Traits.GetNodeInfo(configID, nodeID)
		if nodeInfo.isVisible then
			table.insert(nodeOrder, { nodeInfo.posY, nodeInfo.posX, nodeID })
		end
	end
	table.sort(nodeOrder, function(a, b)
		if a[1] ~= b[1] then
			return a[1] < b[1]
		else
			return a[2] < b[2]
		end
	end)
	local nodeIDs = {}
	for _, node in ipairs(nodeOrder) do
		table.insert(nodeIDs, node[3])
	end
	nodesList[specID] = nodeIDs
	return nodeIDs
end

function Talents:GetNodeOrder(specID, configID, treeID)
	if nodeOrderList[specID] then
		return nodeOrderList[specID]
	end
	local order = {}
	for index, nodeID in ipairs(Talents:GetNodes(specID, configID, treeID)) do
		order[nodeID] = index
	end
	nodeOrderList[specID] = order
	return order
end

function Talents:GetValidationError(treeID, importStream)
	local talentsFrame = ClassTalentFrame.TalentsTab or PlayerSpellsFrame.TalentsFrame
	local headerValid, serializationVersion, specID, treeHash = talentsFrame:ReadLoadoutHeader(importStream)

	if not headerValid then
		return LOADOUT_ERROR_BAD_STRING
	elseif serializationVersion ~= version then
		return LOADOUT_ERROR_SERIALIZATION_VERSION_MISMATCH
	elseif specID ~= PlayerUtil.GetCurrentSpecID() then
		return LOADOUT_ERROR_WRONG_SPEC
	elseif not talentsFrame:IsHashEmpty(treeHash) then
		if not talentsFrame:HashEquals(treeHash, C_Traits.GetTreeHash(treeID)) then
			return LOADOUT_ERROR_TREE_CHANGED
		end
	end
	return nil
end

function Talents:OpenTalentFrame()
	if not ClassTalentFrame or not ClassTalentFrame:IsShown() then
		ToggleTalentFrame()
	end
end

function Talents:IsTalentFrameReady()
	return ClassTalentFrame and ClassTalentFrame:IsShown() and ClassTalentFrame.TalentsTab:IsShown()
end

function Talents:ImportAndApplyTalents(importString)
	Talents:OpenTalentFrame()

	C_Timer.After(0.75, function()
		local talentsFrame = ClassTalentFrame.TalentsTab or PlayerSpellsFrame.TalentsFrame
		if not talentsFrame then
			print("Error: Talents frame not found.")
			return
		end

		local configID = C_ClassTalents.GetActiveConfigID()
		if not configID then
			print("Error: No active talent configuration.")
			return
		end

		local treeInfo = talentsFrame:GetTreeInfo()
		local treeID = treeInfo and treeInfo.ID

		local importStream = ExportUtil.MakeImportDataStream(importString)

		local error = Talents:GetValidationError(treeID, importStream)
		if error then
			print("Import error: " .. error)
			return
		end

		-- Reset the current talents
		C_Traits.ResetTree(configID, treeID)

		local loadoutContent = talentsFrame:ReadLoadoutContent(importStream, treeID)
		local specID = PlayerUtil.GetCurrentSpecID()
		local loadoutEntryInfo = talentsFrame:ConvertToImportLoadoutEntryInfo(configID, treeID, loadoutContent)

		local nodeOrder = Talents:GetNodeOrder(specID, configID, treeID)
		table.sort(loadoutEntryInfo, function(a, b)
			return nodeOrder[a.nodeID] < nodeOrder[b.nodeID]
		end)

		for _, entry in ipairs(loadoutEntryInfo) do
			local nodeInfo = C_Traits.GetNodeInfo(configID, entry.nodeID)
			if nodeInfo.type == Enum.TraitNodeType.Single or nodeInfo.type == Enum.TraitNodeType.Tiered then
				for rank = 1, entry.ranksPurchased do
					local result = C_Traits.PurchaseRank(configID, entry.nodeID)
					if not result then
						print(string.format("Failed to purchase rank %d for node %d", rank, entry.nodeID))
						break
					end
				end
			else
				local result = C_Traits.SetSelection(configID, entry.nodeID, entry.selectionEntryID)
				if not result then
					print(string.format("Failed to set selection for node %d", entry.nodeID))
				end
			end
		end

		-- Commit the changes
		talentsFrame:CommitConfig()
	end)
end
