CLASS.name = "Metropolice Scanner"
CLASS.description = "A metropolice scanner, it utilises Combine technology."
CLASS.faction = FACTION_MPF

function CLASS:CanSwitchTo(client)
	return Schema:IsCombineRank(client:Name(), "SCN") or Schema:IsCombineRank(client:Name(), "SHIELD")
end

CLASS_MPS = CLASS.index
