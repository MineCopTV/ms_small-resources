-- Configuration
-- https://docs.fivem.net/natives/?_0x29439776AAA00A62
local ignoredClasses = {2, 8, 9, 10, 13, 14, 15, 16, 19, 21}
-- Spawn names of vehicles
local ignoredTypes = {
    "faction3",
    "yosemite3",
    "mower",
    "sadler",
    "tractor",
    "tractor2",
    "utillitruck3",
    "bison",
    "bison2",
    "bison3",
    "bobcatxl",
    "rumpo3",
    "youga3",
    "brickade",
    "wastelander",
    "fbi2",
    "firetruk",
    "lguard",
    "pranger",
    "predator",
    "riot",
    "riot2",
    "sheriff2",
    "bcsoDeclasseAlamo",
    "bcsoDinkaThrust",
    "bcsoDundRoamer",
    "bcsoDundStalker",
    "bcsoHvyInsurgent",
    "bcsoVapidCara",
    "bcsoVapidScout",
    "bcsoDeclasseAlamoU",
    "bcsoDundRoamerU",
    "bcsoDundStalkerU",
    "bcsoHvyInsurgentU",
    "bcsoVapidCaraU",
    "bcsoVapidScoutU",
}
-- Ground hashes
local groundHashes = {
    510490462,
    -1907520769,
    2128369009,
    1925605558,
    951832588,
    -1286696947,
    765206029,
    -1595148316,
}

-- Script
local default = true
local slowdown = false

function GetGroundHash(ped)
    local posped = GetEntityCoords(ped)
    local num = StartShapeTestCapsule(posped.x, posped.y, posped.z + 4, posped.x, posped.y, posped.z - 2.0, 2, 1, ped, 7)
    local arg1, arg2, arg3, arg4, arg5 = GetShapeTestResultEx(num)
    return arg5
end

function IsIgnoredGround(hash)
    for index, value in ipairs(groundHashes) do
        if value == hash then
            return false
        end
    end
    return true
end

function IsIgnoredClass(vehicle)
    for index, value in ipairs(ignoredClasses) do
        if value == GetVehicleClass(vehicle) then 
            return true
        end
    end
    return false
end

function IsIgnoredType(entity)
    for index, value in ipairs(ignoredTypes) do
        local hash = GetHashKey(value)
        if hash == GetEntityModel(entity) then
            return true
        end
    end
    return false
end

CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local sleep = 2000
        if GetVehiclePedIsIn(ped, false) ~= 0 then
            local vehicle = GetVehiclePedIsIn(ped, false)
            local coords = GetEntityCoords(ped)
            local hash = GetGroundHash(ped)
            print(hash)
            print(IsPointOnRoad(coords.x, coords.y, coords.z, vehicle), IsIgnoredClass(GetVehicleClass(vehicle)), IsIgnoredType(vehicle), IsIgnoredGround(hash))
            if not IsPointOnRoad(coords.x, coords.y, coords.z, vehicle) and not IsIgnoredClass(vehicle) and not IsIgnoredType(vehicle) and not IsIgnoredGround(hash) then
                sleep = 400
                if default ~= false then
                    local speed = GetEntitySpeed(vehicle) + 4.5
                    if speed >= GetVehicleMaxSpeed(vehicle) then speed = GetVehicleMaxSpeed(vehicle) end
                    default = false
                    slowdown = true
                    for i = speed, 4.5, -1.5 do 
                        if slowdown == false then break end
                        coords = GetEntityCoords(ped)
                        if IsPointOnRoad(coords.x, coords.y, coords.z, vehicle) then break end
                        SetVehicleMaxSpeed(vehicle, i)
                        Wait(sleep)
                    end
                    slowdown = false
                end
            else 
                if default == false then
                    SetVehicleMaxSpeed(vehicle, 0.0)
                    default = true
                end
            end
        end
        Wait(sleep)
    end
end)