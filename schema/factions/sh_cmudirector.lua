FACTION.name = "Civil Medical Director"
FACTION.description = "Civil Medical Union: If you cannot give a life, you can save a life! Your hands are needed, and idle hands are the devil's work!"
FACTION.pay = 15
FACTION.color = Color(154, 21, 191, 255)
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
	inventory:Add("citsuniform_labcoat",1)
	inventory:Add("citspants_jumpsuit",1)
	inventory:Add("citsface_medicmask",1)
	inventory:Add("citsgloves_medical",1)

	inventory:Add("cid", 1, {
		owner_name = character:GetName(),
		cid = id,
		type = 2
	})
	inventory:Add("permit_medical", 1, {
		owner_name = character:GetName(),
		cid = i
	})
end

FACTION.runSounds		= {[0] = "NPC_Citizen.RunFootstepLeft", [1] = "NPC_Citizen.RunFootstepRight"}
FACTION.runOverride		= true
FACTION.painSND			= "Corrugated.CitPain"
FACTION.dieSND			= "npc_citizen.die"

FACTION_CMUDIRECTOR = FACTION.index
