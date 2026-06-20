--Made by RER --

-- I am fine with people using this to learn or use as long as they give credit and don't just take it as yourself

-- If you are here because you are curious on how it works, let me know when you figure it out because im curious too

TESTING = false
SHINYTESTING = false
local ActiveSummons = {}
local FunctionOnRepeat = nil
StatSheet = { --the types are as follows, slime, undead, poison, plant, magic, stone, crystal, dark, flying, fire, steel
    OGslime = { name = "enemy_og_slime", primaryType = "slime", secondaryType = "", damage = 2, critchance = .1, attacktype = "melee", isFlying = false },
    OGgobslime = { name = "enemy_og_slime_bullet", primaryType = "slime", secondaryType = "", damage = 1, critchance = .12, attacktype = "ranged", isFlying = false },
    OGscarletbloom = { name = "enemy_og_plant_4x", primaryType = "plant", secondaryType = "", damage = 2, critchance = .1, attacktype = "ranged", isFlying = false },
    OGvioletbloom = { name = "enemy_og_plant_homing", primaryType = "plant", secondaryType = "", damage = 1, critchance = .15, attacktype = "ranged", isFlying = false },
    OGwight = { name = "enemy_og_wight", primaryType = "undead", secondaryType = "", damage = 3, critchance = .1, attacktype = "melee", isFlying = false },
    OGcrawlingwight = { name = "enemy_og_wight_crawling", primaryType = "undead", secondaryType = "", damage = 2, critchance = .2, attacktype = "melee", isFlying = false },
    OGlungerwight = { name = "enemy_og_wight_advanced", primaryType = "undead", secondaryType = "dark", damage = 3, critchance = .12, attacktype = "melee", isFlying = false },
    OGgreatslime = { name = "enemy_og_slime_big", primaryType = "slime", secondaryType = "dark", damage = 2, critchance = .05, attacktype = "melee", isFlying = false },
    OGbat = { name = "enemy_og_bat", primaryType = "flying", secondaryType = "", damage = 1, critchance = .2, attacktype = "melee", isFlying = true },
    OGarmorslime = { name = "enemy_og_slime_armored", primaryType = "slime", secondaryType = "steel", damage = 2, critchance = .12, attacktype = "melee", isFlying = false },
    OGjadebloom = { name = "enemy_bg_plant_rotten", primaryType = "plant", secondaryType = "poison", damage = 3, critchance = .12, attacktype = "ranged", isFlying = false },
    OGabberrantgobslime = { name = "abberrant_og_slime_bullet", primaryType = "slime", secondaryType = "undead", damage = 2, critchance = .15, attacktype = "ranged", isFlying = false },
    OGazurebloom = { name = "abberrant_og_plant_4x", primaryType = "plant", secondaryType = "", damage = 1, critchance = .12, attacktype = "ranged", isFlying = false },
    OGbouncebat = { name = "abberrant_og_bat", primaryType = "flying", secondaryType = "stone", damage = 3, critchance = .05, attacktype = "melee", isFlying = false },
    dearngedadv = { name = "boss_deranged_adventurer", primaryType = "dark", secondaryType = "", damage = 6, critchance = .15, attacktype = "melee", isFlying = false },
    kingslime = { name = "boss_king_slime", primaryType = "slime", secondaryType = "", damage = 9, critchance = .125, attacktype = "melee", isFlying = false },


    goldslime = { name = "enemy_slime_golden", spawnAs = "enemy_golden_slime", primaryType = "slime", secondaryType = "steel", damage = 4, critchance = .1, attacktype = "melee", isFlying = false },
    mimc = { name = "enemy_chest_mimic", spawnAs = "enemy_mimic", primaryType = "dark", secondaryType = "stone", damage = 6, critchance = .01, attacktype = "melee", isFlying = false },
    invincibletome = { name = "enemy_invincibility_tome", primaryType = "magic", secondaryType = "", damage = 0, critchance = 0, attacktype = "melee", isFlying = false },
    shopguy = { name = "enemy_corrupted_shopkeeper", primaryType = "dark", secondaryType = "magic", damage = 8, critchance = 0, attacktype = "melee", isFlying = false },
    mask = { name = "enemy_shopkeeper_corrupted_mask", primaryType = "dark", secondaryType = "flying", damage = 0, critchance = 0, attacktype = "melee", isFlying = false },


    doomshroom = { name = "boss_doomshroom", spawnAs = "boss_mushroom", primaryType = "poison", secondaryType = "plant", damage = 5, critchance = .31, attacktype = "melee", isFlying = false },
    IDgobslime = { name = "enemy_id_slime_bullet", primaryType = "slime", secondaryType = "plant", damage = 3, critchance = .15, attacktype = "ranged", isFlying = false },
    IDgoosack = { name = "enemy_id_goo_exploding", primaryType = "poison", secondaryType = "fire", damage = 3, critchance = .15, attacktype = "melee", isFlying = false },
    IDslime = { name = "enemy_id_slime", primaryType = "slime", secondaryType = "poison", damage = 4, critchance = .11, attacktype = "melee", isFlying = false },
    IDgrub = { name = "enemy_id_maggot", primaryType = "bug", secondaryType = "", damage = 2, critchance = .21, attacktype = "melee", isFlying = false },
    IDshroom = { name = "enemy_id_mushroom_rotten", primaryType = "plant", secondaryType = "poison", damage = 5, critchance = .1, attacktype = "ranged", isFlying = false },
    IDwight = { name = "enemy_id_wight", primaryType = "undead", secondaryType = "plant", damage = 4, critchance = .1, attacktype = "melee", isFlying = false },
    IDaxe = { name = "enemy_id_possessed_axe", primaryType = "steel", secondaryType = "flying", damage = 4, critchance = .67, attacktype = "melee", isFlying = false },
    IDexplodinggrub = { name = "enemy_id_exploding_maggot", primaryType = "poison", secondaryType = "", damage = 4, critchance = .15, attacktype = "melee", isFlying = false },
    IDbouncebat = { name = "abberrant_id_bat", primaryType = "flying", secondaryType = "stone", damage = 3, critchance = .15, attacktype = "melee", isFlying = true },
    IDbat = { name = "enemy_id_bat", primaryType = "flying", secondaryType = "", damage = 1, critchance = .2234, attacktype = "melee", isFlying = true },
    IDgreatslime = { name = "abberrant_id_slime_big", primaryType = "slime", secondaryType = "dark", damage = 3, critchance = .15, attacktype = "melee", isFlying = false },

    NSfly = { name = "enemy_ns_fly", primaryType = "bug", secondaryType = "flying", damage = 3, critchance = .15, attacktype = "melee", isFlying = true },
    NSflyhive = { name = "enemy_ns_fly_hive", primaryType = "bug", secondaryType = "", damage = 3, critchance = .15, attacktype = "ranged", isFlying = false },
    NSmaggot = { name = "enemy_ns_maggot", primaryType = "bug", secondaryType = "poison", damage = 4, critchance = .125, attacktype = "melee", isFlying = false },
    NSslime = { name = "enemy_ns_slime", primaryType = "slime", secondaryType = "poison", damage = 5, critchance = .18, attacktype = "melee", isFlying = false },
    NSrottenslime = { name = "enemy_ns_slime_rotten", primaryType = "poison", secondaryType = "slime", damage = 8, critchance = .09, attacktype = "melee", isFlying = false },
    NSsmolslime = { name = "enemy_ns_slime_tiny", primaryType = "slime", secondaryType = "poison", damage = 4, critchance = .25, attacktype = "melee", isFlying = false },
    NSspout = { name = "enemy_ns_poison_spitter", primaryType = "poison", secondaryType = "plant", damage = 5, critchance = .15, attacktype = "ranged", isFlying = false },
    NSwight = { name = "enemy_ns_wight_drowned", primaryType = "undead", secondaryType = "poison", damage = 5, critchance = .15, attacktype = "melee", isFlying = false },
    queenfly = { name = "boss_fly_hive", primaryType = "bug", secondaryType = "poison", damage = 6, critchance = .35, attacktype = "melee", isFlying = true },
    NSsprig = { name = "enemy_poi_poison_sentry", primaryType = "poison", secondaryType = "plant", damage = 5, critchance = .15, attacktype = "ranged", isFlying = false },

    FGtomeofmagic = { name = "enemy_fg_book", primaryType = "magic", secondaryType = "", damage = 3, critchance = .15, attacktype = "ranged", isFlying = false },
    FGtomeofsorcery = { name = "enemy_fg_book_exploding", primaryType = "magic", secondaryType = "fire", damage = 4.5, critchance = .12, attacktype = "ranged", isFlying = false },
    FGzipslime = { name = "enemy_fg_slime_phase", primaryType = "slime", secondaryType = "magic", damage = 5, critchance = .12, attacktype = "melee", isFlying = false },
    FGwisp = { name = "enemy_fg_wisp", primaryType = "magic", secondaryType = "flying", damage = 8, critchance = .041, attacktype = "melee", isFlying = true },
    FGelemental = { name = "enemy_fg_elemental_magic", primaryType = "crystal", secondaryType = "magic", damage = 6, critchance = .1, attacktype = "ranged", isFlying = false },
    FGarmor = { name = "enemy_fg_possesed_armor", primaryType = "steel", secondaryType = "dark", damage = 7, critchance = .2, attacktype = "melee", isFlying = false },
    FGprism = { name = "enemy_fg_targeting_beam", primaryType = "crystal", secondaryType = "", damage = 4, critchance = .12, attacktype = "ranged", isFlying = false },
    FGbloodbook = { name = "abberrant_fg_book", primaryType = "magic", secondaryType = "dark", damage = 5, critchance = .12, attacktype = "ranged", isFlying = false },
    FGorangezip = { name = "abberrant_fg_slime_phase", primaryType = "slime", secondaryType = "fire", damage = 6, critchance = .182, attacktype = "melee", isFlying = false },
    FGwispboom = { name = "abberrant_fg_wisp", primaryType = "magic", secondaryType = "fire", damage = 5, critchance = .51, attacktype = "melee", isFlying = true },
    rabidbestiary = { name = "boss_rabid_bestiary", spawnAs = "boss_book", primaryType = "magic", secondaryType = "dark", damage = 8, critchance = .3, attacktype = "ranged", isFlying = false },

    LDbloom = { name = "enemy_ld_plant_crystal", primaryType = "crystal", secondaryType = "plant", damage = 4, critchance = .4, attacktype = "ranged", isFlying = false },
    LDroofplanbt = { name = "enemy_ld_sentryplant", primaryType = "plant", secondaryType = "crystal", damage = 4, critchance = .45, attacktype = "ranged", isFlying = false },
    LDelemental = { name = "enemy_ld_crystal_elemental", primaryType = "crystal", secondaryType = "stone", damage = 7, critchance = .15, attacktype = "ranged", isFlying = false },
    LDslime = { name = "enemy_ld_slime_crystal", primaryType = "slime", secondaryType = "crystal", damage = 6, critchance = .15, attacktype = "melee", isFlying = false },
    LDgreatslime = { name = "enemy_ld_fat_slime_crystal", primaryType = "crystal", secondaryType = "slime", damage = 7, critchance = .1, attacktype = "melee", isFlying = false },
    LDskeleton = { name = "enemy_ld_skeleton", spawnAs = "enemy_ld_skeleton_crystal", primaryType = "undead", secondaryType = "crystal", damage = 8, critchance = .05, attacktype = "melee", isFlying = false },
    LDskull = { name = "enemy_ld_possessed_skull", primaryType = "undead", secondaryType = "crystal", damage = 5, critchance = .25, attacktype = "melee", isFlying = true },
    LDprism = { name = "enemy_ld_rotating_beam", primaryType = "crystal", secondaryType = "magic", damage = 4, critchance = .35, attacktype = "ranged", isFlying = true },

    GMelemental = { name = "enemy_gm_crystal_elemental", primaryType = "stone", secondaryType = "magic", damage = 7, critchance = .15, attacktype = "ranged", isFlying = false },
    GMglobvurtser = { name = "enemy_gm_slime_bone", primaryType = "slime", secondaryType = "stone", damage = 6, critchance = .15, attacktype = "melee", isFlying = false },
    GMspikeslime = { name = "enemy_gm_slime_stone", primaryType = "stone", secondaryType = "dark", damage = 8, critchance = .01, attacktype = "melee", isFlying = false },
    GMskeleton = { name = "enemy_gm_skeleton", primaryType = "undead", secondaryType = "dark", damage = 7, critchance = .10, attacktype = "melee", isFlying = false },
    GMskeletonminer = { name = "enemy_gm_skeleton_miner", primaryType = "undead", secondaryType = "steel", damage = 8, critchance = .10, attacktype = "melee", isFlying = false },
    GMskull = { name = "enemy_gm_possessed_skull", primaryType = "undead", secondaryType = "dark", damage = 5, critchance = .10, attacktype = "melee", isFlying = false },
    GMflower = { name = "enemy_gm_sentryplant", primaryType = "plant", secondaryType = "dark", damage = 4, critchance = .20, attacktype = "ranged", isFlying = false },
    elderskeelton = { name = "boss_stone_skeleton", primaryType = "undead", secondaryType = "stone", damage = 7, critchance = .15, attacktype = "melee", isFlying = false },

    cradleskull = { name = "enemy_bc_skull_darkness", primaryType = "undead", secondaryType = "dark", damage = 6, critchance = .10, attacktype = "melee", isFlying = true },
    beast = { name = "boss_the_beast", primaryType = "dark", secondaryType = "", damage = 6, critchance = .10, attacktype = "melee", isFlying = true },

    --shifting depths
    -- SG
    SGrubyslime = { name = "enemy_ruby_slime", spawnAs = "enemy_golden_slime", primaryType = "slime", secondaryType = "crystal", damage = 5, critchance = .12, attacktype = "melee", isFlying = false },
    SGtangerine = { name = "enemy_sg_plant_4x_switch", primaryType = "plant", secondaryType = "", damage = 2, critchance = .1, attacktype = "ranged", isFlying = false },
    SGgoldenrod = { name = "enemy_sg_plant_8x", primaryType = "plant", secondaryType = "", damage = 2, critchance = .1, attacktype = "ranged", isFlying = false },
    SGskybloom = { name = "enemy_sg_plant_4x_random_delay", primaryType = "plant", secondaryType = "", damage = 2, critchance = .1, attacktype = "ranged", isFlying = false },
    SGsporeslime = { name = "enemy_sg_slime_red", spawnAs = "enemy_og_slime", primaryType = "slime", secondaryType = "plant", damage = 3, critchance = .1, attacktype = "ranged", isFlying = false },
    SGmuscleslime = { name = "enemy_sg_slime_yellow", spawnAs = "enemy_og_slime", primaryType = "slime", secondaryType = "plant", damage = 3, critchance = .1, attacktype = "ranged", isFlying = false },
    SGsprightslime = { name = "enemy_sg_slime_blue", spawnAs = "enemy_og_slime", primaryType = "slime", secondaryType = "plant", damage = 3, critchance = .1, attacktype = "ranged", isFlying = false },
    SGeruption = { name = "abberrant_sg_slime_orange", spawnAs = "enemy_og_slime", primaryType = "slime", secondaryType = "fire", damage = 4, critchance = .1, attacktype = "ranged", isFlying = false },
    SGhardy = { name = "abberrant_sg_slime_green", spawnAs = "enemy_og_slime", primaryType = "slime", secondaryType = "plant", damage = 4, critchance = .1, attacktype = "ranged", isFlying = false },
    SGdoom = { name = "abberrant_sg_slime_purple", spawnAs = "enemy_og_slime", primaryType = "slime", secondaryType = "dark", damage = 4, critchance = .1, attacktype = "ranged", isFlying = false },
    SGfuchsia = { name = "enemy_sg_plant_homing_8x", primaryType = "plant", secondaryType = "dark", damage = 2, critchance = .1, attacktype = "ranged", isFlying = false },
    SGsponge = { name = "enemy_sg_sponge_spitter", spawnAs = "enemy_ns_poison_spitter", primaryType = "plant", secondaryType = "poison", damage = 2, critchance = .1, attacktype = "ranged", isFlying = false },
    SGsapphire = { name = "enemy_sg_plant_homing_faster", primaryType = "plant", secondaryType = "crystal", damage = 2, critchance = .1, attacktype = "ranged", isFlying = false },
    vrdrovrdurgr = { name = "boss_verdure_overgrowth", primaryType = "plant", secondaryType = "dark", damage = 2, critchance = .1, attacktype = "ranged", isFlying = false },
    SGgraggot = { name = "enemy_sg_graggot", spawnAs = "enemy_id_maggot", primaryType = "bug", secondaryType = "plant", damage = 5, critchance = .12, attacktype = "melee", isFlying = false },
    SGblaggot = { name = "abberrant_sg_graggot", spawnAs = "enemy_id_maggot", primaryType = "plant", secondaryType = "bug", damage = 5, critchance = .12, attacktype = "melee", isFlying = false },

    -- PC
    PCslime = { name = "enemy_pc_slime", spawnAs = "enemy_fg_slime_phase", primaryType = "slime", secondaryType = "crystal", damage = 5, critchance = .12, attacktype = "melee", isFlying = false },
    PCcuringtome = { name = "enemy_pc_curing_tome", spawnAs = "enemy_invincibility_tome", primaryType = "magic", secondaryType = "crystal", damage = 0, critchance = 0, attacktype = "melee", isFlying = false },
    PClome = { name = "enemy_pc_book_lightning", spawnAs = "enemy_fg_book_exploding", primaryType = "magic", secondaryType = "fire", damage = 10, critchance = .2, attacktype = "melee", isFlying = false },
    PCrotti = { name = "enemy_pc_rotating_beam", spawnAs = "enemy_fg_targeting_beam", primaryType = "magic", secondaryType = "", damage = 4, critchance = .1, attacktype = "ranged", isFlying = false },
    PCdisciple = { name = "enemy_pc_wight", spawnAs = "enemy_og_wight", primaryType = "undead", secondaryType = "magic", damage = 6, critchance = .15, attacktype = "melee", isFlying = false },
    PCpale = { name = "enemy_pc_wisp_fly", spawnAs = "enemy_fg_wisp", primaryType = "magic", secondaryType = "flying", damage = 7, critchance = .15, attacktype = "melee", isFlying = true },
    PCbigwisp = { name = "enemy_pc_wisp_big", spawnAs = "enemy_fg_wisp", primaryType = "magic", secondaryType = "flying", damage = 5, critchance = .12, attacktype = "melee", isFlying = true },
    PCdemonslime = { name = "abberrant_pc_slime", spawnAs = "enemy_fg_slime_phase", primaryType = "slime", secondaryType = "dark", damage = 7, critchance = .02, attacktype = "melee", isFlying = false },
    PCcoral = { name = "abberrant_pc_wisp_fly", spawnAs = "enemy_fg_wisp", primaryType = "magic", secondaryType = "flying", damage = 5, critchance = .2, attacktype = "melee", isFlying = true },
    PCprofanewiusp = { name = "abberrant_pc_wisp_big", spawnAs = "enemy_fg_wisp", primaryType = "magic", secondaryType = "dark", damage = 7, critchance = .2, attacktype = "melee", isFlying = true },
    PCdevilpris = { name = "abberrant_pc_rotating_beam", spawnAs = "enemy_fg_targeting_beam", primaryType = "magic", secondaryType = "dark", damage = 6, critchance = .1, attacktype = "ranged", isFlying = false },
    PCstupidfuckingtome = { name = "abberrant_pc_curing_tome", spawnAs = "enemy_invincibility_tome", primaryType = "magic", secondaryType = "crystal", damage = 0, critchance = 0, attacktype = "melee", isFlying = false },


}

