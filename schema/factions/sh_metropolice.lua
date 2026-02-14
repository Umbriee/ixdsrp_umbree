FACTION.name = "Metropolice Force"
FACTION.description = "Masks with numbers. Voices with static. They say it's law enforcement. You say it's the sound of boots at your door. Some of them remember being people. Most stopped trying. Orders are easier when you forget your own name."
FACTION.color = Color(50, 100, 150)
FACTION.pay = 20
FACTION.models = {
	"models/wn7new/metropolice_c24/female_01.mdl",
	"models/wn7new/metropolice_c24/female_02.mdl",
	"models/wn7new/metropolice_c24/female_03.mdl",
	"models/wn7new/metropolice_c24/female_04.mdl",
	"models/wn7new/metropolice_c24/female_05.mdl",
	"models/wn7new/metropolice_c24/female_06.mdl",
	"models/wn7new/metropolice_c24/male_01.mdl",
	"models/wn7new/metropolice_c24/male_02.mdl",
	"models/wn7new/metropolice_c24/male_03.mdl",
	"models/wn7new/metropolice_c24/male_04.mdl",
	"models/wn7new/metropolice_c24/male_05.mdl",
	"models/wn7new/metropolice_c24/male_06.mdl",
	"models/wn7new/metropolice_c24/male_07.mdl",
	"models/wn7new/metropolice_c24/male_08.mdl",
	"models/wn7new/metropolice_c24/male_09.mdl",
	"models/wn7new/metropolice_c24/male_10.mdl"
}
--[[
FACTION.models = {
	"models/rised_project/metropolice/rised_mpf_01.mdl",
	"models/rised_project/metropolice/rised_mpf_01fem.mdl",
	"models/rised_project/metropolice/rised_mpf_02.mdl",
	"models/rised_project/metropolice/rised_mpf_02fem.mdl",
	"models/rised_project/metropolice/rised_mpf_03.mdl",
	"models/rised_project/metropolice/rised_mpf_03fem.mdl",
	"models/rised_project/metropolice/rised_mpf_04.mdl",
	"models/rised_project/metropolice/rised_mpf_04fem.mdl",
	"models/rised_project/metropolice/rised_mpf_05.mdl",
	"models/rised_project/metropolice/rised_mpf_06.mdl",
	"models/rised_project/metropolice/rised_mpf_07.mdl",
	"models/rised_project/metropolice/rised_mpf_07fem.mdl",
	"models/rised_project/metropolice/rised_mpf_08.mdl",
	"models/rised_project/metropolice/rised_mpf_09.mdl",
	"models/rised_project/metropolice/rised_mpf_017fem.mdl"
}--]]
FACTION.weapons = {"ix_stunstick", "rappel_gear"}
FACTION.isDefault = false
FACTION.isGloballyRecognized = true
FACTION.canSeeWaypoints = true
FACTION.canAddWaypoints = true
FACTION.canRemoveWaypoints = true
FACTION.canUpdateWaypoints = true

sound.Add( { 
	name = "Corrugated.MPFRun",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 75,
	pitch = { 98, 107 },
	sound = {
		Sound("courragateddawn/sfx/steps/metrocop/foley_step_01.wav"),
		Sound("courragateddawn/sfx/steps/metrocop/foley_step_02.wav"),
		Sound("courragateddawn/sfx/steps/metrocop/foley_step_03.wav"),
		Sound("courragateddawn/sfx/steps/metrocop/foley_step_04.wav"),
		Sound("courragateddawn/sfx/steps/metrocop/foley_step_05.wav"),
		Sound("courragateddawn/sfx/steps/metrocop/foley_step_06.wav"),
		Sound("courragateddawn/sfx/steps/metrocop/foley_step_07.wav"),
		Sound("courragateddawn/sfx/steps/metrocop/foley_step_08.wav"),
		Sound("courragateddawn/sfx/steps/metrocop/foley_step_09.wav")
	}
} )
sound.Add( { 
	name = "Corrugated.MPFWalk",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 75,
	pitch = { 98, 107 },
	sound = {
		Sound("npc/cp/fs/cps-1.mp3"),
		Sound("npc/cp/fs/cps-2.mp3"),
		Sound("npc/cp/fs/cps-3.mp3"),
		Sound("npc/cp/fs/cps-4.mp3"),
		Sound("npc/cp/fs/cps-5.mp3"),
		Sound("npc/cp/fs/cps-6.mp3")
	}
} )
sound.Add( { 
	name = "Corrugated.MPFRadioOff",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 75,
	pitch = { 98, 107 },
	sound = {
		Sound("courragateddawn/sfx/radiobleeps/combine_radio_off_04.wav"),
		Sound("courragateddawn/sfx/radiobleeps/combine_radio_off_05.wav")
	}
} ) -- NPC_MetroPolice.Radio.On
sound.Add( { 
	name = "Corrugated.MPFRadioOn",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 75,
	pitch = { 98, 107 },
	sound = {
		Sound("courragateddawn/sfx/radiobleeps/combine_radio_on_03.wav"),
		Sound("courragateddawn/sfx/radiobleeps/combine_radio_on_04.wav")
	}
} ) -- NPC_MetroPolice.Radio.Off

