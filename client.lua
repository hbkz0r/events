Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if DoesEntityExist(GetPlayerPed(-1)) then
			SetEntityInvincible(GetPlayerPed(-1), false)
			SetPedCanBeTargetted(GetPlayerPed(-1), true)
			SetPlayerWantedLevel(PlayerId(), 0, false)
			SetPlayerWantedLevelNow(PlayerId(), false)
			SetPlayerHealthRechargeMultiplier(PlayerId(), 0)
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if IsPedBeingStunned(GetPlayerPed(-1)) then
			ragdol = 1
		end
	end
end)


Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if IsEntityPlayingAnim(GetPlayerPed(-1), "dead", "dead_e", 3) then
			SetPedCanRagdoll(GetPlayerPed(-1), false)
			GivePlayerRagdollControl(PlayerId(), false)
		end
	end
end)
