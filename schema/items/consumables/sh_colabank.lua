ITEM.name = "Bank Soda - Zhongguo"
ITEM.model = Model("models/willardnetworks/food/bobdrinks_goodfella.mdl")
ITEM.description = "An old brand of cola that fluttered around New York in it's prime. It survived the Seven Hour War and the Combine, but it's a rare treat."

ITEM.width			= 1
ITEM.height			= 2

ITEM.open = false
ITEM.typeName = "Drink"
ITEM.actionVerb	= "Drinking"

function ITEM:OnOpen(client, char)
	client:EmitSound("courragateddawn/sfx/items/SodaCan.ogg", 75, 90, 0.5)
end