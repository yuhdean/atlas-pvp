Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0) 
        SetCanAttackFriendly(PlayerPedId(), true, true) 
    end
end)
