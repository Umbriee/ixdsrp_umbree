ITEM.name = "Radiobob CivilProtection"
ITEM.description = "Cans from a mysterious sub-company called Radiobob. This one is aimed to Civil protection? Whatever it is probably has what they're eating for breakfast, dinner, and lunch in a can."
ITEM.model = Model("models/willardnetworks/food/bobdrinks_can.mdl")
ITEM.skin = 5

ITEM.width			= 1
ITEM.height			= 2

ITEM.open = false
ITEM.typeName = "Drink"
ITEM.actionVerb	= "Drinking"

function ITEM:OnOpen(client, char)
	client:EmitSound("courragateddawn/sfx/items/SodaCan.ogg", 75, 90, 0.5)
end