ITEM.name = "Bottle of blue"
ITEM.model = Model("models/willardnetworks/props/xenpotion3.mdl")
ITEM.description = "You look at this bottle of blue stuff and slosh it around. Its reminds you of witches. You'know the 'double, double toil and trouble' kind. Its somethin' alchemic I suppose. Has an alright smell.. Stings a little.."

ITEM.open = false
ITEM.typeName = "Drink"
ITEM.actionVerb	= "Drinking"
ITEM.verbOpen = "Uncork"

function ITEM:OnOpen(client, char)
	client:EmitSound("courragateddawn/sfx/items/OpenBottleCork.ogg", 75, 90, 0.5)
end