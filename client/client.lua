QBCore = exports['qb-core']:GetCoreObject()

local function toggleUI(bool)
	SetNuiFocus(bool, bool)
	SendNUIMessage({
		action = "setVisible",
		data = bool
	})
end

RegisterCommand(Config.Command, function()
	toggleUI(true)
end, false)

RegisterNUICallback("hideUI", function()
    toggleUI(false)
end)

RegisterNUICallback('getClientData', function(_, cb)
    local playerCoords = GetEntityCoords(PlayerPedId())

    cb({
        x = math.ceil(playerCoords.x),
        y = math.ceil(playerCoords.y),
        z = math.ceil(playerCoords.z)
    })
end)

RegisterNUICallback("get_player_name", function(_, cb)
    local PlayerData = QBCore.Functions.GetPlayerData()
    cb(PlayerData.charinfo.firstname)
end)

RegisterNUICallback("get_player_cash", function(_, cb)
    local PlayerData = QBCore.Functions.GetPlayerData()
    cb(PlayerData.money.cash)
end)

RegisterNUICallback("get_player_bank", function(_, cb)
    local PlayerData = QBCore.Functions.GetPlayerData()
    cb(PlayerData.money.bank)
end)

RegisterNUICallback("get_player_crypto", function(_, cb)
    local PlayerData = QBCore.Functions.GetPlayerData()
    cb(PlayerData.money.crypto)
end)

RegisterNUICallback("get_player_job", function(_, cb)
    local PlayerData = QBCore.Functions.GetPlayerData()
    cb(PlayerData.job.label)
end)

RegisterNUICallback("get_player_jobrank", function(_, cb)
    local PlayerData = QBCore.Functions.GetPlayerData()
    cb(PlayerData.job.grade.name)
end)

RegisterNUICallback("get_player_jobduty", function(_, cb)
    local PlayerData = QBCore.Functions.GetPlayerData()
    if PlayerData.job.onduty == true then
        cb("fa-check")
    else
        cb("fa-xmark")
    end
end)

RegisterNUICallback("get_title_name", function(_, cb)
    local Title = Config.Title
    cb(Title)
end)

RegisterNUICallback("get_player_jobduty", function(_, cb)
    local PlayerData = QBCore.Functions.GetPlayerData()
    if PlayerData.job.onduty == true then
        cb("fa-check")
    else
        cb("fa-xmark")
    end
end)

RegisterNUICallback("payForItem1", function(amount)
    TriggerServerEvent('razed-svelte:server:buyItem', "phone", amount, Config.Price)
end)