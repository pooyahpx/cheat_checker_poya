--##DISCORD POYA#2243 ####--##
--DEV BY POYA--



function OnPlayerConnecting(name, setKickReason, deferrals)
	if GetNumPlayerIndices() < 64 then
		deferrals.defer()
		local identifiers = GetPlayerIdentifiers(source)
		local cname = string.gsub(name, "%s+", "")
		deferrals.update(string.format("Salam Khosh Amadid %s. Lotfan Sabr Konid / Dar Hal Check Kardan Vaziat Cheat Haye Shoma...", name))

		
		local ids = ''
		for _, v in pairs(identifiers) do
			local ids = ids..' '..v
		end

		if string.find(cname, "<script") then
			deferrals.done("IP Shoma Sabt Shod Va Bezodi Marahel Ghanon Khod Ra Tey Mikonad  va baraye unban shodan ticket baz konin/ Lua Cheat Detected.")
			logPlayer(name, ids)
		else
			deferrals.done()
		end
	end
end
AddEventHandler("playerConnecting", OnPlayerConnecting)

function logPlayer(name, ids)
	local string = "Yek Nafar Ghasd dasht Az LUA EX Ra Dasht --> "..name..", IDs: "..ids.."."
	local file = io.open('resources/'.. GetCurrentResourceName() .. '/Logs/log.txt', "a")
	print(string)
	io.output(file)
	io.write(string)
	io.close(file)
end
