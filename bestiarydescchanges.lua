function ADVR.onLoad()
    ChangeNames()
end

function ADVR.onPlayerDeathOrRunComplete()
    ChangeNames()
end

function ADVR.onPostGameReload()
    ChangeNames()
end

function h(text)
    return string.reverse(text)
end

function GetList(key)
    local raw = game.LoadString(key, "")
    if raw == "" or raw == nil then return {} end
    local list = {}
    for entry in raw:gmatch("[^,]+") do
        table.insert(list, entry)
    end
    return list
end

function table.contains(tbl, val)
    for _, v in ipairs(tbl) do
        if v == val then
            return true
        end
    end
    return false
end

function HasInList(key, name)
    return table.contains(GetList(key), name)
end

local CAUGHT = "#ffffff"
local NOT_CAUGHT = "#888888"
local UNCATCHABLE = "#888888"
local CAUGHT_SHINY = "<color=#c8960c>[Sh</color><color=#e8b84b>in</color><color=#f5d78e>y</color> <color=#c8960c>Ca</color><color=#e8b84b>ug</color><color=#f5d78e>ht]</color>"

-- type tags (see glossary at bottom of file for the color legend)
local SLIME = "<color=#0f5a0d>(S</color><color=#178514>l</color><color=#1ea819>i</color><color=#26ce21>m</color><color=#5cdc58>e)</color>"
local UNDEAD = "<color=#59310b>(Undead)</color>"
local POISON = "<color=#880696>(Poison)</color>"
local PLANT = "<color=#9ae560>(Plant)</color>"
local MAGIC = "<color=#7277f1>(Ma</color><color=#9599f5>gi</color><color=#bbbdf9>c)</color>"
local STONE = "<color=#877e68>(Stone)</color>"
local CRYSTAL = "<color=#1a9e95>(Cr</color><color=#22cfc4>ys</color><color=#36f9ec>ta</color><color=#87fcf6>l)</color>"
local DARK = "<color=#150515>(D</color><color=#241024>a</color><color=#341a34>r</color><color=#472547>k)</color>"
local FLYING = "<color=#9dcad5>(Fl</color><color=#b5d8e2>yi</color><color=#cce2ea>ng</color><color=#e8f4f7>)</color>"
local FIRE = "<color=#f95909>(Fi</color><color=#fb7c3a>re</color><color=#fdc49a>)</color>"
local STEEL = "<color=#707a80>(St</color><color=#9aaab4>ee</color><color=#b5c1c9>l)</color>"
local BUG = "<color=#6a8a1a>(B</color><color=#8fb52a>u</color><color=#b3d940>g</color><color=#c6ef56>)</color>"


function CatchStatus(catchName)
    if catchName == nil then
        return " <color=" .. UNCATCHABLE .. ">[Uncatchable]</color>"
    end

    if not HasInList("EnemiesCaught", catchName) then
        return " <color=" .. NOT_CAUGHT .. ">[Not Caught]</color>"
    end

    local tag = " <color=" .. CAUGHT .. ">[Caught]</color>"
    if HasInList("EnemiesShinyCaught", catchName) then
        tag = tag .. CAUGHT_SHINY
    end
    return tag
end

function SetBestiaryName(key, text, catchName)
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation(key .. "_bestiary_name",
        text .. CatchStatus(catchName))
end