--[[FACTION.runSounds		= {[0] = "NPC_MetroPolice.RunFootstepLeft", [1] = "NPC_MetroPolice.RunFootstepRight"}
FACTION.runOverride		= true
FACTION.walkSounds		= {[0] = "Corrugated.MPFWalk", [1] = "Corrugated.MPFWalk"}
FACTION.walkOverride	= true
--]]
FACTION.runSounds		= {[0] = "Corrugated.MPFWalk", [1] = "Corrugated.MPFWalk"}
FACTION.runOverride		= true
FACTION.radioOff		= "Corrugated.MPFRadioOff"
FACTION.radioOn			= "Corrugated.MPFRadioOn"
FACTION.painSND			= "NPC_MetroPolice.Pain"
FACTION.dieSND			= "NPC_MetroPolice.Die"

function FACTION:OnCharacterCreated(client, character)
	local inventory = character:GetInventory()

	inventory:Add("mpfmask",1)
	
	--inventory:Add("pistol", 1)
	--inventory:Add("pistolammo", 2)
	--inventory:Add("longrange", 1)
end

function FACTION:GetDefaultName(client)
	return "CCA:C01.UNION.RCT." .. Schema:ZeroNumber(math.random(1, 99999), 5), true
end

function FACTION:OnTransferred(character)
	character:SetName(self:GetDefaultName())
	character:SetModel(self.models[1])
end

function FACTION:OnNameChanged(client, oldValue, value)
	if not client:GetCharacter() then return end
	local character = client:GetCharacter()
	
	if (!Schema:IsCombineRank(oldValue, "RCT") and Schema:IsCombineRank(value, "RCT")) then
		character:JoinClass(CLASS_MPR)

	elseif (!Schema:IsCombineRank(oldValue, "i5") and Schema:IsCombineRank(value, "i5")) then
		character:JoinClass(CLASS_MPU)

	elseif (!Schema:IsCombineRank(oldValue, "OfC") and Schema:IsCombineRank(value, "OfC")) then
		character:JoinClass(CLASS_OFCMPF)

	elseif (!Schema:IsCombineRank(oldValue, "EpU") and Schema:IsCombineRank(value, "EpU")) then
		character:JoinClass(CLASS_EPUMPF)

		--character:SetModel("models/leet_police2.mdl")
	elseif (!Schema:IsCombineRank(oldValue, "DvL") and Schema:IsCombineRank(value, "DvL")) then
		character:JoinClass(CLASS_DMP)
		--character:SetModel("models/eliteshockcp.mdl")

	elseif (!Schema:IsCombineRank(oldValue, "CmD") and Schema:IsCombineRank(value, "CmD")) then
		character:JoinClass(CLASS_CMP)

	elseif (!Schema:IsCombineRank(oldValue, "SeC") and Schema:IsCombineRank(value, "SeC")) then
		character:JoinClass(CLASS_SECMP)

	--[[elseif (!Schema:IsCombineRank(oldValue, "SCN") and Schema:IsCombineRank(value, "SCN")
	or !Schema:IsCombineRank(oldValue, "SHIELD") and Schema:IsCombineRank(value, "SHIELD")) then
		character:JoinClass(CLASS_MPS)--]]
	end

	--[[if (!Schema:IsCombineRank(oldValue, "GHOST") and Schema:IsCombineRank(value, "GHOST")) then
		--character:SetModel("models/eliteghostcp.mdl")
	end--]]
end

sound.Add( { 
	name = "Corrugated.MPFDvLRadioOff",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 75,
	pitch = { 98, 107 },
	sound = {
		Sound("courragateddawn/sfx/radiobleeps/combine_radio_off_11.wav"),
		Sound("courragateddawn/sfx/radiobleeps/combine_radio_off_09.wav")
	}
} ) -- NPC_MetroPolice.Radio.On
sound.Add( { 
	name = "Corrugated.MPFDvLRadioOn",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 75,
	pitch = { 98, 107 },
	sound = {
		Sound("courragateddawn/sfx/radiobleeps/combine_radio_on_05.wav"),
		Sound("courragateddawn/sfx/radiobleeps/combine_radio_on_08.wav")
	}
} ) -- NPC_MetroPolice.Radio.Off

sound.Add( { 
	name = "Corrugated.MPFCRadioOff",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 75,
	pitch = { 98, 107 },
	sound = {
		Sound("courragateddawn/sfx/radiobleeps/combine_radio_off_08.wav"),
		Sound("courragateddawn/sfx/radiobleeps/combine_radio_off_09.wav"),
		Sound("courragateddawn/sfx/radiobleeps/combine_radio_off_10.wav")
	}
} ) -- NPC_MetroPolice.Radio.On
sound.Add( { 
	name = "Corrugated.MPFCRadioOn",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 75,
	pitch = { 98, 107 },
	sound = {
		Sound("courragateddawn/sfx/radiobleeps/combine_radio_on_06.wav"),
		Sound("courragateddawn/sfx/radiobleeps/combine_radio_on_07.wav"),
		Sound("courragateddawn/sfx/radiobleeps/combine_radio_on_09.wav")
	}
} ) -- NPC_MetroPolice.Radio.Off

FACTION_MPF = FACTION.index
