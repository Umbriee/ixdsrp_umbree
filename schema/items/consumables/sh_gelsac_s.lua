ITEM.name = "Standard Ration Sac"
ITEM.model = Model("models/weapons/w_packatc.mdl")
ITEM.description = "A simple sack containing a basic ration MRE. Bland, Tasteless, but suitable for Human consumption. With some extra effort, one might be able to put some flavour into this stuff."

ITEM.restoreHealth	= 0
ITEM.restoreHunger	= 0
ITEM.restoreThirst	= 0

ITEM.items = {"mrecit", "amnesiacana"}

ITEM.open = false
ITEM.typeName = "Eat"
ITEM.useOnOpen = true

function ITEM:OnOpen(client, char)
	for k, v in ipairs(self.items) do
		if (!char:GetInventory():Add(v)) then
			ix.item.Spawn(v, client)
		end
	end

	char:GiveMoney(ix.config.Get("rationTokens", 20))
	client:EmitSound("ambient/fire/mtov_flame2.wav", 75, math.random(160, 180), 0.35)
end