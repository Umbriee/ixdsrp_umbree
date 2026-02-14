ITEM.name = "Biotic Ration Sac"
ITEM.description = "A biotic ration pack with a biotic MRE and a fitting drink. Made for Vortigaunts. Not human."
ITEM.model = Model("models/weapons/w_packatb.mdl")

ITEM.restoreHealth	= 0
ITEM.restoreHunger	= 0
ITEM.restoreThirst	= 0

ITEM.items = {"mrebiot", "amnesiacana"}

ITEM.open = false
ITEM.typeName = "Eat"
ITEM.useOnOpen = true

function ITEM:OnOpen(client, char)
	for k, v in ipairs(self.items) do
		if (!char:GetInventory():Add(v)) then
			ix.item.Spawn(v, client)
		end
	end

	char:GiveMoney(2)
	client:EmitSound("ambient/fire/mtov_flame2.wav", 75, math.random(160, 180), 0.35)
end