-------------------
-- Configuration --
-------------------
-- Script options manipulation
local weaponMultiplierChanger = true
local weaponDeadlyHeadshot = false
local weaponRealMovement = true
local weaponRealTaser = true
local bonesSpecialEffects = true
-- Weapons multiplier changer (multiplier 0.0 - 10.0)
-- https://wiki.rage.mp/index.php?title=Weapons
local weapons = {
    unarmed = {
        WEAPON_UNARMED = 0.05
    },
    [2685387236] = {
        WEAPON_DAGGER = 1.0,
        WEAPON_BAT = 1.0,
        WEAPON_BOTTLE = 1.0,
        WEAPON_CROWBAR = 1.0,
        WEAPON_FLASHLIGHT = 1.0,
        WEAPON_GOLFCLUB = 1.0,
        WEAPON_HAMMER = 1.0,
        WEAPON_HATCHET = 1.0,
        WEAPON_KNUCKLE = 1.0,
        WEAPON_KNIFE = 1.0,
        WEAPON_MACHETE = 1.0,
        WEAPON_SWITCHBLADE = 1.0,
        WEAPON_NIGHTSTICK = 1.0,
        WEAPON_WRENCH = 1.0,
        WEAPON_BATTLEAXE = 1.0,
        WEAPON_POOLCUE = 1.0,
        WEAPON_STONE_HATCHET = 1.0
    },
    [416676503] = {
        WEAPON_PISTOL = 0.2,
        WEAPON_PISTOL_MK2 = 0.5,
        WEAPON_COMBATPISTOL = 0.35,
        WEAPON_APPISTOL = 0.15,
        WEAPON_STUNGUN = 0.0,
        WEAPON_PISTOL50 = 0.65,
        WEAPON_SNSPISTOL = 0.25,
        WEAPON_SNSPISTOL_MK2 = 0.45,
        WEAPON_HEAVYPISTOL = 0.5,
        WEAPON_VINTAGEPISTOL = 0.7,
        WEAPON_FLAREGUN = 0.0,
        WEAPON_MARKSMANPISTOL = 0.9,
        WEAPON_REVOLVER = 0.6,
        WEAPON_REVOLVER_MK2 = 0.8,
        WEAPON_DOUBLEACTION = 0.7,
        WEAPON_RAYPISTOL = 1.0,
        WEAPON_CERAMICPISTOL = 0.45,
        WEAPON_NAVYREVOLVER = 0.65,
        WEAPON_GADGETPISTOL = 0.4,
        WEAPON_STUNGUN_MP = 0.0
    },
    [3337201093] = {
        WEAPON_MICROSMG = 0.35,
        WEAPON_SMG = 0.35,
        WEAPON_SMG_MK2 = 0.45,
        WEAPON_ASSAULTSMG = 0.55,
        WEAPON_COMBATPDW = 0.55,
        WEAPON_MACHINEPISTOL = 0.25,
        WEAPON_MINISMG = 0.25,
        WEAPON_RAYCARBINE = 1.0
    },
    [860033945] = {
        WEAPON_PUMPSHOTGUN = 0.35,
        WEAPON_PUMPSHOTGUN_MK2 = 0.4,
        WEAPON_SAWNOFFSHOTGUN = 0.3,
        WEAPON_ASSAULTSHOTGUN = 0.4,
        WEAPON_BULLPUPSHOTGUN = 0.2,
        WEAPON_MUSKET = 1.0,
        WEAPON_HEAVYSHOTGUN = 0.55,
        WEAPON_DBSHOTGUN = 0.45,
        WEAPON_AUTOSHOTGUN = 0.4,
        WEAPON_COMBATSHOTGUN = 0.65
    },
    [970310034] = {
        WEAPON_ASSAULTRIFLE = 0.35,
        WEAPON_ASSAULTRIFLE_MK2 = 0.4,
        WEAPON_CARBINERIFLE = 0.35,
        WEAPON_CARBINERIFLE_MK2 = 0.4,
        WEAPON_ADVANCEDRIFLE = 0.35,
        WEAPON_SPECIALCARBINE = 0.35,
        WEAPON_SPECIALCARBINE_MK2 = 0.4,
        WEAPON_BULLPUPRIFLE = 0.35,
        WEAPON_BULLPUPRIFLE_MK2 = 0.4,
        WEAPON_COMPACTRIFLE = 0.35,
        WEAPON_MILITARYRIFLE = 0.55,
        WEAPON_HEAVYRIFLE = 0.45,
        WEAPON_TACTICALRIFLE = 0.35
    },
    [1159398588] = {
        WEAPON_MG = 1.0,
        WEAPON_COMBATMG = 1.0,
        WEAPON_COMBATMG_MK2 = 1.0,
        WEAPON_GUSENBERG = 1.0
    },
    [3082541095] = {
        WEAPON_SNIPERRIFLE = 2.0,
        WEAPON_HEAVYSNIPER = 2.0,
        WEAPON_HEAVYSNIPER_MK2 = 2.0,
        WEAPON_MARKSMANRIFLE = 2.0,
        WEAPON_MARKSMANRIFLE_MK2 = 2.0,
        WEAPON_PRECISIONRIFLE = 2.0
    },
    [2725924767] = {
        WEAPON_RPG = 1.0,
        WEAPON_GRENADELAUNCHER = 1.0,
        WEAPON_GRENADELAUNCHER_SMOKE = 1.0,
        WEAPON_MINIGUN = 1.0,
        WEAPON_FIREWORK = 0.0,
        WEAPON_RAILGUN = 1.0,
        WEAPON_HOMINGLAUNCHER = 1.0,
        WEAPON_COMPACTLAUNCHER = 1.0,
        WEAPON_RAYMINIGUN = 1.0,
        WEAPON_EMPLAUNCHER = 0.0      
    },
    [1548507267] = {
        WEAPON_GRENADE = 1.0,
        WEAPON_BZGAS = 0.05,
        WEAPON_MOLOTOV = 1.0,
        WEAPON_STICKYBOMB = 1.0,
        WEAPON_PROXMINE = 1.0,
        WEAPON_SNOWBALL = 0.0,
        WEAPON_PIPEBOMB = 1.0,
        WEAPON_BALL = 0.0,
        WEAPON_SMOKEGRENADE = 0.05,
        WEAPON_FLARE = 0.0
    },
    [4257178988] = {
        WEAPON_PETROLCAN = 0.15,
        WEAPON_FIREEXTINGUISHER = 0.0,
        WEAPON_HAZARDCAN = 0.15,
        WEAPON_FERTILIZERCAN = 0.15
    }
}
local weaponsRagdollChance = {
    [2685387236] = {
        chest = 0,
        arms = 0,
        legs = 0,
    },
    [416676503] = {
        chest = 35,
        arms = 20,
        legs = 55,
    },
    [3337201093] = {
        chest = 40,
        arms = 25,
        legs = 60,
    },
    [860033945] = {
        chest = 100,
        arms = 30,
        legs = 30,
    },
    [970310034] = {
        chest = 45,
        arms = 35,
        legs = 65,
    },
    [1159398588] = {
        chest = 50,
        arms = 40,
        legs = 70,
    },
    [3082541095] = {
        chest = 100,
        arms = 90,
        legs = 100,
    },
    [2725924767] = {
        chest = 0,
        arms = 0,
        legs = 0,
    },
    [1548507267] = {
        chest = 0,
        arms = 0,
        legs = 0,
    },
    [4257178988] = {
        chest = 0,
        arms = 0,
        legs = 0,
    }
}
-- Bones assignment
-- https://wiki.gtanet.work/index.php?title=Bones
local bones = {
    ["head"] = {
        [31086] = true,
        [39317] = true
    },
    ["chest"] = {
        [10706] = true,
        [64729] = true,
        [57597] = true,
        [23553] = true,
        [24816] = true,
        [24817] = true,
        [24818] = true
    },
    ["arms"] = {
        [40269] = true,
        [45509] = true,
        [28252] = true,
        [61163] = true,
        [57005] = true,
        [18905] = true
    },
    ["legs"] = {
        [11816] = true,
        [51826] = true,
        [58271] = true,
        [36864] = true,
        [63931] = true,
        [52301] = true,
        [14201] = true
    }
}
-- Clothes protection configuration
-- https://wiki.rage.mp/index.php?title=Clothes
local clothes = {}

