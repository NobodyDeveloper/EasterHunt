local function createEasterTable()
    local createTableQuery = [[
        CREATE TABLE IF NOT EXISTS ss_easter (
            id INT AUTO_INCREMENT PRIMARY KEY,
            citizenid VARCHAR(64) NOT NULL UNIQUE,
            collectedEggs JSON NOT NULL
        );
    ]]

    -- Execute the query to create the table
    exports.oxmysql:executeSync(createTableQuery)
end

AddEventHandler('onResourceStart', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        -- Ensure the table is created when the resource starts
        print('----------------------------SHUFFLE SHOP EASTER----------------------------')
        print('                                                                           ')
        print('                                                                           ')
        print('Thank you for using Shuffle Shop Easter!, if you like this script, You might like our others!')
        print('https://shuffle-shop.tebex.io    USE CODE: SHOE15 FOR 15% OFF')
        print('                                                                           ')
        print('                                                                           ')
        print('----------------------------SHUFFLE SHOP EASTER----------------------------')

        createEasterTable()
    end
end)

lib.callback.register('ss_easter:server:getCollectedEggs', function()
    local source = source
    local player = exports.qbx_core:GetPlayer(source)
    local citizenid = player.PlayerData.citizenid

    -- Check if the player exists in the database
    local result = exports.oxmysql:executeSync('SELECT collectedEggs FROM ss_easter WHERE citizenid = ?', { citizenid })

    if not result[1] then
        -- If the player doesn't exist, create a new entry with an empty JSON table
        exports.oxmysql:insertSync('INSERT INTO ss_easter (citizenid, collectedEggs) VALUES (?, ?)', { citizenid, '[]' })
        return {}
    end

    -- Decode the JSON table of collected eggs
    return json.decode(result[1].collectedEggs) or {}
end)

RegisterNetEvent('ss_easter:server:collectEgg', function(eggId)
    local source = source
    local player = exports.qbx_core:GetPlayer(source)
    local playerCoords = GetEntityCoords(GetPlayerPed(source))
    local citizenid = player.PlayerData.citizenid

    -- Validate eggId
    if not Config.EggLocations[eggId] then
        exports.qbx_core:Notify(source, "Invalid egg!", "error")
        return
    end

    local eggLocation = Config.EggLocations[eggId].location
    local distance = #(playerCoords - vector3(eggLocation.x, eggLocation.y, eggLocation.z))
    if distance > 8.0 then
        exports.qbx_core:Notify(source, "You are too far from the egg!", "error")
        return
    end

    -- Retrieve the current collected eggs from the database
    local result = exports.oxmysql:executeSync('SELECT collectedEggs FROM ss_easter WHERE citizenid = ?', { citizenid })

    local collectedEggs = {}
    if result[1] then
        collectedEggs = json.decode(result[1].collectedEggs) or {}
    else
        -- If the player doesn't exist, create a new entry with an empty JSON table
        exports.oxmysql:insertSync('INSERT INTO ss_easter (citizenid, collectedEggs) VALUES (?, ?)', { citizenid, '[]' })
    end

    -- Add the new eggId to the table if it doesn't already exist
    if not collectedEggs[eggId] then
        collectedEggs[eggId] = true

        -- Update the database with the new collected eggs table
        exports.oxmysql:updateSync('UPDATE ss_easter SET collectedEggs = ? WHERE citizenid = ?',
            { json.encode(collectedEggs), citizenid })
        local metadata = {
            description = 'A lovely Egg Collected by ' ..
            player.PlayerData.charinfo.firstname ..
            ' ' .. player.PlayerData.charinfo.lastname .. ' on ' .. os.date('%Y-%m-%d'),
        }

        exports.ox_inventory:AddItem(source, eggId, 1, metadata)
        exports.qbx_core:Notify(source, 'You have collected an egg!', 'success')

        -- Check how many eggs the player has collected
        local collectedCount = 0
        for _ in pairs(collectedEggs) do
            collectedCount = collectedCount + 1
        end

        -- Reward based on the number of eggs collected
        if collectedCount == Config.Rewards.bronze.required then
            local bronzeMetadata = {
                description = 'Awarded for collecting ' ..
                Config.Rewards.bronze.required ..
                ' eggs during the easter hunt! Collected by ' ..
                player.PlayerData.charinfo.firstname ..
                ' ' .. player.PlayerData.charinfo.lastname .. ' on ' .. os.date('%Y-%m-%d'),
            }
            exports.ox_inventory:AddItem(source, Config.Rewards.bronze.item, 1, bronzeMetadata)
            exports.qbx_core:AddMoney(source, 'bank', Config.Rewards.bronze.moneyReward, 'EASTER: Collected Bronze Egg')

            exports.qbx_core:Notify(source, 'You have received a Bronze Egg!, You have Received $'.. Config.Rewards.bronze.moneyReward, 'success', 8000)
        elseif collectedCount == Config.Rewards.silver.required then
            local silverMetadata = {
                description = 'Awarded for collecting ' ..
                Config.Rewards.silver.required ..
                ' eggs during the easter hunt! Collected by ' ..
                player.PlayerData.charinfo.firstname ..
                ' ' .. player.PlayerData.charinfo.lastname .. ' on ' .. os.date('%Y-%m-%d'),
            }
            exports.ox_inventory:AddItem(source, Config.Rewards.silver.item, 1, silverMetadata)
            exports.qbx_core:AddMoney(source, 'bank', Config.Rewards.silver.moneyReward, 'EASTER: Collected Silver Egg')

            exports.qbx_core:Notify(source, 'You have received a Silver Egg!, You have Received $'.. Config.Rewards.silver.moneyReward, 'success', 8000)
        elseif collectedCount == Config.Rewards.gold.required then
            local goldMetadata = {
                description = 'Awarded for collecting ' ..
                Config.Rewards.gold.required ..
                ' eggs during the easter hunt! Collected by ' ..
                player.PlayerData.charinfo.firstname ..
                ' ' .. player.PlayerData.charinfo.lastname .. ' on ' .. os.date('%Y-%m-%d'),
            }
            exports.ox_inventory:AddItem(source, Config.Rewards.gold.item, 1, goldMetadata)
            exports.qbx_core:AddMoney(source, 'bank', Config.Rewards.gold.moneyReward, 'EASTER: Collected Gold Egg')
            exports.qbx_core:Notify(source, 'You have received a Gold Egg!, You have Received $'.. Config.Rewards.gold.moneyReward, 'success', 8000)

        elseif collectedCount == Config.Rewards.diamond.required then
            local diamondMetadata = {
                description = 'Awarded for collecting ' ..
                Config.Rewards.diamond.required ..
                ' eggs during the easter hunt! Collected by ' ..
                player.PlayerData.charinfo.firstname ..
                ' ' .. player.PlayerData.charinfo.lastname .. ' on ' .. os.date('%Y-%m-%d'),
            }
            exports.ox_inventory:AddItem(source, Config.Rewards.diamond.item, 1, diamondMetadata)
            exports.qbx_core:AddMoney(source, 'bank', Config.Rewards.diamond.moneyReward, 'EASTER: Collected Diamond Egg')
            exports.qbx_core:Notify(source, 'You have received a Diamond Egg!, You have Received $'.. Config.Rewards.diamond.moneyReward, 'success', 8000)

        end
    end
end)
