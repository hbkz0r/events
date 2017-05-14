Citizen.CreateThread(function()
    while true do
        Wait(500)
		local ped = GetPlayerPed(-1)
		local plyPos = GetEntityCoords(ped,  true)
        if IsEntityDead(ped) then
            NetworkResurrectLocalPlayer(plyPos, true, true, false)
			ClearPedTasks(ped)
			Citizen.Wait(500)
			TriggerEvent('deadan', ped)
			TriggerServerEvent("deaths")
        	TriggerEvent("chatMessage", "[System]", { 255,0,0}, "You are dead.")
        	TriggerEvent("chatMessage", "[System]", { 255,0,0}, "Call for paramedics to revive you or start the reviving timer using : /starttimer.")
		end
	end
end)
