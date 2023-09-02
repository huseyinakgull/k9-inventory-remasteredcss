function IsAdmin(source, identifier)
    if identifier == nil then
        identifier = GetPlayerIdentifiers(source)[1]
    end
    return Config.Admins[identifier] --or your admin function
end

function banPlayer(source, identifier)
    -- your ban function here
end

function Notify(source, text)
    print(source, text)
    -- your notify function here
end

function CreateNewPlayerInventory(source, identifier)
    MySQL.Sync.insert('INSERT INTO inventory (identifier, inventory, protected, stash, hotbar) VALUES (?, ?, ?, ?, ?)', {
        identifier,
        json.encode({}),
        json.encode({}),
        json.encode({}),
        json.encode({}),
    })
    PlayerItems[identifier] = {
        ["inventory"] = {},
        ["stash"] = {},
        ["protected"] = {},
    }
    Hotbars[identifier] = {}
    TriggerClientEvent("gfx-inventory:UpdateInventory", source, PlayerItems[identifier])
end

function SavePlayerInventories(identifier)
    local v = PlayerItems[identifier]
    if v then
        for k, v in pairs(Hotbars[identifier]) do
            v.hasItem = nil
            if not v.name  then
                Hotbars[identifier][k] = nil   
            end
        end
        MySQL.Async.execute('UPDATE inventory SET inventory = ?, stash = ?, protected = ?, hotbar = ? WHERE identifier = ?', {
            json.encode(v["inventory"]),
            json.encode(v["stash"]),
            json.encode(v["protected"]),
            json.encode(Hotbars[identifier]),
            identifier
        })
    end
end