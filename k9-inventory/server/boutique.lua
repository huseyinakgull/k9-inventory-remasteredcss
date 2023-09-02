TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local a = {}

ESX.RegisterServerCallback("MP:codesecret", function(source, cb)
    if num == nil then
        num = math.random(999999,99999999)
    end
    cb(num)
end)

ESX.RegisterServerCallback("MP:getpoints", function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    MySQL.Async.fetchAll('SELECT * FROM users WHERE identifier = @identifier', {
        ['@identifier'] = xPlayer.identifier
    }, function(result)
        cb(tonumber(result[1].mp_points))
    end)
end)

RegisterServerEvent("MP:buy")
AddEventHandler("MP:buy", function(code, type)
    if code ~= num then return end
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    local pricegold = 500
    local pricediamond = 1000
    if type == 1 then
        MySQL.Async.fetchAll('SELECT * FROM users WHERE identifier = @identifier', {
            ['@identifier'] = xPlayer.identifier
        }, function(result)
            if result[1].mp_points >= pricegold then
                removecoin(_src, pricegold)
                if result[1].type ~= 2 then
                    MySQL.Async.execute('UPDATE users SET type = @type WHERE identifier = @identifier', {
                        ['@type'] = 1,
                        ['@identifier'] = xPlayer.identifier
                    })
                end
                if result[1].type == 2 then
                    MySQL.Async.execute('UPDATE users SET time = @time WHERE identifier = @identifier', {
                        ['@time'] = result[1].time + (2592000 / 2),
                        ['@identifier'] = xPlayer.identifier
                    })
                    xPlayer.showNotification("You just bought the Gold for 1 month (+15d of diamond)")
                else
                    MySQL.Async.execute('UPDATE users SET time = @time WHERE identifier = @identifier', {
                        ['@time'] = result[1].time + 2592000,
                        ['@identifier'] = xPlayer.identifier
                    })
                    xPlayer.set('vip', 1)
                    xPlayer.showNotification("You just bought the Gold for 1 month")
                end
            else
                xPlayer.showNotification("~r~You don't have enough KCoins")
            end
        end)
    elseif type == 2 then
        MySQL.Async.fetchAll('SELECT * FROM users WHERE identifier = @identifier', {
            ['@identifier'] = xPlayer.identifier
        }, function(result)
            if result[1].mp_points >= pricediamond then
                removecoin(_src, pricediamond)
                MySQL.Async.execute('UPDATE users SET type = @type WHERE identifier = @identifier', {
                    ['@type'] = 2,
                    ['@identifier'] = xPlayer.identifier
                })
                if result[1].type == 1 then
                    MySQL.Async.execute('UPDATE users SET time = @time WHERE identifier = @identifier', {
                        ['@time'] = 2592000 + (result[1].time / 2),
                        ['@identifier'] = xPlayer.identifier
                    })
                else
                    MySQL.Async.execute('UPDATE users SET time = @time WHERE identifier = @identifier', {
                        ['@time'] = result[1].time + 2592000,
                        ['@identifier'] = xPlayer.identifier
                    })
                end
                xPlayer.set('vip', 2)
                xPlayer.showNotification("You just bought the Diamond for 1 month")
            else
                xPlayer.showNotification("~r~You don't have enough KCoins")
            end
        end)
    end
end)

function removecoin(_src, coinremove)
    local xPlayer = ESX.GetPlayerFromId(_src)
    MySQL.Async.fetchAll('SELECT mp_points FROM users WHERE identifier = @identifier', {
        ['@identifier'] = xPlayer.identifier
    }, function(result)
        MySQL.Async.execute('UPDATE users SET mp_points = @mp_points WHERE identifier = @identifier', {
            ['@mp_points'] = result[1].mp_points - coinremove,
            ['@identifier'] = xPlayer.identifier
        })
        --local truc = result[1].mp_points - coinremove
        --TriggerClientEvent("MP:refreshboutique", _src, truc)
    end)
end

function addcoin(_src, coin)
    local xPlayer = ESX.GetPlayerFromId(_src)
    MySQL.Async.fetchAll('SELECT mp_points FROM users WHERE identifier = @identifier', {
        ['@identifier'] = xPlayer.identifier
    }, function(result)
        MySQL.Async.execute('UPDATE users SET mp_points = @mp_points WHERE identifier = @identifier', {
            ['@mp_points'] = result[1].mp_points + coin,
            ['@identifier'] = xPlayer.identifier
        })
        --local truc = result[1].mp_points + coin
        --TriggerClientEvent("MP:refreshboutique", _src, truc)
    end)
end

