allmembrecrew = {}
allcrew = {}
allmembrecrewonline = {}
linvite = {}

Citizen.CreateThread(function()
    MySQL.Async.fetchAll('SELECT * FROM MP_crew', {}, function(result)
        allcrew = result
        for i = 1, #result do
            allmembrecrew[result[i].name] = {}
            allmembrecrewonline[result[i].name] = {}
        end
        MySQL.Async.fetchAll('SELECT * FROM MP_membrecrew', {}, function(result)
            for i = 1, #result do
                table.insert(allmembrecrew[result[i].namecrew], result[i])
            end
        end)
    end)
    
end)

RegisterServerEvent("MP:ouvreleader")
 AddEventHandler("MP:ouvreleader", function()
     local xPlayer = ESX.GetPlayerFromId(source)
     for k, v in pairs(allmembrecrew) do
             local bool, i = foundleplayerquiestdansuncrew(xPlayer.identifier, k)
             if bool then
                table.insert(allmembrecrewonline[k], {identifier = xPlayer.identifier, namecrew = k, grade = allmembrecrew[k][i].grade, src = source, idunique = xPlayer.getIdUnique, name = GetPlayerName(source), status = "Online"})
                for c = 1, #allmembrecrew[k] do
                     local lebooldenikiminaje = foundplayeronlineincrew(allmembrecrew[k][c].identifier, k)
                     allmembrecrew[k][c].status = lebooldenikiminaje and "Online" or "Offline"
                end
                local boolsss, ml = foundcrewbyname(k)
                for t = 1, #allmembrecrewonline[k] do
                    TriggerClientEvent("MP:updatemembrecrew", allmembrecrewonline[k][t].src, allmembrecrew[k], allmembrecrewonline[k][t], ml.tag, allmembrecrewonline[k])
                end
             break
         end
     end
        
 end)

RegisterCommand("invite", function(source, args)
    local xPlayer = ESX.GetPlayerFromId(source)
    local xTarget = ESX.GetPlayerFromIdUnique(tonumber(args[1]))
    if xPlayer.getIdUnique() == tonumber(args[1]) then return end
    if xTarget then
        for k, v in pairs(allmembrecrew) do
            local bool, i = foundleplayerquiestdansuncrew(xPlayer.identifier, k)
                if bool then
                    if allmembrecrew[k][i].grade >= 2 then
                        if #allmembrecrew[k] <= 19 then
                            if linvite[k] == nil then linvite[k] = {} end
                            linvite[k][xTarget.identifier] = true
                            xTarget.showNotification("Tu viens de recevoir une invitation du crew " ..k.. " pour accepter veuillez faire /accept" ..k)
                            Citizen.CreateThread(function()
                                Wait(15000)
                                linvite[k][xTarget.identifier] = false
                            end)
                            break
                        else
                            xPlayer.showNotification("Il n'y a plus de place dans le crew")
                        end
                    else
                        xPlayer.showNotification("Tu n'a pas la permission de d'invité ?")
                        break
                    end
                end
        end
    end
end)

RegisterCommand("accept", function(source, args)
    local xPlayer = ESX.GetPlayerFromId(source)
    local namecrew = args[1]
    if linvite[namecrew] == nil then linvite[namecrew] = {} end
    if linvite[namecrew][xPlayer.identifier] then
        local bool = foundplayerdansuncrewinconnu(xPlayer.identifier)
        if not bool then
            AjouteUnPlayerDansLeRectaleaAllahLeFilsDePuteEtDeSaFilleDePuteAussiQuiNexistePas(xPlayer.identifier, namecrew, xPlayer.source, xPlayer.getIdUnique())
            xPlayer.showNotification("Tu viens de rejoindre un crew")
        else
            xPlayer.showNotification("Tu es déjà dans un crew")
        end
    end
end)

--[[AddEventHandler('esx:playerLoaded', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local bool, i, k = foundplayerdansuncrewinconnu(xPlayer.identifier)
    print(bool, i, k)
    if bool then
        allmembrecrew[k][i].status = "Online"
        table.insert(allmembrecrewonline[k], {identifier = xPlayer.identifier, namecrew = allmembrecrew[k][i].namecrew, grade = allmembrecrew[k][i].grade, src = xPlayer.source, idunique = xPlayer.getIdUnique(), status = "Online"})
        for t = 1, #allmembrecrewonline[k] do
            print(GetPlayerName(allmembrecrewonline[k][t].src), allmembrecrewonline[k][t].src, k, allmembrecrewonline[k][t].grade)
            TriggerClientEvent("MP:updatemembrecrew", allmembrecrewonline[k][t].src, allmembrecrew[k], allmembrecrewonline[k][t].grade)
        end
    end
end)]]

