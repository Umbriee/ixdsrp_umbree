FACTION.name = "CCA Conscription Force"
FACTION.description = "Old rifles, old scars. Some wore uniforms before the sky cracked open. Others just picked up what was left. They fight because someone has to. And the Union doesn’t care if it’s with or against them. So long as they bleed somewhere useful."
FACTION.color = Color(84, 83, 32, 255)
FACTION.pay = 10
FACTION.weapons = {"arccw_go_melee_knife", "rappel_gear"}
FACTION.isDefault = false
FACTION.models = {
	"models/willardnetworks/conscripts/male_01.mdl",
    "models/willardnetworks/conscripts/male_02.mdl",
    "models/willardnetworks/conscripts/male_03.mdl",
    "models/willardnetworks/conscripts/male_04.mdl",
    "models/willardnetworks/conscripts/male_05.mdl",
    "models/willardnetworks/conscripts/male_06.mdl",
    "models/willardnetworks/conscripts/male_07.mdl",
    "models/willardnetworks/conscripts/male_08.mdl",
    "models/willardnetworks/conscripts/male_09.mdl",
    "models/willardnetworks/conscripts/male_10.mdl",
    "models/willardnetworks/conscripts/female_01.mdl",
    "models/willardnetworks/conscripts/female_02.mdl",
    "models/willardnetworks/conscripts/female_03.mdl",
    "models/willardnetworks/conscripts/female_04.mdl",
    "models/willardnetworks/conscripts/female_05.mdl",
    "models/willardnetworks/conscripts/female_06.mdl"
}
sound.Add( { 
	name = "Corrugated.ConscHit",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 75,
	pitch = { 98, 107 },
	sound = {
		Sound("courragateddawn/vo/bm_hecu_modern/hg_hit01.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_hit02.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_hit03.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_hit04.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_hit05.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_hit06.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_hit07.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_hit08.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_hit09.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_hit10.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_hit11.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_hit12.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_hit13.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_hit14.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_hit15.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_hit16.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_hit17.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_hit18.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_hit19.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_hit12_var01.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_hit12_var02.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_hit15_var01.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_hit18_var01.ogg")
	}
} )
sound.Add( { 
	name = "Corrugated.ConscPain",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 75,
	pitch = { 98, 107 },
	sound = {
		Sound("courragateddawn/vo/bm_hecu_modern/hg_pain01.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_pain02.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_pain03.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_pain04.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_pain05.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_pain06.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_pain07.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_pain09.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_pain10.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_pain11.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_pain12.ogg")
	}
} )
sound.Add( { 
	name = "Corrugated.ConscDeath",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 75,
	pitch = { 98, 107 },
	sound = {
		Sound("vo/npc/male01/ow01.wav"),
		Sound("vo/npc/male01/ow02.wav")
	}
} )
sound.Add( { 
	name = "Corrugated.ConscGibDeath",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 75,
	pitch = { 98, 107 },
	sound = {
		Sound("courragateddawn/vo/bm_hecu_modern/hg_gibdeath01.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_gibdeath02.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_gibdeath03.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_gibdeath04.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_gibdeath05.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_gibdeath06.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_gibdeath07.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_gibdeath08.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_gibdeath09.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_gibdeath10.ogg"),
		Sound("courragateddawn/vo/bm_hecu_modern/hg_gibdeath11.ogg")
	}
} )
FACTION.runSounds = {[0] = "NPC_MetroPolice.RunFootstepLeft", [1] = "NPC_MetroPolice.RunFootstepRight"}
FACTION.runOverride		= true
FACTION.painSND			= "Corrugated.ConscPain"
FACTION.dieSND			= "Corrugated.ConscGibDeath"

function FACTION:OnCharacterCreated(client, character)
	local id = Schema:ZeroNumber(math.random(1, 99999), 5)
	local inventory = character:GetInventory()

	character:SetData("cid", id)

	inventory:Add("conscgearsoldat", 1)
	inventory:Add("conschelmsoldat", 1)

	inventory:Add("cid", 1, {
		owner_name = character:GetName(),
		cid = id,
		type = 4 
	})
end

FACTION_CONSCRIPT = FACTION.index