function ADVR.onLoad()
    pickup.name = "Pokeball"
    pickup.desc = "Your handy dandy pokeball for all your pokeball needs"
    pickup.weight = 0
    pickup.tier = 1
    pickup.maxAmount = 1
    pickup.amountUses = 1
    pickup.price = 15
    pickup.spawnsIn = {}
    pickup.isActivateItem = true
    pickup.supportedInMultiplayer = true
    IsFirstCatch = true

    -- augment bool definitions --
    HasMasterBallAugment = false
    HasNetBallAugment = false
    HasRepeatBallAugment = false
    HasUltraBallAugment = false
    HasTimerBallAugment = false
    HasDuskBallAugment = false
    HasQuickBallAugment = false
    HasUniteBallAugment = false
    HasSlimeBallAugment = false
    HasHeavyBallAugment = false
    HasTomeBallAugment = false
    HasGuckBallAugment = false
    HasLuxuryBallAugment = false
    HasFeatherBallAugment = false
    HasPremierBallAugment = false
    HasHealBallAugment = false
    HasDreamBallAugment = false
    HasParkBallAugment = false

    HasCritcalChanceAugment = false -- Z crystal
    HasMaxBandAugment = false
    HasTeraOrbAugment = false
    HasShinyCharmAugment = false
    -- end augments --

    BaseShinyChance = 1 / 512

    BallDistMult = 2 -- how far the orb goes when releasing a mon
    MaxSummons = 1   -- do not change this or terrible things will happen
    MonIsActive = false

    ActiveMonStats = {
        primaryType = "",
        secondaryType = "",
        damage = 1,
        isFlying = false,
        criticalChance = .1,
        attacktype = "",
        attackSpd = .9,
        evasionChance = .05,
        isShiny = false,
        currentHP = 1,
    }
    --For Shiny enemies:
    local enemies = {}

    for i = 0, #game.enemyRegistry.enemyRegistryEntries - 1 do
        local registry = game.enemyRegistry.enemyRegistryEntries[i]

        for j = 0, #registry.possibilities - 1 do
            table.insert(enemies, registry.possibilities[j].objToSpawn)
        end
    end
    pickup.AddPostObjectSpawnListenersRuntimeByObjects(enemies) --Thanks Aregularbear
