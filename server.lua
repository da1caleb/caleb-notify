ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Server-side trigger to send notifications
RegisterNetEvent('caleb-notify:server', function(targetId, type, title, message)
    local src = source
    if targetId and type and message then
        TriggerClientEvent('caleb-notify:client', targetId, type, title, message)
    else
        TriggerClientEvent('ox_lib:notify', src, {
            type = 'error',
            description = 'Usage: /notify [playerId] [type] [message]'
        })
    end
end)

-- Example: Admin command to send notifications
RegisterCommand('notify', function(source, args, rawCommand)
    local targetId = tonumber(args[1])
    local type = args[2] or 'inform'
    local message = table.concat(args, " ", 3)
    local title = 'Notification'

    if targetId and message then
        TriggerClientEvent('caleb-notify:client', targetId, type, title, message)
    else
        TriggerClientEvent('ox_lib:notify', source, {
            type = 'error',
            description = 'Usage: /notify [playerId] [type] [message]'
        })
    end
end, false)