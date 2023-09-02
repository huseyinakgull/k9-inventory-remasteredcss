lesanciencoords = {}
leskillparallahlefdp = {}
allkill = {}
isarmetomber = {}
allmesconstru = {}
allplayer = {
    ["deathmatch"] = {
        
    },

    ["deluxo"] = {
        
    },
    
    ["battleroyale"] = {
        
    },

    ["gungame"] = {
        
    },
}

leskills = {
    ["deathmatch"] = {
        {src = 0, idunique = 0, kill = -1, name = ""},
        {src = 0, idunique = 0, kill = -1, name = ""},
        {src = 0, idunique = 0, kill = -1, name = ""},
        {src = 0, idunique = 0, kill = -1, name = ""},
    },
    ["gungame"] = {
        {src = 0, idunique = 0, kill = -1, name = ""},
        {src = 0, idunique = 0, kill = -1, name = ""},
        {src = 0, idunique = 0, kill = -1, name = ""},
        {src = 0, idunique = 0, kill = -1, name = ""},
    },
}

arenablip = {
    ["1"] = {
        coords = vector3(1562.334, 3574.853, 33.84619),
        radius = 200.0
    },
    
    ["2"] = {
        coords = vector3(1562.334, 3574.853, 33.84619),
        radius = 200.0
    },
    
    ["3"] = {
        coords = vector3(1562.334, 3574.853, 33.84619),
        radius = 200.0
    },
}

arena = {
    ["1"] = {
        vector3(1573.24, 3618.211, 35.36267),
        vector3(1536.818, 3613.015, 35.24463),
        vector3(1534.747, 3580.747, 35.43005),
        vector3(1600.022, 3564.87, 35.34583),
        vector3(1598.677, 3575.064, 42.10254),
        vector3(1572.185, 3614.927, 35.37952),
        vector3(1552.259, 3599.261, 41.93408),
        vector3(1499.407, 3565.147, 38.58093),
        vector3(1610.163, 3558.04, 35.41321),
        vector3(1521.587, 3601.437, 35.37952)
    },
    
    ["2"] = {
        vector3(1573.24, 3618.211, 35.36267),
        vector3(1536.818, 3613.015, 35.24463),
        vector3(1534.747, 3580.747, 35.43005),
        vector3(1600.022, 3564.87, 35.34583),
        vector3(1598.677, 3575.064, 42.10254),
        vector3(1572.185, 3614.927, 35.37952),
        vector3(1552.259, 3599.261, 41.93408)
    },
    
    ["3"] = {
        vector3(1573.24, 3618.211, 35.36267),
        vector3(1536.818, 3613.015, 35.24463),
        vector3(1534.747, 3580.747, 35.43005),
        vector3(1600.022, 3564.87, 35.34583),
        vector3(1598.677, 3575.064, 42.10254),
        vector3(1572.185, 3614.927, 35.37952),
        vector3(1552.259, 3599.261, 41.93408),
    },
    
}

arenagungame = {
    ["1"] = {
        vector3(-2301.745, 239.1824, 167.6),
        vector3(-2301.824, 178.8659, 167.6),
        vector3(-2307.349, 236.4396, 167.6),
        vector3(-2293.002, 208.2066, 167.6),
        vector3(-2308.971, 225.6923, 167.6),
        vector3(-2274.949, 181.767, 167.6),
        vector3(-2301.283, 170.4659, 167.6),
        vector3(-2285.881, 176.1494, 167.6)
    },
    
    ["2"] = {
        vector3(-2301.745, 239.1824, 167.6),
        vector3(-2301.824, 178.8659, 167.6),
        vector3(-2307.349, 236.4396, 167.6),
        vector3(-2293.002, 208.2066, 167.6),
        vector3(-2308.971, 225.6923, 167.6),
        vector3(-2274.949, 181.767, 167.6),
        vector3(-2301.283, 170.4659, 167.6),
        vector3(-2285.881, 176.1494, 167.6)
    },
    
    ["3"] = {
        vector3(-2301.745, 239.1824, 167.6),
        vector3(-2301.824, 178.8659, 167.6),
        vector3(-2307.349, 236.4396, 167.6),
        vector3(-2293.002, 208.2066, 167.6),
        vector3(-2308.971, 225.6923, 167.6),
        vector3(-2274.949, 181.767, 167.6),
        vector3(-2301.283, 170.4659, 167.6),
        vector3(-2285.881, 176.1494, 167.6),
    },
}

arenaactuel = {}
arenaactuelblips = {}

isgamestart = false
coordsdepart = vector3(-75.187881469727, -819.24359130859, 326.17504882813)


-- c le radius au cas ou de la zone elle est géré côté serveur pour ne pas avoir de la desyncro
lazone = 250.0
degatzone = 1
lecentredelazone = vector3(61.672771453857, -1679.6567382813, 29.298700332642)

