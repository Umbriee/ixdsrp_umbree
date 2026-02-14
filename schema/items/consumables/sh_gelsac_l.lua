ITEM.name = "Loyalist Ration Sac"
ITEM.model = Model("models/weapons/w_packatl.mdl")
ITEM.description = "A simple red ration sack containing a loyalist MRE. Usually bland and tasteless, but Loyalists seem to get some flavouring in theirs!"

ITEM.restoreHealth	= 0
ITEM.restoreHunger	= 0
ITEM.restoreThirst	= 0

ITEM.items = {"mreloy", "amnesiacana"}

ITEM.open = false
ITEM.typeName = "Eat"
ITEM.useOnOpen = true

function ITEM:OnOpen(client, char)
	for k, v in ipairs(self.items) do
		if (!char:GetInventory():Add(v)) then
			ix.item.Spawn(v, client)
		end
	end

	char:GiveMoney(30)
	client:EmitSound("ambient/fire/mtov_flame2.wav", 75, math.random(160, 180), 0.35)
end