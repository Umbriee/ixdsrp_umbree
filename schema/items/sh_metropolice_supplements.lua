
ITEM.name = "Metropolice Supplements"
ITEM.model = Model("models/props_lab/jar01b.mdl")
ITEM.description = "A tinned can containing a good portion of your daily nutrients."
ITEM.factions = {FACTION_MPF, FACTION_OTA}
ITEM.RestoreHunger = 50

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player
		local HP = client:Health()
		local MaxHP = math.max(client:GetMaxHealth(),HP)
		--client:RestoreStamina(100)
		client:SetHealth( math.Clamp( HP + 30, 0, MaxHP ) )
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
		return true
	end,
	OnCanRun = function(itemTable)
		return itemTable.player:IsCombine()
	end
}
