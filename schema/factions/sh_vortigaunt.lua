FACTION.name = "Vortigaunt"
FACTION.description = "Eyes like old stars. Words that don’t always make sense until a week later. Some walk alone. Others linger near rebel fires, trading power for trust. They don’t take orders. They offer wisdom--when they feel like it. Vortigaunts remember Xen, remember the chains, and remember freedom. And they won’t forget again."
FACTION.color = Color(0, 255, 0, 255);
FACTION.runSounds = {[0] = "NPC_Vortigaunt.FootstepLeft", [1] = "NPC_Vortigaunt.FootstepRight"}
FACTION.walkSounds = FACTION.runSounds

--FACTION.weapons = {"ix_vorthands", "ix_vortessence"}
FACTION.isDefault = false
FACTION.models = {
	"models/willardnetworks/vortigaunt.mdl"
}
 
FACTION.npcRelations = {
    ["npc_citizen"] = D_LI,
    ["npc_vortigaunt"] = D_LI,
    ["npc_metropolice"] = D_HT,
    ["npc_combinedropship"] = D_HT,
    ["npc_combinegunship"] = D_HT,
    ["npc_combine_s"] = D_HT,
    ["npc_strider"] = D_HT,
    ["npc_combine_camera"] = D_HT,
    ["npc_turret_ceiling"] = D_HT,
    ["npc_turret_floor"] = D_HT,
    ["npc_turret_ground"] = D_HT,
    ["npc_cscanner"] = D_HT,
    ["CombineElite"] = D_HT,
    ["npc_rollermine"] = D_HT,
    ["npc_manhack"] = D_HT,
    ["npc_sniper"] = D_HT,
    ["npc_helicopter"] = D_HT,
    ["npc_turret_floor_rebel"] = D_HT,
    ["Rebel"] = D_LI,
    ["combine_mine"] = D_HT
}

local VortRunBoost = 41

FACTION.WalkSpeed = {
	forward = 44,
	forwardLeft = 44,
	forwardRight = 42,
	left = 36,
	right = 37,
	back = 38,
	backLeft = 33,
	backRight = 33,
	WeaponRaisedPenalty = 0,
}
FACTION.RunSpeed = {
	forward = 140 + VortRunBoost,
	forwardLeft = 125 + VortRunBoost,
	forwardRight = 131 + VortRunBoost,
	left = 106 + VortRunBoost,
	right = 110 + VortRunBoost,
	back = 121 + VortRunBoost,
	backLeft = 113 + VortRunBoost,
	backRight = 110 + VortRunBoost,
	WeaponRaisedPenalty = 0,
}
FACTION.CrouchSpeed = {
	forward = 44,
	forwardLeft = 44,
	forwardRight = 42,
	left = 36,
	right = 37,
	back = 38,
	backLeft = 33,
	backRight = 33,
	WeaponRaisedPenalty = 0,
	forwardRun = 140 + VortRunBoost,
	forwardLeftRun = 125 + VortRunBoost,
	forwardRightRun = 131 + VortRunBoost,
	leftRun = 106 + VortRunBoost,
	rightRun = 110 + VortRunBoost,
	backRun = 121 + VortRunBoost,
	backLeftRun = 113 + VortRunBoost,
	backRightRun = 110 + VortRunBoost,
	WeaponRaisedPenalty = 0,
}

function FACTION:OnSpawn(client)
    client:SetMaxHealth(400)
    client:SetHealth(400)
    --client:RemoveFlags(2)
end

function FACTION:OnTransferred(client)
	if client:GetCharacter() then
		local character = client:GetCharacter()
		character:SetModel(self.models[1])
	end
end

function FACTION:OnCharacterCreated(client, character)
	local id = Schema:ZeroNumber(math.random(1, 99999), 5)
	local inventory = character:GetInventory()

	character:SetData("cid", id)

	inventory:Add("cid", 1, {
		owner_name = character:GetName(),
		cid = id,
		type = 5
	})
end

FACTION_VORT = FACTION.index
