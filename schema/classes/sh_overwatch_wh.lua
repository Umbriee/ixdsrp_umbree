CLASS.name = "Wallhammer"
CLASS.faction = FACTION_OTA
CLASS.isDefault = false

sound.Add( { 
	name = "Corrugated.WHPain",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 75,
	pitch = { 98, 107 },
	sound = {
		Sound("courragateddawn/vo/hla_charger/pain_01.wav"),
		Sound("courragateddawn/vo/hla_charger/pain_02.wav"),
		Sound("courragateddawn/vo/hla_charger/pain_03.wav"),
		Sound("courragateddawn/vo/hla_charger/pain_04.wav"),
		Sound("courragateddawn/vo/hla_charger/pain_05.wav"),
		Sound("courragateddawn/vo/hla_charger/pain_06.wav"),
		Sound("courragateddawn/vo/hla_charger/pain_07.wav"),
		Sound("courragateddawn/vo/hla_charger/pain_08.wav"),
		Sound("courragateddawn/vo/hla_charger/pain_09.wav"),
		Sound("courragateddawn/vo/hla_charger/pain_10.wav")
	}
} ) -- NPC_MetroPolice.Pain
sound.Add( { 
	name = "Corrugated.WHDie",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 75,
	pitch = { 98, 107 },
	sound = {
		Sound("courragateddawn/vo/hla_charger/die_01.wav"),
		Sound("courragateddawn/vo/hla_charger/die_02.wav"),
		Sound("courragateddawn/vo/hla_charger/die_03.wav"),
		Sound("courragateddawn/vo/hla_charger/die_04.wav"),
		Sound("courragateddawn/vo/hla_charger/die_05.wav"),
		Sound("courragateddawn/vo/hla_charger/die_06.wav"),
		Sound("courragateddawn/vo/hla_charger/die_07.wav"),
		Sound("courragateddawn/vo/hla_charger/die_08.wav"),
		Sound("courragateddawn/vo/hla_charger/die_09.wav"),
		Sound("courragateddawn/vo/hla_charger/die_10.wav")
	}
} ) -- NPC_MetroPolice.Die
sound.Add( { -- Corrugated.WHRun
	name = "Corrugated.WHRun",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 75,
	pitch = { 98, 107 },
	sound = {
		Sound("courragateddawn/sfx/steps/synthorwallhammer/heavy_stomp_run_1.ogg"),
		Sound("courragateddawn/sfx/steps/synthorwallhammer/heavy_stomp_run_2.ogg"),
		Sound("courragateddawn/sfx/steps/synthorwallhammer/heavy_stomp_run_3.ogg")
	}
} )
sound.Add( { -- Corrugated.WHWalk
	name = "Corrugated.WHWalk",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 75,
	pitch = { 98, 107 },
	sound = {
		Sound("courragateddawn/sfx/steps/synthorwallhammer/heavy_stomp_walk_1.ogg"),
		Sound("courragateddawn/sfx/steps/synthorwallhammer/heavy_stomp_walk_2.ogg"),
		Sound("courragateddawn/sfx/steps/synthorwallhammer/heavy_stomp_walk_3.ogg")
	}
} )

CLASS.painSND = "Corrugated.WHPain"
CLASS.dieSND = "Corrugated.WHDie"

CLASS.runSounds = {[0] = "Corrugated.WHRun", [1] = "Corrugated.WHRun"}
CLASS.runOverride = true
CLASS.walkSounds = {[0] = "Corrugated.WHWalk", [1] = "Corrugated.WHWalk"}
CLASS.walkOverride = true

CLASS_WH = CLASS.index