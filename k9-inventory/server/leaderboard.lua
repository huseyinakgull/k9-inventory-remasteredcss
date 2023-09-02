Citizen.CreateThread(function()
    while true do
        MySQL.Async.fetchAll('SELECT * FROM users', {}, function(result)
            local tableau = {}
            for i = 1, #result do
                table.insert(tableau, {n = result[i].firstname, k = result[i].kill, d = result[i].death})
            end
            sort_on_valueseeeeee(tableau, "k")
            TriggerClientEvent("gfx-inventory:UpdateLeaderBoard", -1, tableau)
        end)
        MySQL.Async.fetchAll('SELECT * FROM MP_crew', {}, function(result)
            local tableaux = {}
            for i = 1, #result do
                table.insert(tableaux, {cn = result[i].name, tk = result[i].kills, td = result[i].death, tr = result[i].killredzone, tz = result[i].killdarkzone, ta = result[i].takeairdrop})
            end
            sort_on_valueseeeeee(tableaux, "tk")
            TriggerClientEvent("gfx-inventory:UpdateLeaderBoardCrew", -1, tableaux)
        end)
        Citizen.Wait(60000 * 30)
    end
end)

RegisterServerEvent("MP:ouvreleader")
AddEventHandler("MP:ouvreleader", function()
    local _src = source
    MySQL.Async.fetchAll('SELECT * FROM users', {}, function(result)
            local tableau = {}
            for i = 1, #result do
                table.insert(tableau, {n = result[i].firstname, k = result[i].kill, d = result[i].death})
            end
            sort_on_valueseeeeee(tableau, "k")
            TriggerClientEvent("gfx-inventory:UpdateLeaderBoard", _src, tableau)
    end)
    MySQL.Async.fetchAll('SELECT * FROM MP_crew', {}, function(result)
            local tableaux = {}
            for i = 1, #result do
                table.insert(tableaux, {cn = result[i].name, tk = result[i].kills, td = result[i].death, tr = result[i].killredzone, tz = result[i].killdarkzone, ta = result[i].takeairdrop})
            end
            sort_on_valueseeeeee(tableaux, "tk")
            TriggerClientEvent("MP:UpdateLeaderBoardCrew", _src, tableaux)
    end)
end)

function sort_on_values(t,a)
    table.sort(t, function (u,v)
        return
             tonumber(u[a])<tonumber(v[a])
    
    end)
end

function sort_on_valueseeeeee(t,a)
    table.sort(t, function (u,v)
        return
             tonumber(u[a])>tonumber(v[a])
    
    end)
end