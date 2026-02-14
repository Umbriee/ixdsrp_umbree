ITEM.name = "Grape Soda"
ITEM.description = "Grape soda! Tastes more like purple than anything."
ITEM.model = Model("models/willardnetworks/food/bobdrinks_can.mdl")
ITEM.skin = 8

ITEM.width			= 1
ITEM.height			= 2

ITEM.open = false
ITEM.typeName = "Drink"
ITEM.actionVerb	= "Drinking"

function ITEM:OnOpen(client, char)
	client:EmitSound("courragateddawn/sfx/items/SodaCan.ogg", 75, 90, 0.5)
end