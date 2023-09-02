TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local ledeathmatch = false
local ledeluxo = false
local isarena = false
local legungame = false
local lebattleroyale = false

local entityType = 0
local toIgnore = 0
local flags = 30
local raycastLength = 50.0
local abs = math.abs
local cos = math.cos
local sin = math.sin
local pi = math.pi
local player
local playerCoords
local display = false
local z_key = 20
local startRaycast = false
-- police, tow, ems etc.
local myJob = "police" --Update this based on your own job system. This gets sent to the Javascript to add the appropriate menu items.
local isAdmin = true --Allows for the Export option which write entity data to a txt file.
local entity =
{
    target, --Entity itself
    type, --Type: Ped, vehicle, object, 0 1 2 3
    hash, --Hash of the object
    modelName, --model name
    isPlayer, --if the entity is a player = true else = false
    coords, --In world coords
    heading, --Which way the entity is Heading/facing
    rotation -- Entity rotation
}

local url = ""
local aaaa = false
lancienbool = false

RegisterNetEvent("gfx-inventory:OpenInventory")
AddEventHandler("gfx-inventory:OpenInventory", function(data)
    data.bool = true
    Display(data)
    if url == "" then
        TriggerServerEvent("MP:reveil")
    end
    if not aaaa then
        TriggerServerEvent("MP:ouvreleader")
        aaaa = true
    end
    ESX.TriggerServerCallback("MP:getall", function(cb, point, idunique, lesplayer, data)
        if cb.kill ~= 0 and cb.death ~= 0 then
            kd = tonumber(cb.kill / cb.death)
        else
            kd = 1
        end
        local level, xp = GetLevel()
	if data.bool then
        	SendNUIMessage({
                	type = "gfxprofile-main-contain",
                	kill = ESX.Math.GroupDigits(cb.kill),
                	death = ESX.Math.GroupDigits(cb.death),
                	kd = ESX.Math.Round(kd, 2),
                	rank = GetRank(cb.kill),
                	pointssssforgay = ESX.Math.GroupDigits(point) .. " Point",
                	playernamebitch = GetPlayerName(PlayerId()),
                	zombie = cb.zombie,
                	level = level,
                	point = ESX.Math.GroupDigits(point) .. " points",
                	name = GetPlayerName(PlayerId()) .. " [" ..idunique.. "]",
                	deathmatch = #lesplayer["deathmatch"] .. "/30",
                	deluxo = #lesplayer["deluxo"] .. "/50",
                	gungame = #lesplayer["gungame"] .. "/20",
                	bool = data.bool,
                	lecrew = data.lecrew,
			killscrews = data.lecrew.kills,
                	deathcrews = data.lecrew.death,
                	killredezonecrews = data.lecrew.killredzone,
                	killdarkzonecrews = data.lecrew.killdarkzone,
                	airdropcrews = data.lecrew.takeairdrop,
        	})
	else
		SendNUIMessage({
                	type = "gfxprofile-main-contain",
                	kill = ESX.Math.GroupDigits(cb.kill),
                	death = ESX.Math.GroupDigits(cb.death),
                	kd = ESX.Math.Round(kd, 2),
                	rank = GetRank(cb.kill),
                	pointssssforgay = ESX.Math.GroupDigits(point) .. " Point",
                	playernamebitch = GetPlayerName(PlayerId()),
                	zombie = cb.zombie,
                	level = level,
                	point = ESX.Math.GroupDigits(point) .. " points",
                	name = GetPlayerName(PlayerId()) .. " [" ..idunique.. "]",
                	deathmatch = #lesplayer["deathmatch"] .. "/30",
                	deluxo = #lesplayer["deluxo"] .. "/50",
                	gungame = #lesplayer["gungame"] .. "/20",
                	bool = data.bool,
                	lecrew = 0,
			killscrews = 0,
                	deathcrews = 0,
                	killredezonecrews = 0,
                	killdarkzonecrews = 0,
                	airdropcrews = 0,
        	})
	end
        --[[SendNUIMessage({
            type = "audroitefdp",
            
        })
    
        SendNUIMessage({
            type = "setup",
            
        })
        
        SendNUIMessage({
            type = "pourlecrewdallah",
            
        })]]
        if not lancienbool then
            lancienbool = true
            StartNameLoop()
        elseif not data.bool then
            lancienbool = false
        end
    end)
end)

