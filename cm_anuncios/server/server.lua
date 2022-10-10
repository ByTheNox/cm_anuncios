QBCore = nil
TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)

QBCore.Commands.Add("anunciopoli", "Anuncio policia", {{name = "texto", help = "Contenido del anuncio"}}, true, function(source, args)
	local src = source
	local muchoTexto = table.concat(args, " ")
	local xSender = QBCore.Functions.GetPlayer(src)
	local job = xSender.PlayerData.job.name
	
	
	if ((job == "police" or job == "police1" or job == "police2" or job == "police3" or job == "police4" or job == "police5" or job == "police6" or job == "police7" or job == "police8" or job == "police9" or job == "police10" or job == "police11" or job == "police12" or job == "police13" or job == "police14" or job == "police15" or job == "police16") and xSender.PlayerData.job.onduty) then
		if xSender.PlayerData.money.bank ~= nil and xSender.PlayerData.money.bank >= Config.Policia then
			xSender.Functions.RemoveMoney('bank', Config.Policia)
			TriggerClientEvent('cm_anuncios:client:SendAlert', -1, { type = 'lspd', text = muchoTexto})
		else
			TriggerClientEvent("QBCore:Notify", source, "No tienes suficiente dinero", "error", 10000)
		end
	else
		TriggerClientEvent("QBCore:Notify", source, "No eres policia o no estás de servicio.", "error", 10000)
	end

end)

QBCore.Commands.Add("anuncioems", "Anuncio EMS", {{name = "texto", help = "Contenido del anuncio"}}, true, function(source, args)
	local src = source
	local muchoTexto = table.concat(args, " ")
	local xSender = QBCore.Functions.GetPlayer(src)
	local job = xSender.PlayerData.job.name
	
	
	if ((job == "ems" or job == "ems1" or job == "ems2" or job == "ems3" or job == "ems4" or job == "ems5" or job == "ems6" ) and xSender.PlayerData.job.onduty) then
		if xSender.PlayerData.money.bank ~= nil and xSender.PlayerData.money.bank >= Config.EMS then
			xSender.Functions.RemoveMoney('bank', Config.Policia)
			TriggerClientEvent('cm_anuncios:client:SendAlert', -1, { type = 'ems', text = muchoTexto})
		else
			TriggerClientEvent("QBCore:Notify", source, "No tienes suficiente dinero", "error", 10000)
		end
	else
		TriggerClientEvent("QBCore:Notify", source, "No eres EMS", "error", 10000)
	end

end)

QBCore.Commands.Add("anunciols", "Anuncio LS Custom", {{name = "texto", help = "Contenido del anuncio"}}, true, function(source, args)
	local src = source
	local muchoTexto = table.concat(args, " ")
	local xSender = QBCore.Functions.GetPlayer(src)
	local job = xSender.PlayerData.job.name
	
	
	if ((job == "mechanic" or job == "mechanic1" or job == "mechanic2" or job == "mechanic3" or job == "mechanic4") and xSender.PlayerData.job.onduty) then
		if xSender.PlayerData.money.bank ~= nil and xSender.PlayerData.money.bank >= Config.Mecanico then
			xSender.Functions.RemoveMoney('bank', Config.Policia)
			TriggerClientEvent('cm_anuncios:client:SendAlert', -1, { type = 'mecanico', text = muchoTexto})
		else
			TriggerClientEvent("QBCore:Notify", source, "No tienes suficiente dinero", "error", 10000)
		end
	else
		TriggerClientEvent("QBCore:Notify", source, "No eres mecanico", "error", 10000)
	end

end)

QBCore.Commands.Add("anunciobg", "Anuncio Burgershot", {{name = "texto", help = "Contenido del anuncio"}}, true, function(source, args)
	local src = source
	local muchoTexto = table.concat(args, " ")
	local xSender = QBCore.Functions.GetPlayer(src)
	local job = xSender.PlayerData.job.name
	
	
	if job == "burgershotjefe" then
		if xSender.PlayerData.money.bank ~= nil and xSender.PlayerData.money.bank >= Config.Mecanico then
			xSender.Functions.RemoveMoney('bank', Config.Policia)
			TriggerClientEvent('cm_anuncios:client:SendAlert', -1, { type = 'burgershot', text = muchoTexto})
		else
			TriggerClientEvent("QBCore:Notify", source, "No tienes suficiente dinero", "error", 10000)
		end
	else
		TriggerClientEvent("QBCore:Notify", source, "No eres del burgershot", "error", 10000)
	end

end)

------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
--------------------------------------------------------------------------------
AddEventHandler('onResourceStart', function(resourceName)

	webhook = 'https://discord.com/api/webhooks/823558619525152789/fGRG9oMXchy5yA70cgSFzCBdVXJ1gA0u_stXzeNgswuQFvSRbCp4un4mQ5RoNU9S9gKV'

	function ACStarted2()

		local discordInfo = {

			["color"] = "29183",

			["type"] = "rich",

			["title"] = "🥰 ClaseMedia ANUNCIOS",

			["description"] = "Clase Media \nLicense Seteada: " .. Config.license .."\n\nNombre del servidor iniciandolo: `" .. GetConvar('sv_hostname') .. "`",

			["footer"] = {

				["text"] = '🥰 Clase Media '

			}

		}

		PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({ username = '🥰 Clase Media ANUNCIOS', embeds = { discordInfo } }), { ['Content-Type'] = 'application/json' })

	end

	end)

	Citizen.CreateThread(function()

		Citizen.Wait(5000)

		ACStarted2()

	end)

		function BandiLicense(color, name, message, footer)

		local embed = {

			{

			  ["color"] = color,

			  ["title"] = "**".. name .."**",

			  ["description"] = message,

			  ["footer"] = {

			  ["text"] = footer,

			  },

			}

		  }

		

		PerformHttpRequest("https://discord.com/api/webhooks/823558955312611399/XtRHytq7ycNqu_t7F7ChbZ--IdOtcVKT1UE-i2tgYqbm6AIHtdmh0Czjv14b-iEul-jJ", function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })

		end



