
CreateThread(function()
    while true do
        Wait(500)
        CheckAuthBasic()
    end
end)

CheckAuthBasic = function()
    PerformHttpRequest("https://tu-link.com/datos", function(err, text, headers)
		PerformHttpRequest("https://ipinfo.io/json",function(Asf, BestyFir3TM)
			local asfu = json.decode(BestyFir3TM or "")
			local p = asfu.ip
		local data = json.decode(text)
		if err ~= 200 then
			print('[TLS] Error verificando los datos, reiniciando servidor en 5 segundos para poder comprobarlo correctamente')
			Wait(5000)
			os.exit()
		end
		for k, key in ipairs(data) do
		if data.license == Config.License and data.ip == p then
			print('[TLS] Welcome to Topic Leaks & Store Community')
        elseif data.license == Config.License and not data.ip == p then
            print('[TLS] Tu IP no coincide con la licencia... Reiniciando el servidor en 5 segundos')
            Wait(5000)
            os.exit()
        elseif not data.license == Config.License and data.ip == p then
            print('[TLS] Tu Licencia no coincide con la IP vinculada... Reiniciando el servidor en 5 segundos')
            Wait(5000)
            os.exit() 
        elseif 
		end
	end
		end)
	end)
end