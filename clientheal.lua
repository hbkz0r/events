RegisterNetEvent("heal")
AddEventHandler('heal', function()
	local ped = GetPlayerPed(-1)
	if DoesEntityExist(ped) and not IsEntityDead(ped) then
		SetEntityHealth(ped, 200)
		ragdol = 0
		ShowNotification("You are getting healed.")

	end
end)

RegisterNetEvent("stopanim")
AddEventHandler('stopanim', function()
	local ped = GetPlayerPed(-1)
	if DoesEntityExist(ped) then
	ClearPedTasksImmediately(ped)
	end
end)


function ShowNotification(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(false, false)
end
