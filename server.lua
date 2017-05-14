AddEventHandler('chatMessage', function(source, n, message)
    cm = stringsplit(message, " ")

    if(cm[1] == "/heal") then
		CancelEvent()
		if tablelength(cm) > 1 then
			local tG = tonumber(cm[2])
			TriggerClientEvent("heal", tG)
			end
		end
	end
end)

function stringsplit(self, delimiter)
  local a = self:Split(delimiter)
  local t = {}

  for i = 0, #a - 1 do
     table.insert(t, a[i])
  end

  return t
end

function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end
