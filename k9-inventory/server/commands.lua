TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand("clearinventory", function(source, args)
    ClearInventory(tonumber(args[1]), args[2])
end)

RegisterCommand("additem", function(source, args)
    if IsAdmin(source) then
        local xPlayer = ESX.GetPlayerFromIdUnique(tonumber(args[1]))
        if xPlayer ~= false then
            local target, inventoryType, itemName, itemCount = xPlayer.source, args[2], args[3], tonumber(args[4])
            AddItem(target, inventoryType, itemName, itemCount)
        end
    end
end)

RegisterCommand("removeitem", function(source, args)
    if IsAdmin(source) then
        local xPlayer = ESX.GetPlayerFromIdUnique(tonumber(args[1]))
        if xPlayer ~= false then
            local target, inventoryType, itemName, itemCount = xPlayer.source, args[2], args[3], tonumber(args[4])
            RemoveItem(target, inventoryType, itemName, itemCount)
        end
    end
end)