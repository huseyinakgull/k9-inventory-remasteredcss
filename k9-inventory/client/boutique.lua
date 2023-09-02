-- By MP mon reuf 

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)

Citizen.CreateThread(function()
    ESX.TriggerServerCallback("MP:codesecret", function(cb)
        codesecret = cb
    end)
end)

RegisterNUICallback('buy', function(data)
	if data ~= nil then
		TriggerServerEvent("MP:buy", codesecret, tonumber(data.boutique))
	end
end)