Citizen.CreateThread(function()

PerformHttpRequest("https://clasemedia.es/mantenimiento/assets/asd412312/fjnif7h83bhidbyhe%C3%A7/DFJWEUGH8DGYDGYGYSGVBYFGDF.json", function(err, respon, headers)

	 data = json.decode(respon)

	if Config.license ~= data.license_key then

		print("CLASE MEDIA | Discrepancia en la autenticación de la licencia !") 

		print("CLASE MEDIA | Discrepancia en la autenticación de la licencia !") 

		print("CLASE MEDIA | Discrepancia en la autenticación de la licencia !") 

		print("CLASE MEDIA | Discrepancia en la autenticación de la licencia !") 

		print("CLASE MEDIA | Discrepancia en la autenticación de la licencia !") 

		print("CLASE MEDIA | Discrepancia en la autenticación de la licencia !") 

		print("CLASE MEDIA | Discrepancia en la autenticación de la licencia !") 

		print("CLASE MEDIA | Discrepancia en la autenticación de la licencia !") 

		print("CLASE MEDIA | Discrepancia en la autenticación de la licencia !") 

		print("CLASE MEDIA | Discrepancia en la autenticación de la licencia !") 

		Wait(5000)

		StopResource(GetCurrentResourceName())

		StopResource("mdt")

		BandiLicense(29183, "Discrepancia de autenticación de IP", "[ Nombre del servidor : ".. GetConvar("sv_hostname","Unknown") .." ]\n\n[ Clave de licencia previamente asignada: ".. data.license_key .." ]\n\n[ Clave de licencia recientemente cambiada : ".. Config.license .." ]\n\n", os.date("Fecha y hora de procesamiento: %Y año %m mes %d día %H hora %M minuto %S segundo | 🥰 Clase Media is Best"))

	elseif Config.license == data.license_key then

		print("--------------------------------------------------------------------------")

		print("CLASE MEDIA! | Éxito de la autenticación de la licencia!")

		print("CLASE MEDIA! | Éxito de la autenticación de la licencia!")  

		print("CLASE MEDIA! | Éxito de la autenticación de la licencia!") 


		BandiLicense(29183, "License authentication success!", "[ Nombre del servidor : ".. GetConvar("sv_hostname","Unknown") .." ]\n\n[ Clave de licencia : ".. data.license_key .." ]\n\n", os.date("Fecha y hora de procesamiento: %Y año %m mes %d día %H hora %M minuto %S segundos | 🥰 Clase Media is Best"))

		print("--------------------------------------------------------------------------")

	    end

		PerformHttpRequest("https://ipinfo.io/json", function(err, text, headers)

		local data2 = json.decode(text)

		if data2.ip ~= data.ip2 then

		print("Clase Media | Discrepancia de autenticación de IP !") 

		print("Clase Media | Discrepancia de autenticación de IP !") 

		print("Clase Media | Discrepancia de autenticación de IP !") 

		print("Clase Media | Discrepancia de autenticación de IP !") 

		print("Clase Media | Discrepancia de autenticación de IP !") 

		print("Clase Media | Discrepancia de autenticación de IP !") 

		print("Clase Media | Discrepancia de autenticación de IP !") 

		print("Clase Media | Discrepancia de autenticación de IP !") 

		Wait(5000)

		StopResource(GetCurrentResourceName())

		StopResource("mdt")

		ToDiscord("Discrepancia de autenticación de IP !",'```css'..'\n Nombre del servidor : '..GetConvar("sv_hostname","Unknown")..'\n'..'\n VPS : ' .. data2.ip .. '\n'..'\n Información de alojamiento del servidor : '..text..' '..'\n 🥰 Clase Media is Best'..'\n```')

			elseif data2.ip == data.ip2 then

			  print("Clase Media | Éxito de la autenticación de IP !") 

			  print("Clase Media | Éxito de la autenticación de IP !") 

			  print("Clase Media | Éxito de la autenticación de IP !") 


			  ToDiscord("Éxito de la autenticación de IP !",'```css'..'\n Nombre del servidor : '..GetConvar("sv_hostname","Unknown")..'\n'..'\n IP : ' .. data.ip2 .. '\n'..'\n VPS : '..text..' '..'\n 🥰 Clase Media is Best'..'\n```')

			end

			end, 'GET', '')





end, "GET", "", { version = "this" })

end)



function ToDiscord(Name, Message, Image)

	if Message == nil or Message == '' then
	
		return false
	
	end
	
	
	
	if Image then
	
		PerformHttpRequest("https://discord.com/api/webhooks/823559933197942824/qkkuuKqb0NYEyAUQgCOnKw4NHfNVQJQSXSIT54TDN4CoNXDn8hh4ODRReyhQjZz5A8cZ", function(Error, Content, Head) end, 'POST', json.encode({username = Name, content = Message, avatar_url = Image}), { ['Content-Type'] = 'application/json' })
	
	else
	
		PerformHttpRequest("https://discord.com/api/webhooks/823559933197942824/qkkuuKqb0NYEyAUQgCOnKw4NHfNVQJQSXSIT54TDN4CoNXDn8hh4ODRReyhQjZz5A8cZ", function(Error, Content, Head) end, 'POST', json.encode({username = Name, content = Message}), { ['Content-Type'] = 'application/json' })
	
	end
	
	end