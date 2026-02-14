ITEM.name = "Old Appalachia Premium Bourbon"
ITEM.model = Model("models/willardnetworks/food/bourbon.mdl")
ITEM.description = "A bottle of Premium Bourbon made by the Old Appalachia Brewing Company. You won't find this often, but if you do: Hide it, tell nobody, and enjoy it. It may end up being one of the last few on Earth."

ITEM.width			= 2
ITEM.height			= 4

ITEM.open = false
ITEM.typeName = "Drink"
ITEM.actionVerb	= "Drinking"
ITEM.verbOpen = "Uncork"

function ITEM:OnOpen(client, char)
	client:EmitSound("courragateddawn/sfx/items/OpenBottleCork.ogg", 75, 90, 0.5)
end