ITEM.name = "Wayne King's Own Brew Black'O Tea"
ITEM.model = Model("models/bioshockinfinite/ebsinthebottle.mdl")
ITEM.description = "An alcoholic tea beverage using synthesized alcohol. Nobody really knows who Wayne King is, but the Combine have their symbol stamped all over his bottles."

ITEM.open = false
ITEM.typeName = "Drink"
ITEM.actionVerb	= "Drinking"
ITEM.verbOpen = "Uncork"

function ITEM:OnOpen(client, char)
	client:EmitSound("courragateddawn/sfx/items/OpenBottleCork.ogg", 75, 90, 0.5)
end
