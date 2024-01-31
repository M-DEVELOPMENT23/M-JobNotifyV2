local cooldown = Config.Cooldown * 1000
local lastUsage = 0

local QBCore = exports['qb-core']:GetCoreObject()


lib.addCommand(Config.Commands["OpenBusiness"].command, {
    help = Config.Commands["OpenBusiness"].commanddescription,
}, function(source)
    local currentTime = GetGameTimer()

    if currentTime - lastUsage < cooldown then
        local remainingTime = (lastUsage + cooldown - currentTime) / 1000
        print(remainingTime)
    else
        local player = QBCore.Functions.GetPlayer(source)
        local jobName = player.PlayerData.job.name

        local allowedJobs = Config.Jobs

        if allowedJobs[jobName] then
            TriggerClientEvent('m:jobnotifyv2:abrirbusiness', -1, jobName)
            lastUsage = currentTime 
        else
            if Config.Debug then
                print("[M-JobNotifyV2] [DEBUG] Job Not Defined In Config.lua")
            end
        end
    end
end)

lib.addCommand(Config.Commands["CloseBusiness"].command, {
    help = Config.Commands["CloseBusiness"].commanddescription,
}, function(source)
    local currentTime = GetGameTimer()

    if currentTime - lastUsage < cooldown then
        local remainingTime = (lastUsage + cooldown - currentTime) / 1000
        print(remainingTime)
    else
        local player = QBCore.Functions.GetPlayer(source)
        local jobName = player.PlayerData.job.name

        local allowedJobs = Config.Jobs

        if allowedJobs[jobName] then
            TriggerClientEvent('m:jobnotifyv2:closebusiness', -1, jobName)
            lastUsage = currentTime 
        else
            if Config.Debug then
                print("[M-JobNotifyV2] [DEBUG] Job Not Defined In Config.lua")
            end
        end
    end
end)
lib.addCommand(Config.Commands["CustomText"].command, {
    help = Config.Commands["CustomText"].commanddescription,
}, function(source, args)
    local currentTime = GetGameTimer()

    if currentTime - lastUsage < cooldown then
        local remainingTime = (lastUsage + cooldown - currentTime) / 1000
        print(remainingTime)
    else
        local player = QBCore.Functions.GetPlayer(source)
        local jobName = player.PlayerData.job.name

        local allowedJobs = Config.Jobs

        if allowedJobs[jobName] then
            if args then
                TriggerClientEvent('m:jobnotifyv2:customtextbusiness', source, table.concat(args, " "), jobName)
            else
                print("Los argumentos no pueden ser nulos.")
            end
            lastUsage = currentTime 
        else
            if Config.Debug then
                print("[M-JobNotifyV2] [DEBUG] Job Not Defined In Config.lua")
            end
        end
    end
end)