function ChangeNames()

    -- OG
    SetBestiaryName("enemy_og_slime", "Overgrown Slime " .. SLIME, "enemy_og_slime")
    SetBestiaryName("enemy_og_slime_bullet", "Overgrown Gob Slime " .. SLIME, "enemy_og_slime_bullet")
    SetBestiaryName("enemy_og_plant_4x", "Scarlet Bloom " .. PLANT .. " ", "enemy_og_plant_4x")
    SetBestiaryName("enemy_og_wight_crawling", "Overgrown Zombie Crawler " .. UNDEAD, "enemy_og_wight_crawling")
    SetBestiaryName("enemy_og_plant_homing", "Violet Bloom " .. PLANT .. " ", "enemy_og_plant_homing")
    SetBestiaryName("enemy_og_wight", "Overgrown Zombie " .. UNDEAD, "enemy_og_wight")
    SetBestiaryName("enemy_og_wight_advanced", "Overgrown Zombie Lunger " .. UNDEAD .. " " .. DARK .. " ", "enemy_og_wight_advanced")
    SetBestiaryName("enemy_og_slime_big", "Overgrown Great Slime " .. SLIME, "enemy_og_slime_big")
    SetBestiaryName("enemy_og_bat", "Overgrown Bat " .. FLYING, "enemy_og_bat")
    SetBestiaryName("enemy_og_slime_armored", "Overgrown Armor Slime " .. SLIME .. " " .. STEEL, "enemy_og_slime_armored")
    SetBestiaryName("enemy_og_plant_rotten", "Jade Bloom " .. PLANT .. " " .. POISON, nil)
    SetBestiaryName("abberrant_og_slime_bullet", "<color=#ff99ff>(Aberrant)</color> Aberrant Gob Slime " .. SLIME .. " " .. UNDEAD, "abberrant_og_slime_bullet")
    SetBestiaryName("abberrant_og_plant_4x", "<color=#ff99ff>(Aberrant)</color> Azure Bloom " .. PLANT, "abberrant_og_plant_4x")
    SetBestiaryName("abberrant_og_bat", "<color=#ff99ff>(Aberrant)</color> Overgrown Bounce Bat " .. FLYING .. " " .. STONE, "abberrant_og_bat")
    SetBestiaryName("enemy_bg_plant_rotten", "Jade Bloom " .. PLANT .. " " .. POISON, "enemy_bg_plant_rotten")
    SetBestiaryName("poi_clarence", "<color=#5acce2>(POI)</color> Clarence " .. SLIME .. " ", nil)
    -- ID
    SetBestiaryName("enemy_id_slime_bullet", "Infested Gob Slime " .. SLIME .. " " .. PLANT, "enemy_id_slime_bullet")
    SetBestiaryName("enemy_id_slime", "Infested Slime " .. SLIME .. " " .. POISON, "enemy_id_slime")
    SetBestiaryName("enemy_id_maggot", "Infested Grub " .. BUG, "enemy_id_maggot")
    SetBestiaryName("enemy_id_mushroom_rotten", "Infested Shroom " .. PLANT .. " " .. POISON, "enemy_id_mushroom_rotten")
    SetBestiaryName("enemy_id_wight", "Infested Zombie Lunger " .. UNDEAD .. " " .. PLANT, "enemy_id_wight")
    SetBestiaryName("enemy_id_possessed_axe", "Possessed Axe " .. STEEL .. " " .. FLYING, "enemy_id_possessed_axe")
    SetBestiaryName("enemy_id_exploding_maggot", "Exploding Goo " .. POISON, nil)
    SetBestiaryName("abberant_id_bat", "<color=#ff99ff>(Aberrant)</color> Infested Bounce Bat " .. FLYING .. " " .. STONE, "abberrant_id_bat")
    SetBestiaryName("enemy_id_bat", "Infested Bat " .. FLYING, "enemy_id_bat")
    SetBestiaryName("abberrant_id_slime_big", "<color=#ff99ff>(Aberrant)</color> Infested Great Slime " .. SLIME .. " " .. DARK .. " ", "abberrant_id_slime_big")
    SetBestiaryName("abberrant_id_bat", "<color=#ff99ff>(Aberrant)</color> Infested Bounce Bat " .. FLYING .. " " .. POISON, "abberrant_id_bat")
    SetBestiaryName("abberrant_id_exploding_maggot", "<color=#ff99ff>(Aberrant)</color> Infested Bomb Grub " .. FIRE .. " " .. BUG .. " ", "abberrant_id_exploding_maggot")
    SetBestiaryName("enemy_id_goo_exploding", "Exploding Goo " .. POISON .. " " .. FIRE, nil)
    -- FG
    SetBestiaryName("enemy_fg_book", "Tome of Magic " .. MAGIC, "enemy_fg_book")
    SetBestiaryName("enemy_fg_book_exploding", "Tome of Sorcery " .. MAGIC .. " " .. FIRE, "enemy_fg_book_exploding")
    SetBestiaryName("enemy_fg_elemental_magic", "Forgotten Elemental " .. CRYSTAL .. " " .. MAGIC, "enemy_fg_elemental_magic")
    SetBestiaryName("enemy_fg_possessed_armor", "Possessed Armor " .. STEEL .. " " .. DARK .. " ", "enemy_fg_possesed_armor")
    SetBestiaryName("enemy_fg_slime_phase", "Forgotten Zip Slime " .. SLIME .. " " .. CRYSTAL, "enemy_fg_slime_phase")
    SetBestiaryName("enemy_fg_targeting_beam", "Forgotten Prizm " .. CRYSTAL .. " " .. MAGIC, "enemy_fg_targeting_beam")
    SetBestiaryName("enemy_fg_wisp", "Forgotten Wisp " .. MAGIC .. " " .. FLYING, "enemy_fg_wisp")
    SetBestiaryName("abberrant_fg_book", "<color=#ff99ff>(Aberrant)</color> Tome of Wizardry " .. MAGIC .. " " .. DARK .. " ", "abberrant_fg_book")
    SetBestiaryName("abberrant_fg_slime_phase", "<color=#ff99ff>(Aberrant)</color> Orange Zip Slime " .. SLIME .. " " .. FIRE, "abberrant_fg_slime_phase")
    SetBestiaryName("abberrant_fg_wisp", "<color=#ff99ff>(Aberrant)</color> Purple Wisp " .. MAGIC .. " " .. FIRE, "abberrant_fg_wisp")
    SetBestiaryName("poi_arcane_rift", "<color=#5acce2>(POI)</color> Arcane Rift " .. MAGIC, nil)
    -- Special
    SetBestiaryName("enemy_slime_golden", "<color=#d4af37>(Special)</color> Golden Slime " .. SLIME .. " " .. STEEL, "enemy_slime_golden")
    SetBestiaryName("enemy_chest_mimic", "Mimic " .. DARK .. "  " .. STONE, nil)
    SetBestiaryName("enemy_invincibility_tome", "Invincibility Tome " .. MAGIC, "enemy_invincibility_tome")
    SetBestiaryName("enemy_bc_skull_darkness", "Skull of Darkness " .. UNDEAD .. " " .. DARK .. " ", "enemy_bc_skull_darkness")
    SetBestiaryName("enemy_corrupted_shopkeeper", "The Shopkeeper " .. DARK .. "  " .. MAGIC, nil)
    SetBestiaryName("enemy_shopkeeper_corrupted_mask", "Possesed Mask " .. DARK .. "  " .. FLYING, "enemy_shopkeeper_corrupted_mask")
    SetBestiaryName("enemy_challenge_ghost", "<color=#d4af37>(Special)</color> Restless Soul " .. UNDEAD .. " " .. MAGIC, nil)
    -- BOSS
    SetBestiaryName("boss_deranged_adventurer", "<color=#ff0000>(Boss)</color> Deranged Adventurer " .. DARK .. " ", "boss_deranged_adventurer")
    SetBestiaryName("boss_king_slime", "<color=#ff0000>(Boss)</color> King Slime" .. SLIME, "boss_king_slime")
    SetBestiaryName("boss_doomshroom", "<color=#ff0000>(Boss)</color> Doomshroom " .. POISON .. " " .. PLANT, "boss_doomshroom")
    SetBestiaryName("boss_rabid_bestiary", "<color=#ff0000>(Boss)</color> Rabid Pokedex " .. MAGIC .. " " .. DARK .. " ", "boss_rabid_bestiary")
    SetBestiaryName("boss_crystal_prisom", "<color=#ff0000>(Boss)</color>Crystal Prisom " .. CRYSTAL .. " ", nil)
    SetBestiaryName("boss_elder_skeleton", "<color=#ff0000>(Boss)</color> Elder Skeleton " .. UNDEAD .. " " .. STONE, "boss_stone_skeleton")
    SetBestiaryName("boss_fly_hive", "<color=#ff0000>(Boss)</color> The Swarm " .. FLYING .. " " .. POISON, nil)
    SetBestiaryName("boss_the_beast_stage3", "<color=#ff0000>(Boss)</color> The Beast " .. DARK .. " " .. FIRE, nil)
    -- NS
    SetBestiaryName("enemy_ns_fly", "Fly " .. BUG .. " " .. FLYING, "enemy_ns_fly")
    SetBestiaryName("enemy_ns_fly_hive", "Fly Hive " .. BUG .. " " .. DARK .. " ", nil)
    SetBestiaryName("enemy_ns_maggot", "Noxious Grub " .. BUG .. " " .. POISON, "enemy_ns_maggot")
    SetBestiaryName("enemy_ns_slime", "Noxious Puddle Slime " .. SLIME .. " " .. POISON, "enemy_ns_slime")
    SetBestiaryName("enemy_ns_slime_rotten", "Noxious Slime " .. POISON .. " " .. SLIME, "enemy_ns_slime_rotten")
    SetBestiaryName("enemy_ns_slime_tiny", "Noxious Smol Slime " .. SLIME .. " " .. POISON, "enemy_ns_slime_tiny")
    SetBestiaryName("enemy_ns_poison_spitter", "Noxious Spout " .. POISON .. " " .. PLANT, "enemy_ns_poison_spitter")
    SetBestiaryName("enemy_ns_wight_drowned", "Noxious Drowned Zombie " .. UNDEAD .. " " .. POISON, "enemy_ns_wight_drowned")
    SetBestiaryName("enemy_poi_poison_sentry", "<color=#5acce2>(POI)</color> Noxious Sprig " .. POISON .. " " .. PLANT, "enemy_poi_poison_sentry")
    -- LD
    SetBestiaryName("enemy_ld_plant_crystal", "Luminous Bloom " .. CRYSTAL .. " " .. PLANT, "enemy_ld_plant_crystal")
    SetBestiaryName("enemy_ld_sentryplant", "Luminous Blossom " .. PLANT .. " " .. CRYSTAL, "enemy_ld_sentryplant")
    SetBestiaryName("enemy_ld_crystal_elemental", "Luminous Elemental " .. CRYSTAL .. " " .. STONE, "enemy_ld_crystal_elemental")
    SetBestiaryName("enemy_ld_slime_crystal", "Luminous Glob Burster " .. SLIME .. " " .. CRYSTAL, "enemy_ld_slime_crystal")
    SetBestiaryName("enemy_ld_fat_crystal_slime", "Luminous Great Slime " .. CRYSTAL .. " " .. SLIME, "enemy_ld_fat_slime_crystal")
    SetBestiaryName("enemy_ld_skeleton", "Luminous Skeleton " .. UNDEAD .. " " .. CRYSTAL, "enemy_ld_skeleton")
    SetBestiaryName("enemy_ld_possessed_skull", "Luminous Skull " .. UNDEAD .. " " .. CRYSTAL, "enemy_ld_possessed_skull")
    SetBestiaryName("enemy_ld_rotatingbeam", "Luminous Prizm " .. CRYSTAL .. " " .. MAGIC, "enemy_ld_rotating_beam")
    -- GM
    SetBestiaryName("enemy_gm_rock_elemental", "Gloaming Elemental " .. STONE .. " " .. MAGIC, "enemy_gm_crystal_elemental")
    SetBestiaryName("enemy_gm_slime_bone", "Gloaming Glob Burster " .. SLIME .. " " .. STONE, "enemy_gm_slime_bone")
    SetBestiaryName("enemy_gm_slime_stone", "Gloaming Glob Spiker " .. STONE .. " " .. DARK .. " ", "enemy_gm_slime_stone")
    SetBestiaryName("enemy_gm_skeleton", "Gloaming Skeleton " .. UNDEAD .. " " .. DARK .. " ", "enemy_gm_skeleton")
    SetBestiaryName("enemy_gm_skeleton_miner", "Gloaming Skeleton Miner " .. UNDEAD .. " " .. STEEL, "enemy_gm_skeleton_miner")
    SetBestiaryName("enemy_gm_possessed_skull", "Gloaming Skull " .. UNDEAD .. " " .. DARK .. " ", "enemy_gm_possessed_skull")
    SetBestiaryName("enemy_gm_sentryplant", "Gloaming Sprig " .. PLANT .. " " .. DARK .. " ", "enemy_gm_sentryplant")

    --UC
    SetBestiaryName("enemy_id_goo_exploding", "Exploding Goo " .. POISON .. " " .. FIRE, nil)
    SetBestiaryName("enemy_chest_mimic", "Mimic " .. DARK .. "  " .. STONE, nil)   
    SetBestiaryName("enemy_corrupted_shopkeeper", "The Shopkeeper " .. DARK .. "  " .. MAGIC, nil)   
    SetBestiaryName("boss_fly_hive", "<color=#ff0000>(Boss)</color> The Swarm " .. FLYING .. " " .. POISON, nil)
    SetBestiaryName("boss_the_beast_stage3", "<color=#ff0000>(Boss)</color> The Beast " .. DARK .. " " .. FIRE, nil)
    SetBestiaryName("enemy_ns_fly_hive", "Fly Hive " .. BUG .. " " .. DARK .. " ", nil)
    -- lols
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("arena_preparation_ui_unlock_message",
        "Complete more Pokedex entries to unlock...")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("achievement_grand_hunt_desc",
        "Complete the Pokedex.")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("achievement_the_bestiary_name", "The Pokedex")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("achievement_the_bestiary_desc",
        "Help the Acolyte fill in the Pokedex and discover 35 unique creatures.")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("boss_Rabid Bestiary", "Rabid Pokedex")
    if math.random() <= .05 then
        SetBestiaryName("poi_clarence", "<color=#5acce2>(POI)</color> Clarence " .. SLIME .. " <color=#e058e8>(Cutie patootie)</color> ", nil)
    end
