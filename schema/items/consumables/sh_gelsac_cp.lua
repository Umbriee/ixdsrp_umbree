ITEM.name = "Civil Protection Ration Sac"
ITEM.description = "A simple sack containing a civil protection MRE. Including as well performance enhancers and other substances that may or may not increase aggression upon consumption."
ITEM.model = Model("models/weapons/w_packatm.mdl")

ITEM.restoreHealth	= 0
ITEM.restoreHunger	= 0
ITEM.restoreThirst	= 0

ITEM.items = {"mrempf", "amnesiacana", "cproids"}

ITEM.open = false
ITEM.typeName = "Eat"
ITEM.useOnOpen = true

function ITEM:OnOpen(client, char)
	for k, v in ipairs(self.items) do
		if (!char:GetInventory():Add(v)) then
			ix.item.Spawn(v, client)
		end
	end

	client:EmitSound("ambient/fire/mtov_flame2.wav", 75, math.random(160, 180), 0.35)
end