end

function ADVR.onPostObjectSpawn(prefab, object)
    if object == nil then return end
    local enemyBase = object.GetComponent_EnemyBase_()
    if enemyBase == nil then return end

    if object == ActiveMonObj and ActiveMonStats.isShiny then
        CreateShiny(object)
        return
    end

    if math.random() <= BaseShinyChance then
        CreateShiny(object)
    end
end

RelicsTaken = {}
function ADVR.onPickupTaken(relic)
    local item = relic.rolledItem.id
    if TESTING then
        game.ShowMessageInWorld(item, 1)
    end
    if item == "x_attack" then
        if ActiveMonObj ~= nil then
            ActiveMonStats.damage = ActiveMonStats.damage + 3
            table.insert(RelicsTaken, item)
        end
    end
    if item == "x_defense" then
        if ActiveMonObj ~= nil then
            ActiveMonBase.MaxHealth = ActiveMonBase.MaxHealth + 5
            ActiveMonBase.Health = ActiveMonBase.Health + 5
            table.insert(RelicsTaken, item)
        end
    end
    if item == "x_speed" then
        if ActiveMonObj ~= nil then
            ActiveMonStats.attackSpd = ActiveMonStats.attackSpd - .25
            table.insert(RelicsTaken, item)
        end
    end

    if item == "dire_hit" then
        if ActiveMonObj ~= nil then
            ActiveMonStats.criticalChance = ActiveMonStats.criticalChance + .1
            table.insert(RelicsTaken, item)
        end
    end
    if item == "scope_lens" then
        if ActiveMonObj ~= nil then
            ActiveMonStats.criticalChance = ActiveMonStats.criticalChance + .2
            table.insert(RelicsTaken, item)
        end
    end
    if item == "aux_guard" then
        if ActiveMonObj ~= nil then
            ActiveMonBase.MaxHealth = ActiveMonBase.MaxHealth + 5
            ActiveMonBase.Health = ActiveMonBase.Health + 5
            ActiveMonStats.evasionChance = ActiveMonStats.evasionChance + .05
            table.insert(RelicsTaken, item)
        end
    end
    if item == "aux_evasion" then
        if ActiveMonObj ~= nil then
            ActiveMonStats.criticalChance = ActiveMonStats.criticalChance + .1
            table.insert(RelicsTaken, item)
        end
    end
    if item == "aux_power" then
        if ActiveMonObj ~= nil then
            ActiveMonStats.criticalChance = ActiveMonStats.criticalChance + .11
            ActiveMonStats.damage = ActiveMonStats.damage + 3.5

            table.insert(RelicsTaken, item)
        end
    end
    if item == "aux_powerguard" then
        if ActiveMonObj ~= nil then
            ActiveMonStats.criticalChance = ActiveMonStats.criticalChance + .15
            ActiveMonStats.damage = ActiveMonStats.damage + 4
            ActiveMonBase.MaxHealth = ActiveMonBase.MaxHealth + 6
            ActiveMonBase.Health = ActiveMonBase.Health + 6
            ActiveMonStats.evasionChance = ActiveMonStats.evasionChance + .025

            table.insert(RelicsTaken, item)
        end
    end
    if item == "hp_up" then --increases hp for all pokemon
        table.insert(RelicsTaken, item)
    end
    if item == "protein" then
        ModifyStatForAll("damage", function(val) return val + 2 end)
        table.insert(RelicsTaken, item)
    end
    if item == "carbos" then
        ActiveMonStats.attackSpd = ActiveMonStats.attackSpd - .15
        table.insert(RelicsTaken, item)
    end
    if item == "miracle_seed" then
        SetStatByType("plant", "damage", function(val) return val + 1 end)
        table.insert(RelicsTaken, item)
    end
    if item == "poison_barb" then
        SetStatByType("poison", "damage", function(val) return val + 1 end)
        table.insert(RelicsTaken, item)
    end
    if item == "pinap_berry" then
        table.insert(RelicsTaken, item)
    end
    if item == "silver_pinap_berry" then
        table.insert(RelicsTaken, item)
    end
    if item == "metal_coat" then
        SetStatByType("steel", "damage", function(val) return val + 1 end)
        table.insert(RelicsTaken, item)
    end
    if item == "potion" then
        if ActiveMonBase.Health < ActiveMonBase.MaxHealth then
            ActiveMonStats.currentHP = ActiveMonStats.currentHP + 3
        end
        table.insert(RelicsTaken, item)
    end
    if item == "super_potion" then
        if ActiveMonBase.Health < ActiveMonBase.MaxHealth then
            ActiveMonStats.currentHP = ActiveMonStats.currentHP + 6
        end
        table.insert(RelicsTaken, item)
    end
    if item == "max_potion" then
        if ActiveMonBase.Health < ActiveMonBase.MaxHealth then
            ActiveMonStats.currentHP = ActiveMonBase.MaxHealth
        end
        table.insert(RelicsTaken, item)
    end
    if item == "repel" then
        REPEL(2)
        table.insert(RelicsTaken, item)
    end
    if item == "super_repel" then
        REPEL(4)
        table.insert(RelicsTaken, item)
    end
    if item == "max_repel" then
        REPEL(7)
        table.insert(RelicsTaken, item)
    end
    if item == "hard_stone" then
        SetStatByType("stone", "damage", function(val) return val + 1 end)
        table.insert(RelicsTaken, item)
    end
    if item == "dark_glasses" then
        SetStatByType("dark", "damage", function(val) return val + 1 end)
        table.insert(RelicsTaken, item)
    end
    if item == "sharp_beak" then
        SetStatByType("flying", "damage", function(val) return val + 1 end)
        table.insert(RelicsTaken, item)
    end
    if item == "silver_powder" then
        SetStatByType("bug", "damage", function(val) return val + 1 end)
        table.insert(RelicsTaken, item)
    end
    if item == "gold_razz" then
        table.insert(RelicsTaken, item)
    end
    if item == "razz_berry" then
        table.insert(RelicsTaken, item)
    end
