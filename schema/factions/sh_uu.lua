FACTION.name = "Universal Union Official"
FACTION.description = "Not masks. Not machines. Just faces you weren't meant to see. They speak with calm. Always calm. Like they already know how you'll answer. They aren't ones to enforce--they expect. And when they leave, nothing feels the same."
FACTION.pay = 20
FACTION.color = Color(94, 226, 255, 255)
FACTION.models = {
	"models/humans/combine/female_01.mdl",
	"models/humans/combine/female_02.mdl",
	"models/humans/combine/female_03.mdl",
	"models/humans/combine/female_04.mdl",
	"models/humans/combine/female_06.mdl",
	"models/humans/combine/female_07.mdl",
	"models/humans/combine/female_ga.mdl",
	"models/humans/combine/male_01.mdl",
	"models/humans/combine/male_02.mdl",
	"models/humans/combine/male_03.mdl",
	"models/humans/combine/male_04.mdl",
	"models/humans/combine/male_05.mdl",
	"models/humans/combine/male_06.mdl",
	"models/humans/combine/male_07.mdl",
	"models/humans/combine/male_08.mdl",
	"models/humans/combine/male_09.mdl"
}
FACTION.isDefault = false

function FACTION:OnCharacterCreated(client, character)
	local id = Schema:ZeroNumber(math.random(1, 99999), 5)
	local inventory = character:GetInventory()

	character:SetData("cid", id)

	inventory:Add("cid", 1, {
		owner_name = character:GetName(),
		cid = id,
		type = 1
	})
end

FACTION_UU = FACTION.index