AddEventHandler('esx:playerDropped', function(playerId, reason, identifier)
    local bool, i, k = foundplayerdansuncrewinconnu(identifier)
    if bool then
        local bools, bo = foundplayeronlineincrew(identifier, k)
        if bools then
            table.remove(allmembrecrewonline[k], d)
        end
        for q = 1, #allmembrecrew[k] do
            if allmembrecrew[k][q].identifier == identifier then
                allmembrecrew[k][q].status = "Offline"
            end
        end
        local boolsss, ml = foundcrewbyname(k)
        for t = 1, #allmembrecrewonline[k] do
            TriggerClientEvent("MP:updatemembrecrew", allmembrecrewonline[k][t].src, allmembrecrew[k], allmembrecrewonline[k][t], ml.tag, allmembrecrewonline[k])
        end
    end
end)

ESX.RegisterServerCallback("MP:ajouteallahdanslecrew", function(source, cb, data)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local name = data.name
    local tag = tonumber(data.tag)
    MySQL.Async.fetchAll('SELECT * FROM MP_crew WHERE name = @name', {
        ['@name'] = name
    }, function(result)
        if result[1] then
            cb({bool = false})
        else
            MySQL.Async.insert('INSERT INTO MP_crew (`owner`, `name`, `tag`) VALUES (@owner, @name, @tag)', {
				['@owner'] = xPlayer.identifier,
				['@name'] = name,
				['@tag'] = tag
			})
			allmembrecrew[name] = {}
			table.insert(allcrew, {owner = xPlayer.identifier, name = name, tag = tag, kills = 0, death = 0, killredzone = 0, killdarkzone = 0, takeairdrop = 0})
			AjouteUnPlayerDansLeRectaleaAllahLeFilsDePuteEtDeSaFilleDePuteAussiQuiNexistePas(xPlayer.identifier, name, xPlayer.source, xPlayer.getIdUnique())
			Citizen.CreateThread(function()
			    Citizen.Wait(1000)
			    RemplaceLeGradeDeAllahCeFilsDePute(xPlayer.identifier, name, 3)
			end)
            cb({bool = true, name = name, tag = tag})
        end
    end)
end)

RegisterServerEvent("MP:leave")
AddEventHandler("MP:leave", function()
    local xPlayer = ESX.GetPlayerFromId(source)
    for k, v in pairs(allmembrecrew) do
        local bool, i = foundleplayerquiestdansuncrew(xPlayer.identifier, k)
        if bool then
            DeleteAllah(xPlayer.identifier, k)
            break
        end
    end
end)

RegisterServerEvent("MP:kick")
AddEventHandler("MP:kick", function(idunique)
    local xPlayer = ESX.GetPlayerFromId(source)
    local bool, i, k = foundplayerdansuncrewinconnu(xPlayer.identifier)
    if bool then
        if allmembrecrew[k][i].grade >= 2 then
            local bools, d, h = foundplayerdansuncrewinconnubyid(idunique)
            if bools then
                if (k == h) then
                    DeleteAllah(allmembrecrew[h][d].identifier, h)
                end
            end
        else
            xPlayer.showNotification("Vous n'avez pas les permissions pour kick")
        end
    end
end)


RegisterServerEvent("MP:invite")
AddEventHandler("MP:invite", function(id)
    local xPlayer = ESX.GetPlayerFromId(source)
    local xTarget = ESX.GetPlayerFromIdUnique(id)
    for k, v in pairs(allmembrecrew) do
        local bool, i = foundleplayerquiestdansuncrew(xPlayer.identifier, k)
            if bool then
                if allmembrecrew[k][i].grade >= 2 then
                    if #allmembrecrew[k] <= 19 then
                        if linvite[k] == nil then linvite[k] = {} end
                        linvite[k][xTarget.identifier] = true
                        xTarget.showNotification("Tu viens de recevoir une invitation du crew " ..k.. " pour accepter veuillez faire /accept " ..k)
                        Citizen.CreateThread(function()
                            Wait(15000)
                            linvite[k][xTarget.identifier] = false
                        end)
                        break
                    else
                        xPlayer.showNotification("Il n'y a plus de place dans le crew")
                    end
                else
                    xPlayer.showNotification("Tu n'a pas la permission de d'invité ?")
                    break
                end
            end
    end
end)

