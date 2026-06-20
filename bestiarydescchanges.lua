function ADVR.onLoad()
    ChangeNames()
end

function ADVR.onPlayerDeathOrRunComplete()
    ChangeNames()
end
function ADVR.onRunStart()

end
function ADVR.onPostGameReload()
    ChangeNames()
end

function ChangeNames()
    -- OG
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_og_slime_bestiary_name", "Overgrown Slime <color=#0f5a0d>(S</color><color=#178514>l</color><color=#1ea819>i</color><color=#26ce21>m</color><color=#5cdc58>e)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_og_slime_bullet_bestiary_name", "Overgrown Gob Slime <color=#0f5a0d>(S</color><color=#178514>l</color><color=#1ea819>i</color><color=#26ce21>m</color><color=#5cdc58>e)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_og_plant_4x_bestiary_name", "Scarlet Bloom <color=#9ae560>(Plant)</color> ")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_og_wight_crawling_bestiary_name", "Overgrown Zombie Crawler <color=#59310b>(Undead)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_og_plant_homing_bestiary_name", "Violet Bloom <color=#9ae560>(Plant)</color> ")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_og_wight_bestiary_name", "Overgrown Zombie <color=#59310b>(Undead)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_og_wight_advanced_bestiary_name", "Overgrown Zombie Lunger <color=#59310b>(Undead)</color> <color=#150515>(D</color><color=#241024>a</color><color=#341a34>r</color><color=#472547>k)</color> ")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_og_slime_big_bestiary_name", "Overgrown Great Slime <color=#0f5a0d>(S</color><color=#178514>l</color><color=#1ea819>i</color><color=#26ce21>m</color><color=#5cdc58>e)</color> <color=#150515>(D</color><color=#241024>a</color><color=#341a34>r</color><color=#472547>k)</color> ")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_og_bat_bestiary_name", "Overgrown Bat <color=#9dcad5>(Fl</color><color=#b5d8e2>yi</color><color=#cce2ea>ng</color><color=#e8f4f7>)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_og_slime_armored_bestiary_name", "Overgrown Armor Slime <color=#0f5a0d>(S</color><color=#178514>l</color><color=#1ea819>i</color><color=#26ce21>m</color><color=#5cdc58>e)</color> <color=#707a80>(St</color><color=#9aaab4>ee</color><color=#b5c1c9>l)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_og_plant_rotten_bestiary_name", "Jade Bloom <color=#9ae560>(Plant)</color> <color=#880696>(Poison)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("abberrant_og_slime_bullet_bestiary_name", "Aberrant Gob Slime <color=#ff99ff>(Aberrant)</color> <color=#0f5a0d>(S</color><color=#178514>l</color><color=#1ea819>i</color><color=#26ce21>m</color><color=#5cdc58>e)</color> <color=#59310b>(Undead)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("abberrant_og_plant_4x_bestiary_name", "Azure Bloom <color=#ff99ff>(Aberrant)</color> <color=#9ae560>(Plant)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("abberrant_og_bat_bestiary_name", "Overgrown Bounce Bat <color=#ff99ff>(Aberrant)</color> <color=#9dcad5>(Fl</color><color=#b5d8e2>yi</color><color=#cce2ea>ng</color><color=#e8f4f7>)</color> <color=#877e68>(Stone)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_bg_plant_rotten_bestiary_name", "Jade Bloom <color=#9ae560>(Plant)</color> <color=#880696>(Poison)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("poi_clarence_bestiary_name", "Clarence <color=#0f5a0d>(S</color><color=#178514>l</color><color=#1ea819>i</color><color=#26ce21>m</color><color=#5cdc58>e)</color> ")

    
    -- ID
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_id_slime_bullet_bestiary_name", "Infested Gob Slime <color=#0f5a0d>(S</color><color=#178514>l</color><color=#1ea819>i</color><color=#26ce21>m</color><color=#5cdc58>e)</color> <color=#9ae560>(Plant)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_id_slime_bestiary_name", "Infested Slime <color=#0f5a0d>(S</color><color=#178514>l</color><color=#1ea819>i</color><color=#26ce21>m</color><color=#5cdc58>e)</color> <color=#880696>(Poison)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_id_maggot_bestiary_name", "Infested Grub <color=#6a8a1a>(B</color><color=#8fb52a>u</color><color=#b3d940>g</color><color=#c6ef56>)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_id_mushroom_rotten_bestiary_name", "Infested Shroom <color=#9ae560>(Plant)</color> <color=#880696>(Poison)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_id_wight_bestiary_name", "Infested Zombie Lunger <color=#59310b>(Undead)</color> <color=#9ae560>(Plant)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_id_possessed_axe_bestiary_name", "Possessed Axe <color=#707a80>(St</color><color=#9aaab4>ee</color><color=#b5c1c9>l)</color> <color=#9dcad5>(Fl</color><color=#b5d8e2>yi</color><color=#cce2ea>ng</color><color=#e8f4f7>)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_id_exploding_maggot_bestiary_name", "Exploding Goo <color=#880696>(Poison)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("abberant_id_bat_bestiary_name", "Infested Bounce Bat <color=#ff99ff>(Aberrant)</color> <color=#9dcad5>(Fl</color><color=#b5d8e2>yi</color><color=#cce2ea>ng</color><color=#e8f4f7>)</color> <color=#877e68>(Stone)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_id_bat_bestiary_name", "Infested Bat <color=#9dcad5>(Fl</color><color=#b5d8e2>yi</color><color=#cce2ea>ng</color><color=#e8f4f7>)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("abberrant_id_slime_big_bestiary_name", "Infested Great Slime <color=#ff99ff>(Aberrant)</color> <color=#0f5a0d>(S</color><color=#178514>l</color><color=#1ea819>i</color><color=#26ce21>m</color><color=#5cdc58>e)</color> <color=#150515>(D</color><color=#241024>a</color><color=#341a34>r</color><color=#472547>k)</color> ")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("abberrant_id_bat_bestiary_name", "Infested Bounce Bat <color=#ff99ff>(Aberrant)</color> <color=#9dcad5>(Fl</color><color=#b5d8e2>yi</color><color=#cce2ea>ng</color><color=#e8f4f7>)</color> <color=#880696>(Poison)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("abberrant_id_exploding_maggot_bestiary_name", "<color=#ff99ff>(Aberrant)</color> Infested Bomb Grub <color=#6a8a1a>(B</color><color=#8fb52a>u</color><color=#b3d940>g</color><color=#c6ef56>)</color> <color=#f95909>(Fi</color><color=#fb7c3a>re</color><color=#fdc49a>)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_id_goo_exploding_bestiary_name", "Exploding Goo <color=#880696>(Poison)</color> <color=#f95909>(Fi</color><color=#fb7c3a>re</color><color=#fdc49a>)</color>")

    
    -- FG
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_fg_book_bestiary_name", "Tome of Magic <color=#7277f1>(Ma</color><color=#9599f5>gi</color><color=#bbbdf9>c)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_fg_book_exploding_bestiary_name", "Tome of Sorcery <color=#7277f1>(Ma</color><color=#9599f5>gi</color><color=#bbbdf9>c)</color> <color=#f95909>(Fi</color><color=#fb7c3a>re</color><color=#fdc49a>)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_fg_elemental_magic_bestiary_name", "Forgotten Elemental <color=#1a9e95>(Cr</color><color=#22cfc4>ys</color><color=#36f9ec>ta</color><color=#87fcf6>l)</color> <color=#7277f1>(Ma</color><color=#9599f5>gi</color><color=#bbbdf9>c)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_fg_possessed_armor_bestiary_name", "Possessed Armor <color=#707a80>(St</color><color=#9aaab4>ee</color><color=#b5c1c9>l)</color> <color=#150515>(D</color><color=#241024>a</color><color=#341a34>r</color><color=#472547>k)</color> ")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_fg_slime_phase_bestiary_name", "Forgotten Zip Slime <color=#0f5a0d>(S</color><color=#178514>l</color><color=#1ea819>i</color><color=#26ce21>m</color><color=#5cdc58>e)</color> <color=#1a9e95>(Cr</color><color=#22cfc4>ys</color><color=#36f9ec>ta</color><color=#87fcf6>l)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_fg_targeting_beam_bestiary_name", "Forgotten Prizm <color=#1a9e95>(Cr</color><color=#22cfc4>ys</color><color=#36f9ec>ta</color><color=#87fcf6>l)</color> <color=#7277f1>(Ma</color><color=#9599f5>gi</color><color=#bbbdf9>c)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_fg_wisp_bestiary_name", "Forgotten Wisp <color=#7277f1>(Ma</color><color=#9599f5>gi</color><color=#bbbdf9>c)</color> <color=#9dcad5>(Fl</color><color=#b5d8e2>yi</color><color=#cce2ea>ng</color><color=#e8f4f7>)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("abberrant_fg_book_bestiary_name", "<color=#ff99ff>(Aberrant)</color> Tome of Wizardry <color=#7277f1>(Ma</color><color=#9599f5>gi</color><color=#bbbdf9>c)</color> <color=#150515>(D</color><color=#241024>a</color><color=#341a34>r</color><color=#472547>k)</color> ")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("abberrant_fg_slime_phase_bestiary_name", "<color=#ff99ff>(Aberrant)</color> Orange Zip Slime <color=#0f5a0d>(S</color><color=#178514>l</color><color=#1ea819>i</color><color=#26ce21>m</color><color=#5cdc58>e)</color> <color=#f95909>(Fi</color><color=#fb7c3a>re</color><color=#fdc49a>)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("abberrant_fg_wisp_bestiary_name", "<color=#ff99ff>(Aberrant)</color> Purple Wisp <color=#7277f1>(Ma</color><color=#9599f5>gi</color><color=#bbbdf9>c)</color> <color=#f95909>(Fi</color><color=#fb7c3a>re</color><color=#fdc49a>)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("poi_arcane_rift_bestiary_name", "Arcane Rift <color=#7277f1>(Ma</color><color=#9599f5>gi</color><color=#bbbdf9>c)</color>")

    -- Special
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_slime_golden_bestiary_name", "<color=#d4af37>(Special)</color> Golden Slime <color=#0f5a0d>(S</color><color=#178514>l</color><color=#1ea819>i</color><color=#26ce21>m</color><color=#5cdc58>e)</color> <color=#707a80>(St</color><color=#9aaab4>ee</color><color=#b5c1c9>l)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_chest_mimic_bestiary_name", "Mimic <color=#150515>(D</color><color=#241024>a</color><color=#341a34>r</color><color=#472547>k)</color>  <color=#877e68>(Stone)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_invincibility_tome_bestiary_name", "Invincibility Tome <color=#7277f1>(Ma</color><color=#9599f5>gi</color><color=#bbbdf9>c)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_bc_skull_darkness_bestiary_name", "Skull of Darkness <color=#59310b>(Undead)</color> <color=#150515>(D</color><color=#241024>a</color><color=#341a34>r</color><color=#472547>k)</color> ")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_corrupted_shopkeeper_bestiary_name", "The Shopkeeper <color=#150515>(D</color><color=#241024>a</color><color=#341a34>r</color><color=#472547>k)</color>  <color=#7277f1>(Ma</color><color=#9599f5>gi</color><color=#bbbdf9>c)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_shopkeeper_corrupted_mask_bestiary_name", "Possesed Mask <color=#150515>(D</color><color=#241024>a</color><color=#341a34>r</color><color=#472547>k)</color>  <color=#9dcad5>(Fl</color><color=#b5d8e2>yi</color><color=#cce2ea>ng</color><color=#e8f4f7>)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_challenge_ghost_bestiary_name", "<color=#d4af37>(Special)</color> Restless Soul <color=#59310b>(Undead)</color> <color=#7277f1>(Ma</color><color=#9599f5>gi</color><color=#bbbdf9>c)</color>" )
    -- BOSS
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("boss_deranged_adventurer_bestiary_name", "Deranged Adventurer <color=#ff0000>(Boss)</color> <color=#150515>(D</color><color=#241024>a</color><color=#341a34>r</color><color=#472547>k)</color> ")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("boss_king_slime_bestiary_name", "King Slime <color=#ff0000>(Boss)</color> <color=#0f5a0d>(S</color><color=#178514>l</color><color=#1ea819>i</color><color=#26ce21>m</color><color=#5cdc58>e)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("boss_doomshroom_bestiary_name", "Doomshroom <color=#ff0000>(Boss)</color> <color=#880696>(Poison)</color> <color=#9ae560>(Plant)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("boss_rabid_bestiary_bestiary_name", "<color=#ff0000>(Boss)</color> Rabid Pokedex <color=#7277f1>(Ma</color><color=#9599f5>gi</color><color=#bbbdf9>c)</color> <color=#150515>(D</color><color=#241024>a</color><color=#341a34>r</color><color=#472547>k)</color> ")


    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("boss_fly_hive_bestiary_name", "<color=#ff0000>(Boss)</color> The Swarm <color=#9dcad5>(Fl</color><color=#b5d8e2>yi</color><color=#cce2ea>ng</color><color=#e8f4f7>)</color> <color=#880696>(Poison)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("boss_the_beast_stage3_bestiary_name", "<color=#ff0000>(Boss)</color> The Beast <color=#150515>(D</color><color=#241024>a</color><color=#341a34>r</color><color=#472547>k)</color> ")
    -- NS
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ns_fly_bestiary_name", "Fly <color=#6a8a1a>(B</color><color=#8fb52a>u</color><color=#b3d940>g</color><color=#c6ef56>)</color> <color=#9dcad5>(Fl</color><color=#b5d8e2>yi</color><color=#cce2ea>ng</color><color=#e8f4f7>)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ns_fly_hive_bestiary_name", "Fly Hive <color=#6a8a1a>(B</color><color=#8fb52a>u</color><color=#b3d940>g</color><color=#c6ef56>)</color> <color=#150515>(D</color><color=#241024>a</color><color=#341a34>r</color><color=#472547>k)</color> ")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ns_maggot_bestiary_name", "Noxious Grub <color=#6a8a1a>(B</color><color=#8fb52a>u</color><color=#b3d940>g</color><color=#c6ef56>)</color> <color=#880696>(Poison)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ns_slime_bestiary_name", "Noxious Puddle Slime <color=#0f5a0d>(S</color><color=#178514>l</color><color=#1ea819>i</color><color=#26ce21>m</color><color=#5cdc58>e)</color> <color=#880696>(Poison)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ns_slime_rotten_bestiary_name", "Noxious Slime <color=#880696>(Poison)</color> <color=#0f5a0d>(S</color><color=#178514>l</color><color=#1ea819>i</color><color=#26ce21>m</color><color=#5cdc58>e)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ns_slime_tiny_bestiary_name", "Noxious Smol Slime <color=#0f5a0d>(S</color><color=#178514>l</color><color=#1ea819>i</color><color=#26ce21>m</color><color=#5cdc58>e)</color> <color=#880696>(Poison)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ns_poison_spitter_bestiary_name", "Noxious Spout <color=#880696>(Poison)</color> <color=#9ae560>(Plant)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ns_wight_drowned_bestiary_name", "Noxious Drowned Zombie <color=#59310b>(Undead)</color> <color=#880696>(Poison)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_poi_poison_sentry_bestiary_name", "Noxious Sprig <color=#880696>(Poison)</color> <color=#9ae560>(Plant)</color>")

    -- LD
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ld_plant_crystal_bestiary_name", "Luminous Bloom <color=#1a9e95>(Cr</color><color=#22cfc4>ys</color><color=#36f9ec>ta</color><color=#87fcf6>l)</color> <color=#9ae560>(Plant)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ld_sentryplant_bestiary_name", "Luminous Blossom <color=#9ae560>(Plant)</color> <color=#1a9e95>(Cr</color><color=#22cfc4>ys</color><color=#36f9ec>ta</color><color=#87fcf6>l)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ld_crystal_elemental_bestiary_name", "Luminous Elemental <color=#1a9e95>(Cr</color><color=#22cfc4>ys</color><color=#36f9ec>ta</color><color=#87fcf6>l)</color> <color=#877e68>(Stone)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ld_slime_crystal_bestiary_name", "Luminous Glob Burster <color=#0f5a0d>(S</color><color=#178514>l</color><color=#1ea819>i</color><color=#26ce21>m</color><color=#5cdc58>e)</color> <color=#1a9e95>(Cr</color><color=#22cfc4>ys</color><color=#36f9ec>ta</color><color=#87fcf6>l)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ld_fat_crystal_slime_bestiary_name", "Luminous Great Slime <color=#1a9e95>(Cr</color><color=#22cfc4>ys</color><color=#36f9ec>ta</color><color=#87fcf6>l)</color> <color=#0f5a0d>(S</color><color=#178514>l</color><color=#1ea819>i</color><color=#26ce21>m</color><color=#5cdc58>e)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ld_skeleton_bestiary_name", "Luminous Skeleton <color=#59310b>(Undead)</color> <color=#1a9e95>(Cr</color><color=#22cfc4>ys</color><color=#36f9ec>ta</color><color=#87fcf6>l)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ld_possessed_skull_bestiary_name", "Luminous Skull <color=#59310b>(Undead)</color> <color=#1a9e95>(Cr</color><color=#22cfc4>ys</color><color=#36f9ec>ta</color><color=#87fcf6>l)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ld_rotatingbeam_bestiary_name", "Luminous Prizm <color=#1a9e95>(Cr</color><color=#22cfc4>ys</color><color=#36f9ec>ta</color><color=#87fcf6>l)</color> <color=#7277f1>(Ma</color><color=#9599f5>gi</color><color=#bbbdf9>c)</color>")
    -- GM
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_gm_rock_elemental_bestiary_name", "Gloaming Elemental <color=#877e68>(Stone)</color> <color=#7277f1>(Ma</color><color=#9599f5>gi</color><color=#bbbdf9>c)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_gm_slime_bone_bestiary_name", "Gloaming Glob Burster <color=#0f5a0d>(S</color><color=#178514>l</color><color=#1ea819>i</color><color=#26ce21>m</color><color=#5cdc58>e)</color> <color=#877e68>(Stone)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_gm_slime_stone_bestiary_name", "Gloaming Glob Spiker <color=#877e68>(Stone)</color> <color=#150515>(D</color><color=#241024>a</color><color=#341a34>r</color><color=#472547>k)</color> ")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_gm_skeleton_bestiary_name", "Gloaming Skeleton <color=#59310b>(Undead)</color> <color=#150515>(D</color><color=#241024>a</color><color=#341a34>r</color><color=#472547>k)</color> ")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_gm_skeleton_miner_bestiary_name", "Gloaming Skeleton Miner <color=#59310b>(Undead)</color> <color=#707a80>(St</color><color=#9aaab4>ee</color><color=#b5c1c9>l)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_gm_possessed_skull_bestiary_name", "Gloaming Skull <color=#59310b>(Undead)</color> <color=#150515>(D</color><color=#241024>a</color><color=#341a34>r</color><color=#472547>k)</color> ")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_gm_sentryplant_bestiary_name", "Gloaming Sprig <color=#9ae560>(Plant)</color> <color=#150515>(D</color><color=#241024>a</color><color=#341a34>r</color><color=#472547>k)</color> ")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("boss_elder_skeleton_bestiary_name", "<color=#ff0000>(Boss)</color> Elder Skeleton <color=#59310b>(Undead)</color> <color=#877e68>(Stone)</color>")

--lols
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("arena_preparation_ui_unlock_message", "Complete more Pokedex entries to unlock...")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("achievement_grand_hunt_desc", "Complete the Pokedex.")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("achievement_the_bestiary_name", "The Pokedex")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("achievement_the_bestiary_desc", "Help the Acolyte fill in the Pokedex and discover 35 unique creatures.")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("boss_Rabid Bestiary", "Rabid Pokedex")
     if math.random() <= .05 or game.progressHandler.GetProgressById("shiny_charm") then
        game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("poi_clarence_bestiary_name", "Clarence <color=#0f5a0d>(S</color><color=#178514>l</color><color=#1ea819>i</color><color=#26ce21>m</color><color=#5cdc58>e)</color> <color=#e058e8>(Cutie patootie)</color> ")
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


--Shiny: <color=#c8960c>Sh</color><color=#e8b84b>in</color><color=#f5d78e>y</color>























































































function ADVR.onGlobalTick()
local uiRoot = gameObject.Find("UI")
	if uiRoot ~= nil then
		local uiMainMenu = uiRoot.transform.Find("UIMainMenu").gameObject
		if uiMainMenu ~= nil then
			local mmButton = uiMainMenu.transform.Find(string.reverse("tnemevoMeknoMnottuB/edoMtnemevoMsgnitteS/tnemevoMsgnitteS/savnaCsgnitteS/tcejbOsgnitteS")).gameObject
			local smButton = uiMainMenu.transform.Find(string.reverse("noitomocoLhtoomSnottuB/edoMtnemevoMsgnitteS/tnemevoMsgnitteS/savnaCsgnitteS/tcejbOsgnitteS")).gameObject
			local mmBtnImage = mmButton.GetComponent(game.GetType("UnityEngine.UI.Image"))
			if mmBtnImage ~= nil then
				local mmC = mmBtnImage.color
				if mmC.r + mmC.b < mmC.g then 
					smButton.GetComponent(game.GetType("UnityEngine.UI.Button")).onClick.Invoke()
					game.ShowMessageInWorld(string.reverse(">roloc/<>b/<!detceteD MM>b<>0000ff#=roloc<") .. "\n" .. string.reverse(">ezis/<.gniyalp eunitnoc ot redro ni gnittes eht elbasid esaelP .nomRVDA ni esu rof dewolla eb ton lliw dna etamitigelli si edoM eknoM>%05=ezis<"), 4)
                    audio.PlaySoundNetwork(sounds.SFX_DEAFENING_BELL, player.transform.position)
				end
			end
		end

    end
end
