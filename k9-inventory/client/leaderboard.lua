RegisterNUICallback("GetLeaderBoard", function(data, cb)
    local callback = {
        boardData = LeaderBoard[data.boardKey][data.key],
        menuTypes = data.createTypes and Config.StatTypes
    }
    cb(callback)
end)

RegisterNUICallback("ReOrderLeaderBoard", function(data, cb)
    cb(reOrder(data))
end)

-- RegisterNUICallback("ListCrewsOrPlayers", function(data, cb)
--     cb()
-- end)

-- Citizen.CreateThread()

RegisterNetEvent("gfx-inventory:UpdateLeaderBoard")
AddEventHandler("gfx-inventory:UpdateLeaderBoard", function(tableau)
    print("ntzrorok")
    SendNUIMessage({
        type = "updateleaderboard",
        ldcdesblancs = tableau
    })
end)