RegisterCommand("spawnAnimal", function(source, args, raw)
    local src = source
    local inputanimal = args[1]


    -- CHAT CHAT NOTIFY make configable
    if inputanimal == nil then
        Notify(src, "You must input a animal.")
        return
    end

    TriggerClientEvent("DonnySpawner:SpawnAnimal", src, inputanimal)
end, true)

function Notify(user, msg)
    msg = tostring(msg)
    TriggerClientEvent("chat:addMessage", user, {
        args = {"Animal Spawner", msg}
    })

end