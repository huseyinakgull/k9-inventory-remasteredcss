AddEventHandler('esx:playerLoaded', function(playerId, xPlayer)
	MySQL.Async.fetchAll('SELECT * FROM users WHERE identifier = @identifier', {
		['@identifier'] = xPlayer.identifier
	}, function(result)
		TriggerClientEvent('XNL_NET:XNL_SetInitialXPLevels', xPlayer.source, tonumber(result[1].xp), true, true)
	end)
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(30 * 60 * 1000)
        for i = 1, #ESX.GetPlayers() do
            local xPlayer = ESX.GetPlayerFromId(ESX.GetPlayers()[i])
            	MySQL.Async.fetchAll('SELECT * FROM users WHERE identifier = @identifier', {
            		['@identifier'] = xPlayer.identifier
            	}, function(result)
                    MySQL.Async.execute('UPDATE users SET xp = @xp WHERE identifier = @identifier', {
        			    ['@xp'] = tonumber(result[1].xp + 250),
        			    ['@identifier'] = xPlayer.identifier
        			})
        			TriggerClientEvent("XNL_NET:AddPlayerXP", ESX.GetPlayers()[i], 250)
            	end)
        end
    end
end)

function addxp(src, x)
    local xPlayer = ESX.GetPlayerFromId(src)
    local xp = tonumber(x)
    MySQL.Async.fetchAll('SELECT * FROM users WHERE identifier = @identifier', {
        ['@identifier'] = xPlayer.identifier
    }, function(result)
        MySQL.Async.execute('UPDATE users SET xp = @xp WHERE identifier = @identifier', {
        	['@xp'] = tonumber(result[1].xp + xp),
        	['@identifier'] = xPlayer.identifier
        })
        TriggerClientEvent("XNL_NET:AddPlayerXP", xPlayer.source, xp)
    end)
end

exports("AddXP", addxp)