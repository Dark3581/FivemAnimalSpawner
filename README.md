# five m animal spawner
This is just a simple command to spawn in an animal used for an animal riding script, just a simple animal spawner that spawns in the AI animal.

ANIMAL RIDING SCRIPT: https://github.com/VenomXNL/XNLRideAnimals

You may add your animals to the script all you would have to do is first go into client.lua then copy one of the functions look on five m's page on animal spawn codes https://docs.fivem.net/docs/game-references/ped-models/#animals then replace the spawn code with the animal spawn code and change the handles, also do this in server lua, and example for both client and server files will be posted

CLIENT.LUA TEMPLATE
```
RegisterNetEvent("DonnySpawner:NICKNAME")
AddEventHandler("DonnySpawner:NICKNAME", function()
    local Model = GetHashKey("SPAWNCODE")
	RequestModel(Model)
	while not HasModelLoaded(Model) do
		Citizen.Wait(50)
	end

	local Ped = PlayerPedId()
	local PedPosition = GetEntityCoords(Ped, false)

	NICKNAME.Handle = CreatePed(28, Model, PedPosition.x, PedPosition.y, PedPosition.z, GetEntityHeading(Ped), true, false)

	SetPedCanRagdoll(NICKNAME.Handle, NICKNAME.Ragdoll)
	SetEntityInvincible(NICKNAME.Handle, NICKNAME.Invincible)

	SetModelAsNoLongerNeeded(Model)
end)
```
SERVER.LUA TEMPLATE
```
RegisterCommand("NICKNAME", function(source, args, raw)
    local src = source
    if IsPlayerAceAllowed(src, "DonnySpawner") then
    TriggerClientEvent("DonnySpawner:NICKNAME", src) else
        print("Not Allowed")
    end
end)
```


NICKNAME - Change this to the nickname you want to give the function

SPAWNCODE - Change this to the spawn code of the animal using the animal list above


The default ace permission used to be able to access all of the commands is `DonnySpawner`
so in your permissions.cfg of server.cfg add this to be able to use the command

`add_ace <Identifer or group> DonnySpawner allow`

Example's

`add_ace group.admin DonnySpawner allow`
`add_ace identifier.discord:214107219510296576 DonnySpawner allow`
