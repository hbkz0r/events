RegisterServerEvent('deaths')
AddEventHandler('deaths', function()
	local timer = 300 -- Change this with what you want 300 is 5 minutes --
	TriggerClientEvent('deatht', source, timer)
end)

RegisterServerEvent('deathans')
AddEventHandler('deathans', function()
	TriggerClientEvent('deadan', source)
end)
