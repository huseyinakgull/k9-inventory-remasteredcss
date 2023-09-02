SpawnPlayer = function(firstSpawn)
    DoScreenFadeOut(1000)
    DisplayRadar(false)
    ClearFocus()
    local PlayerPed = PlayerPedId()
    SetEntityCoords(PlayerPed, 0.0, 0.0, 0.0)
    FreezeEntityPosition(PlayerPed, true)
	TriggerMusicEvent("GLOBAL_KILL_MUSIC")
    local camera = CreateCam("DEFAULT_SCRIPTED_CAMERA", 0)
	PrepareMusicEvent("RAMPAGE_2_START")
	TriggerMusicEvent("RAMPAGE_2_START")
    SetCamActive(camera, true)
    for i = 1, #CameraParams do
        DoScreenFadeOut(1000)
        Citizen.Wait(2000)
        SetFocusArea(CameraParams[i].starting)
        RenderScriptCams(true, false, 3000, 1, 1, 0)
        Citizen.Wait(250)
        SetCamParams(camera, CameraParams[i].starting, -10.97, 0.0, CameraParams[i].sheading, 60.0, 0, 1, 1, 2)
        SetCamParams(camera, CameraParams[i].ending, -10.97, 0.0, CameraParams[i].eheading, 60.0, 7000, 0, 0, 2)
        DoScreenFadeIn(2000)
        if i < #CameraParams then
            Citizen.Wait(6500)
        else
            ShakeCam(camera, "HAND_SHAKE", 0.5)
        end
    end
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
            DrawText(.5, .3, 1.5, "PRESS ~b~ENTER~w~ TO PLAY",  4, 0)
            if IsControlJustPressed(1, 18) then
                ClearFocus()
                DestroyAllCams()
                StopCameraFunction(firstSpawn)
                break
            end
        end
    end)
end


RegisterKeyMapping(Config.OpenCommand, 'Open/Hide Inventory', 'keyboard', 'TAB')
RegisterCommand(Config.OpenCommand, function()
    CommandFunction()
end)

Citizen.CreateThread(function()
    for i = 1, 7 do
        RegisterKeyMapping("useslot"..i, 'Use Slot #'..i, 'keyboard', i)
        RegisterCommand("useslot"..i, function()
            UseSlot(i)
        end)
    end
end)

Citizen.CreateThread(function()
    while true do
        local sleep = 1000
        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)
        for i = 1, #Config.Stashes.coords do
            if #(coords - Config.Stashes.coords[i]) <= Config.Stashes.textData.farDist then
                sleep = 0
                local text = Config.Stashes.textData.farText
                if #(coords - Config.Stashes.coords[i]) <= Config.Stashes.textData.closeDist then
                    text = Config.Stashes.textData.closeText
                    if IsControlJustReleased(0, Config.InteractKey) then
                        OpenInventory("stash")
                    end
                end
                Draw3DText(Config.Stashes.coords[i], text)
            end
        end
        Citizen.Wait(sleep)
    end
end)