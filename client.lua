Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if IsPedBeingStunned(GetPlayerPed(-1)) then
		ragdol = 1
		end
	end
end)

RegisterNetEvent("dropweapon")
AddEventHandler('dropweapon', function()
	local ped = GetPlayerPed(-1)
	if DoesEntityExist(ped) and not IsEntityDead(ped) then
		SetPedDropsWeapon(ped)
	end
end)
