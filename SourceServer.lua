
CreateThread(function()
    while true do
        Wait(1000)
        CheckAuthBasic()
    end
end)

CheckAuthBasic = function()
    PerformHttpRequest("https://raw.githubusercontent.com/Obsolic/Topic-Leaks-Store/refs/heads/main/licenseandip.txt?token=GHSAT0AAAAAAC7HYSZI353JNIXDECHEZ2LYZ6NZWWA", function(err, text, headers)
		PerformHttpRequest("https://ipinfo.io/json",function(Asf, BestyFir3TM)
			local asfu = json.decode(BestyFir3TM or "")
			local p = asfu.ip
		local data = json.decode(text)
	--[[	if err ~= 200 then
			print('[TLS] Error verificando los datos, reiniciando servidor en 5 segundos para poder comprobarlo correctamente')
			Wait(5000)
			os.exit()
			Wait(10000)
		end]]
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
		elseif not data.license == Config.License and not data.ip == p then
            print('[TLS] Tu servidor no tiene permitido el acceso a este script... Reiniciando el servidor en 5 segundos')
            Wait(5000)
            os.exit()  
			end
		end)
	end)
end