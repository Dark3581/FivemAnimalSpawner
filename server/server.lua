RegisterCommand("deer", function(source, args, raw)
    local src = source
    if IsPlayerAceAllowed(src, "DonnySpawner") then
    TriggerClientEvent("DonnySpawner:Deer", src) else
        print("Not Allowed")
    end
end)

RegisterCommand("pig", function(source, args, raw)
    local src = source
    if IsPlayerAceAllowed(src, "DonnySpawner") then
    TriggerClientEvent("DonnySpawner:pig", src) else
        print("Not Allowed")
    end
end)

RegisterCommand("cow", function(source, args, raw)
    local src = source
    if IsPlayerAceAllowed(src, "DonnySpawner") then
    TriggerClientEvent("DonnySpawner:cow", src) else
        print("Not Allowed")
    end
end)