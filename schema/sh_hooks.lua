function Schema:CanPlayerUseBusiness(client, uniqueID)
	local itemTable = ix.item.list[uniqueID]
	if not itemTable then return false end
	local cmbRanks = {
		[FACTION_MPF] = {CLASS_OFCMPF, CLASS_EPUMPF, CLASS_DMP, CLASS_CMP, CLASS_SECMP},
		[FACTION_OTA] = {CLASS_OO, CLASS_OwD, CLASS_EOW}
	}
	local combineUnpermitted = {"rebel"}
	local character = client:GetCharacter()
	if not character then return false end
	local inventory = character:GetInventory()
	if not inventory then return false end

	if character:GetFaction() == FACTION_STAFF then
		return true
	end
	if itemTable then
		if itemTable.permit then
			if client:IsCombine() then
				local success = false
				for _,name in pairs(combineUnpermitted) do if itemTable.permit == name then success = true end end
				if success then return false end
				local faction = character:GetFaction()
				local class = character:GetClass()
				if cmbRanks[faction] then
					for _, allowedClass in ipairs(cmbRanks[faction]) do
						if class == allowedClass then
							return true
						end
					end
				end
				return false
			else
				if not inventory:HasItem("permit_"..itemTable.permit) then
					return false
				end
			end
		elseif itemTable.base ~= "base_permit" then
			return false
		end
	end
	return true
end

-- called when the client wants to view the combine data for the given target
function Schema:CanPlayerViewData(client, target)
	return client:IsCombine() and (!target:IsCombine() and target:Team() != FACTION_ADMIN)
end

-- called when the client wants to edit the combine data for the given target
function Schema:CanPlayerEditData(client, target)
	return client:IsCombine() and (!target:IsCombine() and target:Team() != FACTION_ADMIN)
end

function Schema:CanPlayerViewObjectives(client)
	return client:IsCombine()
end

function Schema:CanPlayerEditObjectives(client)
	if (!client:IsCombine() or !client:GetCharacter()) then
		return false
	end

	local bCanEdit = false
	local name = client:GetCharacter():GetName()

	for k, v in ipairs({"OfC", "EpU", "DvL", "SeC"}) do
		if (self:IsCombineRank(name, v)) then
			bCanEdit = true
			break
		end
	end

	return bCanEdit
end

function Schema:CanDrive()
	return false
end