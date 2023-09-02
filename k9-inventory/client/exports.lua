exports("isOpened", function()
    return isOpened
end)

exports("disableInventory", function(bool)
    disableInventory(bool)
end)

exports("OpenInventory", function(inventoryType)
    OpenInventory(inventoryType)
end)

exports("HasItem", function(inventoryType, itemName, count)
    HasItem(inventoryType, itemName, count)
end)


exports("Items", function()
    return Items
end)