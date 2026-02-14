ITEM.name = "Bottle of Nondescript Wine"
ITEM.model = Model("models/willardnetworks/food/wine4.mdl")
ITEM.description = "A bottle of surely something alcholohic-- which smells more like rubbing alcohol than anything drinkable. Pretty sure anti-citizens made this one from what ever concotions they were getting up to."

ITEM.open = false
ITEM.typeName = "Drink"
ITEM.actionVerb	= "Drinking"
ITEM.verbOpen = "Uncork"

function ITEM:OnOpen(client, char)
	client:EmitSound("courragateddawn/sfx/items/OpenBottleCork.ogg", 75, 90, 0.5)
end