FACTION.name = "Citizen"
FACTION.description = "Most keep their heads down. Work the shifts. Eat the rations. Wait for curfew. But not all. Some pass messages under the table. Some dig tunnels behind the walls. Some just listen, waiting for the right time to act. Whether you're a number or a name--that's still your choice, for now."
FACTION.color = Color(150, 125, 100, 255)
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
FACTION.isDefault = true

function FACTION:OnCharacterCreated(client, character)
	local id = Schema:ZeroNumber(math.random(1, 99999), 5)
	local inventory = character:GetInventory()

	character:SetData("cid", id)

	inventory:Add("suitcase", 1)
	inventory:Add("citsuniform_jumpsuit",1)
	inventory:Add("citspants_jumpsuit",1)
	inventory:Add("citsface_gasmask",1)
end

sound.Add( { 
	name = "Corrugated.CitPain",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 75,
	pitch = { 98, 107 },
	sound = {
		Sound("vo/npc/male01/ow01.wav"),
		Sound("vo/npc/male01/ow02.wav"),
		Sound("vo/npc/male01/pain01.wav"),
		Sound("vo/npc/male01/pain02.wav"),
		Sound("vo/npc/male01/pain03.wav"),
		Sound("vo/npc/male01/pain04.wav"),
		Sound("vo/npc/male01/pain05.wav"),
		Sound("vo/npc/male01/pain06.wav"),
		Sound("vo/npc/male01/pain07.wav"),
		Sound("vo/npc/male01/pain08.wav"),
		Sound("vo/npc/male01/pain09.wav")
	}
} )

--FACTION.walkSounds		= {[0] = "NPC_Citizen.FootstepLeft", [1] = "NPC_Citizen.FootstepRight"}
--FACTION.walkOverride	= true
FACTION.runSounds		= {[0] = "NPC_Citizen.RunFootstepLeft", [1] = "NPC_Citizen.RunFootstepRight"}
FACTION.runOverride		= true
FACTION.painSND			= "Corrugated.CitPain"
FACTION.dieSND			= "npc_citizen.die"

FACTION_CITIZEN = FACTION.index
