ITEM.name = "Radio Bob Energy"
ITEM.description = "An off-shoot of the strange Radio Bob drinks that keep appearing around the city. It claims it's an energy drink, but the Union say it's an illegal substance."
ITEM.model = Model("models/willardnetworks/food/bobdrinks_can.mdl")
ITEM.skin = 7

ITEM.width			= 1
ITEM.height			= 2

ITEM.open = false
ITEM.typeName = "Drink"
ITEM.actionVerb	= "Drinking"

function ITEM:OnOpen(client, char)
	client:EmitSound("courragateddawn/sfx/items/SodaCan.ogg", 75, 90, 0.5)
end