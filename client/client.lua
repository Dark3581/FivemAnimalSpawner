RegisterNetEvent("DonnySpawner:SpawnAnimal")
AddEventHandler("DonnySpawner:SpawnAnimal", function(animalU)
    local Model = GetHashKey(animalU)
	RequestModel(Model)
	while not HasModelLoaded(Model) do
		Citizen.Wait(50)
	end

	local Ped = PlayerPedId()
	local PedPosition = GetEntityCoords(Ped, false)

	Animal.Handle = CreatePed(28, Model, PedPosition.x, PedPosition.y, PedPosition.z, GetEntityHeading(Ped), true, false)

	SetPedCanRagdoll(Animal.Handle, Animal.Ragdoll)
	SetEntityInvincible(Animal.Handle, Animal.Invincible)

	SetModelAsNoLongerNeeded(Model)
end)

TriggerEvent('chat:addSuggestion', '/spawnAnimal', 'Spawns in a animal [LOCKED]', {
	{name="animal", help="Spawn code of animal"},
  })
