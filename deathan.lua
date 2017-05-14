RegisterNetEvent("deadan")
AddEventHandler("deadan", function()
	
	local playerPed = GetPlayerPed(-1)
	if DoesEntityExist(playerPed) then
		Citizen.CreateThread(function()
			RequestAnimDict("dead")
			while not HasAnimDictLoaded("dead") do
				Citizen.Wait(100)
			end
			
			if IsEntityPlayingAnim(playerPed, "dead", "dead_e", 3) then
				ClearPedSecondaryTask(playerPed)
			else
				TaskPlayAnim(playerPed, "dead", "dead_e", 1.0, 0.0, -1, 9, 9, 1, 1, 1)
				GivePlayerRagdollControl(PlayerId(), false)
			end		
		end)
	end
end)