end

function REPEL(num)
    local W = game.GetEnemiesInRadius(30, player.transform.position, false, false)
    local deleted = 0
    local attempts = 0
    while deleted < num and attempts < 100 do
        attempts = attempts + 1
        local victim = W[math.random(1, #W)].gameObject
        if victim ~= ActiveMonObj then
            game.Delete(victim, false)
            deleted = deleted + 1
        end
    end
end

function ModifyStatForAll(stat, fn)
    for key, enemy in pairs(StatSheet) do
        enemy[stat] = fn(enemy[stat])
    end
end

function SetStatByType(enemyType, stat, value)
    for key, enemy in pairs(StatSheet) do
        if enemy.primaryType == enemyType or enemy.secondaryType == enemyType then
            enemy[stat] = value
        end
    end
end

function SetStatByKey(enemyKey, stat, value)
    if StatSheet[enemyKey] then
        StatSheet[enemyKey][stat] = value
    end
end

function ADVR.onPickup()
    pickup.RegisterUsable()
    game.inventory.currentPrimaryWeapon.AsSwordBase().bladeCreator.transform.localScale = vector3.__new(1, 1.35, 1)

    game.itemInterpreter.currentUsable.currentCharge = game.itemInterpreter.currentUsable.amountUses
    game.activePickupSlot.UpdateChargeDisplay()
    ActiveMon = nil
    BaseChanceForCatch = .35

    --finding equipped augments --
    local augment = game.progressHandler.GetProgressById("master_ball")

    HasMasterBallAugment = augment ~= nil and augment.eventsRegistered

    augment = game.progressHandler.GetProgressById("ultra_ball")

    HasUltraBallAugment = augment ~= nil and augment.eventsRegistered

    augment = game.progressHandler.GetProgressById("timer_ball")

    HasTimerBallAugment = augment ~= nil and augment.eventsRegistered

    augment = game.progressHandler.GetProgressById("repeat_ball")

    HasRepeatBallAugment = augment ~= nil and augment.eventsRegistered

    augment = game.progressHandler.GetProgressById("dusk_ball")

    HasDuskBallAugment = augment ~= nil and augment.eventsRegistered

    augment = game.progressHandler.GetProgressById("quick_ball")

    HasQuickBallAugment = augment ~= nil and augment.eventsRegistered

    augment = game.progressHandler.GetProgressById("unite_ball")

    HasUniteBallAugment = augment ~= nil and augment.eventsRegistered

    augment = game.progressHandler.GetProgressById("clarence_ball")

    HasSlimeBallAugment = augment ~= nil and augment.eventsRegistered

    augment = game.progressHandler.GetProgressById("heavy_ball")

    HasHeavyBallAugment = augment ~= nil and augment.eventsRegistered

    augment = game.progressHandler.GetProgressById("feather_ball")

    HasFeatherBallAugment = augment ~= nil and augment.eventsRegistered

    augment = game.progressHandler.GetProgressById("tome_ball")

    HasTomeBallAugment = augment ~= nil and augment.eventsRegistered

    augment = game.progressHandler.GetProgressById("guck_ball")

    HasGuckBallAugment = augment ~= nil and augment.eventsRegistered

    augment = game.progressHandler.GetProgressById("luxury_ball")

    HasLuxuryBallAugment = augment ~= nil and augment.eventsRegistered

    augment = game.progressHandler.GetProgressById("premier_ball")

    HasPremierBallAugment = augment ~= nil and augment.eventsRegistered

    augment = game.progressHandler.GetProgressById("Z_crystal")

    HasCritcalChanceAugment = augment ~= nil and augment.eventsRegistered

    augment = game.progressHandler.GetProgressById("max_band")

    HasMaxBandAugment = augment ~= nil and augment.eventsRegistered

    augment = game.progressHandler.GetProgressById("mega_stone")

    HasMegaEvolveAugment = augment ~= nil and augment.eventsRegistered

    augment = game.progressHandler.GetProgressById("tera_orb")

    HasTeraOrbAugment = augment ~= nil and augment.eventsRegistered

    augment = game.progressHandler.GetProgressById("shiny_charm")

    HasShinyCharmAugment = augment ~= nil and augment.eventsRegistered

    augment = game.progressHandler.GetProgressById("heal_ball")

    HasHealBallAugment = augment ~= nil and augment.eventsRegistered

    augment = game.progressHandler.GetProgressById("dream_ball")

    HasDreamBallAugment = augment ~= nil and augment.eventsRegistered

    augment = game.progressHandler.GetProgressById("park_ball")

    HasParkBallAugment = augment ~= nil and augment.eventsRegistered

    augment = game.progressHandler.GetProgressById("net_ball")

    HasNetBallAugment = augment ~= nil and augment.eventsRegistered


    if HasUltraBallAugment then
        BaseChanceForCatch = BaseChanceForCatch + .1
    end
    if HasShinyCharmAugment then
        BaseShinyChance = BaseShinyChance * 2
    end
    if SHINYTESTING then
        BaseShinyChance = 100
    end
end

function ADVR.onPickupActivate()
    if TESTING then
        game.ShowMessageInWorld(tostring(BaseShinyChance), .1)
    end
end

function ADVR.onAfterBossAreaGenerated()
    if HasTimerBallAugment then
        BaseChanceForCatch = BaseChanceForCatch + .05
    end
end

function CreateShiny(obj)
    local enemyBase = obj.GetComponent_EnemyBase_()
    if enemyBase == nil then return end
    local renderers = obj.GetComponentsInChildren(game.GetType("MeshRenderer"))
    if renderers ~= nil then
        for r = 0, renderers.Length - 1 do
            renderers[r].material.EnableKeyword("_EMISSION")
            renderers[r].material.color = colors.Create(.565, .69, 1, .651)
        end
    end
end

--I should call this mod "nil checks galore"
function ADVR.onGlobalTick()
    if MonIsActive and FunctionOnRepeat == nil then
        FunctionOnRepeat = pickup.CallFunctionOnRepeat("UpdateMon", 999999, 0.1)
    end
end

function ADVR.onEntityDeath(livingBase)
    if livingBase == ActiveMonBase then
        ActiveMonStats.isShiny = false
    end
end

function UpdateMon()
    Releasemon(ActiveMon)
end

function PutMonBackInBall() --When returning a pokemon back to the ball (mark) --
    if ActiveMonObj == nil then
        return
    end
    local friend = ActiveMonObj
    local friendBase = friend.GetComponent_EnemyBase_()


    audio.PlaySoundLocal(sounds.ENEMY_ID_SLIME_BULLET_SHOOT, game.playerController.rightHand.transform.position)

    local startPos = game.playerController.rightHand.transform.position
    local endPos = friendBase.GetCenterInWorld()
    local dist = vector3.Distance(startPos, endPos)

    local projectile = game.SpawnObjectNetwork(objects.WEAPON_PLAYER_MAGIC_ORB_PROJECTILE, startPos)
    projectile.gameObject.GetComponent_Collider_().enabled = false

    pickup.StartLuaCoroutine(RecallBullet, projectile, dist, startPos, friend)
end

-- coroutine to move the recall orb towards the summoned mon --
function RecallBullet(projectile, duration, startPos, friendObj)
    local elapsed = 0

    while elapsed < duration / 3 do
        if projectile == nil or friendObj == nil then
            return
        end

        local friendBase = friendObj.GetComponent_EnemyBase_()
        if friendBase == nil or friendBase.isDead then
            if projectile ~= nil then game.Delete(projectile) end
            return
        end

        local t = elapsed / (duration / 3)
        projectile.transform.position = vector3.Lerp(startPos, friendBase.GetCenterInWorld(), t)

        elapsed = elapsed + time.deltaTime
        coroutine.yield()
    end

    -- orb has reached the mon — clean everything up
    if projectile ~= nil then
        game.Delete(projectile)
    end

    if friendObj ~= nil then
        local friendBase = friendObj.GetComponent_EnemyBase_()
        if friendBase ~= nil and not friendBase.isDead then
            ActiveMonStats.currentHP = friendBase.Health
            if HasHealBallAugment then
                ActiveMonStats.currentHP = friendBase.MaxHealth
            end
            game.itemInterpreter.currentUsable.currentCharge = game.itemInterpreter.currentUsable.amountUses
            game.activePickupSlot.UpdateChargeDisplay()
            game.Delete(friendObj)
        end
    end


    if FunctionOnRepeat ~= nil then
        FunctionOnRepeat.Cancel()
        FunctionOnRepeat = nil
    end

    ActiveSummons = {}
    ActiveMonObj = nil
    MonIsActive = false
end

-- coroutine to move the projectile towards the enemy --
function MoveBullet(projectile, duration, startPos, endEnemy)
    local elapsed = 0
    local enemyBase = endEnemy.GetComponent_EnemyBase_()
    local endPos = enemyBase.GetCenterInWorld()
    local enemyBase = endEnemy.GetComponent_EnemyBase_()
    while elapsed < duration / 3 do
        if projectile == nil then
            return
        end


        if endEnemy == nil or enemyBase == nil or enemyBase.isDead then
            game.Delete(projectile)
            return
        end

        endPos = enemyBase.GetCenterInWorld()
        local t = elapsed / (duration / 3)
        projectile.transform.position = vector3.Lerp(startPos, endPos, t)

        elapsed = elapsed + time.deltaTime
        coroutine.yield()
    end

    if projectile ~= nil then
        local livingId = enemyBase.livingId
        ActiveMon = livingId
        if HasMegaEvolveAugment and HasAbrntVersion(ActiveMon) then
            if helperMethods.IsValidWithLuck(.05, 1, .35) then
                ActiveMon = HasAbrntVersion(ActiveMon)
            end
        end

        ActiveMonStats.isShiny = false
        local renderers = endEnemy.gameObject.GetComponentsInChildren(game.GetType("MeshRenderer"))
        if renderers ~= nil and renderers.Length > 0 then
            local color = renderers[0].material.color
            if math.abs(color.r - 0.565) < 0.01 and math.abs(color.g - 0.69) < 0.01 then
                ActiveMonStats.isShiny = true
            end
        end

        ActiveMonGetStats(ActiveMon, enemyBase.MaxHealth)
        local abr = string.match(tostring(ActiveMon), "abberrant")
        local modded = string.match(tostring(ActiveMon), "pc") or string.match(tostring(ActiveMon), "sg")
        onMonCaught(ActiveMon, ActiveMonStats.isShiny, modded, endPos)
        game.Delete(endEnemy.gameObject)
        game.Delete(projectile)
        game.itemInterpreter.currentUsable.currentCharge = game.itemInterpreter.currentUsable.amountUses
        game.activePickupSlot.UpdateChargeDisplay()
    end
end

local DELIMITER = ","

function GetList(key)
    local raw = game.LoadString(key, "")
    if raw == "" or raw == nil then return {} end
    local list = {}
    for entry in raw:gmatch("[^,]+") do
        table.insert(list, entry)
    end
    return list
end

function HasInList(key, name)
    return table.contains(GetList(key), name)
end

function AddToList(key, name)
    if HasInList(key, name) then return end
    local list = GetList(key)
    table.insert(list, name)
    game.SaveString(key, table.concat(list, DELIMITER))
end

---@diagnostic disable-next-line: lowercase-global
function onMonCaught(name, shiny, modded, pos)
    if not modded then
    AddToList("EnemiesCaught", name)

    if shiny then
        AddToList("EnemiesShinyCaught", name)
        game.ShowMessageInWorld("<color=#c8960c>Sh</color><color=#e8b84b>in</color><color=#f5d78e>y</color>", .5)
        game.SaveBool("CaughtShiny", true)
    end

    local saved = game.LoadInt("pokemoncaught", 1)
    game.SaveInt("pokemoncaught", saved + 1)
end
if modded then
     AddToList("ModdedEnemiesCaught", name)
     if shiny then
        AddToList("ModdedEnemiesShinyCaught", name)
        game.ShowMessageInWorld("<color=#c8960c>Sh</color><color=#e8b84b>in</color><color=#f5d78e>y</color>", .5)
        game.SaveBool("CaughtShiny", true)
    end
end
    if table.contains(RelicsTaken, "pinap_berry") then
        for i = 1, math.random(3, 5) do
            game.SpawnObjectNetwork(objects.ITEM_COIN, pos)
        end
    end

    if table.contains(RelicsTaken, "silver_pinap_berry") then
        for i = 1, math.random(1, 3) do
            game.SpawnObjectNetwork(objects.ITEM_KEY, pos)
        end
    end

end

function HasAbrntVersion(name)
    local list = {
        ["enemy_og_slime_bullet"] = "abberrant_og_slime_bullet",
        ["enemy_fg_book"] = "abberrant_fg_book",
        ["enemy_fg_wisp"] = "abberrant_fg_wisp",
        ["enemy_fg_slime_phase"] = "abberrant_fg_slime_phase",
        ["enemy_og_bat"] = "abberrant_og_bat",
        ["enemy_og_plant_4x"] = "abberrant_og_plant_4x",
        ["enemy_id_maggot"] = "abberrant_id_exploding_maggot",
        ["enemy_id_slime"] = "abberrant_id_slime_big",
        ["enemy_id_bat"] = "abberrant_id_bat"
    }
    if list[name] then
        return list[name]
    end
    return false
end

function ADVR.onPreMarkTriggered()
    if ActiveMon == nil then
        Throwball()
        MonIsActive = false
        game.itemInterpreter.currentUsable.currentCharge = game.itemInterpreter.currentUsable.amountUses
        game.activePickupSlot.UpdateChargeDisplay()
    else
        if not MonIsActive and ActiveMon ~= nil then
            SendBall()
        end
        if MonIsActive then
            PutMonBackInBall()
        end
        game.itemInterpreter.currentUsable.currentCharge = game.itemInterpreter.currentUsable.amountUses
        game.activePickupSlot.UpdateChargeDisplay()
    end
end

function GetEnemyTypes(enemy)
    for _, block in pairs(StatSheet) do
        if enemy.GetComponent_EnemyBase_().livingId == block.name then
            return {
                primary = block.primaryType,
                secondary = block.secondaryType
            }
        end
    end
end

function CannotCatchEnemy(enemy)
    local Unable = {
        "enemy_id_goo_exploding",
        "boss_the_beast",
        "boss_mushroom",
        "boss_doomshroom",
        "enemy_challenge_ghost",
        "boss_fly_hive",
    }

    for i = 1, #Unable do
        if enemy == Unable[i] then
            return true
        end
    end
    return false
end

function Throwball()
    local enemies = game.GetEnemiesInRadius(10, game.playerController.rightHand.transform.position, false, true)
    if #enemies == 0 then
        game.ShowMessageInWorld("No enemies to catch", 1)
        return
    end
    local closestEnemy = nil
    local closestDistance = 9999.0
    for enemye in enemies do
        local distance = vector3.Distance(enemye.transform.position,
            game.playerController.rightHand.transform.position)
        if distance < closestDistance then
            closestDistance = distance
            closestEnemy = enemye
        end
    end

    local enemy = closestEnemy
    if enemy == nil then
        return
    end

    if CannotCatchEnemy(enemy.GetComponent_EnemyBase_().livingId) then
        game.ShowMessageInWorld("Cannot catch " .. enemy.GetComponent_EnemyBase_().name, 1)
        return
    end
    if string.find(enemy.GetComponent_EnemyBase_().livingId, "clarence") then
        game.ShowMessageInWorld("Leave clarence out of this", 1)
        return
    end
    if enemy.GetComponent_EnemyBase_().IsInvincible then
        return
    end
    local EnemyType = GetEnemyTypes(enemy)

    if EnemyType == nil then
        game.ShowMessageInWorld("No types for " .. enemy.GetComponent_EnemyBase_().livingId .. ", show this to RER", 1)
        return
    end
    if enemy ~= nil then
        local chancetocatch = BaseChanceForCatch
        if bestiary.GetKillCount(enemy.GetComponent_EnemyBase_().livingId) > 0 and HasRepeatBallAugment then
            chancetocatch = chancetocatch + .05
        end
        if HasDuskBallAugment and (EnemyType.primary == "dark" or EnemyType.secondary == "dark") then
            chancetocatch = chancetocatch + .075
        end
        if HasNetBallAugment and (EnemyType.primary == "bug" or EnemyType.secondary == "bug") then
            chancetocatch = chancetocatch + .075
        end
        if HasSlimeBallAugment and (EnemyType.primary == "slime" or EnemyType.secondary == "slime") then
            chancetocatch = chancetocatch + .075
        end
        if HasHeavyBallAugment and (EnemyType.primary == "stone" or EnemyType.secondary == "stone") then
            chancetocatch = chancetocatch + .075
        end
        if HasFeatherBallAugment and (EnemyType.primary == "flying" or EnemyType.secondary == "flying") then
            chancetocatch = chancetocatch + .075
        end
        if HasTomeBallAugment and (EnemyType.primary == "magic" or EnemyType.secondary == "magic") then
            chancetocatch = chancetocatch + .075
        end
        if HasGuckBallAugment and (EnemyType.primary == "poison" or EnemyType.secondary == "poison") then
            chancetocatch = chancetocatch + .075
        end
        local anim = enemy.GetComponent_Animator_()
        if HasDreamBallAugment and anim.speed == 0 then
            chancetocatch = chancetocatch + .1
        end
        if HasLuxuryBallAugment then
            chancetocatch = chancetocatch +
                player.currentCash / 2000 -- If the player has 100 coins they will gain a 5% chance
        end
        if HasQuickBallAugment and IsFirstCatch then
            chancetocatch = 1
            IsFirstCatch = false
        end
        local room = game.currentWorldGenerator.GetRoomAtRealPos(player.transform.position)
        if HasParkBallAugment and room.type == roomTypes.SEALED then
            chancetocatch = chancetocatch + .05
        end
         if table.contains(RelicsTaken, "gold_razz")  then
            chancetocatch = chancetocatch + .35
           table.remove(RelicsTaken, table.find(RelicsTaken, "gold_razz"))
        end
          if table.contains(RelicsTaken, "razz_berry")  then
            chancetocatch = chancetocatch + .05
           table.remove(RelicsTaken, table.find(RelicsTaken, "razz_berry"))
        end

        if helperMethods.IsValidWithLuck(0, 1, chancetocatch) then
            if HasUniteBallAugment then
                player.currentCash = player.currentCash + math.random(2, 3)
            end

            audio.PlaySoundLocal(sounds.SFX_DOOR_CHIME, game.playerController.rightHand.transform.position)

            if enemy ~= nil then
                if not enemy.isBoss() or (enemy.isBoss() and HasMasterBallAugment) then
                    local direction = game.playerHeadset.transform.forward
                    local position = game.playerHeadset.transform.position
                    local forwardPos = position + (direction * BallDistMult)

                    local projectile = game.SpawnObjectNetwork(objects.WEAPON_PLAYER_MAGIC_ORB_PROJECTILE,
                        forwardPos)


                    projectile.gameObject.GetComponent_Collider_().enabled = false


                    local startPos = game.playerController.rightHand.transform.position

                    local endPos = enemy.GetCenterInWorld()

                    -- make time based on distance --
                    local dist = vector3.Distance(startPos, endPos)
                    pickup.StartLuaCoroutine(MoveBullet, projectile, dist, startPos, enemy)
                else
                    game.ShowMessageInWorld("Cant catch that boss", 1)
                end
            end
        else
            game.ShowMessageInWorld("<color=#e82e20>" .. "Failed" .. "</color>", 1)
        end
    end
end

function ActiveMonGetStats(mon, hp)
    local name = mon

    for _, stat in pairs(StatSheet) do
        if name == stat.name then
            ActiveMonStats.primaryType = stat.primaryType
            ActiveMonStats.secondaryType = stat.secondaryType
            player.PrimaryDamage.ChangeAddend(pickup.id, stat.damage)
            player.PrimaryCritChance.ChangeAddend(pickup.id, stat.critchance)
            ActiveMonStats.criticalChance = stat.critchance
            ActiveMonStats.damage = stat.damage
            ActiveMonStats.isFlying = stat.isFlying
            ActiveMonStats.attacktype = stat.attacktype
            ActiveMonStats.currentHP = hp


            ActiveMonStats.evasionChance = .05
        end
    end
end

function MoveBall(projectile, duration, startPos, endpos)
    local elapsed = 0
    while elapsed < duration / 3 do
        if projectile == nil then
            return
        end

        -- move projectile towards the enemy --

        local t = elapsed / (duration / 3)
        projectile.transform.position = vector3.Lerp(startPos, endpos, t)

        elapsed = elapsed + time.deltaTime
        coroutine.yield()
    end
    local pos = projectile.transform.position
    if projectile ~= nil then
        game.Delete(projectile)
        Releasemon(ActiveMon)
    end
end

function SendBall()
    local direction = game.playerHeadset.transform.forward
    local position = game.playerHeadset.transform.position
    local forwardPos = position + (direction * BallDistMult)

    local projectile = game.SpawnObjectNetwork(objects.WEAPON_PLAYER_MAGIC_ORB_PROJECTILE,
        game.playerController.rightHand.transform.position)


    projectile.gameObject.GetComponent_Collider_().enabled = false


    local startPos = game.playerController.rightHand.transform.position

    local endPos = forwardPos

    -- make time based on distance --
    local dist = vector3.Distance(startPos, endPos)
    pickup.StartLuaCoroutine(MoveBall, projectile, dist, startPos, endPos)
end

function CalcDamage(enemy)
    local damage = ActiveMonStats.damage

    local mod = TypeDamage(enemy.livingId, ActiveMonStats.primaryType, ActiveMonStats.secondaryType, true)
    damage = damage * mod

    if helperMethods.IsValidWithLuck(0, 1, ActiveMonStats.criticalChance) then
        damage = damage * 1.25
    end
    if HasCritcalChanceAugment and math.random(3) == 1 then
        damage = damage * 1.5
    end
    return math.ceil(damage)
end

function TypeDamage(target, primary, secondary, MonAttack)
    local EnemyPrimaryType = ""
    local EnemySecondaryType = ""
    local modifier = 1
    for _, block in pairs(StatSheet) do
        if target == block.name then
            EnemyPrimaryType = block.primaryType
            EnemySecondaryType = block.secondaryType
        end
    end
    --slime, undead, poison, plant, magic, stone, crystal, dark, flying, fire, steel
    if primary == "slime" or secondary == "slime" then
        if EnemyPrimaryType == "undead" or EnemySecondaryType == "undead" then
            modifier = modifier + 0.15
        end
        if EnemyPrimaryType == "steel" or EnemySecondaryType == "steel" then
            modifier = modifier + 0.15
        end
        if EnemyPrimaryType == "dark" or EnemySecondaryType == "dark" then
            modifier = modifier - 0.2
        end
        if EnemyPrimaryType == "stone" or EnemySecondaryType == "stone" then
            modifier = modifier - 0.2
        end
    end
    if primary == "undead" or secondary == "undead" then
        if EnemyPrimaryType == "undead" or EnemySecondaryType == "undead" then
            modifier = modifier + 0.2
        end
        if EnemyPrimaryType == "plant" or EnemySecondaryType == "plant" then
            modifier = modifier + 0.1
        end
        if EnemyPrimaryType == "stone" or EnemySecondaryType == "stone" then
            modifier = modifier - 0.15
        end
        if EnemyPrimaryType == "steel" or EnemySecondaryType == "steel" then
            modifier = modifier - 0.22
        end
        if EnemyPrimaryType == "dark" or EnemySecondaryType == "dark" then
            modifier = modifier - 0.03
        end
    end
    if primary == "poison" or secondary == "poison" then
        if EnemyPrimaryType == "plant" or EnemySecondaryType == "plant" then
            modifier = modifier + 0.2
        end
        if EnemyPrimaryType == "slime" or EnemySecondaryType == "slime" then
            modifier = modifier + 0.15
        end
        if EnemyPrimaryType == "crystal" or EnemySecondaryType == "crystal" then
            modifier = modifier - 0.2
        end
        if EnemyPrimaryType == "undead" or EnemySecondaryType == "undead" then
            modifier = modifier - 0.1
        end
    end
    if primary == "plant" or secondary == "plant" then
        if EnemyPrimaryType == "stone" or EnemySecondaryType == "stone" then
            modifier = modifier + 0.2
        end
        if EnemyPrimaryType == "undead" or EnemySecondaryType == "undead" then
            modifier = modifier + 0.2
        end
        if EnemyPrimaryType == "magic" or EnemySecondaryType == "magic" then
            modifier = modifier - 0.12
        end
        if EnemyPrimaryType == "fire" or EnemySecondaryType == "fire" then
            modifier = modifier - 0.2
        end
    end
    if primary == "magic" or secondary == "magic" then
        if EnemyPrimaryType == "dark" or EnemySecondaryType == "dark" then
            modifier = modifier + 0.2
        end
        if EnemyPrimaryType == "crystal" or EnemySecondaryType == "crystal" then
            modifier = modifier + 0.1
        end
        if EnemyPrimaryType == "slime" or EnemySecondaryType == "slime" then
            modifier = modifier - 0.18
        end
        if EnemyPrimaryType == "bug" or EnemySecondaryType == "bug" then
            modifier = modifier - 0.13
        end
    end
    if primary == "stone" or secondary == "stone" then
        if EnemyPrimaryType == "crystal" or EnemySecondaryType == "crystal" then
            modifier = modifier + 0.2
        end
        if EnemyPrimaryType == "flying" or EnemySecondaryType == "flying" then
            modifier = modifier + 0.22
        end
        if EnemyPrimaryType == "poison" or EnemySecondaryType == "poison" then
            modifier = modifier - 0.21
        end
        if EnemyPrimaryType == "steel" or EnemySecondaryType == "steel" then
            modifier = modifier - 0.16
        end
    end
    if primary == "crystal" or secondary == "crystal" then
        if EnemyPrimaryType == "slime" or EnemySecondaryType == "slime" then
            modifier = modifier + 0.2
        end
        if EnemyPrimaryType == "dark" or EnemySecondaryType == "dark" then
            modifier = modifier + 0.2
        end
        if EnemyPrimaryType == "flying" or EnemySecondaryType == "flying" then
            modifier = modifier - 0.2
        end
    end
    if primary == "dark" or secondary == "dark" then
        if EnemyPrimaryType == "undead" or EnemySecondaryType == "undead" then
            modifier = modifier + 0.2
        end
        if EnemyPrimaryType == "magic" or EnemySecondaryType == "magic" then
            modifier = modifier - 0.2
        end
    end
    if primary == "flying" or secondary == "flying" then
        if EnemyPrimaryType == "flying" or EnemySecondaryType == "flying" then
            modifier = modifier + 0.22
        end
        if EnemyPrimaryType == "undead" or EnemySecondaryType == "undead" then
            modifier = modifier + 0.2
        end
        if EnemyPrimaryType == "stone" or EnemySecondaryType == "stone" then
            modifier = modifier - 0.25
        end
        if EnemyPrimaryType == "steel" or EnemySecondaryType == "steel" then
            modifier = modifier - 0.25
        end
    end
    if primary == "steel" or secondary == "steel" then
        if EnemyPrimaryType == "crystal" or EnemySecondaryType == "crystal" then
            modifier = modifier + 0.22
        end
        if EnemyPrimaryType == "plant" or EnemySecondaryType == "plant" then
            modifier = modifier + 0.1
        end
        if EnemyPrimaryType == "magic" or EnemySecondaryType == "magic" then
            modifier = modifier - 0.2
        end
    end
    if primary == "fire" or secondary == "fire" then
        if EnemyPrimaryType == "plant" or EnemySecondaryType == "plant" then
            modifier = modifier + 0.22
        end
        if EnemyPrimaryType == "steel" or EnemySecondaryType == "steel" then
            modifier = modifier + 0.05
        end
        if EnemyPrimaryType == "bug" or EnemySecondaryType == "bug" then
            modifier = modifier + 0.12
        end
        if EnemyPrimaryType == "stone" or EnemySecondaryType == "stone" then
            modifier = modifier - 0.2
        end
        if EnemyPrimaryType == "crystal" or EnemySecondaryType == "crystal" then
            modifier = modifier - 0.15
        end
    end
    if primary == "bug" or secondary == "bug" then
        if EnemyPrimaryType == "plant" or EnemySecondaryType == "plant" then
            modifier = modifier + 0.22
        end
        if EnemyPrimaryType == "dark" or EnemySecondaryType == "dark" then
            modifier = modifier + 0.1
        end
        if EnemyPrimaryType == "stone" or EnemySecondaryType == "stone" then
            modifier = modifier - 0.1
        end
        if EnemyPrimaryType == "slime" or EnemySecondaryType == "slime" then
            modifier = modifier - 0.1
        end
    end
    return modifier
end

function Getdmgstat(name)
    for _, block in pairs(StatSheet) do
        if name == block.name then
            return block.damage
        end
    end
    return 0
end

function Releasemon(mon)
    if ActiveMon == nil then
        return
    end
    if not MonIsActive then
        SummonType = mon
        MonIsActive = true
        local direction = game.playerHeadset.transform.forward
        local position = game.playerHeadset.transform.position
        local forwardPos = position + (direction * BallDistMult)

        local spawnName = SummonType
        for _, stat in pairs(StatSheet) do
            if stat.name == ActiveMon and stat.spawnAs then
                spawnName = stat.spawnAs
                break
            end
        end
        local obj = game.SpawnObjectNetwork(spawnName, forwardPos)

        if ActiveMonStats.isShiny then
            CreateShiny(obj.gameObject)
        end

        ActiveMonObj = obj
        local base = obj.GetComponent_EnemyBase_()

        if HasMaxBandAugment then
            base.MaxHealth = math.ceil(base.MaxHealth * 1.5)
            base.Health = base.MaxHealth
            if string.match(ActiveMon, "slime") then
                local anim = ActiveMonObj.GetComponent_Animator_()
                if anim ~= nil then
                    anim.enabled = false
                end
            end
            local mult = 1.5
            if math.random(10000) == 1 then
                mult = 5
            end
            ActiveMonObj.GetComponent_Transform_().localScale = ActiveMonObj.GetComponent_Transform_().localScale * mult
        end
        if table.contains(RelicsTaken, "hp_up") then
            base.MaxHealth = base.MaxHealth + 3
            base.Health = base.MaxHealth
        end
        ActiveMonBase = base
        --game.killAfterFloorComplete[game.currentFloor].Remove(ActiveMonBase.gameObject)

        -- game.globalEnemyList.Remove(ActiveMonBase.gameObject.GetComponent_EnemyBase_())
        -- game.globalLivingList.Remove(ActiveMonBase.gameObject.GetComponent_LivingBase_())
        -- game.globalEnemyList.Remove(ActiveMonBase.gameObject.GetComponent(game.GetType("EnemyBase")))
        -- game.globalLivingList.Remove(ActiveMonBase.gameObject.GetComponent(game.GetType("LivingBase")))

        local ai = obj.GetComponent_AI_()
        if ActiveMonStats.currentHP < ActiveMonBase.Health then
            ActiveMonBase.Health = ActiveMonStats.currentHP
        end
        base.touchDamage = 0

        table.insert(ActiveSummons, {
            ai = ai,
            base = base,
            target = nil,
            lastDecayTick = 0,
            lastProximityTick = 0
        })
    end
    LastTargetTick = 0

    ---------------------------------------------------
    -- SUMMON LOOP
    ---------------------------------------------------

    for i = #ActiveSummons, 1, -1 do
        local summonData = ActiveSummons[i]

        local summonAI = summonData.ai
        local summonBase = summonData.base

        if summonBase == nil or summonBase.isDead then
            ---@diagnostic disable-next-line: need-check-nil, undefined-field
            FunctionOnRepeat.Cancel()
            FunctionOnRepeat = nil
            ActiveMon = nil
            MonIsActive = false
            table.remove(ActiveSummons, i)
        else
            ---------------------------------------------------
            -- EXCLUDE TABLE
            ---------------------------------------------------

            local summonExcludes = {}

            for _, s in ipairs(ActiveSummons) do
                if s.base ~= nil and not s.base.isDead then
                    table.insert(summonExcludes, s.base)
                end
            end


            ---------------------------------------------------
            -- TARGETING
            ---------------------------------------------------

            local FoundEnemy = GetClosestEnemyWithExcludes(
                18,
                summonAI.gameObject.transform.position,
                false,
                true,
                summonExcludes
            )

            if FoundEnemy ~= nil then
                summonData.target = FoundEnemy
                summonAI.networkedCustomTarget = FoundEnemy.networkObject
            end

            ---------------------------------------------------
            -- BASE DECAY
            ---------------------------------------------------

            if time.time - summonData.lastDecayTick >= 7.5 then
                summonData.lastDecayTick = time.time

                summonBase.DoHit(
                    player.networkObject,
                    summonBase.MaxHealth * 0.1,
                    damageType.GetDamageTypeById(245),
                    summonBase.transform.position,
                    false
                )
            end

            ---------------------------------------------------
            -- PROXIMITY DAMAGE SYSTEM
            ---------------------------------------------------

            if time.time - summonData.lastProximityTick >= 1 then
                summonData.lastProximityTick = time.time

                local closeEnemies = GetEnemiesWithExcludes(
                    2,
                    summonAI.gameObject.transform.position,
                    false,
                    true,
                    summonExcludes
                )
                local mult = 0
                local totaldmg = 0
                for i = 1, #closeEnemies do
                    local v = {

                    }
                    v = GetEnemyTypes(closeEnemies[i])

                    local dmg = Getdmgstat(closeEnemies[i].GetComponent_EnemyBase_().livingId)
                    local mod = TypeDamage(ActiveMonBase.livingId, v.primary, v.secondary, false)
                    if HasTeraOrbAugment and mod > 1 then
                        mod = 1
                    end
                    totaldmg = totaldmg + (dmg * mod)
                end

                local count = #closeEnemies

                if count > 0 then
                    local damage = totaldmg
                    if helperMethods.IsValidWithLuck(ActiveMonStats.evasionChance, ActiveMonStats.evasionChance, ActiveMonStats.evasionChance) then --evasion
                        damage = 0
                        audio.PlaySoundLocal(sounds.PLAYER_EVADE, player.transform.position)
                    end
                    summonBase.DoHit(
                        player.networkObject,
                        damage,
                        damageType.PLAYER_SECONDARY_NO_KNOCKBACK,
                        summonBase.transform.position,
                        false
                    )
                end
            end

            ---------------------------------------------------
            -- TARGET DAMAGE
            ---------------------------------------------------

            if summonData.target ~= nil then
                if summonData.lastTargetTick == nil then
                    summonData.lastTargetTick = 0
                end

                if time.time - summonData.lastTargetTick >= ActiveMonStats.attackSpd then
                    summonData.lastTargetTick = time.time

                    local targetBase = summonData.target

                    if targetBase ~= nil and not targetBase.isDead then
                        local distance = vector3.Distance(
                            summonAI.gameObject.transform.position,
                            targetBase.transform.position
                        )

                        if distance <= 2.5 then
                            local damage = CalcDamage(targetBase)

                            if damage > 0 then
                                targetBase.DoHit(
                                    summonAI.networkObject,
                                    damage,
                                    damageType.PLAYER_SECONDARY_KNOCKBACK,
                                    targetBase.transform.position,
                                    false
                                )
                            end
                        end
                    end
                end
            end
            --glow
            if HasPremierBallAugment then
                local base = summonBase
                local renderers = summonBase.gameObject.GetComponentsInChildren(game.GetType("MeshRenderer"))

                for i = 0, #renderers - 1 do
                    renderers[i].material.EnableKeyword("_EMISSION")
                    renderers[i].material.SetColor("_EmissionColor", colors.Create(0.9, 0.9, 0.9, .5))
                end
            end


            ---------------------------------------------------
            -- AGGRO REDIRECT (optional)
            ---------------------------------------------------

            local nearbyEnemies = GetEnemiesWithExcludes(
                4,
                summonAI.gameObject.transform.position,
                false,
                true,
                summonExcludes
            )

            for _, enemy in ipairs(nearbyEnemies) do
                if enemy.gameObject.GetComponent_AI_() ~= nil then
                    enemy.gameObject.GetComponent_AI_().networkedCustomTarget = summonAI.networkObject
                end
            end
        end
    end
end

function GetEnemiesWithExcludes(Radius, Pos, onlyVisible, excludeInvincible, excludeList)
    local enemies = game.GetEnemiesInRadius(Radius, Pos, true, excludeInvincible)
    local validEnemies = {}

    if enemies == nil then
        return validEnemies
    end


    ---@diagnostic disable-next-line: undefined-field
    for i = 0, enemies.Length - 1 do
        local enemy = enemies[i]

        if enemy and enemy.IsInvincible == false then
            local skip = false

            if excludeList then
                for _, e in ipairs(excludeList) do
                    if enemy == e then
                        skip = true
                        break
                    end
                end
            end

            if not skip then
                table.insert(validEnemies, enemy)
            end
        end
    end

    return validEnemies
end

function GetClosestEnemyWithExcludes(Radius, Pos, onlyVisible, excludeInvincible, excludeList)
    local enemies = game.GetEnemiesInRadius(Radius, Pos, onlyVisible, excludeInvincible)
    local closestEnemy = nil
    local shortestDistance = math.huge

    if enemies == nil then return nil end

    ---@diagnostic disable-next-line: undefined-field
    for i = 0, enemies.Length - 1 do
        local enemy = enemies[i]

        if enemy and enemy.IsInvincible == false then
            local skip = false

            if excludeList then
                for _, e in ipairs(excludeList) do
                    if enemy == e then
                        skip = true
                        break
                    end
                end
            end

            if not skip then
                local distance = (enemy.transform.position - Pos).magnitude

                if distance < shortestDistance then
                    shortestDistance = distance
                    closestEnemy = enemy
                end
            end
        end
    end

    return closestEnemy
end

function table.contains(tbl, val)
    for _, v in ipairs(tbl) do
        if v == val then
            return true
        end
    end
    return false
end

function table.find(tbl, val)
    for _, v in ipairs(tbl) do
        if v == val then
            return _
        end
    end
    return -1
end
