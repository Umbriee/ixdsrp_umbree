ITEM.name = "Can'o food"
ITEM.model = Model("models/willardnetworks/food/wn_food_can.mdl")
ITEM.description = "A can of food! This one is a nondescript dark black. Something is telling me this is something relating to Civil Protection. Seems to slosh with something between liquid and solid. Maybe whatever that ration goop is."
ITEM.skin = 5

ITEM.open = false
ITEM.verbOpen = "Unseal"

function ITEM:OnOpen(client, char)
	client:EmitSound("courragateddawn/sfx/items/SodaCan.ogg", 75, 90, 0.5)

end