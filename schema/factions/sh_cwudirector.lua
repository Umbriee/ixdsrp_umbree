FACTION.name = "Civil Worker's Director"
FACTION.description = "Civil Worker's Union Director: The strongest backs carry the workload! A hard-working society is a beneficial society, and you can reap the rewards! Register with your local authorities today!"
FACTION.pay = 15
FACTION.color = Color(255, 228, 140, 255)
FACTION.models = {
	"models/willardnetworks/citizens/female_05.mdl",
	"models/willardnetworks/citizens/female_04.mdl",
	"models/willardnetworks/citizens/female_02.mdl",
	"models/willardnetworks/citizens/female_03.mdl",
	"models/willardnetworks/citizens/female_01.mdl",
	"models/willardnetworks/citizens/female_06.mdl",
	"models/willardnetworks/citizens/male_01.mdl",
	"models/willardnetworks/citizens/male_02.mdl",
	"models/willardnetworks/citizens/male_03.mdl",
	"models/willardnetworks/citizens/male_04.mdl",
	"models/willardnetworks/citizens/male_05.mdl",
	"models/willardnetworks/citizens/male_06.mdl",
	"models/willardnetworks/citizens/male_07.mdl",
	"models/willardnetworks/citizens/male_08.mdl",
	"models/willardnetworks/citizens/male_09.mdl",
	"models/willardnetworks/citizens/male_10.mdl"
}
FACTION.isDefault = false

function FACTION:OnCharacterCreated(client, character)
	local id = Schema:ZeroNumber(math.random(1, 99999), 5)
	local inventory = character:GetInventory()

	character:SetData("cid", id)

	inventory:Add("suitcase", 1)
	inventory:Add("citsuniform_worker1",1)
	inventory:Add("citspants_jumpsuit",1)
	inventory:Add("citsface_gasmask",1)

	inventory:Add("cid", 1, {
		owner_name = character:GetName(),
		cid = id,
		type = 2
	})
	inventory:Add("permit_clothing", 1, {
		owner_name = character:GetName(),
		cid = i
	})
end

FACTION.runSounds		= {[0] = "NPC_Citizen.RunFootstepLeft", [1] = "NPC_Citizen.RunFootstepRight"}
FACTION.runOverride		= true
FACTION.painSND			= "Corrugated.CitPain"
FACTION.dieSND			= "npc_citizen.die"

FACTION_CWUDIRECTOR = FACTION.index
