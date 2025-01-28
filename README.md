# FiveM Animal Spawner
![f0e084-20190517172232_1-333458770](https://user-images.githubusercontent.com/67527731/178375396-cedc4556-348c-4c0c-8c99-3b5952c0a874.png)
This is just a simple command to spawn in an animal used for an animal riding script, just a simple animal spawner that spawns in the AI animal.

ANIMAL RIDING SCRIPT: https://github.com/VenomXNL/XNLRideAnimals

ANIMAL SPAWN CODES: https://docs.fivem.net/docs/game-references/ped-models/#animals

To use all you need to do is /spawnAnimal ANIMALSPAWNCODE

If you want to change the notify you can change it in the server.lua and just change the function.


The default ace permission used to be able to access the commands is `command.spawnAnimal`
so in your permissions.cfg of server.cfg add this to be able to use the command

`add_ace <Identifer or group> command.spawnAnimal allow`

Example's

`add_ace group.admin command.spawnAnimal allow`
`add_ace identifier.discord:214107219510296576 command.spawnAnimal allow`
