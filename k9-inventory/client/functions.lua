TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function Display(data)
    if data.bool and disableInventory then return end
    isOpened = data.bool
    ArrangeControls(data.bool)
    local inventory, inventoryWeight, otherInventory, otherInventoryWeight
    if data.bool then
        openedInventoryType = data.inventoryInfo.name
        inventory, inventoryWeight = FormatItems(PlayerItems["inventory"])
        otherInventory, otherInventoryWeight = FormatItems(PlayerItems[data.inventoryInfo.name])
        if data.inventoryInfo then
            data.inventoryInfo.inventoryWeight = inventoryWeight
            data.inventoryInfo.otherInventoryWeight = otherInventoryWeight
        end    
    end
        SendNUIMessage({
            type = "display",
            bool = data.bool,
            inventory = inventory,
            otherInventory = otherInventory,
            inventoryInfo = data.inventoryInfo
        })
end

function UpdateInventory(inventoryType)
    local inventory, inventoryWeight = FormatItems(PlayerItems["inventory"])
    local otherInventory, otherInventoryWeight = FormatItems(PlayerItems[inventoryType])

    local inventoryInfo = {
        inventoryWeight = inventoryWeight,
        otherInventoryWeight = otherInventoryWeight
    }
    SendNUIMessage({
        type = "update",
        inventory = inventory,
        otherInventory = otherInventory,
        inventoryInfo = inventoryInfo
    })
end

function SetHotbar()
    SendNUIMessage({
        type = "hotbar",
        hotbar = HotbarData
    })
end

function FormatItems(inventory, key)
    local returnTable = {}
    local totalWeight = 0
    if inventory ~= nil then
        for i = 1, #inventory do
            if inventory[i] ~= nil then
                inventory[i].image = Items[inventory[i].name].image
                inventory[i].label = Items[inventory[i].name].label
                inventory[i].rarity = Items[inventory[i].name].rarity
                inventory[i].type = Items[inventory[i].name].type
                inventory[i].weight = Items[inventory[i].name].weight
                totalWeight = totalWeight + (inventory[i].count * inventory[i].weight)
            end
        end
    end
    return inventory, totalWeight
end

function disableInventory(bool)
    disableInventory = bool
    if bool then
        Display({
            bool = false
        })
    end
end

function giveitems()
    TriggerServerEvent("gfx-inventory:server:giveitem")
end

function CommandFunction()
    if not isOpened then
        OpenInventory("protected")
    else
        Display({
            bool = false
        })
    end
end

function HasItem(inventoryType, itemName, count)
    count = count == nil and 1 or count
    if PlayerItems[inventoryType] then
        for i = 1, #PlayerItems[inventoryType] do
            local element = PlayerItems[inventoryType][i]
            if element.name == itemName then
                if count <= element.count then
                    return true
                end
            end
        end
    end
    return false
end

function OpenInventory(inventoryType)
    if disableInventory then return end
    TriggerServerEvent("gfx-inventory:server:OpenInventory", inventoryType)
end

function UseSlot(id)
    local v = HotbarData[id]
    if not isDead and not isOpened and v and HasItem("inventory", v.name) then
        TriggerServerEvent("gfx-inventory:OnItemUsed", v.name)
    end
end