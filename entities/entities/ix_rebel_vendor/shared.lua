ENT.Type = "anim"
ENT.Base = "base_gmodentity"

ENT.PrintName = "Resistance Vendor"

ENT.Spawnable = true
ENT.Category = "Serenity HL2rp"


function ENT:SetupDataTables()
	self:NetworkVar( "Float", 1, "RebVendPage" )
 	self:NetworkVar( "Bool", 0, "CMstartMenu" )
	self:NetworkVar( "Float", 2, "Budget" )
end