RegisterNetEvent("MP:updateppsteam")
AddEventHandler("MP:updateppsteam", function(urls)
    url = urls
    SendNUIMessage({
        type = "ppsteam",
        url = urls,
    })
end)

function GetRank(kill)
    if kill < 100 and kill >= 0 then
        return "No Ranked"
    elseif kill < 500 and kill >= 100 then
        return "Bronze"
    elseif kill < 1000 and kill >= 500 then
        return "Silver"
    elseif kill < 1500 and kill >= 1000 then
        return "Gold"
    elseif kill < 2000 and kill >= 1500 then
        return "Platinum"
    elseif kill < 3000 and kill >= 2000 then
        return "Diamond"
    elseif kill < 4000 and kill >= 3000 then
        return "Champion"
    else
        return "K9"
    end
    return 'Pas trouv�'
end

RegisterNUICallback("crosshairssss", function(data)
    local ok = 0
    if data.check then
        ok = 1
    end
    ExecuteCommand("crosshair " ..ok)
end)

RegisterNUICallback("loadouts", function(data)
    local okaka = 0
    if data.check then
        okaka = 1
    end
    ExecuteCommand("stuff " ..okaka)
end)

RegisterNUICallback("hudssss", function(data)
    local okasds = 0
    local ntmsurleport = 0
    if data.check then
        okasds = 1
    end
    ExecuteCommand("hud " ..ntmsurleport)
    ExecuteCommand("hude " ..okasds)
end)

RegisterNUICallback("hitsss", function(data)
    local okaa = 0 
    if data.check then 
        okaa = 1
    end
    ExecuteCommand("hitstop " ..okaa)
end)



RegisterNUICallback("killfeedsss", function(data)
    local okaaa = 0 
    if data.check then 
        okaaa = 1
    end
    ExecuteCommand("killfeedstop " ..okaaa)
end)

RegisterNUICallback("leavecrew", function(data)
    TriggerServerEvent("MP:leave")
end)


RegisterNUICallback("ntmallah", function(data)
    local name = data.name
    local tag = tonumber(data.tag)
    ESX.TriggerServerCallback("MP:ajouteallahdanslecrew", function(cb)
        if cb.bool then
            SendNUIMessage({
                type = "crewupdate",
                name = cb.name,
                tag = cb.tag
            })
        end
    end, data)
end)

RegisterNUICallback("invitecrew", function(data)
    local id = tonumber(data.id)
    if (id ~= nil) then
        TriggerServerEvent("MP:invite", id)
    end
end)

RegisterNUICallback("promucrew", function(data)
    local id = tonumber(data.nicolasbigot)
    if (id ~= nil) then
        TriggerServerEvent("MP:rank", id)
    end
end)

RegisterNUICallback("retrogradecrew", function(data)
    local id = tonumber(data.nicolasbigot)
    if (id ~= nil) then
        TriggerServerEvent("MP:retrograde", id)
    end
end)

RegisterNUICallback("kickcrew", function(data)
    local id = tonumber(data.nicolasbigot)
    if (id ~= nil) then
        TriggerServerEvent("MP:kick", id)
    end
end)

RegisterNUICallback("play", function(data)
    local int = data.zemmour
    if int == 1 then
        deathmatch()
    elseif int == 2 then
        deluxo()
    elseif int == 4 then
        gungame()
    elseif int == 3 then
        --battleroyale()
        ESX.ShowNotification("En cours de developpement")
    else
        ESX.ShowNotification("tjr pas dispo")
    end
end)

function deathmatch()
    TriggerServerEvent("MP:deathmatch")
end

function deluxo()
    TriggerServerEvent("MP:deluxo")
