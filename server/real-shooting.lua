RegisterServerEvent('ms_smallresources:realInjured')
AddEventHandler('ms_smallresources:realInjured', function()
    local _source = source
    local damageSource = GetPedSourceOfDamage(GetPlayerPed(_source))
    if GetEntityType(damageSource) == 1 then
        local sourceWeapon = GetSelectedPedWeapon(damageSource)
        TriggerClientEvent('ms_smallresources:realInjured', _source, sourceWeapon)
    end
end)