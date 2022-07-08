RegisterNetEvent("DonnySpawner:Deer")
AddEventHandler("DonnySpawner:Deer", function()
    local Model = GetHashKey("a_c_deer")
	RequestModel(Model)
	while not HasModelLoaded(Model) do
		Citizen.Wait(50)
	end

	local Ped = PlayerPedId()
	local PedPosition = GetEntityCoords(Ped, false)

	Deer.Handle = CreatePed(28, Model, PedPosition.x, PedPosition.y, PedPosition.z, GetEntityHeading(Ped), true, false)

	SetPedCanRagdoll(Deer.Handle, Deer.Ragdoll)
	SetEntityInvincible(Deer.Handle, Deer.Invincible)

	SetModelAsNoLongerNeeded(Model)
end)

RegisterNetEvent("DonnySpawner:cow")
AddEventHandler("DonnySpawner:cow", function()
    local Model = GetHashKey("a_c_cow")
	RequestModel(Model)
	while not HasModelLoaded(Model) do
		Citizen.Wait(50)
	end

	local Ped = PlayerPedId()
	local PedPosition = GetEntityCoords(Ped, false)

	cow.Handle = CreatePed(28, Model, PedPosition.x, PedPosition.y, PedPosition.z, GetEntityHeading(Ped), true, false)

	SetPedCanRagdoll(cow.Handle, cow.Ragdoll)
	SetEntityInvincible(cow.Handle, cow.Invincible)

	SetModelAsNoLongerNeeded(Model)
end)