local timerestartgame = 60 * 60 * 1000
local xy = 0

itemrandomcoffre = {
    {
        {name = "WEAPON_SMG", count = 1},
        {name = "revolter", count = 1},
        {name = "grossepotion", count = 1},
    },

    {
        {name = "WEAPON_SMG", count = 1},
        {name = "kitdesoin", count = 1},
    },

    {
        {name = "WEAPON_ASSAULTRIFLE", count = 1},
        {name = "club", count = 1},
        {name = "minipotion", count = 3},
        
    },
}

coffre = {
    {object = "prop_mil_crate_01", coords = vector3(25.644895553589, -1495.9113769531, 29.488216400146), heading = 47.898162841797, chance = 2, loot = false}, -- 1 chance sur cb ?
    {object = "prop_mil_crate_01", coords = vector3(82.592658996582, -1710.0814208984, 28.998001098633), heading = 48.267070770264, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(53.044132232666, -1478.4090576172, 34.118633270264), heading = 10.608190536499, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(172.68864440918, -1314.3917236328, 34.336013793945), heading = 127.61614990234, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(25.387870788574, -1731.6390380859, 29.302953720093), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(-39.951694488525, -1582.1678466797, 29.32266998291), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(163.1031036377, -1509.9415283203, 29.133834838867), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(300.37603759766, -1647.6177978516, 32.527523040771), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(193.37594604492, -1653.8527832031, 38.888130187988), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(41.040962219238, -1782.1242675781, 47.695281982422), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(34.750232696533, -1777.8172607422, 47.695281982422), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(198.98626708984, -1855.7131347656, 27.141582489014), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(63.224369049072, -1904.99609375, 21.699005126953), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(-109.25359344482, -1796.5753173828, 42.68278503418), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(-81.621551513672, -1602.0062255859, 40.271129608154), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(11.495600700378, -1494.1166992188, 40.895088195801), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(124.8674621582, -1509.6052246094, 36.344898223877), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(235.03639221191, -1563.6066894531, 29.333683013916), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(228.24736022949, -1850.3830566406, 34.862606048584), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(166.46270751953, -1798.2103271484, 35.092826843262), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(86.348083496094, -1826.6096191406, 35.28556060791), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(63.46411895752, -1548.9278564453, 29.460083007813), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(-10.263670921326, -1457.9558105469, 30.476816177368), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(45.568214416504, -1436.1555175781, 29.311731338501), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(247.54504394531, -1611.6069335938, 35.129779815674), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(267.77590942383, -1707.8736572266, 29.354690551758), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(264.15701293945, -1750.7495117188, 29.363983154297), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(246.36694335938, -1761.1569824219, 29.062545776367), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(-186.75595092773, -1683.7041015625, 33.249294281006), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(-124.65042877197, -1525.8792724609, 34.024311065674), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(-12.749912261963, -1524.5379638672, 33.592258453369), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(28.722951889038, -1530.0264892578, 29.32884979248), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(38.066181182861, -1594.0541992188, 29.32936668396), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(63.199619293213, -1628.8017578125, 29.422208786011), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(77.974327087402, -1588.2770996094, 38.346218109131), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(177.6382598877, -1565.5789794922, 29.246910095215), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(225.28189086914, -1558.7064208984, 29.298234939575), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(277.65283203125, -1684.2014160156, 29.223852157593), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(226.46690368652, -1818.4122314453, 23.788335800171), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(172.87554931641, -1751.8088378906, 28.992607116699), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(5.0030236244202, -1828.6636962891, 25.040546417236), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(-50.082324981689, -1837.6154785156, 26.436864852905), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(-89.07706451416, -1815.1600341797, 42.549896240234), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(-141.10711669922, -1700.4499511719, 30.766119003296), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(-90.983512878418, -1620.7166748047, 29.571338653564), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(-57.242347717285, -1611.5599365234, 30.091770172119), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(7.2509622573853, -1526.0042724609, 29.268253326416), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(15.320080757141, -1488.6331787109, 30.165994644165), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(95.510063171387, -1518.2137451172, 29.285102844238), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(232.84190368652, -1616.8583984375, 29.288652420044), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(150.17475891113, -1675.4949951172, 29.667539596558), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(-47.52657699585, -1688.2537841797, 29.425849914551), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(-44.366939544678, -1667.0947265625, 36.631748199463), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(17.132884979248, -1758.0078125, 29.30192565918), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(31.779253005981, -1704.2506103516, 29.295492172241), heading = 0.0, chance = 2, loot = false},
    {object = "prop_mil_crate_01", coords = vector3(167.2649230957, -1731.5301513672, 29.291688919067), heading = 0.0, chance = 2, loot = false},
}

