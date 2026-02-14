local playerMeta = FindMetaTable("Player")

function playerMeta:IsCombine()
	local faction = self:Team()
	if not faction then return false end

	local combineFactions = {
		[FACTION_MPF] = true,
		[FACTION_OTA] = true,
		[FACTION_SYNTH] = true
	}

	return combineFactions[faction] or false
end

function playerMeta:IsCombineSpecial()
	if self:GetCharacter() then else return false end
	local clientChar = self:GetCharacter()
	if not clientChar then return false end
	local clientClass = clientChar:GetClass()
	local combineSpecialClasses = {
		[CLASS_WH] = true,
		[CLASS_OO] = true,
		[CLASS_APF] = true
	}
	return combineSpecialClasses[clientClass] or false
end

function playerMeta:IsConscript()
	local faction = self:Team()
	return faction == FACTION_CONSCRIPT
end

function playerMeta:IsLoyalist()
	local faction = self:Team()
	local loyalistFactions = {
		[FACTION_UU] = true,
		[FACTION_ULM] = true
	}
	return loyalistFactions[faction] or false
end
function playerMeta:IsCIC()
	local faction = self:Team()
	return faction == FACTION_CIC
end
function playerMeta:IsWorker()
	local faction = self:Team()
	local workerFactions = {
		[FACTION_CWU] = true,
		[FACTION_CWUDIRECTOR] = true,
		[FACTION_CMU] = true,
		[FACTION_CWUDIRECTOR] = true,
		[FACTION_CIC] = true,
		[FACTION_ULM] = true
	}
	return workerFactions[faction] or false
end
function playerMeta:IsCitizen()
	local faction = self:Team()
	local citizenFactions = {
		[FACTION_CITIZEN] = true,

		[FACTION_CIC] = true,

		[FACTION_CONSCRIPT] = true,
		[FACTION_ULM] = true,

		[FACTION_CWU] = true,
		[FACTION_CWUDIRECTOR] = true,
		[FACTION_CMU] = true,
		[FACTION_CWUDIRECTOR] = true,
		[FACTION_UU] = true
	}
	return citizenFactions[faction] or false
end

function playerMeta:GetRoleData(key, fallback)
	if not self:GetCharacter() then return fallback or "NIL" end

	local factionTable = ix.faction.Get(self:Team())
	local classTable = ix.class.Get(self:GetCharacter():GetClass())

	local value = (classTable and classTable[key]) or (factionTable and factionTable[key]) or fallback or "NIL"
	return value
end

-- Maybe add a json file serverside sometime for people to be added. Dunno. Can set that up if you'd like.
function playerMeta:IsDonator()
	return false
end

function playerMeta:IsFemaleDesc()
	if self:GetCharacter() then else return false end
	local clientChar = self:GetCharacter()
	local clientDesc = clientChar:GetDescription()
	local strStart,_ = string.find( clientDesc:lower(), "female" )
	local bStatus = false
	if strStart then
		bStatus = true
	else
		if self:IsFemale() then
			bStatus = true
		else
			bStatus = false
		end
	end
	if bStatus then
		return bStatus
	end
	return false
end

function playerMeta:IsDispatch()
	if not self:GetCharacter() then return false end
	local char = self:GetCharacter()
	local fact = self:Team()
	local clas = char:GetClass()

	local bStatus = false
	if fact == FACTION_OTA then
		if clas == CLASS_OwD then
			bStatus = true
		end
	elseif fact == FACTION_MPF then
		if clas == CLASS_SECMP then
			bStatus = true
		end
	end
	return bStatus
end