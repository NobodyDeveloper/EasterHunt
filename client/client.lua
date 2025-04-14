function spawnEggs()
    local collectedEggs = lib.callback.await('ss_easter:server:getCollectedEggs')
    for eggId, egg in pairs(Config.EggLocations) do
        if not collectedEggs[eggId] then
            RequestModel(egg.model)
            while not HasModelLoaded(egg.model) do
                Wait(100)
            end
            local eggObject = CreateObject(egg.model, egg.location.x, egg.location.y, egg.location.z, false, false, false)

            while not DoesEntityExist(eggObject) do
                Wait(100)
            end
            FreezeEntityPosition(eggObject, true)
            exports.ox_target:addLocalEntity(eggObject, {
                {
                    name = 'collect_egg' .. eggId,
                    icon = 'fa-solid fa-egg',
                    label = 'Collect Egg',
                    onSelect = function()
                        DeleteEntity(eggObject)
                        TriggerServerEvent('ss_easter:server:collectEgg', eggId)
                    end
                }
            })
        else
            print("Egg already collected, skipping egg with ID:", eggId)
        end
    end
end

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    spawnEggs()
end)

AddEventHandler('onResourceStop', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        for _, egg in pairs(Config.EggLocations) do
            local eggObject = GetClosestObjectOfType(egg.location.x, egg.location.y, egg.location.z, 1.0,
                GetHashKey(egg.model), true, false, false)
            if DoesEntityExist(eggObject) then
                DeleteEntity(eggObject)
            end
        end
    end
end)
