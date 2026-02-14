ITEM.name = "Toybox Gift Box"
ITEM.model = Model("models/props_power_comp_electro/vhs_box_3.mdl")
ITEM.description = "A box with the logo of the Jester's Palace. Inside contains a random 'toy!'"
ITEM.items = {"melee_axe", "melee_bottlebust", "melee_pan", "crowbar", "melee_bottle", "flash", "flashlight", "melee_pipe", "bayonet", "melee_hook", "melee_pick", "melee_shovel", "melee_pot"}

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