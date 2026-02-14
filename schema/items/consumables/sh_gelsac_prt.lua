ITEM.name = "Priority Ration Sac"
ITEM.model = Model("models/weapons/w_packatp.mdl")
ITEM.description = "A simple sack containing priority ration package. Rations normally being bland and tasteless, but this bag is golden coloured for a reason. One can only imagine that the contents inside tastes like the purest honey, or the richest ambrosia."

ITEM.restoreHealth	= 0
ITEM.restoreHunger	= 0
ITEM.restoreThirst	= 0

ITEM.items = {"rationreward_consulate", "amnesiacana"}

ITEM.open = false
ITEM.typeName = "Eat"
ITEM.useOnOpen = true

function ITEM:OnOpen(client, char)
	for k, v in ipairs(self.items) do
		if (!char:GetInventory():Add(v)) then
			ix.item.Spawn(v, client)
		end
	end

	char:GiveMoney(40)
	client:EmitSound("ambient/fire/mtov_flame2.wav", 75, math.random(160, 180), 0.35)
end