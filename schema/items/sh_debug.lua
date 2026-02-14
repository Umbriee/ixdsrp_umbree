ITEM.name = "The Debug Can"
ITEM.model = Model("models/props_junk/popcan01a.mdl")
ITEM.description = "A huge wave of energy emmits from this... Can? Something is whispering from it..."
ITEM.category = "Development"

ITEM.functions.Drink = {
    OnRun = function(itemTable)
        local client = itemTable.player
        local class = client:GetCharacter():GetClass()
        local faction = client:GetCharacter():GetFaction()

        client:Notify("Your lucky numbers are.. "..faction.." and "..class..".")
    end
}