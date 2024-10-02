function GetCellSettings()
	return '!CELL:229:ALL!T33d8nX1DEYGSahrtW8htMKqIhmqiOGbJn2akPjrYsGTX2YvwM0aK1ZiPXEuqsZWmJGyssBWqPSD3UPXnh3(N7UL62TTPPTBQkLTB3KUn(YMDBt7MFXHWoxUU324stB22MELlBZTTP7D)...' -- replace '...' with the rest of your import string
end

function ApplyCellSettings(settings)
	if not (Cell and LibStub) then
		print("Required Cell functions or libraries are not available.")
		return
	end

	local Serializer = LibStub:GetLibrary("LibSerialize")
	local LibDeflate = LibStub:GetLibrary("LibDeflate")

	if not (Serializer and LibDeflate) then
		print("Required Cell libraries are not available.")
		return
	end

	-- Parse the import string
	local version, data = string.match(settings, "^!CELL:(%d+):ALL!(.+)$")
	version = tonumber(version)

	if not (version and data) then
		print("Invalid Cell import string.")
		return
	end

	if version < (Cell.MIN_VERSION_IMPORT or 1) then
		-- Use default minimum version if not defined
		print("Incompatible Cell version.")
		return
	end

	-- Decode and decompress the data
	data = LibDeflate:DecodeForPrint(data)
	if not data then
		print("Failed to decode Cell data.")
		return
	end

	local success
	success, data = pcall(LibDeflate.DecompressDeflate, LibDeflate, data)
	if not success then
		print("Failed to decompress Cell data.")
		return
	end

	-- Deserialize the data
	success, data = Serializer:Deserialize(data)
	if not (success and data) then
		print("Failed to deserialize Cell data.")
		return
	end

	-- Merge the imported data into the existing CellDB
	for k, v in pairs(data) do
		CellDB[k] = v
	end

	-- Handle click-castings and layout auto switch for different game versions
	if Cell.isRetail then
		CellDB["clickCastings"] = data["clickCastings"]
		CellDB["layoutAutoSwitch"] = data["layoutAutoSwitch"]
	else
		CellCharacterDB["clickCastings"] = data["clickCastings"]
		CellCharacterDB["layoutAutoSwitch"] = data["layoutAutoSwitch"]
		CellCharacterDB["revise"] = data["revise"]
	end

	-- Notify the user that the profile was applied
	print("Cell profile applied successfully!")

	-- Reload Cell to apply the changes
	if Cell:Fire("UpdateAppearance") then
		Cell:Fire("UpdateAppearance")
	end
end

-- Call ApplyCellSettings with the settings from GetCellSettings
ApplyCellSettings(GetCellSettings())
