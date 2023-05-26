RegisterNetEvent('logShooting')
AddEventHandler('logShooting', function(weapon, coords)
    local playerName = GetPlayerName(PlayerId())
    local message = '**' .. playerName .. '** a tiré avec une arme : **' .. weapon .. '**'
    message = message .. '\nPosition : x: ' .. coords.x .. ', y: ' .. coords.y .. ', z: ' .. coords.z
    
    TriggerServerEvent('discordLog', message)
end)