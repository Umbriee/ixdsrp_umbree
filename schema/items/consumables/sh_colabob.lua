ITEM.name = "Radiobob Cola"
ITEM.description = "Cans from a mysterious sub-company called Radiobob. Ask and you won't find an answer. These cans somehow end up deposited into the cola machines, and not even the Union know who's doing it."
ITEM.model = Model("models/willardnetworks/food/bobdrinks_can.mdl")
ITEM.skin = 0

ITEM.width			= 1
ITEM.height			= 2

ITEM.open = false
ITEM.typeName = "Drink"
ITEM.actionVerb	= "Drinking"

function ITEM:OnOpen(client, char)
	client:EmitSound("courragateddawn/sfx/items/SodaCan.ogg", 75, 90, 0.5)
end