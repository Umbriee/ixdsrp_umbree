ITEM.name = "Can'o food"
ITEM.model = Model("models/willardnetworks/food/wn_food_can.mdl")
ITEM.description = "A can of food! This one is a nondescript dark green. Who knows! Maybe its a can'o spinach. Seems to slosh like a can full of vegetables.. Wait what does that sound like?"
ITEM.skin = 2

ITEM.open = false
ITEM.verbOpen = "Unseal"

function ITEM:OnOpen(client, char)
	client:EmitSound("courragateddawn/sfx/items/SodaCan.ogg", 75, 90, 0.5)

end