RegisterServerEvent("MP:rank")
AddEventHandler("MP:rank", function(idunique)
    local xPlayer = ESX.GetPlayerFromId(source)
    for k, v in pairs(allmembrecrew) do
        local bool, i = foundleplayerquiestdansuncrew(xPlayer.identifier, k)
            if bool then
                if allmembrecrew[k][i].grade >= 2 then
                    local bools, d = foundleplayerquiestdansuncrewbyid(idunique, k)
                    if bools then
                        if allmembrecrew[k][d].grade <= 1 then
                            RemplaceLeGradeDeAllahCeFilsDePute(allmembrecrew[k][d].identifier, k, allmembrecrew[k][d].grade + 1)
                            xPlayer.showNotification("Tu viens de rank")
                        end
                    end
                    break   
                else
                    xPlayer.showNotification("Tu n'a pas la permission de rank")
                end
            end
    end
end)

RegisterServerEvent("MP:retrograde")
AddEventHandler("MP:retrograde", function(idunique)
    local xPlayer = ESX.GetPlayerFromId(source)
    for k, v in pairs(allmembrecrew) do
        local bool, i = foundleplayerquiestdansuncrew(xPlayer.identifier, k)
            if bool then
                
                    local bools, d = foundleplayerquiestdansuncrewbyid(idunique, k)
                    if allmembrecrew[k][i].grade > allmembrecrew[k][d].grade then
                        if bools then
                            if allmembrecrew[k][d].grade >= 2 then
                                RemplaceLeGradeDeAllahCeFilsDePute(allmembrecrew[k][d].identifier, k, allmembrecrew[k][d].grade - 1)
                                xPlayer.showNotification("Tu viens de rétrogradé")
                            end
                        end
                        break   
                    else
                        xPlayer.showNotification("Tu n'a pas la permission de rétrogradé")
                    end
                
            end
    end
end)

RegisterServerEvent("MP:join")
AddEventHandler("MP:join", function(namecrew)
    local xPlayer = ESX.GetPlayerFromId(source)
    if linvite[namecrew][xPlayer.identifier] then
        local bool = foundplayerdansuncrewinconnu(xPlayer.identifier)
        if not bool then
            if #allmembrecrew[namecrew] >= 19 then
                AjouteUnPlayerDansLeRectaleaAllahLeFilsDePuteEtDeSaFilleDePuteAussiQuiNexistePas(xPlayer.identifier, namecrew, xPlayer.source, xPlayer.getIdUnique())
                xPlayer.showNotification("Tu viens de rejoindre un crew")
            else
                xPlayer.showNotification("Il n'y a plus de place dans le crew")
            end
        else
            xPlayer.showNotification("Tu es déjà dans un crew")
        end
    end
end)

foundleplayerquiestdansuncrew = function(identifier, namecrew)
    for i = 1, #allmembrecrew[namecrew] do
        if allmembrecrew[namecrew][i].identifier == identifier then
            return true, i
        end
    end
    return false
end

foundleplayerquiestdansuncrewbyid = function(id, namecrew)
    for i = 1, #allmembrecrew[namecrew] do
        if allmembrecrew[namecrew][i].idunique == id then
            return true, i
        end
    end
    return false
end

foundplayerdansuncrewinconnu = function(identifier)
    for k, v in pairs(allmembrecrew) do
        local bool, i = foundleplayerquiestdansuncrew(identifier, k)
        if bool then
            return true, i, k
        end
    end
    return false
end

foundplayerdansuncrewinconnubyid = function(id)
    for k, v in pairs(allmembrecrew) do
        local bool, i = foundleplayerquiestdansuncrewbyid(id, k)
        if bool then
            return true, i, k
        end
    end
    return false
end

foundplayeronlineincrew = function(identifier, namecrew)
    for i = 1, #allmembrecrewonline[namecrew] do
        if allmembrecrewonline[namecrew][i].identifier == identifier then
            return true, i
        end
    end
    return false
end

foundcrewbyname = function(name)
    for i = 1, #allcrew do
        if allcrew[i].name == name then
            return true, allcrew[i], i
        end
    end
    return false
end

isadmindeallah = function(identifier, namecrew)
    
end

