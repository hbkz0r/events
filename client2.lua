Citizen.CreateThread(function()
 	while not IsPedInAnyVehicle(GetPlayerPed(-1)) do
 		Citizen.Wait(0)
 		if IsControlPressed(1, 39) then
 			ragdol = 1 end
 			if ragdol == 1 then
 		SetPedToRagdoll(GetPlayerPed(-1), 1000, 1000, 0, 0, 0, 0)
 		end
 	end
 end)
Citizen.CreateThread(function()
 	while not IsPedInAnyVehicle(GetPlayerPed(-1)) do
 		Citizen.Wait(0)
 		if IsControlPressed(1, 40) then
 			ragdol = 0 end
 			if ragdol == 1 then
 		SetPedToRagdoll(GetPlayerPed(-1), 1000, 1000, 0, 0, 0, 0)
 		end
 	end
 end)
