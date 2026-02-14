ITEM.name = "Can'o food"
ITEM.model = Model("models/willardnetworks/food/wn_food_can.mdl")
ITEM.description = "A can of food! This one is a nondescript heavy red. Doesn't seem to slosh around much, mostly just heavy with big bits of something. Meat? I assume meat."
ITEM.skin = 4

ITEM.open = false
ITEM.verbOpen = "Unseal"

function ITEM:OnOpen(client, char)
	client:EmitSound("courragateddawn/sfx/items/SodaCan.ogg", 75, 90, 0.5)

end