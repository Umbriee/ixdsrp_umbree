ITEM.name = "Union Gin"
ITEM.model = Model("models/bioshockinfinite/jin_bottle.mdl")
ITEM.description = "A bottle of gin made from synthesized alcohol. Some say Wayne King made this one too, but the Combine have plastered their logo all over it. Usually reserved for Loyalists and Civil Protection."

ITEM.open = false
ITEM.typeName = "Drink"
ITEM.actionVerb	= "Drinking"
ITEM.verbOpen = "Uncork"

function ITEM:OnOpen(client, char)
	client:EmitSound("courragateddawn/sfx/items/OpenBottleCork.ogg", 75, 90, 0.5)
end