function AjouteUnPlayerDansLeRectaleaAllahLeFilsDePuteEtDeSaFilleDePuteAussiQuiNexistePas(identifier, namecrew, _src, idunique)
    MySQL.Async.insert('INSERT INTO MP_membrecrew (`identifier`, `idunique`, `name`, `namecrew`, `grade`) VALUES (@identifier, @idunique, @name, @namecrew, @grade)', {
        ['@identifier'] = identifier,
        ['@idunique'] = idunique,
        ['@name'] = GetPlayerName(_src),
		['@namecrew'] = namecrew,
		['@grade'] = 1,
	})
	table.insert(allmembrecrew[namecrew], {identifier = identifier, namecrew = namecrew, grade = 1, idunique = idunique, status = "Online", name = GetPlayerName(_src)})
	if allmembrecrewonline[namecrew] == nil then allmembrecrewonline[namecrew] = {} end
	table.insert(allmembrecrewonline[namecrew], {identifier = identifier, namecrew = namecrew, grade = 1, src = _src, idunique = idunique, name = GetPlayerName(_src)})
	local boolsss, ml = foundcrewbyname(namecrew)
	for t = 1, #allmembrecrewonline[namecrew] do
        TriggerClientEvent("MP:updatemembrecrew", allmembrecrewonline[namecrew][t].src, allmembrecrew[namecrew], allmembrecrewonline[namecrew][t], ml.tag, allmembrecrewonline[namecrew])
    end
end

function RemplaceLeGradeDeAllahCeFilsDePute(identifier, namecrew, grade)
    MySQL.Async.execute('UPDATE MP_membrecrew SET grade = @grade WHERE identifier = @identifier AND namecrew = @namecrew', {
        ['@grade'] = grade,
        ['@identifier'] = identifier,
        ['@namecrew'] = namecrew,
    })
    local bool, i = foundleplayerquiestdansuncrew(identifier, namecrew)
    if bool then
        allmembrecrew[namecrew][i].grade = grade
        local bools, o = foundplayeronlineincrew(identifier, namecrew)
        if bools then
            allmembrecrewonline[namecrew][o].grade = grade
        end
        local boolsss, ml = foundcrewbyname(namecrew)
        for t = 1, #allmembrecrewonline[namecrew] do
            TriggerClientEvent("MP:updatemembrecrew", allmembrecrewonline[namecrew][t].src, allmembrecrew[namecrew], allmembrecrewonline[namecrew][t], ml.tag, allmembrecrewonline[namecrew])
        end
        
    end
end