function sendToDiscord(name, message, footer, url)
    local embed = {
          {
              ["color"] = 16753920,
              ["title"] = "**".. name .."**",
              ["description"] = message,
              ["footer"] = {
                  ["text"] = footer,
              },
          }
      }
  
    PerformHttpRequest(url, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
  end

RegisterCommand(Config.namecmdgivecoin, function(source, args)
    print("Commande boutique : " ..source, args[1], args[2])
    if source == 0 then
        local id = args[1]
        local coin = tonumber(args[2])
        if id ~= nil and coin ~= nil then
            local xPlayer = ESX.GetPlayerFromIdUnique(id)
            if xPlayer ~= false then
                MySQL.Async.fetchAll('SELECT * FROM users WHERE identifier = @identifier', {
                    ['@identifier'] = xPlayer.identifier
                }, function(result)
                    local truc = result[1].mp_points + coin
                    MySQL.Async.execute('UPDATE users SET mp_points = @mp_points WHERE identifier = @identifier', {
                        ['@mp_points'] = truc,
                        ['@identifier'] = xPlayer.identifier
                    })
                    if args[3] == "tebexxx" then
                        sendToDiscord("Achat dans la boutique", "Id Unique : **" ..id.. "** \n Name Steam : **" .. GetPlayerName(xPlayer.source) .. "** \nSteam : **" .. xPlayer.identifier .. "** \nNumber of coins purchased : **" ..coin.. "**", "Logs", "https://discord.com/api/webhooks/1141885481303420949/0pvRP-CmYlDavpDrKgnOxclQZ-f_Er1E0TAvb959DRHK__ybGd9qsjpNdut7oFThKtnv")
                    else
                        sendToDiscord("Give Boutique", "Id Unique : **" ..id.. "** \n Name Steam : **" .. GetPlayerName(xPlayer.source) .. "** \nSteam : **" .. xPlayer.identifier .. "** \nNumber of coins purchased : **" ..coin.. "**", "Logs", "https://discord.com/api/webhooks/1141885481303420949/0pvRP-CmYlDavpDrKgnOxclQZ-f_Er1E0TAvb959DRHK__ybGd9qsjpNdut7oFThKtnv")
                    end
                    --TriggerClientEvent("MP:refreshboutique", xPlayer.source, truc)
                    TriggerClientEvent('esx:showAdvancedNotification', id, 'Boutique', 'Achat/Give Point Boutique', 'Tu viens de recevoir ' ..coin.. ' ' ..Config.namecoin.. ' !', 'CHAR_MP_FM_CONTACT', 1)
                end)
            else
                MySQL.Async.fetchAll('SELECT * FROM users WHERE idunique = @idunique', {
                    ['@idunique'] = id
                }, function(result)
                    if result[1] ~= nil then
                        local truc = result[1].mp_points + coin
                        MySQL.Async.execute('UPDATE users SET mp_points = @mp_points WHERE idunique = @idunique', {
                            ['@mp_points'] = truc,
                            ['@idunique'] = id
                        })
                        if args[3] == "tebexxx" then
                            sendToDiscord("Achat dans la boutique", "Id Unique : **" ..id.. "** \nSteam : **" .. result[1].identifier .. "** \nNumber of coins purchased : **" ..coin.. "**", "Logs", "https://discord.com/api/webhooks/1141885481303420949/0pvRP-CmYlDavpDrKgnOxclQZ-f_Er1E0TAvb959DRHK__ybGd9qsjpNdut7oFThKtnv")
                        else
                            sendToDiscord("Give Boutique", "Id Unique : **" ..id.. "** \nSteam : **" .. result[1].identifier .. "** \nNumber of coins purchased : **" ..coin.. "**", "Logs", "https://discord.com/api/webhooks/1141885481303420949/0pvRP-CmYlDavpDrKgnOxclQZ-f_Er1E0TAvb959DRHK__ybGd9qsjpNdut7oFThKtnv")
                        end
                    end
                end)
            end
        else
            print("T'a oublié l'id ou les coin a give bg !")
        end
    else
        TriggerClientEvent('esx:showAdvancedNotification', source, 'Boutique', 'Give point', "You can't do that order here!", 'CHAR_BLOCKED', 1)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(60000)
        MySQL.Async.fetchAll('SELECT * FROM users', {}, function(result)
            for i = 1, #result do
                if result[i].type ~= 0 then
                    if time ~= 0 then
                        MySQL.Async.execute('UPDATE users SET time = @time WHERE identifier = @identifier', {
                            ['@time'] = result[i].time - 60,
                            ['@identifier'] = result[i].identifier
                        })
                    else
                        MySQL.Async.execute('UPDATE users SET type = @type WHERE identifier = @identifier', {
                            ['@type'] = 0,
                            ['@identifier'] = result[i].identifier
                        })
                    end
                end
            end
        end)
    end
end)