end

function gungame()
    TriggerServerEvent("MP:gungame")
end

function battleroyale()
end

a = false
local gamelance = false
local danslazone = false

local centredelazone = vector3(61.672771453857, -1679.6567382813, 29.298700332642)
local lazone = 250.0
local degatzone = 1

local lescoffre = {}
local lesvehicule = {}

local lesobject = {}

RegisterNetEvent("MP:updatecoffre")
AddEventHandler("MP:updatecoffre", function(lescof)
    lescoffre = lescof
end)
    
    
RegisterNetEvent("MP:updatevehicule")
AddEventHandler("MP:updatevehicule", function(lesv)
    lesvehicule = lesv
end)

RegisterNetEvent("MP:updatenbsss")
AddEventHandler("MP:updatenbsss", function(nb)
    print("recu")
    SendNUIMessage({
        type = "updateenbasjoueur",
        nb = nb
    })
end)

RegisterNetEvent("MP:updatenbaskill")
AddEventHandler("MP:updatenbaskill", function(nb)
    SendNUIMessage({
        type = "updateenbaskill",
        nb = nb,
    })
end)

function aos(id)
    print(#lesvehicule)
    for i = 1, #lesvehicule do
         print(lesvehicule[i].netid, id)
        if lesvehicule[i].netid == id then
            return true
         end
    end
    return false
end

exports("isveh", aos)


RegisterNetEvent("MP:updatekillarene")
AddEventHandler("MP:updatekillarene", function(allahakbarlefdp)
    SendNUIMessage({
            type = "deathmatchleader",
            lesnoiraufeu1 = allahakbarlefdp[1].name,
            killallahpourdukd1 = allahakbarlefdp[1].kill,
            lesnoiraufeu2 = allahakbarlefdp[2].name,
            killallahpourdukd2 = allahakbarlefdp[2].kill,
            lesnoiraufeu3 = allahakbarlefdp[3].name,
            killallahpourdukd3 = allahakbarlefdp[3].kill,
            lesnoiraufeu4 = allahakbarlefdp[4].name,
            killallahpourdukd4 = allahakbarlefdp[4].kill,
        })
end)

RegisterNetEvent("MP:quitarena")
AddEventHandler("MP:quitarena", function(int, nb)
    isarena = false
    if int == 1 then
        ledeathmatch = false
        SendNUIMessage({
            type = "deathmatch",
            nb = nb .. "/30",
        })
        SendNUIMessage({
            type = "hideleader"
        })
    elseif int == 2 then
        ledeluxo = false
        SendNUIMessage({
            type = "deluxo",
            nb = nb .. "/50",
        })
    elseif int == 3 then
        legungame = false
        SendNUIMessage({
            type = "gungame",
            nb = nb .. "/20",
        })
        SendNUIMessage({
            type = "hideleader"
        })
    elseif int == 4 then
        danslazone = false
        gamelance = false
        lebattleroyale = false
        local okae = 0
        local aobae = 1
        ExecuteCommand("hud " ..okae)
        ExecuteCommand("hude " ..aobae)
    end
end)

RegisterNetEvent("MP:joinarena")
AddEventHandler("MP:joinarena", function(int, pipicacapopo)
    if int == 1 then
        ledeathmatch = true
        isarena = true
        closeinventory = ExecuteCommand("inventory")
        SendNUIMessage({
            type = "showleader",
            lesnoiraufeu1 = pipicacapopo[1].name,
            killallahpourdukd1 = pipicacapopo[1].kill,
            lesnoiraufeu2 = pipicacapopo[2].name,
            killallahpourdukd2 = pipicacapopo[2].kill,
            lesnoiraufeu3 = pipicacapopo[3].name,
            killallahpourdukd3 = pipicacapopo[3].kill,
            lesnoiraufeu4 = pipicacapopo[4].name,
            killallahpourdukd4 = pipicacapopo[4].kill,
        })
    elseif int == 2 then
        isarena = true
        ledeluxo = true
        closeinventory = ExecuteCommand("inventory")
    elseif int == 3 then
        isarena = true
        legungame = true
        closeinventory = ExecuteCommand("inventory")
    elseif int == 4 then
        isarena = true
        lebattleroyale = true
        mesconstru = 0
        closeinventory = ExecuteCommand("inventory")
    end
end)

local poke, pokee
local jh = false
RegisterNetEvent("MP:arenaactuel")
AddEventHandler("MP:arenaactuel", function(rena, blips)
    local leblip = blips
    local larena = rena
    Citizen.CreateThread(function()
        if DoesBlipExist(poke) then
            RemoveBlip(poke)
        end
        if DoesBlipExist(pokee) then
            RemoveBlip(pokee)
        end
        poke, pokee = createblips(leblip)
        if jh then
            jh = false
            Citizen.Wait(2)
        end
        jh = true
        while ledeathmatch and jh do
            if #(GetEntityCoords(PlayerPedId())-leblip.coords) >= leblip.radius then
                SetEntityCoords(PlayerPedId(), larena[math.random(1,#larena)])
            end
            Citizen.Wait(100)
        end
        RemoveBlip(poke)
        RemoveBlip(pokee)
    end)
end)

function createblips(pos)
    local blips = AddBlipForRadius(pos.coords, pos.radius)

	SetBlipHighDetail(blips, true)
	SetBlipColour(blips, 1)
	SetBlipAlpha (blips, 128)

	-- create a blip in the middle
	local blip = AddBlipForCoord(pos.coords)

	SetBlipHighDetail(blip, true)
	SetBlipSprite (blip, 429)
	SetBlipScale  (blip, 0.7)
	SetBlipColour (blip, 1)
	SetBlipAsShortRange(blip, true)

	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString(text)
	EndTextCommandSetBlipName(blip)
	return blips, blip
end

RegisterNetEvent("MP:updatenbs")
AddEventHandler("MP:updatenbs", function(type, nb)
    SendNUIMessage({
        type = type,
        nb = nb,
    })
end)

exports("isdeathmatch", function()
    return ledeathmatch
end)

exports("isdeluxo", function()
    return ledeluxo
end)

exports("isgungame", function()
    return legungame
end)

exports("isbattleroyale", function()
    return lebattleroyale
end)

exports("isarena", function()
    return isarena
end)

RegisterNUICallback("ItemDrag", function(data)
    local iscombatmode = exports["k9-heal"]:combatmode()
    local arenamodu = exports["ms-duello"]:arenamodu()
    if iscombatmode and data.toType == "protected" then ESX.ShowNotification("You can't put an item while in combat mode.") return end
    if isarena then ESX.ShowNotification("You are in the arena") return end
    if arenamodu then ESX.ShowNotification("You are in the arena") return end
    TriggerServerEvent("gfx-inventory:ItemDrag", data)
end)

RegisterNUICallback("leavea", function(data)
    ExecuteCommand("leave")
end)

RegisterNUICallback("SetHotbar", function(data)
    TriggerServerEvent("gfx-inventory:UpdateHotbar", data)
end)

RegisterNUICallback("Close", function(data)
    Display({
        bool = false
    })
end)

RegisterNUICallback("RemoveItem", function(data)
    TriggerServerEvent("gfx-inventory:RemoveItem", data)
end)

RegisterNetEvent("gfx-inventory:UpdateInventory", function(value, inventoryType, index, key)
    if inventoryType then
        if index then
            if key then
                PlayerItems[inventoryType][index][key] = value
            else
                if value == nil then
                    table.remove(PlayerItems[inventoryType], index)
                else
                    PlayerItems[inventoryType][index] = value
                end
            end
        else
            PlayerItems[inventoryType] = value
        end
    else
        PlayerItems = value
    end
    if isOpened then
        UpdateInventory(openedInventoryType)
    end
end)

RegisterNetEvent("gfx-inventory:SetHotbar", function(value, key, index)
    if key then
        if not index then
            HotbarData[key] = value
        else
            HotbarData[key][index] = value
        end
    else
        HotbarData = value
    end
    for k,v in pairs(HotbarData) do
        if v and v.name and v.hasItem then
            v.image = Items[v.name].image
            v.label = Items[v.name].label
            v.rarity = Items[v.name].rarity
        end
    end
    SetHotbar()
end)




RegisterNetEvent("gfx-inventory:client:OnItemUsed", function(itemName, info)
    if Items[itemName].type == "weapon" then
        UseWeapon(itemName, info)
        local armes = exports["k9-heal"]:GetLabel(GetHashKey(itemName))
        ESX.ShowNotification("~b~Equipping~w~ your ~w~" ..armes)
    end 
end)

RegisterNetEvent("gfx-inventory:client:RemoveWeapon", function(itemName)
    local ped = PlayerPedId()
    local weaponHash = GetHashKey(itemName)
    if weaponHash == GetSelectedPedWeapon(PlayerPedId()) then
        RemoveWeaponFromPed(ped, weaponHash)
    end
    if GetVehiclePedIsIn(PlayerPedId(), false) ~= 0 then
        RemoveAllPedWeapons(ped)
    end
end)


--Lots of math stuff i have no idea how works but its awesome :)
function ScreenToWorld(flags, toIgnore)
    local camRot = GetGameplayCamRot(0)
    local camPos = GetGameplayCamCoord()
    local posX = 0.5
    local posY = 0.5
    local cursor = vector2(posX, posY)
    local cam3DPos, forwardDir = ScreenRelToWorld(camPos, camRot, cursor)
    local direction = camPos + forwardDir * raycastLength
    local rayHandle = StartShapeTestRay(cam3DPos, direction, flags, toIgnore, 0)
    local _, hit, endCoords, surfaceNormal, entityHit = GetShapeTestResult(rayHandle)
    if entityHit >= 1 then
        entityType = GetEntityType(entityHit)
    end
    return hit, endCoords, surfaceNormal, entityHit, entityType, direction
end
 
function ScreenRelToWorld(camPos, camRot, cursor)
    local camForward = RotationToDirection(camRot)
    local rotUp = vector3(camRot.x + 1.0, camRot.y, camRot.z)
    local rotDown = vector3(camRot.x - 1.0, camRot.y, camRot.z)
    local rotLeft = vector3(camRot.x, camRot.y, camRot.z - 1.0)
    local rotRight = vector3(camRot.x, camRot.y, camRot.z + 1.0)
    local camRight = RotationToDirection(rotRight) - RotationToDirection(rotLeft)
    local camUp = RotationToDirection(rotUp) - RotationToDirection(rotDown)
    local rollRad = -(camRot.y * pi / 180.0)
    local camRightRoll = camRight * cos(rollRad) - camUp * sin(rollRad)
    local camUpRoll = camRight * sin(rollRad) + camUp * cos(rollRad)
    local point3DZero = camPos + camForward * 1.0
    local point3D = point3DZero + camRightRoll + camUpRoll
    local point2D = World3DToScreen2D(point3D)
    local point2DZero = World3DToScreen2D(point3DZero)
    local scaleX = (cursor.x - point2DZero.x) / (point2D.x - point2DZero.x)
    local scaleY = (cursor.y - point2DZero.y) / (point2D.y - point2DZero.y)
    local point3Dret = point3DZero + camRightRoll * scaleX + camUpRoll * scaleY
    local forwardDir = camForward + camRightRoll * scaleX + camUpRoll * scaleY
    return point3Dret, forwardDir
end
 
function RotationToDirection(rotation)
    local x = rotation.x * pi / 180.0
    --local y = rotation.y * pi / 180.0
    local z = rotation.z * pi / 180.0
    local num = abs(cos(x))
    return vector3((-sin(z) * num), (cos(z) * num), sin(x))
end
 
function World3DToScreen2D(pos)
    local _, sX, sY = GetScreenCoordFromWorldCoord(pos.x, pos.y, pos.z)
    return vector2(sX, sY)
end