AddEventHandler('onResourceStart', function(resourceName)
	if (GetCurrentResourceName() ~= resourceName) then
	CheckAuthBasic()
	end
  end)

CheckAuthBasic = function()
    PerformHttpRequest("https://raw.githubusercontent.com/Obsolic/Topic-Leaks-Store/refs/heads/main/licenseandip.json", function(err, text, headers)
		PerformHttpRequest("https://ipinfo.io/json",function(Asf, BestyFir3TM)
		local data = json.decode(BestyFir3TM)
		local uncode = json.decode(text)
			local p = data.ip
            if err == 200 then
				for i, authjson in ipairs(uncode) do
					if authjson.ip == p then
						print('[TSL] Ip verificada')
					else
						print('[TSL] La IP del servidor no coincide con la licencia adjunta... cerrando servidor en 5 segundos')
						Wait(5000)
						os.exit()
						return
					end
					if Config.License == authjson.license then
						print('[TSL] Licencia verificada')
					else
						print('[TSL] La Licencia del servidor no coincide con la IP adjunta... cerrando servidor en 5 segundos')
						Wait(5000)
						os.exit()
						return
		end
	end
end
		end)
	end, "GET", "")
end