allcoffre = {}

coordsavion = {
    {coords = vector3(-130.32920837402, -1520.0831298828, 34.141777038574), heading = 225.31965637207, gotos = vector3(251.14091491699, -1839.1939697266, 19.415321350098)},
    {coords = vector3(300.27236938477, -1753.2823486328, 29.162902832031), heading = 84.697937011719, gotos = vector3(-173.94502258301, -1722.7459716797, 30.621469497681)},
    {coords = vector3(48.895050048828, -1910.1744384766, 21.615957260132), heading = 357.62866210938, gotos = vector3(70.087226867676, -1433.4265136719, 29.311880111694)},
}

pickup = {
    {label = "SMG", name = "WEAPON_SMG", coords = vector3(58.319198608398, -1690.9150390625, 29.347085952759), components = {}, type = "item_weapon", tintIndex = 0, chance = 1}
}

allpickup = {}

vehicule = {
    {model = "club", type = "automobile", coords = vector3(-174.59346008301, -1494.4262695313, 32.664478302002), heading = 228.90084838867, chance = 1},
}

allvehicule = {}

object  = {
    {model = "prop_streetlight_05", coords = vector3(51.160274505615, -1663.9125976563, 29.29761505127), heading = 121.73490905762, vie = 200, chance = 1, construadonner = math.random(500,700)}
}

allobject = {}

