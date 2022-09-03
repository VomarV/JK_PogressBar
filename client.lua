function DrawBar(time, text, cb)
	SendNUIMessage({
		time = time,
		text = text,
	})
	if cb then
		Citizen.SetTimeout(time + 100, cb)
	end
end

RegisterNetEvent('JK_PogressBar:DrawBar')
AddEventHandler('JK_PogressBar:DrawBar', function(time, text, cb)
	DrawBar(time, text, cb)
end)

--[[

Examples

Citizen.CreateThread(function()

	DrawBar(5000, 'FeelsGoodMan', function()
		print('callback Test')
	end)


	TriggerEvent('JK_PogressBar:DrawBar', 1000, 'test', function()
		print('callback Test')
	end)
end)

]]--
