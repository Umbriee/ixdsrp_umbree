FACTION.name = "Synth"
FACTION.description = "The Synths are biomechanical weapons created by the Combine, featuring diverse combat capabilities and posing a formidable challenge to the resistance."
FACTION.color = Color(140, 102, 98)
FACTION.models = {"models/icarus_anon.mdl"}
FACTION.weapons = {"weapon_vj_npccontroller"}
FACTION.isDefault = false
FACTION.isGloballyRecognized = true

function FACTION:GetDefaultName(client)
	return "CMB-SNT.NULL-" .. Schema:ZeroNumber(math.random(1, 99999), 5), true
end

function FACTION:OnTransferred(character)
	character:SetName(self:GetDefaultName())
	character:SetModel(self.models[1])
end

sound.Add( { -- Corrugated.SYNPain
	name = "Corrugated.SYNPain",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 75,
	pitch = { 98, 107 },
	sound = {
		Sound("courragateddawn/npc/heavysynthsounds/hvy_snt_pain1.ogg"),
		Sound("courragateddawn/npc/heavysynthsounds/hvy_snt_pain2.ogg")
	}
} )
sound.Add( { -- Corrugated.SYNRadioOff
	name = "Corrugated.SYNRadioOff",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 75,
	pitch = { 98, 107 },
	sound = {
		Sound("courragateddawn/npc/heavysynthsounds/hvy_snt_speech1.ogg"),
		Sound("courragateddawn/npc/heavysynthsounds/hvy_snt_speech2.ogg"),
		Sound("courragateddawn/npc/heavysynthsounds/hvy_snt_speech3.ogg"),
		Sound("courragateddawn/npc/heavysynthsounds/hvy_snt_speech4.ogg"),
		Sound("courragateddawn/npc/heavysynthsounds/hvy_snt_speech5.ogg"),
		Sound("courragateddawn/npc/heavysynthsounds/hvy_snt_speech6.ogg"),
		Sound("courragateddawn/npc/heavysynthsounds/hvy_snt_speech7.ogg")
	}
} )
sound.Add( { -- Corrugated.SYNRadioOn
	name = "Corrugated.SYNRadioOn",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 75,
	pitch = { 98, 107 },
	sound = {
		Sound("courragateddawn/sfx/radiobleeps/combine_radio_on_06.wav"),
		Sound("courragateddawn/sfx/radiobleeps/combine_radio_on_07.wav")
	}
} )

FACTION.runSounds = {[0] = "Corrugated.WHRun", [1] = "Corrugated.WHRun"}
FACTION.runOverride = true
FACTION.walkSounds = {[0] = "Corrugated.WHWalk", [1] = "Corrugated.WHWalk"}
FACTION.walkOverride = true
FACTION.radioOff = "Corrugated.SYNRadioOff"
FACTION.radioOn = "Corrugated.SYNRadioOn"
FACTION.painSND = "Corrugated.SYNPain"
-- FACTION.dieSND = "Corrugated.SYNDie"

function FACTION:OnNameChanged(client, oldValue, value)
	local character = client:GetCharacter()

	
	if (!Schema:IsCombineRank(oldValue, "SCN") and Schema:IsCombineRank(value, "SCN")) then
		character:JoinClass(CLASS_SCN)
	elseif (!Schema:IsCombineRank(oldValue, "SLK") and Schema:IsCombineRank(value, "SLK")) then
		character:JoinClass(CLASS_SLK)
		--character:SetModel("models/stalker.mdl")
	else
		character:JoinClass(CLASS_CRM)

	end
end

FACTION_SYNTH = FACTION.index