--Sidst opdateret 29/11/2021
--Jo mere hastihed, jo mere recoil.
--Hastigheden til diverse recoil niveauer, kan ændres til hvad du vil/har brug for ved at ændre på current_mph >= "nummer"
--Effekten kan blive ændret til hvad end du vil/har brug for, list over shake types @ https://docs.fivem.net/natives/?_0xFD55E49555E017CF
--Effekt styrken kan blive ændret til dine præference ved at ændre på ShakeGameplayCam('JOLT_SHAKE', "styrke")
--Scripted her virker til alle biler.

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        
        local playerPed = GetPlayerPed(-1)
        local veh = GetVehiclePedIsIn(PlayerPedId(), false)
        local speed = GetEntitySpeed(playerPed)

        local current_mph =math.floor(speed * 2.23694 + 0.5)
        if DoesEntityExist(veh) and IsPedShooting(playerPed) and not IsEntityDead(veh) then
            if current_mph >= 10 then
                ShakeGameplayCam('JOLT_SHAKE', 0.2)
            end
            if current_mph >= 40 then
                ShakeGameplayCam('JOLT_SHAKE', 0.4)
            end
            if current_mph >= 60 then
                ShakeGameplayCam('JOLT_SHAKE', 0.6)
            end
            if current_mph >= 80 then
                ShakeGameplayCam('JOLT_SHAKE', 0.8)
            end
            if current_mph >= 100 then
                ShakeGameplayCam('JOLT_SHAKE', 1.0) 
            end
            if current_mph >= 120 then
                ShakeGameplayCam('JOLT_SHAKE', 1.2) 
            end
            if current_mph >= 140 then
                ShakeGameplayCam('JOLT_SHAKE', 1.4) 
            end
            if current_mph >= 100 then
                ShakeGameplayCam('JOLT_SHAKE', 1.6) 
            end
        end
    end
end)