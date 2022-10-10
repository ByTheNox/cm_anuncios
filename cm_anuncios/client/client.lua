QBCore = nil


--Hecho con todo el cariño del mundo para ClaseMedia por Javier720
Citizen.CreateThread(function()
	while QBCore == nil do
		TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)
		Citizen.Wait(200)
	end
end)

RegisterNetEvent('cm_anuncios:client:SendAlert')
AddEventHandler('cm_anuncios:client:SendAlert', function(data)
	SendAlert(data.type, data.text, data.length, data.style)
end)

function SendAlert(type, text, length, style)
	SendNUIMessage({
		type = type,
		text = text,
		length = length,
		style = style
	})
end
