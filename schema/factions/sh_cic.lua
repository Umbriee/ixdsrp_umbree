FACTION.name = "Civil Infestation Control"
FACTION.description = "Civil Infestation Control: The boys layered in lead tasked with keeping the spread at bay. Mandatory volunteership may be ushered upon you by your local Civil Protection. So you may as well take the step to keep the city clean."
FACTION.color = Color(255, 255, 0, 255)
FACTION.pay = 10
FACTION.models = {
	"models/industrial_uniforms/industrial_uniform2.mdl",
	"models/industrial_uniforms/industrial_uniform.mdl",
	"models/hlvr/characters/worker/npc/worker_citizen.mdl",
	"models/hlvr/characters/hazmat_worker/npc/hazmat_worker_citizen.mdl"
}
FACTION.isDefault = false

function FACTION:OnCharacterCreated(client, character)
	local id = Schema:ZeroNumber(math.random(1, 99999), 5)
	local inventory = character:GetInventory()

	character:SetData("cid", id)

end

FACTION_CIC = FACTION.index
