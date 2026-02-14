AddCSLuaFile("shared.lua")

include("shared.lua")

function ENT:Initialize()
    self:SetModel("models/magnusson_teleporter.mdl")
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)
    self:DrawShadow(false)
    self:SetNoDraw(true)

    self.teleporter = ents.Create("prop_dynamic")
    self.teleporter:SetModel("models/magnusson_teleporter.mdl")
    self.teleporter:SetPos(self:GetPos())
    self.teleporter:SetAngles(self:GetAngles())
    self.teleporter:SetParent(self)
    self.teleporter:Spawn()
    self.teleporter:Activate()
    self:DeleteOnRemove(self.teleporter)

    local phys = self:GetPhysicsObject()
    phys:EnableMotion(false)
    phys:Sleep()
end

function ENT:SpawnFunction(client, trace)
    local rebvendorTele = ents.Create("ix_rebel_vendor_teleport")

    rebvendorTele:SetPos(trace.HitPos + Vector(0, 5, 0))
    rebvendorTele:SetAngles(Angle(0, (rebvendorTele:GetPos() - client:GetPos()):Angle().y + 90, 0))
    rebvendorTele:Spawn()
    rebvendorTele:Activate()

    Schema:SaveRebelVendorTeleport()
    return rebvendorTele
end

function ENT:OnRemove()
    if (!ix.shuttingDown) then
        Schema:SaveRebelVendorTeleport()
    end
end
