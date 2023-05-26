local webhookUrl = 'TON_WEBHOOK' -- Remplacez par l'URL de votre webhook Discord

RegisterServerEvent('discordLog')
AddEventHandler('discordLog', function(message)
    PerformHttpRequest(webhookUrl, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
end)