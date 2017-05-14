local death = false
local deathrelease = false

RegisterNetEvent("deatht")
AddEventHandler("deatht", function(timer)
	if death == true then
		return
	end
	local ped = GetPlayerPed(-1)
	if DoesEntityExist(ped) then
	
		Citizen.CreateThread(function()
			death = true
			deathrelease = false
			while timer > 0 and not deathrelease do
				ped = GetPlayerPed(-1)
				RemoveAllPedWeapons(ped, true)
				SetEntityInvincible(ped, true)
				TriggerEvent("deadan")
				if timer % 30 == 0 then
					TriggerEvent("chatMessage", "[System]", { 255,0,0}, timer .. " more seconds untill you respawn.")
				end
				Citizen.Wait(500)
				timer = timer - 0.5
			end
			SetEntityCoords(ped, 295.946, -1446.82, 29.9666)
			TriggerServerEvent('chatMessageEntered', "SYSTEM", { 255, 0, 0 }, GetPlayerName(PlayerId()) .." has been revived.")
			death = false
			SetEntityInvincible(ped, false)
			ClearPedTasksImmediately(ped)
		end)
	end
end)
		
		
RegisterNetEvent("deathr")
AddEventHandler("deathr", function()
	deathrelease = true
	TriggerEvent('chatMessage', "SYSTEM", { 255,0,0}, "You have been revived by a paramedic.")
	TriggerServerEvent('chatMessageEntered', "SYSTEM", { 255, 0, 0 }, GetPlayerName(PlayerId()) .." has been revived by a paramedic.")
end)
