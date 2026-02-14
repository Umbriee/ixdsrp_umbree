AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
AddCSLuaFile("ixdsrp/schema/libs/thirdparty/imgui.lua")

include("shared.lua")

--Network strings
util.AddNetworkString( "CloseRebVendor" )
util.AddNetworkString( "PageRebWepons" )
util.AddNetworkString( "PageRebArmor" )
util.AddNetworkString( "PageRebArmor2" )
util.AddNetworkString( "PageRebMedical" )
util.AddNetworkString( "PageRebAmmo" )
util.AddNetworkString( "PageRebSupplies" )
util.AddNetworkString( "PageRebDispensing" )

util.AddNetworkString( "spawnRebItem" )

function ENT:Initialize()
    self:SetModel("models/props_lab/monitor01a.mdl")
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)

    self.keyboard = ents.Create("prop_dynamic")
    self.keyboard:SetModel("models/props_c17/computer01_keyboard.mdl")
    self.keyboard:SetPos(self:GetPos() + self:GetUp() * -12 + self:GetForward() * 24 + self:GetRight() * -2 )
    self.keyboard:SetAngles(self:GetAngles() + Angle( 0, 2, 0 ))
    self.keyboard:SetParent(self)
    self.keyboard:Spawn()
    self.keyboard:Activate()
    self:DeleteOnRemove(self.keyboard)

    self:SetRebVendPage( 0 )
    self:SetCMstartMenu( 0 )

    self:SetBudget(ix.config.Get("budget", 100))

    self.nextUseTime = 0

    if (self.nextUseTime > CurTime()) then
        return
    end

    local phys = self:GetPhysicsObject()
    phys:EnableMotion(false)
    phys:Sleep()
end

function ENT:SpawnFunction(client, trace)
    local rebvendor = ents.Create("ix_rebel_vendor")

    rebvendor:SetPos(trace.HitPos )
    rebvendor:SetAngles(Angle(0, (rebvendor:GetPos() - client:GetPos()):Angle().y - 180, 0))
    rebvendor:Spawn()
    rebvendor:Activate()

    Schema:SaveRebelVendor()
    return rebvendor
end

function ENT:OnRemove()
    if (!ix.shuttingDown) then
        Schema:SaveRebelVendor()
    end
end


net.Receive( "CloseRebVendor", function( len, ply )
    local entity = net.ReadEntity()
    entity:EmitSound( "willardnetworks/datapad/mouseclick.wav", 70, 90, 1, CHAN_AUTO )
    entity:SetRebVendPage( 0 )
end)

net.Receive( "PageRebWepons", function( len, ply )
    local entity = net.ReadEntity()
    entity:EmitSound( "willardnetworks/datapad/mouseclick.wav", 70, 90, 1, CHAN_AUTO )
    entity:SetRebVendPage( 1 )
end)

net.Receive( "PageRebArmor", function( len, ply )
    local entity = net.ReadEntity()
    entity:EmitSound( "willardnetworks/datapad/mouseclick.wav", 70, 90, 1, CHAN_AUTO )
    entity:SetRebVendPage( 2 )
end)

net.Receive( "PageRebArmor2", function( len, ply )
    local entity = net.ReadEntity()
    entity:EmitSound( "willardnetworks/datapad/mouseclick.wav", 60, 80, 1, CHAN_AUTO )
    entity:SetRebVendPage( 3 )
end)

net.Receive( "PageRebMedical", function( len, ply )
    local entity = net.ReadEntity()
    entity:EmitSound( "willardnetworks/datapad/mouseclick.wav", 70, 90, 1, CHAN_AUTO )
    entity:SetRebVendPage( 4 )
end)

net.Receive( "PageRebAmmo", function( len, ply )
    local entity = net.ReadEntity()
    entity:EmitSound( "willardnetworks/datapad/mouseclick.wav", 70, 90, 1, CHAN_AUTO )
    entity:SetRebVendPage( 5 )
end)

net.Receive( "PageRebSupplies", function( len, ply )
    local entity = net.ReadEntity()
    entity:EmitSound( "willardnetworks/datapad/mouseclick.wav", 70, 90, 1, CHAN_AUTO )
    entity:SetRebVendPage( 6 )
end)

net.Receive( "PageRebDispensing", function( len, ply )
    local entity = net.ReadEntity()
    entity:SetRebVendPage( 7 )
end)

net.Receive( "spawnRebItem", function( len, ply )
    --print("Net recived")
    local Selfentity = net.ReadEntity() -- Computer entity
    local pos = Selfentity:GetPos() -- Computer pos
    local character = ply:GetCharacter()
    local name = net.ReadString()
    local cost = net.ReadInt(10)
    local targetEntityName = "ix_rebel_vendor_teleport"
    local searchRadius = 300 -- Adjust this radius as needed
    local entitiesInSphere = ents.FindInSphere(pos, searchRadius)
    hook.Run("DoPlayerGesture", ply, ply:LookupSequence( "g_r_type" ), GESTURE_SLOT_CUSTOM)

    for _, entity in pairs(entitiesInSphere) do
        if entity:GetClass() == targetEntityName then
            local TeleportEnt = entity.teleporter
            local TeleporterAnim = TeleportEnt:LookupSequence("spinup")

            TeleportEnt:Fire("SetAnimation", "spinup")
            TeleportEnt:Fire("SetPlaybackRate", 1)

            timer.Simple(TeleportEnt:SequenceDuration(TeleporterAnim) - 1, function()
                ix.item.Spawn(name, TeleportEnt:GetPos() + entity:GetUp() * 40)
                Selfentity:SetBudget(Selfentity:GetBudget() - cost)
            end)
            timer.Simple(TeleportEnt:SequenceDuration(TeleporterAnim), function()
                Selfentity:SetRebVendPage(0)
            end)
            break
        end
    end
end)