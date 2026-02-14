CLASS.name = "Metropolice Recruit"
CLASS.faction = FACTION_MPF
CLASS.isDefault = true
CLASS.description = "Babies first steps for the greater good."

function CLASS:CanSwitchTo(client)
	--return Schema:IsCombineRank(client:Name(), "RCT")
end

CLASS_MPR = CLASS.index