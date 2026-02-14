-- Smaalll rewrite due to HasItems having a larger getBags function but using a cheaper smaller one.
local META = ix.meta.inventory or ix.middleclass("ix_inventory")

function META:HasItems(targetID, data)
	for k, _ in self:GetBags() do
		if (k.uniqueID == targetID) then
			if (data) then
				local itemData = k.data
				local bFound = true

				for dataKey, dataVal in pairs(data) do
					if (itemData[dataKey] != dataVal) then
						bFound = false
						break
					end
				end

				if (!bFound) then
					continue
				end
			end

			return k
		end
	end

	return false
end