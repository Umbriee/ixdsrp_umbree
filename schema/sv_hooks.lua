function Schema:LoadData()
	self:LoadRationDispensers()
	self:LoadVendingMachines()
	self:LoadCombineLocks()
	self:LoadForceFields()

	Schema.CombineObjectives = ix.data.Get("combineObjectives", {}, false, true)
end

function Schema:SaveData()
	self:SaveRationDispensers()
	self:SaveVendingMachines()
	self:SaveCombineLocks()
	self:SaveForceFields()
end

function Schema:PlayerUse(client, entity)
	if (IsValid(client.ixScanner)) then
		return false
	end

	if (client:IsCombine() and entity:IsDoor() and IsValid(entity.ixLock) and ( client:KeyDown( IN_SPEED ) or client:KeyDown( IN_WALK ) ) ) then
		entity.ixLock:Toggle(client)
		return false
	end

	if (!client:IsRestricted() and entity:IsPlayer() and entity:IsRestricted() and !entity:GetNetVar("untying")) then
		entity:SetAction("@beingUntied", 5)
		entity:SetNetVar("untying", true)

		client:SetAction("@unTying", 5)

		client:DoStaredAction(entity, function()
			entity:SetRestricted(false)
			entity:SetNetVar("untying")
		end, 5, function()
			if (IsValid(entity)) then
				entity:SetNetVar("untying")
				entity:SetAction()
			end

			if (IsValid(client)) then
				client:SetAction()
			end
		end)
	end
end

util.AddNetworkString("ixRequestAllCharacterData")

net.Receive("ixRequestAllCharacterData", function(_, client)
	print("--==[ Sending existing character data to "..client:Nick().." ]==--")

	for _, ply in ipairs(player.GetAll()) do
		local char = ply:GetCharacter()
		if not char then continue end
		if char:GetPlayer() == client then continue end
		print("- Sending: "..char:GetName().." to "..client:Nick())
		if char then
			char:Sync(client)
		end
	end

	client:SyncVars()
end)

