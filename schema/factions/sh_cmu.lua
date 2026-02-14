FACTION.name = "Civil Medical Union"
FACTION.description = "They wear a lab coat, but don’t mistake it for a degree. Medics, corpsmen, field surgeons--whatever the Union needs. Supplies are short, tools are dull, and patients don’t stop coming. Sometimes they save lives. Sometimes they just make the dying quieter. It’s not science. It’s survival."
FACTION.pay = 10
FACTION.color = Color(204, 65, 149, 255)
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
	inventory:Add("citsuniform_jumpsuitmedical",1)
	inventory:Add("citspants_jumpsuit",1)
	inventory:Add("citsface_medicmask",1)

	inventory:Add("cid", 1, {
		owner_name = character:GetName(),
		cid = id,
		type = 2
	})
end

FACTION.runSounds		= {[0] = "NPC_Citizen.RunFootstepLeft", [1] = "NPC_Citizen.RunFootstepRight"}
FACTION.runOverride		= true
FACTION.painSND			= "Corrugated.CitPain"
FACTION.dieSND			= "npc_citizen.die"

FACTION_CMU = FACTION.index