-------------------
--    Script     --
-------------------
if weaponMultiplierChanger then
    Citizen.CreateThread(function()
        while true do 
            local ped = PlayerPedId()
            SetPedSuffersCriticalHits(ped, weaponDeadlyHeadshot)
            for index, _ in pairs(weapons) do
                for weapon, multiplier in pairs(weapons[index]) do
                    Citizen.Wait(0)
                    N_0x4757f00bc6323cfe(weapon, multiplier)
                end
            end
            Citizen.Wait(1000)
        end
    end)
end

local taserShot = false

if weaponRealMovement then
    Citizen.CreateThread(function() 
        while true do
            local ped = PlayerPedId()
            SetWeaponDamageModifier(-1553120962, 0.0)
            if IsPedArmed(ped, 7) then
                if IsControlPressed(0, 25) then
                    DisableControlAction(0, 21, true)
                    DisableControlAction(0, 22, true)
                end
                DisableControlAction(0, 140, true)
				DisableControlAction(0, 141, true)
				DisableControlAction(0, 142, true)
            end
            if weaponRealTaser then
                SetPedMinGroundTimeForStungun(ped, 15000)
                local taserModel = GetHashKey("WEAPON_STUNGUN")
                if GetSelectedPedWeapon(ped) == taserModel then
                    if IsPedShooting(ped) then
                        taserShot = true
                        Citizen.SetTimeout(8000, function()
                            taserShot = false
                        end)
                    end
                end
                if GetSelectedPedWeapon(ped) == taserModel and taserShot then
                    SetPlayerCanDoDriveBy(ped, false)
                    DisablePlayerFiring(ped, true)
                end
            end
            Citizen.Wait(0)
        end
    end)
