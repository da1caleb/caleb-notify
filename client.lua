-- Function to show notification using ox_lib
RegisterNetEvent('caleb-notify:client')
AddEventHandler('caleb-notify:client', function(type, title, message)
    lib.notify({
        title = title or 'Notification',
        description = message or '',
        type = type or 'inform',  -- types: inform, success, error, warning
        position = 'top',
        duration = 5000,
        icon = 'bell'             -- optional, default is bell
    })
end)