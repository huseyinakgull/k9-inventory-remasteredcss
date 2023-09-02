exports("GetInventoryWeight", function(source, inventoryType)
    return GetInventoryWeight(source, inventoryType)
end)

exports("HasInventoryGotSpaceForItem", function(source, inventoryType, itemName, itemCount)
    return HasInventoryGotSpaceForItem(source, inventoryType, itemName, itemCount)
end)

exports("HasItem", function(source, inventoryType, itemName, itemCount)
    return HasItem(source, inventoryType, itemName, itemCount)
end)

exports("AddItem", function(source, inventoryType, itemName, itemCount, info, forceAdd)
    return AddItem(source, inventoryType, itemName, itemCount, info, forceAdd)
end)

exports("RemoveItem", function(source, inventoryType, itemName, itemCount)
    return RemoveItem(source, inventoryType, itemName, itemCount)
end)

exports("GetItemByName", function(source, inventoryType, itemName)
    return GetItemByName(source, inventoryType, itemName)
end)

exports("GetInventory", function(source, inventoryType)
    return GetInventory(source, inventoryType)
end)

exports("GetAllItem", function(source, inventoryType)
    return GetAllItem()
end)

exports("ClearInventory", function(source, inventoryType)
    return ClearInventory(source, inventoryType)
end)

