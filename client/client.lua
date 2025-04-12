function spawnEggs()
    local collectedEggs = lib.callback.await('ss_easter:server:getCollectedEggs')
    for _, egg in pairs(Config.EggLocations) do
        if not collectedEggs[egg.id] then
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
                    name = 'collect_egg' .. egg.id,
                    icon = 'fa-solid fa-egg',
                    label = 'Collect Egg',
                    onSelect = function()
                        print("Egg collected with ID:", egg.id)
                        DeleteEntity(eggObject)
                        print("Egg entity deleted:", eggObject)
                        TriggerServerEvent('ss_easter:server:collectEgg', egg.id)
                    end
                }
            })
        else
            print("Egg already collected, skipping egg with ID:", egg.id)
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
