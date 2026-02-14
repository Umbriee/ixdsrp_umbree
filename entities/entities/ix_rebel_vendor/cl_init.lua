include("shared.lua")
local imgui = include( "ixhl2rp/schema/libs/thirdparty/imgui.lua" )

local rebVendFont = "Digital-7"

surface.CreateFont( "Vendortext", {
	font = rebVendFont, --  Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 15,
	weight = 100,
	blursize = 0,
	scanlines = 0,
	antialias = false,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )

surface.CreateFont( "RebVendorMenu", {
	font = "Arcade Classic", --  Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 12,
	weight = 100,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	shadow = false,
} )

surface.CreateFont( "RebVendorSmallText", {
	font = rebVendFont, --  Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 15,
	weight = 100,
	blursize = 0,
	scanlines = 2,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = true,
	additive = false,
	outline = false,
} )

surface.CreateFont( "RebVendorMisctext", {
	font = "Arcade Classic",
	extended = false,
	size = 8,
	weight = 100,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	shadow = false,
} )

surface.CreateFont( "RebVendorMiniText2", {
	font = rebVendFont, --  Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 10,
	weight = 10,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )

surface.CreateFont( "RebVendorMiniText", {
	font = rebVendFont, --  Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 9,
	weight = 100,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )


local Weapons = {
	{
		wepName = "USP-B",
		itemName = "usp",
		cost = 20,
	},
	{
		wepName = "Beretta",
		itemName = "arc9_m93r",
		cost = 25,
	},
	{
		wepName = "MP5",
		itemName = "arc9_mp5",
		cost = 45,
	},
	{
		wepName = "MP7-B",
		itemName = "smg",
		cost = 50,
	},
	--tier 2
	{
		wepName = "Colt 1911",
		itemName = "arc9_m1911",
		cost = 45,
	},
	{
		wepName = "M16A2",
		itemName = "arc9_m16a2",
		cost = 65,
	},
	{
		wepName = "M4A1",
		itemName = "arc9_m4a1",
		cost = 75,
	},

	{
		wepName = "Grenade",
		itemName = "grenade",
		cost = 35,
	},
}

local BodyArmor = {
	{
		ArmorName = "Armor Repair Kit",
		itemName = "armorplates",
		cost = 50,
	},
	{
		ArmorName = "Blue Combat Pants",
		itemName = "rebel_jeans_blue",
		cost = 25,
	},
	{
		ArmorName = "Black Combat Pants",
		itemName = "rebel_jeans_black",
		cost = 25,
	},
	{
		ArmorName = "Civil Protection Vest",
		itemName = "vest_cp",
		cost = 75,
	},
	{
		ArmorName = "",
		itemName = "",
		cost = 101,
	},
	{
		ArmorName = "",
		itemName = "",
		cost = 101,
	},
	{
		ArmorName = "",
		itemName = "",
		cost = 101,
	},
	{
		ArmorName = "",
		itemName = "",
		cost = 101,
	},
}

local Medical = {
	{
		MedicalName = "Bandage",
		itemName = "bandage",
		cost = 5,
	},
	{
		MedicalName = "Splint",
		itemName = "splint",
		cost = 10,
	},
	{
		MedicalName = "Quick Clot",
		itemName = "quickclot",
		cost = 10,
	},
	{
		MedicalName = "Biogel Pen",
		itemName =  "biogesyringe",
		cost = 20,
	},
	{
		MedicalName = "Biogel Vial",
		itemName =  "biogelvial",
		cost = 30,
	},
	{
		MedicalName = "Biogel Kit",
		itemName =  "biogelkit",
		cost = 50,
	},
	{
		MedicalName = "First Aid",
		itemName =  "medkit",
		cost = 25,
	}
}

local Ammo = {
	{
		AmmoName = "9x19mm",
		itemName =  "9x19mm_box",
		cost = 15,
	},
	{
		AmmoName = "45 ACP",
		itemName = "45acp",
		cost = 20,
	},
	{
		AmmoName = "4,6x30",
		itemName = "4_6x30mm_box",
		cost = 25,
	},
	{
		AmmoName = "5,56x45",
		itemName = "5_56x45mm",
		cost = 35,
	},
	{
		AmmoName = "12 Guage",
		itemName = "12Guage",
		cost = 40,
	},
}

local Supplies = {
	{
		SuppliesName = "Water Bottle",
		itemName =  "water",
		cost = 10,
	},
	{
		SuppliesName = "Load Of bread",
		itemName = "loaf",
		cost = 10,
	},
	{
		SuppliesName = "Soviet Cigarettes",
		itemName = "sovietcigarettes",
		cost = 20,
	},
	{
		SuppliesName = "Rolled Cigarettes",
		itemName = "rolledcigarettes",
		cost = 25,
	},
	{
		SuppliesName = "MRE",
		itemName = "mre",
		cost = 35,
	},
}

function ENT:Draw()
	self:DrawModel()

	self.nextUseTime = self.nextUseTime or 0

	local ply = LocalPlayer()
	local character = ply:GetCharacter()
	if !character then return end
	local name = character:GetName()
	local money = character:GetMoney()

	if imgui.Entity3D2D(self, Vector(11.6, -10.5, 13), Angle(0, 90, 85.5), 0.1, 300) then
		local screen = Material( "vgui/resistance_monitor.png" )
		
		surface.SetDrawColor(255, 255, 255, 255)
		surface.SetMaterial( screen )
		surface.DrawTexturedRect( 0, 0, 210, 180 )

		imgui.End3D2D()
	end

	if self:GetRebVendPage() == 0 then
		if imgui.Entity3D2D(self, Vector(11.6, -10.5, 13), Angle(0, 90, 85.5), 0.1, 150) then

			draw.DrawText( "Welcome", "RebVendorMenu", 105, 25, Color(255,255,255,255), TEXT_ALIGN_CENTER )
			draw.DrawText( "Budget: "..self:GetBudget(), "RebVendorMisctext", 20, 160, Color(255,255,255,255), TEXT_ALIGN_LEFT )

			if imgui.xTextButton("Weapons", "Vendortext", 20, 50, 50, 15, 0, Color(255,255,255,255) , Color(43, 48, 56, 255), Color(150,150,150)) and (self.nextUseTime < CurTime()) then
				-- the xTextButton function returns true, if user clicked on this area during this frame
				net.Start( "PageRebWepons" )
				net.WriteEntity( self)
				net.SendToServer()
				self.nextUseTime = CurTime() + 0.5
			end


			if imgui.xTextButton("Body Armor", "Vendortext", 29, 70, 50, 15, 0, Color(255,255,255,255) , Color(43, 48, 560, 255),Color(150,150,150)) and (self.nextUseTime < CurTime()) then
				-- the xTextButton function returns true, if user clicked on this area during this frame
				net.Start( "PageRebArmor" )
				net.WriteEntity( self)
				net.SendToServer()
				self.nextUseTime = CurTime() + 0.5
			end


			if imgui.xTextButton("Medical", "Vendortext", 17, 90, 50, 15, 0, Color(255,255,255,255) , Color(150, 0, 0, 255),Color(150,150,150)) and (self.nextUseTime < CurTime()) then
				-- the xTextButton function returns true, if user clicked on this area during this frame
				net.Start( "PageRebMedical" )
				net.WriteEntity( self)
				net.SendToServer()
				self.nextUseTime = CurTime() + 0.5
			end

			if imgui.xTextButton("Ammunition", "Vendortext", 26, 110, 50, 15, 0, Color(255,255,255,255) , Color(250, 150, 50, 255),Color(150,150,150)) and (self.nextUseTime < CurTime()) then
				-- the xTextButton function returns true, if user clicked on this area during this frame
				net.Start( "PageRebAmmo" )
				net.WriteEntity( self)
				net.SendToServer()
				self.nextUseTime = CurTime() + 0.5
			end

			if imgui.xTextButton("Supplies", "Vendortext", 21, 130, 50, 15, 0, Color(255,255,255,255) , Color(150, 150, 150, 255),Color(150,150,150)) and (self.nextUseTime < CurTime()) then
				-- the xTextButton function returns true, if user clicked on this area during this frame
				net.Start( "PageRebSupplies" )
				net.WriteEntity( self)
				net.SendToServer()
				self.nextUseTime = CurTime() + 0.5
			end

			imgui.End3D2D()
		end
	end

	local ItemPanelSelect = Material("vgui/licensedisabled.png")
	local ItemPanelSelectRed = Material("vgui/licensedisabled2.png")
	local ItemPanelSelectGreen = Material("vgui/licenseenabled.png")
	local w, h = 20,50
	local sW, sH = 125, 50

	if self:GetRebVendPage() == 1 then -- weapons
		if imgui.Entity3D2D(self, Vector(11.6, -10.5, 13), Angle(0, 90, 85.5), 0.1, 150) then

			draw.DrawText( ":[Weapons]:", "RebVendorMenu", 105, 25, Color(200, 200, 200, 255), TEXT_ALIGN_CENTER )
			draw.DrawText( "Budget: "..self:GetBudget(), "RebVendorMisctext", 20, 160, Color(255,255,255,255), TEXT_ALIGN_LEFT )

			if imgui.xTextButton("<-", "Vendortext", 15, 17, 10, 10, 0, Color(255,255,255, 255) , Color(43, 48, 56, 220),Color(150,150,150)) and (self.nextUseTime < CurTime()) then
				-- the xTextButton function returns true, if user clicked on this area during this frame
				net.Start( "CloseRebVendor" )
				net.WriteEntity( self)
				net.SendToServer()
				self.nextUseTime = CurTime() + 0.5
			end


			if (self:GetBudget() < Weapons[1].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( w, h, 50, 15 )
				draw.DrawText("Cost "..Weapons[1].cost, "RebVendorMiniText", w + 25, h + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Weapons[1].wepName, "RebVendorSmallText", 20, h, 50, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				h = h + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( w, h, 50, 15 )
				draw.DrawText("Cost "..Weapons[1].cost, "RebVendorMiniText", w + 25, h + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Weapons[1].wepName, "RebVendorSmallText", 20, h, 50, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(Weapons[1].itemName)
					net.WriteInt(Weapons[1].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				h = h + 25
			end

			if (self:GetBudget() < Weapons[2].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( w, h, 50, 15 )
				draw.DrawText("Cost "..Weapons[2].cost, "RebVendorMiniText", w + 25, h + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Weapons[2].wepName, "RebVendorSmallText", 20, h, 50, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				h = h + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( w, h, 50, 15 )
				draw.DrawText("Cost "..Weapons[2].cost, "RebVendorMiniText", w + 25, h + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Weapons[2].wepName, "RebVendorSmallText", 20, h, 50, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(Weapons[2].itemName)
					net.WriteInt(Weapons[2].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				h = h + 25
			end

			if (self:GetBudget() < Weapons[3].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( w, h, 50, 15 )
				draw.DrawText("Cost "..Weapons[3].cost, "RebVendorMiniText", w + 25, h + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Weapons[3].wepName, "RebVendorSmallText", 20, h, 50, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				h = h + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( w, h, 50, 15 )
				draw.DrawText("Cost "..Weapons[3].cost, "RebVendorMiniText", w + 25, h + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Weapons[3].wepName, "RebVendorSmallText", 20, h, 50, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(Weapons[3].itemName)
					net.WriteInt(Weapons[3].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				h = h + 25
			end

			if (self:GetBudget() < Weapons[4].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( w, h, 50, 15 )
				draw.DrawText("Cost "..Weapons[4].cost, "RebVendorMiniText", w + 25, h + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Weapons[4].wepName, "RebVendorSmallText", 20, h, 50, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				h = h + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( w, h, 50, 15 )
				draw.DrawText("Cost "..Weapons[4].cost, "RebVendorMiniText", w + 25, h + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Weapons[4].wepName, "RebVendorSmallText", 20, h, 50, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(Weapons[4].itemName)
					net.WriteInt(Weapons[4].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				h = h + 25
			end

			sW = sW+15

			if (self:GetBudget() < Weapons[5].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( sW, sH, 50, 15 )
				draw.DrawText( "Cost "..Weapons[5].cost, "RebVendorMiniText", sW + 30, sH + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Weapons[5].wepName, "RebVendorSmallText", sW, sH, 50, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				sH = sH + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( sW, sH, 50, 15 )
				draw.DrawText( "Cost "..Weapons[5].cost, "RebVendorMiniText", sW + 25, sH + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Weapons[5].wepName, "RebVendorSmallText", sW, sH, 50, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(Weapons[5].itemName)
					net.WriteInt(Weapons[5].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				sH = sH + 25
			end

			if (self:GetBudget() < Weapons[6].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( sW, sH, 50, 15 )
				draw.DrawText( "Cost "..Weapons[6].cost, "RebVendorMiniText", sW + 30, sH + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Weapons[6].wepName, "RebVendorSmallText", sW, sH, 50, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				sH = sH + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( sW, sH, 50, 15 )
				draw.DrawText( "Cost "..Weapons[6].cost, "RebVendorMiniText", sW + 25, sH + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Weapons[6].wepName, "RebVendorSmallText", sW, sH, 50, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(Weapons[6].itemName)
					net.WriteInt(Weapons[6].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				sH = sH + 25
			end

			if (self:GetBudget() < Weapons[7].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( sW, sH, 50, 15 )
				draw.DrawText( "Cost "..Weapons[7].cost, "RebVendorMiniText", sW + 30, sH + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Weapons[7].wepName, "RebVendorSmallText", sW, sH, 50, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				sH = sH + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( sW, sH, 50, 15 )
				draw.DrawText( "Cost "..Weapons[7].cost, "RebVendorMiniText", sW + 25, sH + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Weapons[7].wepName, "RebVendorSmallText", sW, sH, 50, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(Weapons[7].itemName)
					net.WriteInt(Weapons[7].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				sH = sH + 25
			end

			if (self:GetBudget() < Weapons[8].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( sW, sH, 50, 15 )
				draw.DrawText( "Cost "..Weapons[8].cost, "RebVendorMiniText", sW + 30, sH + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Weapons[8].wepName, "RebVendorSmallText", sW, sH, 50, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				sH = sH + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( sW, sH, 50, 15 )
				draw.DrawText( "Cost "..Weapons[8].cost, "RebVendorMiniText", sW + 25, sH + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Weapons[8].wepName, "RebVendorSmallText", sW, sH, 50, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(Weapons[8].itemName)
					net.WriteInt(Weapons[8].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				sH = sH + 25
			end

			sW = sW-15
			imgui.End3D2D()
		end
	end

	if self:GetRebVendPage() == 2 then -- Armor page1
		if imgui.Entity3D2D(self, Vector(11.6, -10.5, 13), Angle(0, 90, 85.5), 0.1, 150) then

			draw.DrawText( ":[Body Armor]:", "RebVendorMenu", 105, 25, Color(200, 200, 200, 255), TEXT_ALIGN_CENTER )
			draw.DrawText( "Budget: "..self:GetBudget(), "RebVendorMisctext", 20, 160, Color(255,255,255,255), TEXT_ALIGN_LEFT )

			if imgui.xTextButton("<-", "Vendortext", 15, 17, 10, 10, 0, Color(255,255,255, 255) , Color(43, 48, 56, 220),Color(150,150,150)) and (self.nextUseTime < CurTime()) then
				-- the xTextButton function returns true, if user clicked on this area during this frame
				net.Start( "CloseRebVendor" )
				net.WriteEntity( self)
				net.SendToServer()
				self.nextUseTime = CurTime() + 0.5
			end

			if imgui.xTextButton("Next Page", "RebVendorMiniText2", 150, 40, 55, 10, 0, Color(255,255,255, 255) , Color(43, 48, 56, 220),Color(150,150,150)) and (self.nextUseTime < CurTime()) then
				-- the xTextButton function returns true, if user clicked on this area during this frame
				net.Start( "PageRebArmor2" )
				net.WriteEntity( self)
				net.SendToServer()
				self.nextUseTime = CurTime() + 0.5
			end

			if (self:GetBudget() < BodyArmor[1].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( w, h, 100, 15 )
				draw.DrawText("Cost "..BodyArmor[1].cost, "RebVendorMiniText", w + 50, h + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(BodyArmor[1].ArmorName, "RebVendorSmallText", 20, h, 100, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				h = h + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( w, h, 100, 15 )
				draw.DrawText("Cost "..BodyArmor[1].cost, "RebVendorMiniText", w + 50, h + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(BodyArmor[1].ArmorName, "RebVendorSmallText", 20, h, 100, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(BodyArmor[1].itemName)
					net.WriteInt(BodyArmor[1].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				h = h + 25
			end


			if (self:GetBudget() < BodyArmor[2].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( w, h, 120, 15 )
				draw.DrawText("Cost "..BodyArmor[2].cost, "RebVendorMiniText", w + 50, h + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(BodyArmor[2].ArmorName, "RebVendorSmallText", 20, h, 120, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				h = h + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( w, h, 120, 15 )
				draw.DrawText("Cost "..BodyArmor[2].cost, "RebVendorMiniText", w + 50, h + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(BodyArmor[2].ArmorName, "RebVendorSmallText", 20, h, 120, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(BodyArmor[2].itemName)
					net.WriteInt(BodyArmor[2].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				h = h + 25
			end


			if (self:GetBudget() < BodyArmor[3].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( w, h, 120, 15 )
				draw.DrawText("Cost "..BodyArmor[3].cost, "RebVendorMiniText", w + 50, h + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(BodyArmor[3].ArmorName, "RebVendorSmallText", 20, h, 120, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				h = h + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( w, h, 120, 15 )
				draw.DrawText("Cost "..BodyArmor[3].cost, "RebVendorMiniText", w + 50, h + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(BodyArmor[3].ArmorName, "RebVendorSmallText", 20, h, 120, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(BodyArmor[3].itemName)
					net.WriteInt(BodyArmor[3].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				h = h + 25
			end

			
			if (self:GetBudget() < BodyArmor[4].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( w, h, 130, 15 )
				draw.DrawText("Cost "..BodyArmor[4].cost, "RebVendorMiniText", w + 50, h + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(BodyArmor[4].ArmorName, "RebVendorSmallText", 20, h, 130, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				h = h + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( w, h, 130, 15 )
				draw.DrawText("Cost "..BodyArmor[4].cost, "RebVendorMiniText", w + 50, h + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(BodyArmor[4].ArmorName, "RebVendorSmallText", 20, h, 130, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(BodyArmor[4].itemName)
					net.WriteInt(BodyArmor[4].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				h = h + 25
			end

			imgui.End3D2D()
		end
	end

	if self:GetRebVendPage() == 3 then-- Armor page2
		if imgui.Entity3D2D(self, Vector(11.6, -10.5, 13), Angle(0, 90, 85.5), 0.1, 150) then

			draw.DrawText( ":[Body Armor]:", "RebVendorMenu", 105, 25, Color(200, 200, 200, 255), TEXT_ALIGN_CENTER )
			draw.DrawText( "Budget: "..self:GetBudget(), "RebVendorMisctext", 20, 160, Color(255,255,255,255), TEXT_ALIGN_LEFT )

			if imgui.xTextButton("<-", "Vendortext", 15, 17, 10, 10, 0, Color(255,255,255, 255) , Color(43, 48, 56, 220),Color(150,150,150)) and (self.nextUseTime < CurTime()) then
				-- the xTextButton function returns true, if user clicked on this area during this frame
				net.Start( "PageRebArmor" )
				net.WriteEntity( self)
				net.SendToServer()
				self.nextUseTime = CurTime() + 0.5
			end

			if (self:GetBudget() < BodyArmor[5].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( w, h, 50, 15 )
				draw.DrawText("Cost "..BodyArmor[5].cost, "RebVendorMiniText", w + 25, h + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(BodyArmor[5].ArmorName, "RebVendorSmallText", 20, h, 100, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				h = h + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( w, h, 50, 15 )
				draw.DrawText("Cost "..BodyArmor[5].cost, "RebVendorMiniText", w + 25, h + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(BodyArmor[5].ArmorName, "RebVendorSmallText", 20, h, 100, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(BodyArmor[5].itemName)
					net.WriteInt(BodyArmor[5].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				h = h + 25
			end


			if (self:GetBudget() < BodyArmor[6].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( w, h, 50, 15 )
				draw.DrawText("Cost "..BodyArmor[6].cost, "RebVendorMiniText", w + 25, h + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(BodyArmor[6].ArmorName, "RebVendorSmallText", 20, h, 120, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				h = h + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( w, h, 50, 15 )
				draw.DrawText("Cost "..BodyArmor[6].cost, "RebVendorMiniText", w + 25, h + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(BodyArmor[6].ArmorName, "RebVendorSmallText", 20, h, 120, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(BodyArmor[6].itemName)
					net.WriteInt(BodyArmor[6].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				h = h + 25
			end


			if (self:GetBudget() < BodyArmor[7].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( w, h, 50, 15 )
				draw.DrawText("Cost "..BodyArmor[7].cost, "RebVendorMiniText", w + 25, h + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(BodyArmor[7].ArmorName, "RebVendorSmallText", 20, h, 120, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				h = h + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( w, h, 50, 15 )
				draw.DrawText("Cost "..BodyArmor[7].cost, "RebVendorMiniText", w + 25, h + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(BodyArmor[7].ArmorName, "RebVendorSmallText", 20, h, 120, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(BodyArmor[7].itemName)
					net.WriteInt(BodyArmor[7].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				h = h + 25
			end

			
			if (self:GetBudget() < BodyArmor[8].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( w, h, 50, 15 )
				draw.DrawText("Cost "..BodyArmor[8].cost, "RebVendorMiniText", w + 25, h + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(BodyArmor[8].ArmorName, "RebVendorSmallText", 20, h, 130, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				h = h + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( w, h, 50, 15 )
				draw.DrawText("Cost "..BodyArmor[8].cost, "RebVendorMiniText", w + 25, h + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(BodyArmor[8].ArmorName, "RebVendorSmallText", 20, h, 130, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(BodyArmor[8].itemName)
					net.WriteInt(BodyArmor[8].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				h = h + 25
			end

			imgui.End3D2D()
		end
	end

	if self:GetRebVendPage() == 4 then -- medical
		if imgui.Entity3D2D(self, Vector(11.6, -10.5, 13), Angle(0, 90, 85.5), 0.1, 150) then

			draw.DrawText( ":[Medical]:", "RebVendorMenu", 105, 25, Color(200, 200, 200, 255), TEXT_ALIGN_CENTER )
			draw.DrawText( "Budget: "..self:GetBudget(), "RebVendorMisctext", 20, 160, Color(255,255,255,255), TEXT_ALIGN_LEFT )

			if imgui.xTextButton("<-", "Vendortext", 15, 17, 10, 10, 0, Color(255,255,255, 255) , Color(43, 48, 56, 220),Color(150,150,150)) and (self.nextUseTime < CurTime()) then
				-- the xTextButton function returns true, if user clicked on this area during this frame
				net.Start( "CloseRebVendor" )
				net.WriteEntity( self)
				net.SendToServer()
				self.nextUseTime = CurTime() + 0.5
			end


			if (self:GetBudget() < Medical[1].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( w, h, 65, 15 )
				draw.DrawText( "Cost "..Medical[1].cost, "RebVendorMiniText", w + 30, h + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Medical[1].MedicalName, "RebVendorSmallText", 19, h, 50, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				h = h + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( w, h, 65, 15 )
				draw.DrawText( "Cost "..Medical[1].cost, "RebVendorMiniText", w + 30, h + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Medical[1].MedicalName, "RebVendorSmallText", 19, h, 65, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(Medical[1].itemName)
					net.WriteInt(Medical[1].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				h = h + 25
			end

			if (self:GetBudget() < Medical[2].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( w, h, 65, 15 )
				draw.DrawText( "Cost "..Medical[2].cost, "RebVendorMiniText", w + 30, h + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Medical[2].MedicalName, "RebVendorSmallText", 20, h, 65, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				h = h + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( w, h, 65, 15 )
				draw.DrawText( "Cost "..Medical[2].cost, "RebVendorMiniText", w + 30, h + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Medical[2].MedicalName, "RebVendorSmallText", 20, h, 65, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(Medical[2].itemName)
					net.WriteInt(Medical[2].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				h = h + 25
			end

			if (self:GetBudget() < Medical[3].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( w, h, 65, 15 )
				draw.DrawText( "Cost "..Medical[3].cost, "RebVendorMiniText", w + 30, h + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Medical[3].MedicalName, "RebVendorSmallText", 19, h, 65, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				h = h + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( w, h, 65, 15 )
				draw.DrawText( "Cost "..Medical[3].cost, "RebVendorMiniText", w + 30, h + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Medical[3].MedicalName, "RebVendorSmallText", 19, h, 65, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(Medical[3].itemName)
					net.WriteInt(Medical[3].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				h = h + 25
			end

			if (self:GetBudget() < Medical[4].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( w, h, 65, 15 )
				draw.DrawText( "Cost "..Medical[4].cost, "RebVendorMiniText", w + 30, h + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Medical[4].MedicalName, "RebVendorSmallText", 19, h, 65, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				h = h + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( w, h, 65, 15 )
				draw.DrawText( "Cost "..Medical[4].cost, "RebVendorMiniText", w + 30, h + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Medical[4].MedicalName, "RebVendorSmallText", 19, h, 65, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(Medical[4].itemName)
					net.WriteInt(Medical[4].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				h = h + 25
			end


			if (self:GetBudget() < Medical[5].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( sW, sH, 65, 15 )
				draw.DrawText( "Cost "..Medical[5].cost, "RebVendorMiniText", sW + 30, sH + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Medical[5].MedicalName, "RebVendorSmallText", 125, sH, 65, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				sH = sH + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( sW, sH, 65, 15 )
				draw.DrawText( "Cost "..Medical[5].cost, "RebVendorMiniText", sW + 30, sH + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Medical[5].MedicalName, "RebVendorSmallText", 125, sH, 65, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(Medical[5].itemName)
					net.WriteInt(Medical[5].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				sH = sH + 25
			end

			if (self:GetBudget() < Medical[6].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( sW, sH, 65, 15 )
				draw.DrawText( "Cost "..Medical[6].cost, "RebVendorMiniText", sW + 30, sH + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Medical[6].MedicalName, "RebVendorSmallText", 125, sH, 65, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				sH = sH + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( sW, sH, 65, 15 )
				draw.DrawText( "Cost "..Medical[6].cost, "RebVendorMiniText", sW + 30, sH + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Medical[6].MedicalName, "RebVendorSmallText", 125, sH, 65, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(Medical[6].itemName)
					net.WriteInt(Medical[6].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				sH = sH + 25
			end

			imgui.End3D2D()
		end
	end

	if self:GetRebVendPage() == 5 then -- ammunition
		if imgui.Entity3D2D(self, Vector(11.6, -10.5, 13), Angle(0, 90, 85.5), 0.1, 150) then

			draw.DrawText( ":[Ammunition]:", "RebVendorMenu", 105, 25, Color(200, 200, 200, 255), TEXT_ALIGN_CENTER )
			draw.DrawText( "Budget: "..self:GetBudget(), "RebVendorMisctext", 20, 160, Color(255,255,255,255), TEXT_ALIGN_LEFT )

			if imgui.xTextButton("<-", "Vendortext", 15, 17, 10, 10, 0, Color(255,255,255, 255) , Color(43, 48, 56, 220),Color(150,150,150)) and (self.nextUseTime < CurTime()) then
				-- the xTextButton function returns true, if user clicked on this area during this frame
				net.Start( "CloseRebVendor" )
				net.WriteEntity( self)
				net.SendToServer()
				self.nextUseTime = CurTime() + 0.5
			end


			if (self:GetBudget() < Ammo[1].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( w, h, 50, 15 )
				draw.DrawText( "Cost "..Ammo[1].cost, "RebVendorMiniText", w + 25, h + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Ammo[1].AmmoName, "RebVendorSmallText", 20, h, 50, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				h = h + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( w, h, 50, 15 )
				draw.DrawText( "Cost "..Ammo[1].cost, "RebVendorMiniText", w + 25, h + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Ammo[1].AmmoName, "RebVendorSmallText", w, h, 50, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(Ammo[1].itemName)
					net.WriteInt(Ammo[1].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				h = h + 25
			end

			if (self:GetBudget() < Ammo[2].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( w, h, 50, 15 )
				draw.DrawText( "Cost "..Ammo[2].cost, "RebVendorMiniText", w + 25, h + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Ammo[2].AmmoName, "RebVendorSmallText", w, h, 50, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				h = h + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( w, h, 50, 15 )
				draw.DrawText( "Cost "..Ammo[2].cost, "RebVendorMiniText", w + 25, h + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Ammo[2].AmmoName, "RebVendorSmallText", w, h, 50, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(Ammo[2].itemName)
					net.WriteInt(Ammo[2].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				h = h + 25
			end

			if (self:GetBudget() < Ammo[3].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( w, h, 50, 15 )
				draw.DrawText( "Cost "..Ammo[3].cost, "RebVendorMiniText", w + 25, h + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Ammo[3].AmmoName, "RebVendorSmallText", w, h, 50, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				h = h + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( w, h, 50, 15 )
				draw.DrawText( "Cost "..Ammo[3].cost, "RebVendorMiniText", w + 25, h + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Ammo[3].AmmoName, "RebVendorSmallText", w, h, 50, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(Ammo[3].itemName)
					net.WriteInt(Ammo[3].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				h = h + 25
			end

			if (self:GetBudget() < Ammo[4].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( w, h, 50, 15 )
				draw.DrawText( "Cost "..Ammo[4].cost, "RebVendorMiniText", w + 25, h + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Ammo[4].AmmoName, "RebVendorSmallText", w, h, 50, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				h = h + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( w, h, 50, 15 )
				draw.DrawText( "Cost "..Ammo[4].cost, "RebVendorMiniText", w + 25, h + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Ammo[4].AmmoName, "RebVendorSmallText", w, h, 50, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(Ammo[4].itemName)
					net.WriteInt(Ammo[4].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				h = h + 25
			end

			sW = sW+15

			if (self:GetBudget() < Ammo[5].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( sW, sH, 50, 15 )
				draw.DrawText( "Cost "..Ammo[5].cost, "RebVendorMiniText", sW + 25, sH + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Ammo[5].AmmoName, "RebVendorSmallText", sW, sH, 50, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				sH = sH + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( sW, sH, 50, 15 )
				draw.DrawText( "Cost "..Ammo[5].cost, "RebVendorMiniText", sW + 25, sH + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Ammo[5].AmmoName, "RebVendorSmallText", sW, sH, 50, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(Ammo[5].itemName)
					net.WriteInt(Ammo[5].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				sH = sH + 25
			end

			sW = sW-15

			imgui.End3D2D()
		end
	end

	if self:GetRebVendPage() == 6 then -- supplies
		if imgui.Entity3D2D(self, Vector(11.6, -10.5, 13), Angle(0, 90, 85.5), 0.1, 150) then

			draw.DrawText( ":[Supplies]:", "RebVendorMenu", 105, 25, Color(200, 200, 200, 255), TEXT_ALIGN_CENTER )
			draw.DrawText( "Budget: "..self:GetBudget(), "RebVendorMisctext", 20, 160, Color(255,255,255,255), TEXT_ALIGN_LEFT )

			if imgui.xTextButton("<-", "Vendortext", 15, 17, 10, 10, 0, Color(255,255,255, 255) , Color(43, 48, 56, 220),Color(150,150,150)) and (self.nextUseTime < CurTime()) then
				-- the xTextButton function returns true, if user clicked on this area during this frame
				net.Start( "CloseRebVendor" )
				net.WriteEntity( self)
				net.SendToServer()
				self.nextUseTime = CurTime() + 0.5
			end


			if (self:GetBudget() < Supplies[1].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( w, h, 85, 15 )
				draw.DrawText( "Cost "..Supplies[1].cost, "RebVendorMiniText", w + 42, h + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Supplies[1].SuppliesName, "RebVendorSmallText", 20, h, 82, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				h = h + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( w, h, 85, 15 )
				draw.DrawText( "Cost "..Supplies[1].cost, "RebVendorMiniText", w + 42, h + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Supplies[1].SuppliesName, "RebVendorSmallText", w, h, 82, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(Supplies[1].itemName)
					net.WriteInt(Supplies[1].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				h = h + 25
			end

			if (self:GetBudget() < Supplies[2].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( w, h, 88, 15 )
				draw.DrawText( "Cost "..Supplies[2].cost, "RebVendorMiniText", w + 42, h + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Supplies[2].SuppliesName, "RebVendorSmallText", w, h, 87, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				h = h + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( w, h, 88, 15 )
				draw.DrawText( "Cost "..Supplies[2].cost, "RebVendorMiniText", w + 42, h + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Supplies[2].SuppliesName, "RebVendorSmallText", w, h, 87, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(Supplies[2].itemName)
					net.WriteInt(Supplies[2].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				h = h + 25
			end

			if (self:GetBudget() < Supplies[3].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( w, h, 108, 15 )
				draw.DrawText( "Cost "..Supplies[3].cost, "RebVendorMiniText", w + 42, h + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Supplies[3].SuppliesName, "RebVendorSmallText", w, h, 105, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				h = h + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( w, h, 108, 15 )
				draw.DrawText( "Cost "..Supplies[3].cost, "RebVendorMiniText", w + 42, h + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Supplies[3].SuppliesName, "RebVendorSmallText", w, h, 105, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(Supplies[3].itemName)
					net.WriteInt(Supplies[3].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				h = h + 25
			end

			if (self:GetBudget() < Supplies[4].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( w, h, 113, 15 )
				draw.DrawText( "Cost "..Supplies[4].cost, "RebVendorMiniText", w + 42, h + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Supplies[4].SuppliesName, "RebVendorSmallText", w, h, 110, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				h = h + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( w, h, 113, 15 )
				draw.DrawText( "Cost "..Supplies[4].cost, "RebVendorMiniText", w + 42, h + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Supplies[4].SuppliesName, "RebVendorSmallText", w, h, 110, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(Supplies[4].itemName)
					net.WriteInt(Supplies[4].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				h = h + 25
			end

			sW = sW+15

			if (self:GetBudget() < Supplies[5].cost) then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelectRed )
				surface.DrawTexturedRect( sW, sH, 50, 15 )
				draw.DrawText( "Cost "..Supplies[5].cost, "RebVendorMiniText", sW + 25, sH + 15, Color(227, 0, 0, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Supplies[5].SuppliesName, "RebVendorSmallText", sW, sH, 50, 15, 0, Color(227, 0, 0, 200) , Color(227, 0, 0, 200), Color(227, 0, 0, 200)) and (self.nextUseTime < CurTime()) then
					self:EmitSound("buttons/button19.wav", 75, 90, 1, CHAN_AUTO)
					self.nextUseTime = CurTime() + 1
				end
				sH = sH + 25
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( ItemPanelSelect )
				surface.DrawTexturedRect( sW, sH, 50, 15 )
				draw.DrawText( "Cost "..Supplies[5].cost, "RebVendorMiniText", sW + 25, sH + 15, Color(220, 220, 220, 240), TEXT_ALIGN_CENTER )
				
				if imgui.xTextButton(Supplies[5].SuppliesName, "RebVendorSmallText", sW, sH, 50, 15, 0, Color(0, 154, 250) , Color(4, 17, 61, 255), Color(255,0,0, 200)) and (self.nextUseTime < CurTime()) then
					-- the xTextButton function returns true, if user clicked on this area during this frame
					self:EmitSound( "ambient/machines/keyboard_fast"..math.random(1, 3).."_1second.wav", 75, 80, 1, CHAN_AUTO )
					self.nextUseTime = CurTime() + 1
					net.Start( "spawnRebItem" )
					net.WriteEntity(self)
					net.WriteString(Supplies[5].itemName)
					net.WriteInt(Supplies[5].cost, 10)
					net.SendToServer()

					net.Start( "PageRebDispensing" )
					net.WriteEntity( self)
					net.SendToServer()
				end
				sH = sH + 25
			end

			sW = sW-15

			imgui.End3D2D()
		end
	end

	if self:GetRebVendPage() == 7 then -- loading screen
		if imgui.Entity3D2D(self, Vector(11.6, -10.5, 13), Angle(0, 90, 85.5), 0.1, 150) then

			surface.SetDrawColor( 255, 255, 255, 255 )
			surface.SetMaterial(Material("terranova/ui/crafting/icons/engineering.png"))
			surface.DrawTexturedRect( 50, 40, 100, 100 )

			draw.DrawText( "..Teleporting..", "Vendortext", 105, 30, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER )

			imgui.End3D2D()
		end
	end
end