end

-- the types are as follows, slime, undead, poison, plant, magic, stone, crystal, dark, flying, fire, steel

-- slime: #26ce21 <color=#0f5a0d>(S</color><color=#178514>l</color><color=#1ea819>i</color><color=#26ce21>m</color><color=#5cdc58>e)</color>
-- undead: #59310b
-- poison: #880696
-- plant: #9ae560
-- magic: <color=#7277f1>(Ma</color><color=#9599f5>gi</color><color=#bbbdf9>c)</color>
-- stone: #877e68
-- crystal: #36f9ec <color=#1a9e95>(Cr</color><color=#22cfc4>ys</color><color=#36f9ec>ta</color><color=#87fcf6>l)</color>
-- dark: #150515 <color=#150515>(D</color><color=#241024>a</color><color=#341a34>r</color><color=#472547>k)</color>
-- flying: <color=#9dcad5>Fl</color><color=#b5d8e2>yi</color><color=#cce2ea>ng</color><color=#e8f4f7>!</color>
-- fire:  <color=#f95909>(Fi</color><color=#fb7c3a>re</color><color=#fdc49a>)</color>
-- Steel: <color=#707a80>(St</color><color=#9aaab4>ee</color><color=#b5c1c9>l)</color>
-- Bug:  <color=#6a8a1a>(B</color><color=#8fb52a>u</color><color=#b3d940>g</color><color=#c6ef56>)</color>

