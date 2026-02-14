ITEM.name = "Bottle of Red Wine"
ITEM.model = Model("models/willardnetworks/food/red_wine.mdl")
ITEM.description = "A bottle of red wine. Say some things about the Combine, but Loyalists get the best perks: A bottle of wine with their dinner is just one of many."

ITEM.width			= 2
ITEM.height			= 4

ITEM.open = false
ITEM.typeName = "Drink"
ITEM.actionVerb	= "Drinking"
ITEM.verbOpen = "Uncork"

function ITEM:OnOpen(client, char)
	client:EmitSound("courragateddawn/sfx/items/OpenBottleCork.ogg", 75, 90, 0.5)
end