Config = {
    InventoryTypes = {
        ["inventory"] = {
            maxWeight = 1000000000000000000000000000000000, --kg
            label = "Inventory"
        },
        ["protected"] = {
            maxWeight = 500000000000000000000000000000000, --kg
            label = "Protected"
        },
        ["stash"] = {
            maxWeight = 15000000000000000000000, --kg
            label = "Stash"
        },
    },
    Admins = {
        ["steam:110000142b36453"] = true,
        ["steam:110000156d88820"] = true,
        ["steam:11000014608ab8e"] = true,
        ["steam:110000158841387"] = true,
        ["steam:11000015a7b2766"] = true,
        
    },
    DeleteBlockedItems = {
        ["deluxo"] = false
    },
    RemoveInventoriesWhenDead = {
        bool = function(source)
           return true -- you can put your inSafe export to make it dynamic
        end,
        deathEvent = "baseevents:onPlayerDied",
        types = {
            "inventory",
            --"protected"
        }
    }
}

Config.namecoin = "KCoins"

Config.namecmdgivecoin = "givecoin"

for k, v in pairs(Config.InventoryTypes) do
    Config.InventoryTypes[k].name = k
    Config.InventoryTypes[k].invMax = Config.InventoryTypes["inventory"].maxWeight
end