function DeleteAllah(identifier, namecrew)
    MySQL.Async.execute('DELETE FROM MP_membrecrew WHERE identifier = @identifier', {  
        ['@identifier'] = identifier
    })
    local bool, i = foundleplayerquiestdansuncrew(identifier, namecrew)
    local boolsss, ml = foundcrewbyname(namecrew)
    if bool then
        if allmembrecrew[namecrew][i].grade == 3 then
            table.remove(allmembrecrew[namecrew], i)
            if #allmembrecrew[namecrew] ~= 1 then
                local lerandom = allmembrecrew[namecrew][math.random(1,#allmembrecrew[namecrew])]
                RemplaceLeGradeDeAllahCeFilsDePute(lerandom.identifier, namecrew, 3)
            else
                DeleteCrew(namecrew)
                DeleteAllah(allmembrecrew[namecrew][1].identifier, namecrew)
            end
        else
            table.remove(allmembrecrew[namecrew], i)
        end
        
        local bools, d = foundplayeronlineincrew(identifier, namecrew)
        if bools then
            table.remove(allmembrecrewonline[namecrew], d)
        end
        for r = 1, #allmembrecrewonline[namecrew] do
            TriggerClientEvent("MP:updatemembrecrew", allmembrecrewonline[namecrew][r].src, allmembrecrew[namecrew], allmembrecrewonline[namecrew][r], ml.tag, allmembrecrewonline[namecrew])
        end
    end
end

function DeleteCrew(namecrew)
    MySQL.Async.execute('DELETE FROM MP_crew WHERE name = @name', {  
        ['@name'] = namecrew
    })
    local bool, crew, i = foundcrewbyname(namecrew)
    table.remove(allcrew, i)
end
function AddKillForCrew(identifier, identifiere)
    local bool, i, namecrew = foundplayerdansuncrewinconnu(identifier)
    local boolss, d, namecrews = foundplayerdansuncrewinconnu(identifiere)
    if bool and (not boolss or namecrew ~= namecrews) then
        local bools, lecrew = foundcrewbyname(namecrew)
        if bools then
            lecrew.kills = lecrew.kills + 1
            MySQL.Async.execute('UPDATE MP_crew SET kills = @kills WHERE name = @name', {
                ['@kills'] = lecrew.kills,
                ['@name'] = namecrew,
            })
            for r = 1, #allmembrecrewonline[namecrew] do
                --TriggerClientEvent("MP:updatecrew", allmembrecrewonline[namecrew][r].src, lecrew)
            end
        end
    end
end

function AddDeathForCrew(identifier, identifiere)
    local bool, i, namecrew = foundplayerdansuncrewinconnu(identifier)
    local boolss, d, namecrews = foundplayerdansuncrewinconnu(identifiere)
    if bool and (not boolss or namecrew ~= namecrews) then
        local bools, lecrew = foundcrewbyname(namecrew)
        if bools then
            lecrew.death = lecrew.death + 1
            MySQL.Async.execute('UPDATE MP_crew SET death = @death WHERE name = @name', {
                ['@death'] = lecrew.death,
                ['@name'] = namecrew,
            })
            for r = 1, #allmembrecrewonline[namecrew] do
                --TriggerClientEvent("MP:updatecrew", allmembrecrewonline[namecrew][r].src, lecrew)
            end
        end
    end
end

function AddKillRedzoneForCrew(identifier, identifiere)
    local bool, i, namecrew = foundplayerdansuncrewinconnu(identifier)
    local boolss, d, namecrews = foundplayerdansuncrewinconnu(identifiere)
    if bool and (not boolss or namecrew ~= namecrews) then
        local bools, lecrew = foundcrewbyname(namecrew)
        if bools then
            lecrew.killredzone = lecrew.killredzone + 1
            MySQL.Async.execute('UPDATE MP_crew SET killredzone = @killredzone WHERE name = @name', {
                ['@killredzone'] = lecrew.killredzone,
                ['@name'] = namecrew,
            })
            for r = 1, #allmembrecrewonline[namecrew] do
                --TriggerClientEvent("MP:updatecrew", allmembrecrewonline[namecrew][r].src, lecrew)
            end
        end
    end
end

function AddZombieForCrew(identifier)
    local bool, i, namecrew = foundplayerdansuncrewinconnu(identifier)
    if bool then
        local bools, lecrew = foundcrewbyname(namecrew)
        if bools then
            lecrew.killdarkzone = lecrew.killdarkzone + 1
            MySQL.Async.execute('UPDATE MP_crew SET killdarkzone = @killdarkzone WHERE name = @name', {
                ['@killdarkzone'] = lecrew.killdarkzone,
                ['@name'] = namecrew,
            })
            for r = 1, #allmembrecrewonline[namecrew] do
                --TriggerClientEvent("MP:updatecrew", allmembrecrewonline[namecrew][r].src, lecrew)
            end
        end
    end
end


function AddTakeDropForCrew(identifier)
    local bool, i, namecrew = foundplayerdansuncrewinconnu(identifier)
    if bool then
        local bools, lecrew = foundcrewbyname(namecrew)
        if bools then
            lecrew.takeairdrop = lecrew.takeairdrop + 1
            MySQL.Async.execute('UPDATE MP_crew SET takeairdrop = @takeairdrop WHERE name = @name', {
                ['@takeairdrop'] = lecrew.takeairdrop,
                ['@name'] = namecrew,
            })
            for r = 1, #allmembrecrewonline[namecrew] do
                --TriggerClientEvent("MP:updatecrew", allmembrecrewonline[namecrew][r].src, lecrew)
            end
        end
    end
end


exports("AddKillForCrew", AddKillForCrew)
exports("AddDeathForCrew", AddDeathForCrew)
exports("AddKillRedzoneForCrew", AddKillRedzoneForCrew)
exports("AddZombieForCrew", AddZombieForCrew)
exports("AddTakeDropForCrew", AddTakeDropForCrew)

Citizen.CreateThread(function()
    while true do
        for i = 1, #allcrew do
            for r = 1, #allmembrecrewonline[allcrew[i].name] do
                TriggerClientEvent("MP:updatecrew", allmembrecrewonline[allcrew[i].name][r].src, lecrew)
            end
        end
        Citizen.Wait(60000 * 30)
    end
end)