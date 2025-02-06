Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0) -- Loop continuously
        SetCanAttackFriendly(PlayerPedId(), true, true) -- Enable PvP
    end
end)
