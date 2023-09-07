local QBCore = exports['qb-core']:GetCoreObject()

-- Create Usable Item -- 

QBCore.Functions.CreateUseableItem("metaldetector", function(src, item)
    TriggerClientEvent('qb-metaldetecting:startdetect', src)
end)

-- Detecting Reward --

RegisterNetEvent('qb-metaldetecting:DetectReward', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local chance = math.random(1,100)

    if chance <= Config.CommonChance then 
        local item = Config.CommonItems[math.random(1, #Config.CommonItems)]
        local amount = Config.CommonAmount
        
        Player.Functions.AddItem(item, amount)
        TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items[item], "add")
        TriggerClientEvent('QBCore:Notify', src, 'Du hittade '.. item ..'!', 'success')
    elseif chance >= Config.RareChance then 
        local item = Config.RareItems[math.random(1, #Config.RareItems)]
        local amount = Config.RareAmount
        
        Player.Functions.AddItem(item, amount)
        TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items[item], "add")
        TriggerClientEvent('QBCore:Notify', src, 'Du hittade '.. item ..'!', 'success')
    else
        TriggerClientEvent('QBCore:Notify', src, 'Du hittade inget..', 'error')
    end 
end)

-- Common Trade Event --

RegisterServerEvent('qb-metaldetector:server:CommonTrade', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = tostring(data.item)
    local check = Player.Functions.GetItemByName(item)
    
    if data.id == 2 then
        if check ~= nil then
            if check.amount >= 50 then
                Player.Functions.RemoveItem(item, 50)
                Player.Functions.AddItem('metalscrap', 40)
                TriggerClientEvent('QBCore:Notify', src, 'Du bytte 50 Metal Trash'..' for 40 Metal Scrap.', 'success')
            else 
                TriggerClientEvent('QBCore:Notify', src, "Du har inte tillreckligt med metallskrot..", 'error')
            end 
        else 
            TriggerClientEvent('QBCore:Notify', src, "Du har inget Metal Trash.", 'error')
        end
    elseif data.id == 3 then 
        if check ~= nil then
            if check.amount >= 40 then
                Player.Functions.RemoveItem(item, 40)
                Player.Functions.AddItem('iron', 35)
                TriggerClientEvent('QBCore:Notify', src, 'Du bytte 40 Iron Trash'..' for 35 Iron.', 'success')
            else 
                TriggerClientEvent('QBCore:Notify', src, "Du har inte tillreckligt med jarnskrot..", 'error')
            end 
        else 
            TriggerClientEvent('QBCore:Notify', src, "Du har inget Iron Trash.", 'error')
        end
    elseif data.id == 4 then 
        if check ~= nil then
            if check.amount >= 60 then
                Player.Functions.RemoveItem(item, 60)
                Player.Functions.AddItem('copper', 40)
                TriggerClientEvent('QBCore:Notify', src, 'Du handlade 60 kulhylsor'..' for 40 kulhylsor.', 'success')
            else 
                TriggerClientEvent('QBCore:Notify', src, "Du har inte tillreckligt kulhylsor..", 'error')
            end 
        else 
            TriggerClientEvent('QBCore:Notify', src, "Du har inga kulhylsor.", 'error')
        end
    elseif data.id == 5 then 
        if check ~= nil then
            if check.amount >= 20 then
                Player.Functions.RemoveItem(item, 20)
                Player.Functions.AddItem('aluminum', 30)
                TriggerClientEvent('QBCore:Notify', src, 'Du handlade 20 aluminiumburkar'..' for 30 Aluminum.', 'success')
            else 
                TriggerClientEvent('QBCore:Notify', src, "Du har inte tillreckligt med aluminiumburkar..", 'error')
            end 
        else 
            TriggerClientEvent('QBCore:Notify', src, "Du har inga aluminiumburkar.", 'error')
        end
    elseif data.id == 6 then 
        if check ~= nil then
            if check.amount >= 50 then
                Player.Functions.RemoveItem(item, 50)
                Player.Functions.AddItem('steel', 35)
                TriggerClientEvent('QBCore:Notify', src, 'Du handlade 50 Steel Trash'..' for 35 Steel.', 'success')
            else 
                TriggerClientEvent('QBCore:Notify', src, "Du har inte tillreckligt med Steel Trash..", 'error')
            end 
        else 
            TriggerClientEvent('QBCore:Notify', src, "Du har inga Steel Trash.", 'error')
        end
    elseif data.id == 7 then 
        if check ~= nil then
            if check.amount >= 5 then
                Player.Functions.RemoveItem(item, 5)
                Player.Functions.AddItem('weapon_dagger', 1)
                TriggerClientEvent('QBCore:Notify', src, 'Du handlade 5 Broken Knives'..' for 1 Dagger.', 'success')
            else 
                TriggerClientEvent('QBCore:Notify', src, "Du har inte tillreckligt med trasiga knivar..", 'error')
            end 
        else 
            TriggerClientEvent('QBCore:Notify', src, "Du har inga Broken Knives.", 'error')
        end
    elseif data.id == 8 then 
        if check ~= nil then
            if check.amount >= 1 then
                Player.Functions.RemoveItem(item, 1)
                Player.Functions.AddMoney('cash', 130)
                TriggerClientEvent('QBCore:Notify', src, 'Du handlade 1 broken Metal Detector'..' for €130.', 'success')
            else 
                TriggerClientEvent('QBCore:Notify', src, "Du har inte tillreckligt med Metal Detectors..", 'error')
            end 
        else 
            TriggerClientEvent('QBCore:Notify', src, "Du har inga Metal Detectors.", 'error')
        end
    elseif data.id == 9 then 
        if check ~= nil then
            if check.amount >= 20 then
                Player.Functions.RemoveItem(item, 20)
                Player.Functions.AddItem('copper', 35)
                TriggerClientEvent('QBCore:Notify', src, 'Du handlade 20 House Keys'..' for 35 Copper.', 'success')
            else 
                TriggerClientEvent('QBCore:Notify', src, "Du har inte tillreckligt med House Keys..", 'error')
            end 
        else 
            TriggerClientEvent('QBCore:Notify', src, "Du har inga House Keys.", 'error')
        end
    elseif data.id == 10 then 
        if check ~= nil then
            if check.amount >= 1 then
                Player.Functions.RemoveItem(item, 1)
                Player.Functions.AddMoney('cash', 30)
                TriggerClientEvent('QBCore:Notify', src, 'Du handlade 1 Broken Phone'..' for $30.', 'success')
            else 
                TriggerClientEvent('QBCore:Notify', src, "Du har inte tillreckligt med Broken Phones..", 'error')
            end 
        else 
            TriggerClientEvent('QBCore:Notify', src, "Du har inga Broken Phones.", 'error')
        end
    end
end)

-- Rare Trade Event --

RegisterServerEvent('qb-metaldetector:server:RareTrade', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = tostring(data.item)
    local check = Player.Functions.GetItemByName(item)
    
    if data.id == 2 then
        if check ~= nil then
            if check.amount >= 1 then
                Player.Functions.RemoveItem(item, 1)
                Player.Functions.AddMoney('cash', 15000)
                TriggerClientEvent('QBCore:Notify', src, 'Du handlade 1 Burried Treasure'..' for €15,000.', 'success')
            else 
                TriggerClientEvent('QBCore:Notify', src, "Du har inte tillreckligt med Burried Treasure..", 'error')
            end 
        else 
            TriggerClientEvent('QBCore:Notify', src, "Du har inga Burried Treasure.", 'error')
        end
    elseif data.id == 3 then
        if check ~= nil then
            if check.amount >= 1 then
                Player.Functions.RemoveItem(item, 1)
                Player.Functions.AddMoney('cash', 1600)
                TriggerClientEvent('QBCore:Notify', src, 'Du handlade 1 Treasure Key'..' for €1600.', 'success')
            else 
                TriggerClientEvent('QBCore:Notify', src, "Du har inte tillreckligt med Treasure Keys..", 'error')
            end 
        else 
            TriggerClientEvent('QBCore:Notify', src, "Du har inga Treasure Keys.", 'error')
        end
    elseif data.id == 4 then
        if check ~= nil then
            if check.amount >= 1 then
                Player.Functions.RemoveItem(item, 1)
                Player.Functions.AddMoney('cash', 1500)
                TriggerClientEvent('QBCore:Notify', src, 'Du handlade 1 Antique Coin'..' for €1500.', 'success')
            else 
                TriggerClientEvent('QBCore:Notify', src, "Du har inte tillreckligt med Antique Coins..", 'error')
            end 
        else 
            TriggerClientEvent('QBCore:Notify', src, "Du har inga Antique Coins.", 'error')
        end
    elseif data.id == 5 then
        if check ~= nil then
            if check.amount >= 1 then
                Player.Functions.RemoveItem(item, 1)
                Player.Functions.AddMoney('cash', 600)
                TriggerClientEvent('QBCore:Notify', src, 'Du handlade 1 Golden Nugget'..' for €600.', 'success')
            else 
                TriggerClientEvent('QBCore:Notify', src, "Du har inte tillreckligt med Golden Nuggets..", 'error')
            end 
        else 
            TriggerClientEvent('QBCore:Notify', src, "Du har inga Golden Nuggets.", 'error')
        end
    elseif data.id == 6 then
        if check ~= nil then
            if check.amount >= 1 then
                Player.Functions.RemoveItem(item, 1)
                Player.Functions.AddMoney('cash', 800)
                TriggerClientEvent('QBCore:Notify', src, 'Du handlade 1 Gold Coin'..' for €800.', 'success')
            else 
                TriggerClientEvent('QBCore:Notify', src, "Du har inte tillreckligt med Gold Coins..", 'error')
            end 
        else 
            TriggerClientEvent('QBCore:Notify', src, "Du har inga Gold Coins.", 'error')
        end
    elseif data.id == 7 then
        if check ~= nil then
            if check.amount >= 1 then
                Player.Functions.RemoveItem(item, 1)
                Player.Functions.AddMoney('cash', 2000)
                TriggerClientEvent('QBCore:Notify', src, 'Du handlade 1 Antique Coin'..' for €2000.', 'success')
            else 
                TriggerClientEvent('QBCore:Notify', src, "Du har inte tillreckligt med Antique Coins..", 'error')
            end 
        else 
            TriggerClientEvent('QBCore:Notify', src, "Du har inga Antique Coins.", 'error')
        end
    elseif data.id == 8 then
        if check ~= nil then
            if check.amount >= 1 then
                Player.Functions.RemoveItem(item, 1)
                Player.Functions.AddMoney('cash', 2800)
                TriggerClientEvent('QBCore:Notify', src, 'Du handlade 1 WW2 Coin'..' for €2800.', 'success')
            else 
                TriggerClientEvent('QBCore:Notify', src, "Du har inte tillreckligt med WW2 Coins..", 'error')
            end 
        else 
            TriggerClientEvent('QBCore:Notify', src, "Du har inga WW2 Coins.", 'error')
        end
    elseif data.id == 9 then
        if check ~= nil then
            if check.amount >= 5 then
                Player.Functions.RemoveItem(item, 5)
                TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['gameboy'], 'add')
                Player.Functions.AddItem('gameboy', 1)
                TriggerClientEvent('QBCore:Notify', src, 'Du handlade 5 Broken Gameboys'..' for 1 working Gameboy.', 'success')
            else 
                TriggerClientEvent('QBCore:Notify', src, "Du har inte tillreckligt med Broken Gameboys..", 'error')
            end 
        else 
            TriggerClientEvent('QBCore:Notify', src, "Du har inga Broken Gameboys.", 'error')
        end
    elseif data.id == 10 then
        if check ~= nil then
            if check.amount >= 1 then
                Player.Functions.RemoveItem(item, 1)
                Player.Functions.AddMoney('cash', 150)
                TriggerClientEvent('QBCore:Notify', src, 'Du handlade 1 Pocket Watch'..' for $150.', 'success')
            else 
                TriggerClientEvent('QBCore:Notify', src, "Du har inte tillreckligt med Pocket Watches..", 'error')
            end 
        else 
            TriggerClientEvent('QBCore:Notify', src, "Du har inga Pocket Watches.", 'error')
        end
    end
end)
