local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('razed-svelte:server:buyItem', function(item, amount, price)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    if Player.Functions.GetMoney('cash') < price then
        TriggerClientEvent("ox_lib:notify", src, {
            title = 'Failed Purchase!',
            description = 'You do not have enough cash in hand.',
            duration = 2500,
            type = 'error'
        })
        if Player.Functions.GetMoney('bank') < price then
            TriggerClientEvent("ox_lib:notify", src, {
                title = 'Failed Purchase!',
                description = 'You do not have enough money in your bank.',
                duration = 2500,
                type = 'error'
            })
        else if Player.Functions.GetMoney('bank') > price then
            TriggerClientEvent("ox_lib:notify", src, {
                title = 'Successful Purchase!',
                description = 'You have success bought the product for $'..price..'!',
                duration = 2500,
                type = 'success'
            })
            Player.Functions.RemoveMoney('Cash', price)
            Player.Functions.AddItem(item, amount , false)
        end
        end
    else if Player.Functions.GetMoney('cash') > price then
        TriggerClientEvent("ox_lib:notify", src, {
            title = 'Successful Purchase!',
            description = 'You have success bought the product for $'..price..'!',
            duration = 2500,
            type = 'success'
        })
        Player.Functions.RemoveMoney('Bank', price)
        Player.Functions.AddItem(item, amount , false)
    end
end
end)