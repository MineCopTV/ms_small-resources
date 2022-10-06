-- Configuration
-- https://wiki.rage.mp/index.php?title=Weapons (multiplier 0.0 - 10.0)
local weapons = {
    WEAPON_UNARMED = 0.05,
    -- Melee
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
    WEAPON_STONE_HATCHET = 1.0,
    -- Handguns
    WEAPON_PISTOL = 0.02,
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
    WEAPON_STUNGUN_MP = 0.0,
    -- Submachine Guns
    WEAPON_MICROSMG = 0.35,
    WEAPON_SMG = 0.35,
    WEAPON_SMG_MK2 = 0.45,
    WEAPON_ASSAULTSMG = 0.55,
    WEAPON_COMBATPDW = 0.55,
    WEAPON_MACHINEPISTOL = 0.25,
    WEAPON_MINISMG = 0.25,
    WEAPON_RAYCARBINE = 1.0,
    -- Shotguns
    WEAPON_PUMPSHOTGUN = 0.5,
    WEAPON_PUMPSHOTGUN_MK2 = 0.7,
    WEAPON_SAWNOFFSHOTGUN = 0.5,
    WEAPON_ASSAULTSHOTGUN = 0.7,
    WEAPON_BULLPUPSHOTGUN = 0.6,
    WEAPON_MUSKET = 1.0,
    WEAPON_HEAVYSHOTGUN = 0.8,
    WEAPON_DBSHOTGUN = 0.6,
    WEAPON_AUTOSHOTGUN = 0.4,
    WEAPON_COMBATSHOTGUN = 0.85,
    -- Assault Rifles
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
    WEAPON_TACTICALRIFLE = 0.35,
    -- Light Machine Guns
    WEAPON_MG = 1.0,
    WEAPON_COMBATMG = 1.0,
    WEAPON_COMBATMG_MK2 = 1.0,
    WEAPON_GUSENBERG = 1.0,
    -- Sniper Rifles
    WEAPON_SNIPERRIFLE = 2.0,
    WEAPON_HEAVYSNIPER = 2.0,
    WEAPON_HEAVYSNIPER_MK2 = 2.0,
    WEAPON_MARKSMANRIFLE = 2.0,
    WEAPON_MARKSMANRIFLE_MK2 = 2.0,
    WEAPON_PRECISIONRIFLE = 2.0,
    -- Heavy Weapons
    WEAPON_RPG = 1.0,
    WEAPON_GRENADELAUNCHER = 1.0,
    WEAPON_GRENADELAUNCHER_SMOKE = 1.0,
    WEAPON_MINIGUN = 1.0,
    WEAPON_FIREWORK = 0.0,
    WEAPON_RAILGUN = 1.0,
    WEAPON_HOMINGLAUNCHER = 1.0,
    WEAPON_COMPACTLAUNCHER = 1.0,
    WEAPON_RAYMINIGUN = 1.0,
    WEAPON_EMPLAUNCHER = 0.0,
    -- Throwables
    WEAPON_GRENADE = 1.0,
    WEAPON_BZGAS = 0.05,
    WEAPON_MOLOTOV = 1.0,
    WEAPON_STICKYBOMB = 1.0,
    WEAPON_PROXMINE = 1.0,
    WEAPON_SNOWBALL = 0.0,
    WEAPON_PIPEBOMB = 1.0,
    WEAPON_BALL = 0.0,
    WEAPON_SMOKEGRENADE = 0.05,
    WEAPON_FLARE = 0.0,
    -- Miscellaneous
    WEAPON_PETROLCAN = 0.15,
    WEAPON_FIREEXTINGUISHER = 0.0,
    WEAPON_HAZARDCAN = 0.15,
    WEAPON_FERTILIZERCAN = 0.15
}
local realEffects = true
-- Legs (Chance in percent)
local legsRagdollChance = 45
local legsProtectPants = {
    male = {},
    female = {}
}
local legsBones = {
	[58271] = true,
    [63931] = true,
    [14201] = true,
    [23639] = true,
    [46078] = true,
    [57717] = true,
    [65245] = true,
    [51826] = true,
    [36864] = true,
    [52301] = true,
    [6442] = true,
    [16335] = true,
    [24806] = true,
    [35502] = true,
}
-- Chest (Chance in percent)
local chestRagdollChance = 35
local chestProtectBulletproofs = {
    male = {},
    female = {}
}
local chestBones = {
    [10706] = true,
    [64729] = true,
    [40269] = true,
    [45509] = true,
    [57597] = true,
    [23553] = true,
    [24816] = true,
    [24817] = true,
    [24818] = true,
    [11816] = true,
    [5232] = true,
    [37119] = true,
    [37193] = true,
    [1356] = true,
    [58331] = true,
    [43536] = true,
    [45750] = true,
}
-- Head (Chance in percent)
local headDazzleChance = 80
local headProtectHelmets = {
    male = {},
    female = {}
}
local headBones = {
    [39317] = true,
    [35731] = true,
    [12844] = true,
    [65068] = true,
}

-- Script
local shooted = false
function bool(arg) 
    return arg == 1 or arg == true 
end

function isProtected(ped, list, clothId)
    local modelHash = GetEntityModel(ped)
    if modelHash == GetHashKey('mp_m_freemode_01') then
        for index, value in ipairs(list.male) do
            if value == clothId then
                return true
            end
        end
    elseif modelHash == GetHashKey('mp_f_freemode_01') then
        for index, value in ipairs(list.female) do
            if value == clothId then
                return true
            end
        end
    end
    return false
end

function realShooting(ped)
    if IsEntityDead(ped) then return end
    local hit, bone = GetPedLastDamageBone(ped)
    hit = bool(hit)
    if hit then
        local chance = math.random(100)
        if headBones[bone] and chance <= headDazzleChance then
            if isProtected(ped, headProtectHelmets, GetPedPropIndex(ped, 0)) then return end
            shooted = true
            SetPedToRagdoll(ped, 1200, 1200, 0, 0, 0, 0)
            DoScreenFadeOut(150)
            Wait(900)
            DoScreenFadeIn(150)
        elseif chestBones[bone] and chance <= chestRagdollChance then
            if isProtected(ped, chestProtectBulletproofs, GetPedDrawableVariation(ped, 9)) then return end
            shooted = true
            SetPedToRagdoll(ped, 750, 750, 0, 0, 0, 0)
        elseif legsBones[bone] and chance <= legsRagdollChance then
            if isProtected(ped, legsProtectPants, GetPedDrawableVariation(ped, 4)) then return end
            shooted = true
            SetPedToRagdoll(ped, 1500, 1500, 0, 0, 0, 0)
        end
        if not shooted then return end
        Wait(4000)
        shooted = false
    end
end

Citizen.CreateThread(function()
	while true do
        local ped = PlayerPedId()
        SetPedSuffersCriticalHits(ped, false)
		for weapon, multiplier in pairs(weapons) do
			N_0x4757f00bc6323cfe(weapon, multiplier)
            Wait(0)
		end
        Wait(1000)
	end
end)

Citizen.CreateThread(function()
    if realEffects then
        while true do 
            local ped = PlayerPedId()
            if HasEntityBeenDamagedByAnyPed(ped) and not IsEntityDead(ped) and not shooted then
                realShooting(ped)
            end
            ClearEntityLastDamageEntity(ped)
            Wait(100)
        end
    end
end)