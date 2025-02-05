Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0) -- loop continuously
        
        SetEntityInvincible(PlayerPedId(), false) 
        SetEntityCanBeDamaged(PlayerPedId(), true) 
        
        local ped = PlayerPedId()
        local nearbyPlayers = GetActivePlayers()
        
        for _, playerId in ipairs(nearbyPlayers) do
            local targetPed = GetPlayerPed(playerId)
            if ped ~= targetPed then
                SetEntityCanBeDamaged(targetPed, true)
                SetEntityInvincible(targetPed, false)
            end
        end
    end
end)
