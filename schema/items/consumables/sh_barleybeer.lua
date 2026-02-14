ITEM.name = "Union Lager"
ITEM.model = Model("models/bioshockinfinite/hext_bottle_lager.mdl")
ITEM.description = "A bottle of lager made from synthesized alcohol. The Combine have this as part of their Loyalist and Civil Protection Rations only because of the flavour difference compared to the normal garbage."

ITEM.open = false
ITEM.typeName = "Drink"
ITEM.actionVerb	= "Drinking"
ITEM.verbOpen = "Uncork"

function ITEM:OnOpen(client, char)
	client:EmitSound("courragateddawn/sfx/items/OpenBottleCork.ogg", 75, 90, 0.5)
end