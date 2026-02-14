FACTION.name = "Overwatch Transhuman Arm"
FACTION.description = "Steel and blood, wired together until nothing’s left but protocol. OTA don’t walk--they sweep. Rooms, streets, cities. You don’t fight them. You avoid them. Or you don’t live long enough to try."
FACTION.color = Color(150, 50, 50, 255)
FACTION.pay = 40
FACTION.weapons = {"ix_stunstick", "rappel_gear"}
FACTION.models = {"models/combine_soldier.mdl"}
FACTION.isDefault = false
FACTION.isGloballyRecognized = true
FACTION.canAddWaypoints = true
FACTION.canRemoveWaypoints = true
FACTION.canUpdateWaypoints = true
FACTION.canSeeWaypoints = true

sound.Add( { -- Corrugated.OTARun
	name = "Corrugated.OTARun",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 75,
	pitch = { 98, 107 },
	sound = {
		Sound("courragateddawn/sfx/steps/soldier/foley_step_01.wav"),
		Sound("courragateddawn/sfx/steps/soldier/foley_step_02.wav"),
		Sound("courragateddawn/sfx/steps/soldier/foley_step_03.wav"),
		Sound("courragateddawn/sfx/steps/soldier/foley_step_04.wav"),
		Sound("courragateddawn/sfx/steps/soldier/foley_step_05.wav"),
		Sound("courragateddawn/sfx/steps/soldier/foley_step_06.wav"),
		Sound("courragateddawn/sfx/steps/soldier/foley_step_07.wav"),
		Sound("courragateddawn/sfx/steps/soldier/foley_step_08.wav"),
		Sound("courragateddawn/sfx/steps/soldier/foley_step_09.wav")
	}
} )
sound.Add( { -- Corrugated.OTAWalk
	name = "Corrugated.OTAWalk",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 75,
	pitch = { 98, 107 },
	sound = {
		Sound("npc/ota/fs/ows-1.mp3"),
		Sound("npc/ota/fs/ows-2.mp3"),
		Sound("npc/ota/fs/ows-3.mp3"),
		Sound("npc/ota/fs/ows-4.mp3"),
		Sound("npc/ota/fs/ows-5.mp3"),
		Sound("npc/ota/fs/ows-6.mp3")
	}
} )
sound.Add( { -- Corrugated.OTARadioOff
	name = "Corrugated.OTARadioOff",
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
sound.Add( { -- Corrugated.OTARadioOn
	name = "Corrugated.OTARadioOn",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 75,
	pitch = { 98, 107 },
	sound = {
		Sound("courragateddawn/sfx/radiobleeps/combine_radio_on_01.wav"),
		Sound("courragateddawn/sfx/radiobleeps/combine_radio_on_02.wav"),
		Sound("courragateddawn/sfx/radiobleeps/combine_radio_on_03.wav"),
		Sound("courragateddawn/sfx/radiobleeps/combine_radio_on_04.wav"),
		Sound("courragateddawn/sfx/radiobleeps/combine_radio_on_05.wav")
	}
} ) -- NPC_MetroPolice.Radio.Off
sound.Add( { -- Corrugated.OTAPain
	name = "Corrugated.OTAPain",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 75,
	pitch = { 98, 107 },
	sound = {
		Sound("courragateddawn/vo/hla_grunt/pain_01.wav"),
		Sound("courragateddawn/vo/hla_grunt/pain_02.wav"),
		Sound("courragateddawn/vo/hla_grunt/pain_03.wav"),
		Sound("courragateddawn/vo/hla_grunt/pain_04.wav"),
		Sound("courragateddawn/vo/hla_grunt/pain_05.wav"),
		Sound("courragateddawn/vo/hla_grunt/pain_06.wav"),
		Sound("courragateddawn/vo/hla_grunt/pain_07.wav"),
		Sound("courragateddawn/vo/hla_grunt/pain_08.wav"),
		Sound("courragateddawn/vo/hla_grunt/pain_09.wav"),
		Sound("courragateddawn/vo/hla_grunt/pain_10.wav")
	}
} ) -- NPC_MetroPolice.Pain
sound.Add( { -- Corrugated.OTADie
	name = "Corrugated.OTADie",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 75,
	pitch = { 98, 107 },
	sound = {
		Sound("courragateddawn/vo/hla_grunt/die_01.wav"),
		Sound("courragateddawn/vo/hla_grunt/die_02.wav"),
		Sound("courragateddawn/vo/hla_grunt/die_03.wav"),
		Sound("courragateddawn/vo/hla_grunt/die_04.wav"),
		Sound("courragateddawn/vo/hla_grunt/die_05.wav"),
		Sound("courragateddawn/vo/hla_grunt/die_06.wav"),
		Sound("courragateddawn/vo/hla_grunt/die_07.wav"),
		Sound("courragateddawn/vo/hla_grunt/die_08.wav"),
		Sound("courragateddawn/vo/hla_grunt/die_09.wav"),
		Sound("courragateddawn/vo/hla_grunt/die_10.wav")
	}
} ) -- NPC_MetroPolice.Die

FACTION.runSounds 		= {[0] = "Corrugated.OTARun", [1] = "Corrugated.OTARun"}
FACTION.runOverride 	= true
FACTION.walkSounds		= {[0] = "Corrugated.OTAWalk", [1] = "Corrugated.OTAWalk"}
FACTION.walkOverride	= true
FACTION.radioOff		= "Corrugated.OTARadioOff"
FACTION.radioOn			= "Corrugated.OTARadioOn"
FACTION.painSND			= "Corrugated.OTAPain"
FACTION.dieSND			= "Corrugated.OTADie"

function FACTION:OnCharacterCreated(client, character)
	local inventory = character:GetInventory()

	inventory:Add("pistol", 1)
	inventory:Add("pistolammo", 2)

	inventory:Add("ar2", 1)
	inventory:Add("ar2ammo", 2)
end

function FACTION:GetDefaultName(client)
	return "OTA:ECHO-OWS." .. Schema:ZeroNumber(math.random(1, 99999), 5), true
end

function FACTION:OnTransferred(character)
	character:SetName(self:GetDefaultName())
	character:SetModel(self.models[1])
end

function FACTION:OnNameChanged(client, oldValue, value)
	local character = client:GetCharacter()
end

FACTION_OTA = FACTION.index
