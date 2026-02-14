ITEM.name = "Clothing Gift Box"
ITEM.model = Model("models/props_power_comp_electro/vhs_box_3.mdl")
ITEM.description = "A box with the logo of the Jester's Palace. Inside contains an article of clothing!"
ITEM.items = {"citshatbeanie", "citsuniformmalejacket", "citsuniformalyxcoat9", "citshatcaphat", "citsuniformalyxcoat7", "citsuniformjumpsuit", "citspantsjumpsuit", "citsuniformalyxcoat3", "citsuniformalyxcoat1", "citsuniformalyxcoat2", "citsuniformalyxcoat4", "citsuniformredcoat", "citsuniformalyxcoat10", "citsuniformalyxcoat6", "citsuniformrefugee", "citsuniformalyxcoat8", "citsuniformjumpsuitcolorable", "citspantsjumpsuitcolorable"}

ITEM.functions.Open = {
    OnRun = function(itemTable)
       local client = itemTable.player
       local character = client:GetCharacter()

       local randomItem = itemTable.items[math.random(1, #itemTable.items)]

       if (!character:GetInventory():Add(randomItem)) then
          ix.item.Spawn(randomItem, client)
       end

       client:EmitSound("weapons/c4_disarm.wav", 75, math.random(160, 180), 0.35)
    end
}