end

local shooted = false

if bonesSpecialEffects then
    Citizen.CreateThread(function()
        while true do
            local ped = PlayerPedId()
            if HasEntityBeenDamagedByAnyPed(ped) and not IsPedDeadOrDying(ped) and not shooted then
                TriggerServerEvent('ms_smallresources:realInjured')
            end
            ClearEntityLastDamageEntity(ped)
            Citizen.Wait(200)
        end
    end)
end

function hurt(ped, msec1, msec2)
    if not IsPedDeadOrDying(ped) then
		SetPedToRagdoll(ped, msec1, msec2, 0, 0, 0, 0)
	end
end

function bool(arg) 
    return arg == 1 or arg == true 
end

function realInjured(ped, weaponSource)
    if not IsPedDeadOrDying(ped) then 
        local health = GetEntityHealth(ped)
        if health < 145 then
            RequestAnimSet("MOVE_M@BAIL_BOND_TAZERED")
			SetPedMovementClipset(ped, "MOVE_M@BAIL_BOND_TAZERED", true)
        else
            ResetPedMovementClipset(ped)
            ResetPedWeaponMovementClipset(ped)
            ResetPedStrafeClipset(ped)
        end
        local hit, bone = GetPedLastDamageBone(ped)
        hit = bool(hit)
        if hit then 
            if weaponSource == 0 or weaponSource == GetHashKey("WEAPON_UNARMED") then return end
            local weaponType = GetWeapontypeGroup(weaponSource)
            local chance = math.random(100)
            if bones["head"][bone] then
                shooted = true
                hurt(ped, 1200, 1200)
                DoScreenFadeOut(150)
                Citizen.Wait(900)
                DoScreenFadeIn(150)
            elseif bones["chest"][bone] and chance < weaponsRagdollChance[weaponType].chest then
                shooted = true
                hurt(ped, 750, 750)
            elseif bones["arms"][bone] and chance < weaponsRagdollChance[weaponType].arms then
                shooted = true
                hurt(ped, 250, 250)
            elseif bones["legs"][bone] and chance < weaponsRagdollChance[weaponType].legs then
                shooted = true
                hurt(ped, 1500, 1500)
            end
            Citizen.Wait(5000)
            if not shooted then return end
            shooted = false
        end
    end
end

RegisterNetEvent('ms_smallresources:realInjured')
AddEventHandler('ms_smallresources:realInjured', function(weaponSource)
    realInjured(PlayerPedId(), weaponSource)
end)