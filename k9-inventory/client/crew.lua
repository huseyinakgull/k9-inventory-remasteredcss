local allmembrecrew = {}

RegisterNetEvent("MP:updatemembrecrew")
AddEventHandler("MP:updatemembrecrew", function(crew, moi, tag, online)
    local c = crew
    allmembrecrew = online
    local lec = {}
    for i = 1, #c do
        table.insert(lec, {r = Config.LabelPermCrew[c[i].grade], s = c[i].idunique, nc = c[i].name, st = c[i].status, grade = c[i].grade, mygroup = moi.grade})
    end
    SendNUIMessage({
        type = "justelenameducrewenculer",
        namecrew = c[1].namecrew.. "#" ..tag.. " (" ..#c.. " members)",
    })
    SendNUIMessage({
        type = "updatelecrewallahlefdp",
        lecrew = lec,
    })
end)

RegisterNetEvent("MP:updatecrew")
AddEventHandler("MP:updatecrew", function(lecrew)
    SendNUIMessage({
            type = "crewsystemall",
            killscrews = lecrew.kills,
            deathcrews = lecrew.death,
            killredezonecrews = lecrew.killredzone,
            killdarkzonecrews = lecrew.killdarkzone,
            airdropcrews = lecrew.takeairdrop,
        })
end)

RegisterNetEvent("MP:UpdateLeaderBoardCrew")
AddEventHandler("MP:UpdateLeaderBoardCrew", function(lecrew)
    print(ESX.DumpTable(lecrew))
    SendNUIMessage({
        type = "updateallahlefdp",
        lecrew = lecrew,
    })
end)

local blabla = {}

ishere = function(src)
    for i = 1, #allmembrecrew do
        if allmembrecrew[i].src == src then
            return true
        end
    end
    return false
end

isbliphere = function(src)
    for i = 1, #blabla do
        if blabla[i].src == src then
            return true
        end
    end
    return false
end

local mpGamerTags = {}
local mpGamerTagSettings = {}

local gtComponent = {
    GAMER_NAME = 0,
    CREW_TAG = 1,
    healthArmour = 2,
    BIG_TEXT = 3,
    AUDIO_ICON = 4,
    MP_USING_MENU = 5,
    MP_PASSIVE_MODE = 6,
    WANTED_STARS = 7,
    MP_DRIVER = 8,
    MP_CO_DRIVER = 9,
    MP_TAGGED = 10,
    GAMER_NAME_NEARBY = 11,
    ARROW = 12,
    MP_PACKAGES = 13,
    INV_IF_PED_FOLLOWING = 14,
    RANK_TEXT = 15,
    MP_TYPING = 16
}

local function makeSettings()
    return {
        alphas = {},
        colors = {},
        healthColor = false,
        toggles = {},
        wantedLevel = false
    }
end

function StartNameLoop()
    Citizen.CreateThread(function()
        Citizen.Wait(1000)
        while lancienbool and allmembrecrew do
            Citizen.Wait(50)
            if allmembrecrew then
                for i = 1, #allmembrecrew do
                    local data = {
                        id = allmembrecrew[i].src,
                        name = allmembrecrew[i].name,
                    }
                    RenderNames(data, true)
                end
            end
        end
        RemoveGamerTags()
    end)
end

function RenderNames(v, isSquad)
    local i = GetPlayerFromServerId(v.id)
    if NetworkIsPlayerActive(i) and i ~= PlayerId() then
        if i ~= -1 then
            -- get their ped
            local ped = GetPlayerPed(i)
            local pedCoords = GetEntityCoords(ped)
            local health = GetEntityHealth(ped) - 100
            health = health >= 0 and health or GetEntityHealth(ped)
            if not mpGamerTagSettings[i] then
                mpGamerTagSettings[i] = makeSettings()
            end
            if not mpGamerTags[i] or mpGamerTags[i].ped ~= ped or not IsMpGamerTagActive(mpGamerTags[i].tag) then
                local nameTag = v.name
                if mpGamerTags[i] then
                    RemoveMpGamerTag(mpGamerTags[i].tag)
                end
                mpGamerTags[i] = {
                    tag = CreateMpGamerTag(GetPlayerPed(i), nameTag, false, false, '', 0),
                    ped = ped
                }
            end
            local tag = mpGamerTags[i].tag
            if mpGamerTagSettings[i].rename then
                SetMpGamerTagName(tag, v.name)
                mpGamerTagSettings[i].rename = nil
            end

            local distance = #(pedCoords - GetEntityCoords(ped))
            if distance < 100 then
                SetMpGamerTagVisibility(tag, gtComponent.GAMER_NAME, true)
                SetMpGamerTagVisibility(tag, gtComponent.healthArmour, true)
                -- SetMpGamerTagVisibility(tag, gtComponent.AUDIO_ICON, NetworkIsPlayerTalking(i))
                -- SetMpGamerTagAlpha(tag, gtComponent.AUDIO_ICON, 255)
                SetMpGamerTagAlpha(tag, gtComponent.healthArmour, 255)

                local settings = mpGamerTagSettings[i]
                for k, v in pairs(settings.toggles) do
                    SetMpGamerTagVisibility(tag, gtComponent[k], v)
                end

                for k, v in pairs(settings.alphas) do
                    SetMpGamerTagAlpha(tag, gtComponent[k], v)
                end

                if health > 66 then
                    SetMpGamerTagHealthBarColour(tag, 18)
                elseif health > 33 then
                    SetMpGamerTagHealthBarColour(tag, 12)
                elseif health > 0 then -- 6 - kırmızı, 8 - bordo, 12 - sarı, 18 - yeşil
                    SetMpGamerTagHealthBarColour(tag, 6)
                end
                if isSquad then
                    SetMpGamerTagColour(tag, 0, 9)
                end
            else
                SetMpGamerTagVisibility(tag, gtComponent.GAMER_NAME, false)
                SetMpGamerTagVisibility(tag, gtComponent.healthArmour, false)
            end
        end
    end
end

function RemoveGamerTags()
    for k,v in pairs(mpGamerTags) do
        RemoveMpGamerTag(v.tag)
    end
    mpGamerTags = {}
end