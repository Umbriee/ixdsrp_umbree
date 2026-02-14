ITEM.name = "Can'o food"
ITEM.model = Model("models/willardnetworks/food/wn_food_can.mdl")
ITEM.description = "A can of food! This one is a nondescript white. Sloshes around with a few meaty bits in it. Might still be good."
ITEM.skin = 0

ITEM.open = false
ITEM.verbOpen = "Unseal"

function ITEM:OnOpen(client, char)
	client:EmitSound("courragateddawn/sfx/items/SodaCan.ogg", 75, 90, 0.5)
end