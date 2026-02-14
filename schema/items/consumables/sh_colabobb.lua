ITEM.name = "Radiobob Dark"
ITEM.description = "Cans from a mysterious sub-company called Radiobob. This one is dark flavored. It tastes like black licorice but stronger."
ITEM.model = Model("models/willardnetworks/food/bobdrinks_can.mdl")
ITEM.skin = 1

ITEM.width			= 1
ITEM.height			= 2

ITEM.open = false
ITEM.typeName = "Drink"
ITEM.actionVerb	= "Drinking"

function ITEM:OnOpen(client, char)
	client:EmitSound("courragateddawn/sfx/items/SodaCan.ogg", 75, 90, 0.5)
end