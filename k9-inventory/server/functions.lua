function LoadPlayerItems(source, identifier)
    local items = MySQL.Sync.fetchAll('SELECT * FROM inventory WHERE identifier=?', {identifier})
    if items[1] then
        PlayerItems[identifier] = {}
        for k,v in pairs(items[1]) do
            if Config.InventoryTypes[k] then
                PlayerItems[identifier][k] = json.decode(v)
            end
        end
        Hotbars[identifier] = json.decode(items[1].hotbar)
        for k, v in pairs(Hotbars[identifier]) do
            v.hasItem = GetItemByName(source, "inventory", v.name) ~= false
        end
        TriggerClientEvent("gfx-inventory:UpdateInventory", source, PlayerItems[identifier])
        TriggerClientEvent("gfx-inventory:SetHotbar", source, Hotbars[identifier])
    else
        CreateNewPlayerInventory(source, identifier)
    end
end

function GetInventoryWeight(source, inventoryType)
    local identifier = GetPlayerIdentifiers(source)[1]
    if not identifier then return end
    local totalWeight = 0
    if PlayerItems[identifier] and PlayerItems[identifier][inventoryType] then
        for k,v in pairs(PlayerItems[identifier][inventoryType]) do
            totalWeight = totalWeight + (v.count * Items[v.name].weight)
        end
    end
    return totalWeight
end

function HasInventoryGotSpaceForItem(source, inventoryType, itemName, itemCount)
    local totalWeight = GetInventoryWeight(source, inventoryType)
    return (totalWeight + (Items[itemName].weight * itemCount) <= Config.InventoryTypes[inventoryType].maxWeight)
end

function HasItem(source, inventoryType, itemName, itemCount)
    local identifier = GetPlayerIdentifiers(source)[1]
    if not identifier then return end
    if PlayerItems[identifier] and PlayerItems[identifier][inventoryType] then
        local item, index = GetItemByName(source, inventoryType, itemName)
        if itemCount then
            if item then
            	return item.count >= itemCount
            else
                return false
            end
        else
            return item
        end
    end
end

