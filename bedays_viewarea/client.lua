--- Made by beday ---
---- Standalone ----
Citizen.CreateThread(function ()
    while true do
        local localplayer = PlayerPedId()

        for _, player in ipairs(GetActivePlayers()) do
            local ped = GetPlayerPed(player)
            local asd = HasEntityClearLosToEntityInFront(localplayer, ped)
            if not IsPedInAnyVehicle(localplayer,true) and not IsPedRunningMobilePhoneTask(localplayer) then
                if asd then
                    SetEntityAlpha(ped,255,false)
                else
                    SetEntityAlpha(ped,51,false)
                end
            else
                SetEntityAlpha(ped,255,false)
            end
        end
        Citizen.Wait(0)
    end
end)
