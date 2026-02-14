function Schema:AddCombineDisplayMessage(text, color, ...)
	if ((LocalPlayer():IsCombine() and (not LocalPlayer():GetNetVar("IsBiosignalGone", false))) and IsValid(ix.gui.combine)) then
		ix.gui.combine:AddLine(text, color, nil, ...)
	end
end
if CLIENT then
	--lua_run_cl local Schema = Schema print("Color = "..tostring(Schema:GetProxyColor(LocalPlayer(),"TorsoColor")))
	
	-- Store colors here per-entity
	Schema.proxyColors = Schema.proxyColors or {}
	Schema.matproxynames = Schema.matproxynames or { -- COPY THIS TO sh_schema.lua
		PantsColor = true,
		TorsoColor = true,
		HairColor = true,
		HeadGearColor = true,
		ShoesColor = true
	}
	function Schema:SetProxyColor(ent, proxyName, vec)
		local id = ent:EntIndex()
		self.proxyColors[id] = self.proxyColors[id] or {}
		self.proxyColors[id][proxyName] = vec
	end
		
	function Schema:GetProxyColor(ent, proxyName)
		if not IsValid(ent) then
			-- print("[MatProxy] GetProxyColor called with invalid ent")
			return Vector(1,1,1)
		end		
		local id = ent:EntIndex()
		local t = self.proxyColors[id]
		-- print("[HelixMatProxying] - GetProxyColor From "..tostring(ent).."("..id..") for "..proxyName)
		if t and t[proxyName] then
			-- print("[HelixMatProxying] - t = "..tostring((t[proxyName] or Vector(-1,-1,-1))))
			return t[proxyName]
		end
		return Vector(1,1,1)
	end
	for proxyName in pairs(Schema.matproxynames) do
		if not matproxy.ProxyList[proxyName] then
			matproxy.Add({
				name = proxyName,
				init = function(self, mat, values)
					self.ResultTo = values.resultvar
				end,
				bind = function(self, mat, ent)
					if IsValid(ent) then
						local col = Schema:GetProxyColor(ent, proxyName)
						mat:SetVector(self.ResultTo, col)
					else
						mat:SetVector(self.ResultTo, Vector(1,1,1))
					end
				end
			})
			print("[HelixMatProxying] - matproxy '" .. proxyName .. "' applied!")
		else
			print("[HelixMatProxying] - matproxy '" .. proxyName .. "' already exists, skipping.")
		end
	end
	net.Receive("HelixMat_SetProxyColor", function()
		local ent = net.ReadEntity()
		local proxyName = net.ReadString()
		local vec = net.ReadVector()

		if not IsValid(ent) then
			-- print("[HelixMatProxying] - received proxy color for invalid ent")
			return
		end
		-- print("[HelixMatProxying] - Received proxy color data for ent "..tostring(ent).." field "..proxyName.." vec "..tostring(vec))
		Schema:SetProxyColor(ent, proxyName, vec)
		ent:InvalidateBoneCache()
		ent:SetupBones()
	end)
	hook.Add("EntityRemoved", "MatP_ClearProxyColors", function(ent)
		Schema.proxyColors[ent:EntIndex()] = nil
	end)
end