function AddItem(source, inventoryType, itemName, itemCount, info, forceAdd)
    local infoTypes = {
        ["weapon"] = {ammo=0}
    }
    local identifier = GetPlayerIdentifiers(source)[1]
    if not identifier then return false end
    if not Items[itemName] then return false end
    local itemData, index = GetItemByName(source, inventoryType, itemName)
    if itemData then
        PlayerItems[identifier][inventoryType][index].count = PlayerItems[identifier][inventoryType][index].count + itemCount
        if Items[itemName].useItemInfo then
            for i = 1, itemCount do
                table.insert(PlayerItems[identifier][inventoryType][index].info, info ~= nil and info[i] or infoTypes[Items[itemName].type])
            end
            TriggerClientEvent("gfx-inventory:UpdateInventory", source, PlayerItems[identifier][inventoryType][index].info, inventoryType, index, "info")
        end
        TriggerClientEvent("gfx-inventory:UpdateInventory", source, PlayerItems[identifier][inventoryType][index].count, inventoryType, index, "count")
    else
        local infoData = {}
        if Items[itemName].useItemInfo then
            if info then
                infoData = info
            else
                for i = 1, itemCount do
                    table.insert(infoData, infoTypes[Items[itemName].type])
                end
            end
        else
            infoData = nil
        end
        table.insert(PlayerItems[identifier][inventoryType], {
            name = itemName,
            count = itemCount,
            info = infoData
        })
        if inventoryType == "inventory" then
            UpdateHotbar(source, identifier, {itemName = itemName, type = "hasItem", value = true}, false)
        end
        TriggerClientEvent("gfx-inventory:UpdateInventory", source, PlayerItems[identifier][inventoryType][#PlayerItems[identifier][inventoryType]], inventoryType, #PlayerItems[identifier][inventoryType])
    end
    return true
end


function RemoveItem(source, inventoryType, itemName, itemCount)
    local identifier = GetPlayerIdentifiers(source)[1]
    if not identifier then return false end
    local removedInfo = {}
    local itemData, index = GetItemByName(source, inventoryType, itemName)
    if itemData then
        if Items[itemName].useItemInfo then
            for i = PlayerItems[identifier][inventoryType][index].count, (PlayerItems[identifier][inventoryType][index].count - itemCount + 1), -1 do
                table.insert(removedInfo, PlayerItems[identifier][inventoryType][index].info[i])
                table.remove(PlayerItems[identifier][inventoryType][index].info, i)
            end
            TriggerClientEvent("gfx-inventory:UpdateInventory", source, PlayerItems[identifier][inventoryType][index].info, inventoryType, index, "info")
        end
        if itemCount > PlayerItems[identifier][inventoryType][index].count then
            itemCount = PlayerItems[identifier][inventoryType][index].count
        end
        PlayerItems[identifier][inventoryType][index].count = PlayerItems[identifier][inventoryType][index].count - itemCount
        if PlayerItems[identifier][inventoryType][index].count == 0 then
            table.remove(PlayerItems[identifier][inventoryType], index)
            if inventoryType == "inventory" then
                UpdateHotbar(source, identifier, {itemName = itemName, type = "hasItem", value = false}, false)
                if Items[itemName].type == "weapon" then
                    TriggerClientEvent("gfx-inventory:client:RemoveWeapon", source, itemName)
                end
            end
            TriggerClientEvent("gfx-inventory:UpdateInventory", source, nil, inventoryType, index)
        else
            TriggerClientEvent("gfx-inventory:UpdateInventory", source, PlayerItems[identifier][inventoryType][index].count, inventoryType, index, "count")
        end
        return true, removedInfo
    end
    return false
end

function GetItemByName(source, inventoryType, itemName)
    local identifier = GetPlayerIdentifiers(source)[1]
    if not identifier then return false end
    if PlayerItems[identifier] and PlayerItems[identifier][inventoryType] then
        for i = 1, #PlayerItems[identifier][inventoryType] do
            if PlayerItems[identifier][inventoryType][i].name == itemName then
                return PlayerItems[identifier][inventoryType][i], i, Items[itemName]
            end
        end
    end
    return false
end

function GetAllItem()
    return Items
end


function UpdateHotbar(source, identifier, data, hasItem)
    if data.id == nil and data.itemName then
        for k,v in pairs(Hotbars[identifier]) do
            if v.name == data.itemName then
                if data.type == "remove" then
                    table.remove(Hotbars[identifier], k)
                elseif data.type == "hasItem" then
                    Hotbars[identifier][k]["hasItem"] = data.value
                else
                    Hotbars[identifier][k] = data.value
                end
                TriggerClientEvent("gfx-inventory:SetHotbar", source, Hotbars[identifier][k], k)
            end
        end
    else
        Hotbars[identifier][data.id] = data.itemName == false and nil or {
            name = data.itemName,
            hasItem = hasItem or GetItemByName(source, "inventory", data.itemName) ~= false
        }    
        TriggerClientEvent("gfx-inventory:SetHotbar", source, Hotbars[identifier][data.id], data.id)
    end
end

function GetInventory(source, inventoryType)
    inventoryType = inventoryType == nil and "inventory" or inventoryType
    local identifier = GetPlayerIdentifiers(source)[1]
    if not identifier then return end
    return PlayerItems[identifier] and PlayerItems[identifier][inventoryType]
end

function ClearInventory(source, inventoryType)
    inventoryType = inventoryType == nil and "inventory" or inventoryType
    local xPlayer = ESX.GetPlayerFromIdUnique(source)
    local identifier = GetPlayerIdentifiers(xPlayer.source)[1]
    if not identifier then return end
    PlayerItems[identifier][inventoryType] = {}
    for k, v in pairs(Hotbars[identifier]) do
        v.hasItem = false
    end
    TriggerClientEvent("gfx-inventory:UpdateInventory", xPlayer.source, {}, "inventory")
    TriggerClientEvent("gfx-inventory:SetHotbar", xPlayer.source, Hotbars[identifier])

end

function AddNewCommonInventory(items)

end

RegisterCommand("testid", function()
    local items = {}
    for i = 1, #math.random(ItemCount) do
        table.insert(items, Items[i])
    end
    print(json.encode(items))
    AddNewCommonInventory(items)
    print(json.encode(CommonInventories))
end)

function CreateId()
    local id = math.random(999999)
    if CommonInventories[id] then
        print("creating new id: ", id)
        Citizen.Wait(1)
        CreateId()
    else
        return id
    end
end