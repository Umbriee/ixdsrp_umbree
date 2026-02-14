CLASS.name = "Ordinal Officer"
CLASS.faction = FACTION_OTA
CLASS.isDefault = false

sound.Add( { 
	name = "Corrugated.OOPain",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 75,
	pitch = { 98, 107 },
	sound = {
		Sound("courragateddawn/vo/hla_ordinal/pain_01.wav"),
		Sound("courragateddawn/vo/hla_ordinal/pain_02.wav"),
		Sound("courragateddawn/vo/hla_ordinal/pain_03.wav"),
		Sound("courragateddawn/vo/hla_ordinal/pain_04.wav"),
		Sound("courragateddawn/vo/hla_ordinal/pain_05.wav"),
		Sound("courragateddawn/vo/hla_ordinal/pain_06.wav"),
		Sound("courragateddawn/vo/hla_ordinal/pain_07.wav"),
		Sound("courragateddawn/vo/hla_ordinal/pain_08.wav"),
		Sound("courragateddawn/vo/hla_ordinal/pain_09.wav"),
		Sound("courragateddawn/vo/hla_ordinal/pain_10.wav")
	}
} ) -- NPC_MetroPolice.Pain
sound.Add( { 
	name = "Corrugated.OODie",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 75,
	pitch = { 98, 107 },
	sound = {
		Sound("courragateddawn/vo/hla_ordinal/die_01.wav"),
		Sound("courragateddawn/vo/hla_ordinal/die_02.wav"),
		Sound("courragateddawn/vo/hla_ordinal/die_03.wav"),
		Sound("courragateddawn/vo/hla_ordinal/die_04.wav"),
		Sound("courragateddawn/vo/hla_ordinal/die_05.wav"),
		Sound("courragateddawn/vo/hla_ordinal/die_06.wav"),
		Sound("courragateddawn/vo/hla_ordinal/die_07.wav"),
		Sound("courragateddawn/vo/hla_ordinal/die_08.wav"),
		Sound("courragateddawn/vo/hla_ordinal/die_09.wav"),
		Sound("courragateddawn/vo/hla_ordinal/die_10.wav")
	}
} ) -- NPC_MetroPolice.Die

CLASS.painSND = "Corrugated.OOPain"
CLASS.dieSND = "Corrugated.OODie"

CLASS_OO = CLASS.index