-- COMBINE DOOR REGISTERY --
-- COMBINE -- CONSCRIPT --
Schema.Doors = {}
Schema.Doors["rp_localinterval"] = {
	-- Nexus Foyer --
	{Vector( 3063.78, -567.32, 207.71 ),true,true},
	{Vector( 2731.78, -118.32, 343.71 ),true,true},
	-- nexus checkpoint to upper -- 
	{Vector( 3199.78, -1159.32, 243.71 ),true,false},
	{Vector( 3283.78, -1095.32, 243.71 ),true,false},
	-- Nexus Prison --
	{Vector( 2759.78, -1655.32, 24.71 ),true,false},
	{Vector( 2423.78, -197.32, -341.25 ),true,false},
	{Vector( 2220.03, -960, -322.75 ),true,false},
	{Vector( 2987.78, -615.32, -316.25 ),true,false},
	-- Sewer Access -- 
	{Vector( 1627.75, 120.65, -148.25 ),true,true},
	{Vector( 2024, 236.28, -135 ),true,true},
	{Vector( 1832, 403.96, -135 ),true,true},
	-- Random Sewer Door --
	{Vector( 3984, -576.5, -8.79 ),true,false},
	-- Nexus Door 02 -- (Medical, armory, bunks, etc.)
	{Vector( 1979.96, -1096, -553 ),true,false},
	{Vector( 1979.75, -1928, -553 ),true,false},
	{Vector( 1971.78, -2431.32, -620.25 ),true,false},
	{Vector( 2394, -2326, -607 ),true,false},
	{Vector( 2394, -2572, -607 ),true,false},
	{Vector( 2091.93, -1535.94, -553 ),true,false},
	{Vector( 2319.96, -1084, -690.5 ),true,false},
	{Vector( 1907.96, 36, -690.5 ),true,false},
	{Vector( 1255.96, -1352, -553 ),true,false},
	-- Garage --
	{Vector( 1855.78, -7.32, 83.71 ),true,true},
	-- OTA Armory --
	{Vector( 1697.46, -830.5, -540 ),true,false},
	{Vector( 528, -986, -557.29 ),true,false},
	{Vector( 334.59, -792, -591.32 ),true,false},
	{Vector( 544, -604, -544.07 ),true,false},
	-- Nexus Entrance 2 --
	{Vector( 2491.78, -1351.32, 123.71 ),true,true},
	{Vector( 2351.78, -1447.32, 51.71 ),true,true},

	-- Conscript construction yard cycle
	{Vector( 3917, -1503.97, 187.71 ),true,true},
	{Vector( 4301, -1503.32, 187.75 ),true,true},

	{Vector( 840.03, -123.97, 819.71 ),true,false},
	{Vector( 83.78, -407.32, 187.71 ),true,false},
	{Vector( 2557.78, -223.32, 787.71 ),true,false},
	{Vector( 3569.78, -223.32, 787.71 ),true,false},
	{Vector( 2623.78, -831.32, 499.71 ),true,false},
	{Vector( -1606.19, -1601.97, 451.71 ),true,false},
	{Vector( 4283.78, 60.65, 363.71 ),true,false},

	{Vector( 3632.03, 1220.78, 319 ),true,true},
	{Vector( 4232.37, 6415.03, 390.71 ),true,false},

	{Vector( 3243.78, 1094.65, 785.71 ),true,false},
	-- Alley way random ahh door? --
	{Vector( 177, 1125, 143.71 ), true,false},
	-- Wasteland Doors
	{Vector( 3400, 4187.93, 318.93 ),true,true},
	{Vector( 3699.96, 4095.96, 318.96 ),true,true},

	{Vector( 3111.78, -309.32, 1379.71 ),true,false},
	{Vector( 3239.96, 78.96, 1395.93 ),true,false},
	{Vector( 2683.96, -1603.97, 2034.93 ),true,false},
	{"nexus_poddoor071",true,false},
	-- Admin offices for some reason
	{Vector( 3628, 0, 3345.87 ),true,false},
	{Vector( 4151, 135, 3345.87 ),true,false}
}
Schema.CombineDoors = {}
timer.Simple(0,function()
	local success = 0
	local err = 0
	local doors = Schema.Doors[game.GetMap()]
	if doors then
		for _, data in ipairs(doors) do
			local id = data[1]
			local canCombine = data[2]
			local canConscript = data[3]
			if isvector(id) then
				local found = false
				-- Find nearby door entities within about 75 units
				for _, ent in ipairs(ents.FindInSphere(id, 75)) do
					if IsValid(ent) and (ent:GetClass() == "prop_door_rotating" or ent:GetClass() == "func_door" or ent:GetClass() == "func_door_rotating") then
						found = true
						--print("Registering door near Vector(" .. tostring(id) .. ") [" .. ent:GetClass() .. "] Combine? "..tostring(canCombine).. ". Conscript? "..tostring(canConscript)..".")
						Schema.CombineDoors[#Schema.CombineDoors + 1] = {ent, canCombine, canConscript}
						success = success + 1
					end
				end
				if not found then
					err = err + 1
					print("No door found near " .. tostring(id))
				end

			elseif isstring(id) then
				-- Handle named doors
				local ent = ents.FindByName(id)[1]
				if IsValid(ent) then
					--print("Registering named door: " .. tostring(ent) .. " Combine: "..tostring(canCombine).. ". Conscript: "..tostring(canConscript)..".")
					Schema.CombineDoors[#Schema.CombineDoors + 1] = {ent, canCombine, canConscript}
					success = success + 1
				else
					err = err + 1
					print("Named door not found: " .. id)
				end
			end
		end
	else
		ErrorNoHalt("[HELIX Doors] - No door data found on this map! '"..game.GetMap().."'")
	end
	if err > 0 then
		ErrorNoHalt("[HELIX] Registered "..success.." doors & failed "..err.." times!")
	end
end)

function Schema:PlayerUseDoor(client, door)
	local doorData
	local dataIndex
	for i, data in ipairs(self.CombineDoors) do
		if data[1] == door or data[1] == door:GetName() then
			doorData = data
			dataIndex = i
			break
		end
	end
	if not doorData then
		-- ErrorNoHalt("No door data found\n")
		return
	end
	local doorEnt = IsValid(doorData[1]) and isentity(doorData[1]) and doorData[1] or door
	if not IsValid(doorEnt) then
		ErrorNoHalt("No valid door ent found @ " .. tostring(dataIndex) .. "\n")
		return
	end
	local doorName = doorEnt:EntIndex()
	if door._combineBusy then return end
	if door:HasSpawnFlags(256) or door:HasSpawnFlags(1024) then return end
	local function delayedOpen(delay, success)
		door._combineBusy = true
		if success then
			door:EmitSound("buttons/combine_button3.wav")
			client:AddCombineDisplayMessage(
				"LOCAL :: Verifying Code: D-i" .. doorName .. " [Checking]",
				Color(255,229,158,255)
			)
			timer.Simple(delay, function()
				if not IsValid(door) then return end
				door:Fire("open")
				client:AddCombineDisplayMessage(
					"LOCAL :: Code Accepted: D-i" .. doorName .. " [Opened]",
					Color(159,229,158,255)
				)
				door._combineBusy = nil
			end)
		else
			door:EmitSound("buttons/combine_button_locked.wav")
			client:AddCombineDisplayMessage(
				"LOCAL :: Code Rejected: D-i" .. doorName .. " [Failed]",
				Color(255,229,158,255)
			)
			timer.Simple(0.6, function()
				if IsValid(door) then
					door._combineBusy = nil
				end
			end)
		end
	end
	if client:IsCombine() then
		if doorData[2] then
			delayedOpen(1.2, true)
		elseif doorData[3] then
			delayedOpen(0, false)
		end
		return
	end
	if client:IsConscript() then
		if doorData[3] then
			door:EmitSound("buttons/combine_button3.wav")
			door:Fire("open")
		elseif doorData[2] then
			door:EmitSound("buttons/combine_button_locked.wav")
		end
	end
end

function Schema:PlayerLoadout(client)
	client:SetNetVar("restricted")
end

function Schema:PostPlayerLoadout(client)
	if (client:IsCombine()) then
		if (client:Team() == FACTION_OTA) then
			client:SetMaxHealth(150)
			client:SetHealth(150)
			client:SetArmor(150)
		elseif (client:IsScanner()) then
			if (client.ixScanner:GetClass() == "npc_clawscanner") then
				client:SetHealth(200)
				client:SetMaxHealth(200)
			end

			client.ixScanner:SetHealth(client:Health())
			client.ixScanner:SetMaxHealth(client:GetMaxHealth())
			client:StripWeapons()
		else
			client:SetArmor(self:IsCombineRank(client:Name(), "RCT") and 50 or 100)
		end

		if (client:GetCharacter():GetClass() == "4") then
			client:SetMaxHealth(200)
			client:SetHealth(200)
			client:SetArmor(200)
		end

		local factionTable = ix.faction.Get(client:Team())

		if (factionTable.OnNameChanged) then
			factionTable:OnNameChanged(client, "", client:GetCharacter():GetName())
		end
	end
	local weapon = client:GetWeapon("ix_hands")
	local a = "ix_hands"
	if (IsValid(weapon)) then
		client:StripWeapon("ix_hands")
	end

	local vortHands = client:GetWeapon("ix_vorthands")
	if (IsValid(vortHands)) then
		client:StripWeapon("ix_vorthands")
	end
	if FACTION_VORT then
		if (client:Team() == FACTION_VORT) then
			client:Give("ix_vorthands")
			client:Give("ix_vortessence")
			a = "ix_vorthands"
		else
			client:Give("ix_hands")
		end
	else
		client:Give("ix_hands")
	end
	client:SelectWeapon(a)
end

function Schema:PrePlayerLoadedCharacter(client, character, oldCharacter)
	if (IsValid(client.ixScanner)) then
		client.ixScanner:Remove()
	end
end

function Schema:PlayerLoadedCharacter(client, character, oldCharacter)
	local faction = character:GetFaction()

	if (faction == FACTION_CITIZEN or faction == FACTION_CIC or faction == FACTION_CMU or faction == FACTION_CMUDIRECTOR or faction == FACTION_CWU or faction == FACTION_CWUDIRECTOR or faction == FACTION_ULM) then
		self:AddCombineDisplayMessage("Overwatch :: Downloading and patching updated citizen manifest to unit HUD", Color(255, 100, 255, 255))
	elseif (client:IsCombine()) then
		client:AddCombineDisplayMessage("LOCAL :: Downloading and pushing blufor signal to HUD")
	end
end

function Schema:CharacterVarChanged(character, key, oldValue, value)
	local client = character:GetPlayer()
	if (key == "name") then
		local factionTable = ix.faction.Get(client:Team())

		if (factionTable.OnNameChanged) then
			factionTable:OnNameChanged(client, oldValue, value)
		end
	end
end

function Schema:PlayerFootstep(client, position, foot, soundName, volume)
	local runSounds = client:GetRoleData("runSounds", nil)
	local runSoundsOver = client:GetRoleData("runOverride",false)
	local walkSounds = client:GetRoleData("walkSounds", nil)
	local walkSoundsOver = client:GetRoleData("walkOverride",false)
	if ((runSounds ~= "NIL") and client:IsRunning()) then
		client:EmitSound(runSounds[foot])
		--print("runSoundsOver = "..tostring(runSoundsOver).." runSounds[foot] = "..runSounds[foot])
		return runSoundsOver
	end
	if ((walkSounds ~= "NIL") and not client:IsRunning()) then
		client:EmitSound(walkSounds[foot])
		--print("walkSoundsOver = "..tostring(walkSoundsOver).." walkSounds[foot] = "..walkSounds[foot])
		return walkSoundsOver
	end
	client:EmitSound(soundName)
	return true
end

function Schema:PlayerSpawn(client)
	client:SetCanZoom(client:IsCombine())
end

function Schema:PlayerDeath(client, inflicter, attacker)
	if client:GetCharacter() then else return end
	if (client:IsCombine()) then
		local location = client:GetArea() or "unknown location"

		self:AddCombineDisplayMessage("@cLostBiosignal")
		self:AddCombineDisplayMessage("@cLostBiosignalLocation", Color(255, 0, 0, 255), location)

		if (IsValid(client.ixScanner) and client.ixScanner:Health() > 0) then
			client.ixScanner:TakeDamage(999)
		end

		local sounds = {
			"npc/overwatch/radiovoice/on1.wav",
			"npc/overwatch/radiovoice/lostbiosignalforunit.wav"
		}

		local digitVoices = {
			["0"] = "zero.wav",
			["1"] = "one.wav",
			["2"] = "two.wav",
			["3"] = "three.wav",
			["4"] = "four.wav",
			["5"] = "five.wav",
			["6"] = "six.wav",
			["7"] = "seven.wav",
			["8"] = "eight.wav",
			["9"] = "nine.wav"
		}

		local validDesignations = {
			["union"] = true,
			["jury"] = true,
			["pressure"] = true
		}

		local char = client:GetCharacter()
		if char then
			local name = char:GetName()

			-- Extract designation between second and third dots
			local designation = string.match(name, "^[^%.]+%.[^%.]+%.([^%.]+)")
			designation = designation and designation:lower() or nil

			if not validDesignations[designation] then
				designation = "defender"
			end

			sounds[#sounds + 1] = "npc/overwatch/radiovoice/" .. designation .. ".wav"

			-- Get last 5 digits from name
			local digits = string.match(name, "(%d%d%d%d%d)$")
			if digits then
				for i = 1, #digits do
					local digit = digits:sub(i, i)
					local voice = digitVoices[digit]
					if voice then
						sounds[#sounds + 1] = "npc/overwatch/radiovoice/" .. voice
					end
				end
			end
		end

		local chance = math.random(1, 7)
		if (chance == 2) then
			sounds[#sounds + 1] = "npc/overwatch/radiovoice/remainingunitscontain.wav"
		elseif (chance == 3) then
			sounds[#sounds + 1] = "npc/overwatch/radiovoice/reinforcementteamscode3.wav"
		end

		sounds[#sounds + 1] = "npc/overwatch/radiovoice/off4.wav"

		print("--Start--")
		PrintTable(sounds)
		for _, v in ipairs(player.GetAll()) do
			if (v:IsCombine()) then
				ix.util.EmitQueuedSounds(v, sounds, 2, 0.8, v == client and 100 or 80)
			end
		end
	end
end

function Schema:PlayerNoClip(client)
	if (IsValid(client.ixScanner)) then
		return false
	end
end

function Schema:EntityTakeDamage(entity, dmgInfo)
	if (IsValid(entity.ixPlayer) and entity.ixPlayer:IsScanner()) then
		entity.ixPlayer:SetHealth( math.max(entity:Health(), 0) )

		hook.Run("PlayerHurt", entity.ixPlayer, dmgInfo:GetAttacker(), entity.ixPlayer:Health(), dmgInfo:GetDamage())
	end
end

function Schema:PlayerHurt(client, attacker, health, damage)
	if (health <= 0) then
		return
	end

	if (client:IsCombine() and (client.ixTraumaCooldown or 0) < CurTime()) then
		local text = "External"

		if (damage > 50) then
			text = "Severe"
		end

		client:AddCombineDisplayMessage("LOCAL :: Warning damage detected", Color(255, 0, 0, 255), text)

		if (health < 25) then
			client:AddCombineDisplayMessage("LOCAL :: Caution extreme damage detected", Color(255, 0, 0, 255))
		end

		client.ixTraumaCooldown = CurTime() + 15
	end
end

function Schema:PlayerStaminaLost(client)
	client:AddCombineDisplayMessage("LOCAL :: Excessive user exertion injecting stimulant", Color(255, 255, 0, 255))
end

function Schema:PlayerStaminaGained(client)
	client:AddCombineDisplayMessage("LOCAL :: Stimulant implanted", Color(0, 255, 0, 255))
end

function Schema:GetPlayerPainSound(client)
	local sound = client:GetRoleData( "painSND","NPC_MetroPolice.Pain")
	if (client:IsCombine()) then
		if (Schema:IsCombineRank(client:Name(), "SCN")) then
			sound = "NPC_CScanner.Pain"
		elseif (Schema:IsCombineRank(client:Name(), "SHIELD")) then
			sound = "NPC_SScanner.Pain"
		end
	end
	if client:IsCombine() then
		return sound
	end
end

function Schema:GetPlayerDeathSound(client)
	local sound = client:GetRoleData( "dieSND", "NPC_MetroPolice.Die")
	if (client:IsCombine()) then
		if (Schema:IsCombineRank(client:Name(), "SCN")) then
			sound = "NPC_CScanner.Die"
		elseif (Schema:IsCombineRank(client:Name(), "SHIELD")) then
			sound = "NPC_SScanner.Die"
		end
	end
	if (client:IsCombine()) then
		for k, v in ipairs(player.GetAll()) do
			if (v:IsCombine()) then
				v:EmitSound(sound)
			end
		end
		return sound
	end
end

function Schema:OnNPCKilled(npc, attacker, inflictor)
	if (IsValid(npc.ixPlayer)) then
		hook.Run("PlayerDeath", npc.ixPlayer, inflictor, attacker)
	end
end

function Schema:PlayerMessageSend(speaker, chatType, text, anonymous, receivers, rawText)
	local snd = speaker:GetRoleData("radioOff", "NPC_MetroPolice.Radio.Off")
	if (chatType == "ic" or chatType == "w" or chatType == "y" or chatType == "dispatch") then
		local class = self.voices.GetClass(speaker)

		for k, v in ipairs(class) do
			local info = self.voices.Get(v, rawText)

			if (info) then
				local volume = 80

				if (chatType == "w") then
					volume = 60
				elseif (chatType == "y") then
					volume = 150
				end

				if (info.sound) then
					if (info.global) then
						netstream.Start(nil, "PlaySound", info.sound)
					else
						local sounds = {info.sound}

						if (speaker:IsCombine()) then
							speaker.bTypingBeep = nil
							sounds[#sounds + 1] = snd
						end

						ix.util.EmitQueuedSounds(speaker, sounds, nil, nil, volume)
					end
				end

				if (speaker:IsCombine()) then
					return string.format("<:: %s ::>", info.text)
				else
					return info.text
				end
			end
		end

		if (speaker:IsCombine()) then
			return string.format("<:: %s ::>", text)
		end
	end
end

function Schema:CanPlayerJoinClass(client, class, info)
	if (client:IsRestricted()) then
		client:Notify("You cannot change classes when you are restrained!")

		return false
	end
end

local SCANNER_SOUNDS = {
	"npc/scanner/scanner_blip1.wav",
	"npc/scanner/scanner_scan1.wav",
	"npc/scanner/scanner_scan2.wav",
	"npc/scanner/scanner_scan4.wav",
	"npc/scanner/scanner_scan5.wav",
	"npc/scanner/combat_scan1.wav",
	"npc/scanner/combat_scan2.wav",
	"npc/scanner/combat_scan3.wav",
	"npc/scanner/combat_scan4.wav",
	"npc/scanner/combat_scan5.wav",
	"npc/scanner/cbot_servoscared.wav",
	"npc/scanner/cbot_servochatter.wav"
}

function Schema:KeyPress(client, key)
	if (IsValid(client.ixScanner) and (client.ixScannerDelay or 0) < CurTime()) then
		local source

		if (key == IN_USE) then
			source = SCANNER_SOUNDS[math.random(1, #SCANNER_SOUNDS)]
			client.ixScannerDelay = CurTime() + 1.75
		elseif (key == IN_RELOAD) then
			source = "npc/scanner/scanner_talk"..math.random(1, 2)..".wav"
			client.ixScannerDelay = CurTime() + 10
		elseif (key == IN_WALK) then
			if (client:GetViewEntity() == client.ixScanner) then
				client:SetViewEntity(NULL)
			else
				client:SetViewEntity(client.ixScanner)
			end
		end

		if (source) then
			client.ixScanner:EmitSound(source)
		end
	end
end

function Schema:PlayerSpawnObject(client)
	if (client:IsRestricted() or IsValid(client.ixScanner)) then
		return false
	end
end

function Schema:PlayerSpray(client)
	return true
end

netstream.Hook("PlayerChatTextChanged", function(client, key)
	local snd = client:GetRoleData("radioOn", "NPC_MetroPolice.Radio.On")
	--print("snd "..snd)
	if (client:IsCombine() and !client.bTypingBeep
	and (key == "y" or key == "w" or key == "r" or key == "t")) then
		client:EmitSound(snd) -- Schema here isn't used and is overwritten.
		client.bTypingBeep = true
	end
end)

netstream.Hook("PlayerFinishChat", function(client)
	local snd = client:GetRoleData("radioOff", "NPC_MetroPolice.Radio.Off")
	--print("snd "..snd)
	if (client:IsCombine() and client.bTypingBeep) then
		client:EmitSound(snd)
		client.bTypingBeep = nil
	end
end)

netstream.Hook("ViewDataUpdate", function(client, target, text)
	if (IsValid(target) and hook.Run("CanPlayerEditData", client, target) and client:GetCharacter() and target:GetCharacter()) then
		local data = {
			text = string.Trim(text:sub(1, 1000)),
			editor = client:GetCharacter():GetName()
		}

		target:GetCharacter():SetData("combineData", data)
		Schema:AddCombineDisplayMessage("@cViewDataFiller", nil, client)
	end
end)

netstream.Hook("ViewObjectivesUpdate", function(client, text)
	if (client:GetCharacter() and hook.Run("CanPlayerEditObjectives", client)) then
		local date = ix.date.Get()
		local data = {
			text = text:sub(1, 1000),
			lastEditPlayer = client:GetCharacter():GetName(),
			lastEditDate = ix.date.GetSerialized(date)
		}

		ix.data.Set("combineObjectives", data, false, true)
		Schema.CombineObjectives = data
		Schema:AddCombineDisplayMessage("@cViewObjectivesFiller", nil, client, date:spanseconds())
	end
end)