Citizen.CreateThread(function()
    local randomduweb = math.random(1,3)
    arenagungameactuel = arenagungame[tostring(randomduweb)]
    while true do
        local random = math.random(1,3)
        arenaactuel = arena[tostring(random)]
        arenaactuelblips = arenablip[tostring(random)]
        for i = 1, #allplayer["deathmatch"] do
            local xPlayer = ESX.GetPlayerFromId(allplayer["deathmatch"][i].src)
            SetEntityCoords(GetPlayerPed(allplayer["deathmatch"][i].src), arenaactuel[math.random(1,#arenaactuel)])
            TriggerClientEvent("MP:arenaactuel", xPlayer.source, arenaactuel, arenaactuelblips)
            xPlayer.showNotification("Nouvelle arène !")
        end
        Citizen.Wait(timerestartgame)
    end
end)


local listweapon = {
    ["deathmatch"] = {
        "weapon_assaultrifle_mk2",
        "weapon_carbinerifle_mk2",
        "weapon_specialcarbine_mk2",
        "weapon_bullpuprifle_mk2",
        "weapon_combatmg_mk2",
    },
    ["deluxo"] = {
        string.upper("weapon_marksmanrifle"),
        string.upper("weapon_marksmanrifle_mk2"),
        string.upper("weapon_heavysniper"),
        string.upper("weapon_heavysniper_mk2"),
        "deluxo",
        "oppressor"
    },
    ["gungame"] = {
        "weapon_snspistol",
        "weapon_pistol",
        "weapon_pistol50",
        "weapon_compactrifle",
        "weapon_bullpuprifle",
        "weapon_combatpdw",
        "weapon_assaultrifle",
        "weapon_carbinerifle",
        "weapon_carbinerifle_mk2",
        "weapon_specialcarbine",
        "weapon_specialcarbine_mk2",
        "weapon_tacticalrifle",
        "weapon_combatmg",
        "weapon_combatmg_mk2",
        "weapon_heavysniper",
        "weapon_marksmanrifle",
        "weapon_marksmanrifle_mk2",
        "weapon_advancedrifle",
        "weapon_bullpuprifle_mk2",
        "weapon_knife",
    }
}

removeplayer = function(type, src)
    for i = 1, #allplayer[type] do
        if allplayer[type][i].src == src then
            table.remove(allplayer[type], i)
            return true
        end
    end
    return false
end

isplayerinarena = function(type, src)
    for i = 1, #allplayer[type] do
        if allplayer[type][i].src == src then
            return true, i
        end
    end
    return false
end

iscoffreexist = function(id)
    for i = 1, #allcoffre do
        if allcoffre[i].netid == id then
            return true, i
        end
    end
    return false
end

foundplayerkill = function(type, srcc)
    for i = 1, #leskills[type] do
        if leskills[type][i].src == srcc then
            return true, i
        end
    end
    return false
end

exports("allplayer", function()
    return allplayer
end)

exports("jsaispas", function(src)
    if isarmetomber[src] == nil then isarmetomber[src] = false end
    if isarmetomber[src] then
        isarmetomber[src] = false
        return true
    else
        return false
    end
end)

function sort_on_valueseeeeee(t,a)
    table.sort(t, function (u,v)
        return
             tonumber(u[a])>tonumber(v[a])
    
    end)
end

exports("isplayerinarena", isplayerinarena)

isentity = function(entity)
    for i = 1, #allobject do
        if allobject[i].entity == entity then
            return true, i
        end
    end
    return false
end

function addplayertotable(type, value)
    table.insert(type, value)
end

function randomFloat(lower, greater)
    return lower + math.random()  * (greater - lower);
end

RegisterServerEvent('MP:logskill')
AddEventHandler('MP:logskill', function(idkill, wea)
    local source = source
    if idkill then
        if isplayerinarena("gungame", idkill) then
            if allkill[idkill] then
                allkill[idkill] = allkill[idkill] + 1
                print(GetPlayerName(idkill) .. " vient de faire 1 kill ça lui fait " ..allkill[idkill].. " au total")
                if not (allkill[idkill] >= #listweapon["gungame"]) then
                    RemoveAllPedWeapons(GetPlayerPed(idkill))
                    GiveWeaponToPed(GetPlayerPed(idkill), GetHashKey(listweapon["gungame"][allkill[idkill] + 1]), 250, false, true)
                    local inventory = exports["k9-inventory"]:GetInventory(idkill, "inventory")
                    for i = 1, #inventory do
                        local name, count = inventory[i].name, inventory[i].count
                        local bool, removed = RemoveItem(idkill, "inventory", name, count)
                    end
                    exports["k9-inventory"]:AddItem(idkill, "inventory", string.upper(listweapon["gungame"][allkill[idkill] + 1]), 1)
                else
                    print(GetPlayerName(idkill) .. " vient de gagner la game")
                    local randomduweb = math.random(1,3)
                    arenagungameactuel = arenagungame[tostring(randomduweb)]
                    for i = 1, #allplayer["gungame"] do
                        local src = allplayer["gungame"][i].src
                        local xPlayer = ESX.GetPlayerFromId(src)
                        RemoveAllPedWeapons(GetPlayerPed(src))
                        local inventory = exports["k9-inventory"]:GetInventory(source, "inventory")
                        for i = 1, #inventory do
                            local name, count = inventory[i].name, inventory[i].count
                            local bool, removed = RemoveItem(source, "inventory", name, count)
                        end
                        GiveWeaponToPed(GetPlayerPed(src), GetHashKey(listweapon["gungame"][1]), 250, false, true)
                        exports["k9-inventory"]:AddItem(src, "inventory", string.upper(listweapon["gungame"][1]), 1)
                        xPlayer.showNotification(GetPlayerName(src) .. " vient de gagner la game")
                        allkill[src] = 0
                        SetEntityCoords(GetPlayerPed(src), arenagungameactuel[math.random(1,#arenagungameactuel)])
                        TriggerClientEvent("MP:arenagungameactuel", src, arenagungameactuel)
                    end
                end
            end
            RemoveAllPedWeapons(GetPlayerPed(source))
            local inventory = exports["k9-inventory"]:GetInventory(source, "inventory")
            for i = 1, #inventory do
                local name, count = inventory[i].name, inventory[i].count
                local bool, removed = RemoveItem(source, "inventory", name, count)
            end
            exports["k9-inventory"]:AddItem(source, "inventory", string.upper(listweapon["gungame"][allkill[source] + 1]), 1)
        elseif isplayerinarena("deathmatch", idkill) then
            local bool, i = foundplayerkill("deathmatch", idkill)
            if bool then
                leskills["deathmatch"][i].kill = leskills["deathmatch"][i].kill + 1
                sort_on_valueseeeeee(leskills["deathmatch"], "kill")
                for i = 1, #allplayer["deathmatch"] do
                    TriggerClientEvent("MP:updatekillarene", allplayer["deathmatch"][i].src, leskills["deathmatch"])
                end
            end
        end
    end
    RemoveAllPedWeapons(GetPlayerPed(source))
end)

RegisterServerEvent("MP:deathmatch")
AddEventHandler("MP:deathmatch", function()
    local allahleped = GetPlayerPed(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    if GetPlayerRoutingBucket(source) == 0 then
        if exports["k9-safezone"]:IsSafezone(source) then
            SetPlayerRoutingBucket(source, 1)
            lesanciencoords[source] = GetEntityCoords(allahleped)
            SetEntityCoords(allahleped, arenaactuel[math.random(1, #arenaactuel)])
            xPlayer.showNotification("You have join arena")
            table.insert(allplayer["deathmatch"], {src = source, idunique = xPlayer.getIdUnique()})
            TriggerClientEvent("MP:updatenbs", -1, "deathmatch", #allplayer["deathmatch"] .."/30")
            TriggerClientEvent("MP:arenaactuel", source, arenaactuel, arenaactuelblips)
            addplayertotable(leskills["deathmatch"], {src = source, idunique = xPlayer.getIdUnique(), kill = 0, name = GetPlayerName(source)})
            sort_on_valueseeeeee(leskills["deathmatch"], "kill")
            TriggerClientEvent("MP:joinarena", source, 1, leskills["deathmatch"])
            for i = 1, #allplayer["deathmatch"] do
                TriggerClientEvent("MP:updatekillarene", allplayer["deathmatch"][i].src, leskills["deathmatch"])
            end
                local inventory = exports["k9-inventory"]:GetInventory(source, "inventory")
                for i = 1, #inventory do
                    local name, count = inventory[i].name, inventory[i].count
                    local bool, removed = RemoveItem(source, "inventory", name, count)
                    if bool then
                        AddItem(source, "protected", name, count, Items[name].useItemInfo and removed or nil, true)
                    end
                end
                for i = 1, #listweapon["deathmatch"] do
                    exports["k9-inventory"]:AddItem(source, "inventory", string.upper(listweapon["deathmatch"][i]), 1)
                end
        else
            xPlayer.showNotification("You are not in the safezone")
        end
    else
        xPlayer.showNotification("You are already in the arena")
    end
end)

RegisterServerEvent("MP:deluxo")
AddEventHandler("MP:deluxo", function()
    local allahleped = GetPlayerPed(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    if GetPlayerRoutingBucket(source) == 0 then
        if exports["k9-safezone"]:IsSafezone(source) then
            SetPlayerRoutingBucket(source, 2)
            lesanciencoords[source] = GetEntityCoords(allahleped)
            xPlayer.showNotification("You have join arena")
            table.insert(allplayer["deluxo"], {src = source, idunique = xPlayer.getIdUnique()})
            TriggerClientEvent("MP:updatenbs", -1, "deluxo", #allplayer["deluxo"] .."/50")
            TriggerClientEvent("MP:joinarena", source, 2)
            local inventory = exports["k9-inventory"]:GetInventory(source, "inventory")
                for i = 1, #inventory do
                    local name, count = inventory[i].name, inventory[i].count
                    local bool, removed = RemoveItem(source, "inventory", name, count)
                    if bool then
                        AddItem(source, "protected", name, count, Items[name].useItemInfo and removed or nil, true)
                    end
                end
                for i = 1, #listweapon["deluxo"] do
                    exports["k9-inventory"]:AddItem(source, "inventory", listweapon["deluxo"][i], 1)
                end
        else
            xPlayer.showNotification("You are not in the safezone")
        end
    else
        xPlayer.showNotification("Tu es déjà dans une arène")
    end
end)

RegisterServerEvent("MP:gungame")
AddEventHandler("MP:gungame", function()
    local allahlepede = GetPlayerPed(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    if GetPlayerRoutingBucket(source) == 0 then
        if exports["k9-safezone"]:IsSafezone(source) then
            SetPlayerRoutingBucket(source, 3) -- faire un truc pour ça 
            lesanciencoords[source] = GetEntityCoords(allahlepede)
            SetEntityCoords(allahlepede, arenagungameactuel[math.random(1, #arenaactuel)])
            TriggerClientEvent("MP:arenagungameactuel", source, arenagungameactuel)
            xPlayer.showNotification("You have join arena")
            table.insert(allplayer["gungame"], {src = source, idunique = xPlayer.getIdUnique()})
            TriggerClientEvent("MP:updatenbs", -1, "gungame", #allplayer["gungame"] .."/20")
            addplayertotable(leskills["gungame"], {src = source, idunique = xPlayer.getIdUnique(), kill = 0, name = GetPlayerName(source)})
            sort_on_valueseeeeee(leskills["gungame"], "kill")
            TriggerClientEvent("MP:joinarena", source, 3, leskills["gungame"])
            for i = 1, #allplayer["gungame"] do
                TriggerClientEvent("MP:updatekillarene", allplayer["gungame"][i].src, leskills["gungame"])
            end
            local inventory = exports["k9-inventory"]:GetInventory(source, "inventory")
                    for i = 1, #inventory do
                        local name, count = inventory[i].name, inventory[i].count
                        local bool, removed = RemoveItem(source, "inventory", name, count)
                        if bool then
                            AddItem(source, "protected", name, count, Items[name].useItemInfo and removed or nil, true)
                        end
                    end
            allkill[source] = 0
            GiveWeaponToPed(allahlepede, GetHashKey(listweapon["gungame"][1]), 250, false, true)
            exports["k9-inventory"]:AddItem(source, "inventory", string.upper(listweapon["gungame"][1]), 1)
        else
            xPlayer.showNotification("You are not in the safezone")
        end
    else
        xPlayer.showNotification("Tu es déjà dans une arène")
    end
end)

RegisterCommand("leave", function(source, args)
    local xPlayer = ESX.GetPlayerFromId(source)
    if GetPlayerRoutingBucket(source) == 1 then
            local allahleped = GetPlayerPed(source)
            -- allah return nil il existe pas ma gueule by MP
            RemoveAllPedWeapons(allahleped)
            SetEntityCoords(allahleped, lesanciencoords[source])
            xPlayer.showNotification("You have leave arena")
            removeplayer("deathmatch", source)
            TriggerClientEvent("MP:quitarena", source, GetPlayerRoutingBucket(source), #allplayer["deathmatch"])
            TriggerClientEvent("MP:updatenbs", -1, "deathmatch", #allplayer["deathmatch"] .."/30")
            SetPlayerRoutingBucket(source, 0)
            local inventory = exports["k9-inventory"]:GetInventory(source, "inventory")
            for i = 1, #inventory do
                local name, count = inventory[i].name, inventory[i].count
                local bool, removed = RemoveItem(source, "inventory", name, count)
            end
            RemoveAllPedWeapons(GetPlayerPed(source))
            local bool, w = foundplayerkill("deathmatch", source)
            if bool then
                table.remove(leskills["deathmatch"], w)
                sort_on_valueseeeeee(leskills["deathmatch"], "kill")
                for i = 1, #allplayer["deathmatch"] do
                    TriggerClientEvent("MP:updatekillarene", allplayer["deathmatch"][i].src, leskills["deathmatch"])
                end
            end
    elseif GetPlayerRoutingBucket(source) == 2 then
        local allahleped = GetPlayerPed(source)
            -- allah return nil il existe pas ma gueule by MP
            RemoveAllPedWeapons(allahleped)
            SetEntityCoords(allahleped, lesanciencoords[source])
            xPlayer.showNotification("You have leave arena")
            removeplayer("deluxo", source)
            TriggerClientEvent("MP:quitarena", source, GetPlayerRoutingBucket(source), #allplayer["deluxo"])
            TriggerClientEvent("MP:updatenbs", -1, "deathmatch", #allplayer["deluxo"] .."/30")
            SetPlayerRoutingBucket(source, 0)
            local inventory = exports["k9-inventory"]:GetInventory(source, "inventory")
            for i = 1, #inventory do
                local name, count = inventory[i].name, inventory[i].count
                local bool, removed = RemoveItem(source, "inventory", name, count)
            end
            RemoveAllPedWeapons(GetPlayerPed(source))
    elseif GetPlayerRoutingBucket(source) == 3 then
        local allahleped = GetPlayerPed(source)
        RemoveAllPedWeapons(allahleped)
            SetEntityCoords(allahleped, lesanciencoords[source])
            xPlayer.showNotification("You have leave arena")
            removeplayer("gungame", source)
            TriggerClientEvent("MP:quitarena", source, GetPlayerRoutingBucket(source), #allplayer["gungame"])
            TriggerClientEvent("MP:updatenbs", -1, "gungame", #allplayer["gungame"] .."/30")
            SetPlayerRoutingBucket(source, 0)
            local inventory = exports["k9-inventory"]:GetInventory(source, "inventory")
            for i = 1, #inventory do
                local name, count = inventory[i].name, inventory[i].count
                local bool, removed = RemoveItem(source, "inventory", name, count)
            end
            RemoveAllPedWeapons(GetPlayerPed(source))
            local bool, w = foundplayerkill("gungame", source)
            if bool then
                table.remove(leskills["gungame"], w)
                sort_on_valueseeeeee(leskills["gungame"], "kill")
                for i = 1, #allplayer["gungame"] do
                    TriggerClientEvent("MP:updatekillarene", allplayer["gungame"][i].src, leskills["gungame"])
                end
            end
    else
        xPlayer.showNotification("You are not in the arena")
    end
end)

RegisterServerEvent("gfx-inventory:server:OpenInventory", function(inventoryType, identifierInput, items)
    local src = source
    local identifier = GetPlayerIdentifiers(src)[1]
    if not identifier then return end
    if identifierInput then
        if not IsAdmin(src, identifier) then
            banPlayer(src, identifier)
            return
        else
            identifier = identifierInput
            if not PlayerItems[identifier] then
                Notify(source, Locales["inventory_not_found"])
                return
            end
        end
    end
    TriggerClientEvent("gfx-inventory:OpenInventory", src, {
        inventoryInfo = Config.InventoryTypes[inventoryType]
    })
end)

foundcrew = function(namecrew)
    for i = 1, #allcrew do
        if allcrew[i].name == namecrew then
            return true, allcrew[i]
        end
    end
    return false
end

foundplayerincrew = function(identifier)
    for k, v in pairs(allmembrecrew) do
        for i = 1, #v do
            if identifier == v[i].identifier then
                local found, crew = foundcrew(k)
                if found then
                    return true, crew
                end
            end
        end
    end
    return false
end

ESX.RegisterServerCallback("MP:getall", function(source, cb)
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    MySQL.Async.fetchAll('SELECT * FROM users WHERE identifier = @identifier', {
        ['@identifier'] = xPlayer.identifier
    }, function(result)
        local increw, lecrew = foundplayerincrew(xPlayer.identifier)
        cb({kill = result[1].kill, death = result[1].death, zombie = result[1].zombie}, xPlayer.getAccount("bank").money, xPlayer.getIdUnique(), allplayer, {bool = increw, lecrew = lecrew})
    end)
end)

RegisterServerEvent("MP:reveil")
AddEventHandler("MP:reveil", function()
    local _src = source
    local url = exports["k9-squad"]:GetPPSteam(GetPlayerIdentifiers(source)[1])
    TriggerClientEvent("MP:updateppsteam", _src, url)
end)

RegisterServerEvent("gfx-inventory:ItemDrag", function(data)
    local itemName, itemCount, fromType, toType = data.itemName, data.count, data.fromType, data.toType
    local src = source
    local identifier = GetPlayerIdentifiers(src)[1]
    if not identifier then return end
    if Config.InventoryTypes[toType] then
            if HasItem(src, fromType, itemName, itemCount) then
                local bool, removed = RemoveItem(source, fromType, itemName, itemCount)
                if bool then
                    AddItem(source, toType, itemName, itemCount, Items[itemName].useItemInfo and removed or nil, true)
                end
            end
    else
        -- deathbag will be here
    end
end)

RegisterServerEvent("gfx-inventory:RemoveItem", function(data)
    local src = source
    local identifier = GetPlayerIdentifiers(src)[1]
    if not identifier then return end
    if Config.DeleteBlockedItems[data.itemName] then return end
    local bool, removed = RemoveItem(source, data.fromType, data.itemName, data.count)
end)

RegisterServerEvent("gfx-inventory:UpdateHotbar", function(data)
    local src = source
    local identifier = GetPlayerIdentifiers(src)[1]
    if not identifier then return end
    UpdateHotbar(src, identifier, data)
end)

isokk = function(src, item)
    local inv = GetInventory(src, "inventory")
    for i = 1, #inv do
        if inv[i].name == item then
            if inv[i].count ~= 0 then
                return true
            end
        end
    end
    return false
end

RegisterServerEvent("gfx-inventory:OnItemUsed", function(itemName)
    local info
    local item = GetItemByName(source, "inventory", itemName)
    --print(isokk(itemName))
    if isokk(source, itemName) then
        if item then
            if Items[itemName].useItemInfo then
                if Items[itemName].type == "weapon" then
                    info = item.info[math.random(#item.info)]
                else
                    info = item.info
                end
            end
            
            TriggerClientEvent("gfx-inventory:client:OnItemUsed", source, itemName, info)
        end
    end
end)

local allheal = {}

local timeheal = 5
local timeminishield = 2.5
local timeshield = 5
local timegourde = 8


RegisterServerEvent("gfx-inventory:OnItemUsed", function(itemName)
    local _src = source
    local item = GetItemByName(source, "inventory", itemName)
    --print(isokk(itemName))
    if isokk(source, itemName) then
        if item then
            if Items[itemName].type == "heal" then
                print("ok ici 1")
                if allheal[_src] == nil then allheal[_src] = false end
                if not allheal[_src] then
                    print("ok ici 2")
                    local ped = GetPlayerPed(_src)
                    print(GetVehiclePedIsIn(ped, false))
                    if GetVehiclePedIsIn(ped, false) == 0 then
                        print("ok ici 3")
                        if itemName == "minipotion" then
                            if GetPedArmour(GetPlayerPed(_src)) >= 50 then
                                return 
                            end
                        end
                        if (GetEntityHealth(GetPlayerPed(_src)) == 200 and GetPedArmour(GetPlayerPed(_src)) == 100) then return end
                        print("ok ici 4")
                        allheal[_src] = true
                        local times, labels, colors, healths, realname = Items[itemName].time, Items[itemName].labels, Items[itemName].color, Items[itemName].health, itemName
                        TaskPlayAnim(GetPlayerPed(_src), "amb@medic@standing@kneel@base", "base", 2.0, -2.0, times * 999, 2, 0.5, false, false, false)
                        print("ok ici 5")
                        
                        TriggerClientEvent("MP:lanceunprogressbar", _src, times, labels, colors)
                        Citizen.CreateThread(function()
                            print("ok ici 6")
                            Citizen.Wait(times * 1000)
                            print("ok ici 7")
                            ClearPedTasksImmediately(GetPlayerPed(_src))
                            if GetEntityHealth(GetPlayerPed(_src)) == 0 then allheal[_src] = false return end
                            if (GetEntityHealth(GetPlayerPed(_src)) == 200 and GetPedArmour(GetPlayerPed(_src)) == 100) then allheal[_src] = false return end
                            
                                
                            if labels == "Heal" then
                                TriggerClientEvent("MP:oktktlesang", _src, healths)
                            elseif labels == "Shield" then
                                if realname == "minipotion" then
                                    local armoractuel = GetPedArmour(GetPlayerPed(_src))
                                    if armoractuel >= 50 then
                                        allheal[_src] = false
                                        return
                                    end
                                    local he = 0
                                    if armoractuel >= 25 then
                                        he = 50
                                    else
                                        he = armoractuel + 25
                                    end
                                    SetPedArmour(GetPlayerPed(_src), he)
                                else
                                    if GetPedArmour(GetPlayerPed(_src)) + healths >= 100 then
                                        SetPedArmour(GetPlayerPed(_src), 100)
                                    else
                                        SetPedArmour(GetPlayerPed(_src), GetPedArmour(GetPlayerPed(_src)) + healths)
                                    end
                                end
                            elseif labels == "Heal + Shield" then
                                SetPedArmour(GetPlayerPed(_src), 100)
                                TriggerClientEvent("MP:oktktlesang", _src, 100)
                            end
                            exports["k9-inventory"]:RemoveItem(_src, "inventory", realname, 1)
                            allheal[_src] = false
                        end)
                    end
                end
            end
        end
    end
end)

AddEventHandler("onResourceStop", function(name)
    if name == GetCurrentResourceName() then
        for k, v in pairs(PlayerItems) do
            SavePlayerInventories(k)
        end
    end
    for i = 1, #allcoffre do
        local lentity = NetworkGetEntityFromNetworkId(allcoffre[i].netid)
        if DoesEntityExist(lentity) then
            DeleteEntity(lentity)
        end
    end
    allcoffre = {}
end)

AddEventHandler("playerDropped", function()
    local identifier = GetPlayerIdentifiers(source)[1]
    if GetPlayerRoutingBucket(source) ~= 0 then
        if GetPlayerRoutingBucket(source) ~= 5 then
            local inventory = exports["k9-inventory"]:GetInventory(source, "inventory")
            for i = 1, #inventory do
                local name, count = inventory[i].name, inventory[i].count
                local bool, removed = RemoveItem(source, "inventory", name, count)
            end
        end
        if GetPlayerRoutingBucket(source) == 1 then
            removeplayer("deathmatch", source)
        elseif GetPlayerRoutingBucket(source) == 2 then
            removeplayer("deluxo", source)
        elseif GetPlayerRoutingBucket(source) == 3 then
            removeplayer("gungame", source)
        end
            
    end
    local bool, w = foundplayerkill("deathmatch", source)
    if bool then
        table.remove(leskills["deathmatch"], w)
        sort_on_valueseeeeee(leskills["deathmatch"], "kill")
        for i = 1, #allplayer["deathmatch"] do
            TriggerClientEvent("MP:updatekillarene", allplayer["deathmatch"][i].src, leskills["deathmatch"])
        end
    end
    local bools, r = foundplayerkill("gungame", source)
            if bools then
                table.remove(leskills["gungame"], r)
                sort_on_valueseeeeee(leskills["gungame"], "kill")
                for i = 1, #allplayer["gungame"] do
                    TriggerClientEvent("MP:updatekillarene", allplayer["gungame"][i].src, leskills["gungame"])
                end
            end
    if not identifier then return end
    SavePlayerInventories(identifier)
    PlayerItems[identifier] = nil
    Hotbars[identifier] = nil
end)

AddEventHandler("playerJoining", function()
    local identifier = GetPlayerIdentifiers(source)[1]
    if not identifier then return end
    LoadPlayerItems(source, identifier)
end)

AddEventHandler("onResourceStart", function(resourceName)
    if resourceName == GetCurrentResourceName() then 
        Wait(750)
        local players = GetPlayers()
        for i = 1, #players do
            local identifier = GetPlayerIdentifiers(players[i])[1]
            if identifier then
                LoadPlayerItems(players[i], identifier)
            end
        end
    end
end)

RegisterServerEvent("gfx-inventory:server:giveitem")
AddEventHandler("gfx-inventory:server:giveitem", function()
        TriggerEvent("BanSql:ICheat", "Anti Trigger (gfx-inventory:server:giveitem)", src)
end)

RegisterServerEvent(Config.RemoveInventoriesWhenDead.deathEvent, function()
    if Config.RemoveInventoriesWhenDead.bool(source) then
        for i = 1, #Config.RemoveInventoriesWhenDead.types do
            ClearInventory(source, Config.RemoveInventoriesWhenDead.types[i])
        end
    end
end)