-- Uncatchable: <color=#888888>[Uncatchable]</color>
-- Not Caught: <color=#888888>[Not Caught]</color>
-- Caught: <color=#ffffff>[Caught]</color>
--Shiny: <color=#c8960c>Sh</color><color=#e8b84b>in</color><color=#f5d78e>y</color>

function h(text)
    return string.reverse(text)
end


function ADVR.onGlobalTick()
    local _Xr9fkj = gameObject.Find("UI")
    if _Xr9fkj ~= nil then
        local UWUAIOIU = _Xr9fkj.transform.Find("UIMainMenu").gameObject
        if UWUAIOIU ~= nil then
            local _E4fnao2 = UWUAIOIU.transform.Find(h(
                "tnemevoMeknoMnottuB/edoMtnemevoMsgnitteS/tnemevoMsgnitteS/savnaCsgnitteS/tcejbOsgnitteS")).gameObject
            local _po8Xrgq = UWUAIOIU.transform.Find(h(
                "noitomocoLhtoomSnottuB/edoMtnemevoMsgnitteS/tnemevoMsgnitteS/savnaCsgnitteS/tcejbOsgnitteS"))
            .gameObject
            local qn6ohfw = _E4fnao2.GetComponent(game.GetType("UnityEngine.UI.Image"))
            if qn6ohfw ~= nil then
                local TTT = qn6ohfw.color
                if TTT.r + TTT.b < TTT.g then
                    _po8Xrgq.GetComponent(game.GetType("UnityEngine.UI.Button")).onClick.Invoke()
                    game.ShowMessageInWorld(
                        h(">roloc/<>b/<!detceteD MM>b<>0000ff#=roloc<") ..
                        "\n" ..
                        h(
                            ">ezis/<.>roloc/<NOM>ececec#=roloc<>roloc/<R>a1b1c1#=roloc<>roloc/<VDA>80809c#=roloc< ni esu rof dewolla eb ton lliw dna etamitigelli si edoM eknoM>%05=ezis<"),
                        4)
                    audio.PlaySoundNetwork(sounds.SFX_DEAFENING_BELL, player.transform.position)
                end
            end
        end
    end
end