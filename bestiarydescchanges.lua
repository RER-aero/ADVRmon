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
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_og_slime_bestiary_name", "Overgrown Slime <color=#26ce21>(Slime)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_og_slime_bullet_bestiary_name", "Overgrown Gob Slime <color=#26ce21>(Slime)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_og_plant_4x_bestiary_name", "Scarlet Bloom <color=#9ae560>(Plant)</color> ")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_og_wight_crawling_bestiary_name", "Overgrown Zombie Crawler <color=#59310b>(Undead)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_og_plant_homing_bestiary_name", "Violet Bloom <color=#9ae560>(Plant)</color> ")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_og_wight_bestiary_name", "Overgrown Zombie <color=#59310b>(Undead)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_og_wight_advanced_bestiary_name", "Overgrown Zombie Lunger <color=#59310b>(Undead)</color> <color=#150515>(Dark)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_og_slime_big_bestiary_name", "Overgrown Great Slime <color=#26ce21>(Slime)</color> <color=#150515>(Dark)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_og_bat_bestiary_name", "Overgrown Bat <color=#cce2ea>(Flying)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_og_slime_armored_bestiary_name", "Overgrown Armor Slime <color=#26ce21>(Slime)</color> <color=#707a80>(St</color><color=#9aaab4>ee</color><color=#b5c1c9>l)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_og_plant_rotten_bestiary_name", "Jade Bloom <color=#9ae560>(Plant)</color> <color=#880696>(Poison)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("abberrant_og_slime_bullet_bestiary_name", "Aberrant Gob Slime <color=#ff99ff>(Aberrant)</color> <color=#26ce21>(Slime)</color> <color=#59310b>(Undead)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("abberrant_og_plant_4x_bestiary_name", "Azure Bloom <color=#ff99ff>(Aberrant)</color> <color=#9ae560>(Plant)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("abberrant_og_bat_bestiary_name", "Overgrown Bounce Bat <color=#ff99ff>(Aberrant)</color> <color=#cce2ea>(Flying)</color> <color=#877e68>(Stone)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_bg_plant_rotten_bestiary_name", "Jade Bloom <color=#9ae560>(Plant)</color> <color=#880696>(Poison)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("poi_clarence_bestiary_name", "Clarence <color=#26ce21>(Slime)</color> ")

    
    -- ID
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_id_slime_bullet_bestiary_name", "Infested Gob Slime <color=#26ce21>(Slime)</color> <color=#9ae560>(Plant)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_id_slime_bestiary_name", "Infested Slime <color=#26ce21>(Slime)</color> <color=#880696>(Poison)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_id_maggot_bestiary_name", "Infested Grub <color=#880696>(Poison)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_id_mushroom_rotten_bestiary_name", "Infested Shroom <color=#9ae560>(Plant)</color> <color=#880696>(Poison)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_id_wight_bestiary_name", "Infested Zombie Lunger <color=#59310b>(Undead)</color> <color=#9ae560>(Plant)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_id_possessed_axe_bestiary_name", "Possessed Axe <color=#707a80>(St</color><color=#9aaab4>ee</color><color=#b5c1c9>l)</color> <color=#cce2ea>(Flying)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_id_exploding_maggot_bestiary_name", "Exploding Goo <color=#880696>(Poison)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("abberant_id_bat_bestiary_name", "Infested Bounce Bat <color=#ff99ff>(Aberrant)</color> <color=#cce2ea>(Flying)</color> <color=#877e68>(Stone)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_id_bat_bestiary_name", "Infested Bat <color=#cce2ea>(Flying)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("abberrant_id_slime_big_bestiary_name", "Infested Great Slime <color=#ff99ff>(Aberrant)</color> <color=#26ce21>(Slime)</color> <color=#150515>(Dark)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("abberrant_id_bat_bestiary_name", "Infested Bounce Bat <color=#ff99ff>(Aberrant)</color> <color=#cce2ea>(Flying)</color> <color=#880696>(Poison)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("abberrant_id_exploding_maggot_bestiary_name", "<color=#ff99ff>(Aberrant)</color> Infested Bomb Grub <color=#f95909>(Fire)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_id_goo_exploding_bestiary_name", "Exploding Goo <color=#880696>(Poison)</color> <color=#f95909>(Fire)</color>")

    
    -- FG
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_fg_book_bestiary_name", "Tome of Magic <color=#5450af>(Magic)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_fg_book_exploding_bestiary_name", "Tome of Sorcery <color=#5450af>(Magic)</color> <color=#f95909>(Fire)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_fg_elemental_magic_bestiary_name", "Forgotten Elemental <color=#36f9ec>(Crystal)</color> <color=#5450af>(Magic)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_fg_possessed_armor_bestiary_name", "Possessed Armor <color=#707a80>(St</color><color=#9aaab4>ee</color><color=#b5c1c9>l)</color> <color=#150515>(Dark)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_fg_slime_phase_bestiary_name", "Forgotten Zip Slime <color=#26ce21>(Slime)</color> <color=#36f9ec>(Crystal)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_fg_targeting_beam_bestiary_name", "Forgotten Prizm <color=#36f9ec>(Crystal)</color> <color=#5450af>(Magic)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_fg_wisp_bestiary_name", "Forgotten Wisp <color=#5450af>(Magic)</color> <color=#cce2ea>(Flying)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("abberrant_fg_book_bestiary_name", "<color=#ff99ff>(Aberrant)</color> Tome of Wizardry <color=#5450af>(Magic)</color> <color=#150515>(Dark)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("abberrant_fg_slime_phase_bestiary_name", "<color=#ff99ff>(Aberrant)</color> Orange Zip Slime <color=#26ce21>(Slime)</color> <color=#f95909>(Fire)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("abberrant_fg_wisp_bestiary_name", "<color=#ff99ff>(Aberrant)</color> Purple Wisp <color=#5450af>(Magic)</color> <color=#f95909>(Fire)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("poi_arcane_rift_bestiary_name", "Arcane Rift <color=#5450af>(Magic)</color>")

    -- Special
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_slime_golden_bestiary_name", "<color=#d4af37>(Special)</color> Golden Slime <color=#26ce21>(Slime)</color> <color=#707a80>(St</color><color=#9aaab4>ee</color><color=#b5c1c9>l)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_chest_mimic_bestiary_name", "Mimic <color=#150515>(Dark)</color> <color=#877e68>(Stone)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_invincibility_tome_bestiary_name", "Invincibility Tome <color=#5450af>(Magic)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_bc_skull_darkness_bestiary_name", "Skull of Darkness <color=#59310b>(Undead)</color> <color=#150515>(Dark)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_corrupted_shopkeeper_bestiary_name", "The Shopkeeper <color=#150515>(Dark)</color> <color=#5450af>(Magic)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_shopkeeper_corrupted_mask_bestiary_name", "Possesed Mask <color=#150515>(Dark)</color> <color=#cce2ea>(Flying)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_challenge_ghost_bestiary_name", "<color=#d4af37>(Special)</color> Restless Soul <color=#59310b>(Undead)</color> <color=#5450af>(Magic)</color>" )
    -- BOSS
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("boss_deranged_adventurer_bestiary_name", "Deranged Adventurer <color=#ff0000>(Boss)</color> <color=#150515>(Dark)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("boss_king_slime_bestiary_name", "King Slime <color=#ff0000>(Boss)</color> <color=#26ce21>(Slime)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("boss_doomshroom_bestiary_name", "Doomshroom <color=#ff0000>(Boss)</color> <color=#880696>(Poison)</color> <color=#9ae560>(Plant)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("boss_rabid_bestiary_bestiary_name", "<color=#ff0000>(Boss)</color> Rabid Pokedex <color=#5450af>(Magic)</color> <color=#150515>(Dark)</color>")


    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("boss_fly_hive_bestiary_name", "<color=#ff0000>(Boss)</color> The Swarm <color=#cce2ea>(Flying)</color> <color=#880696>(Poison)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("boss_the_beast_stage3_bestiary_name", "<color=#ff0000>(Boss)</color> The Beast <color=#150515>(Dark)</color>")
    -- NS
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ns_fly_bestiary_name", "Fly <color=#cce2ea>(Flying)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ns_fly_hive_bestiary_name", "Fly Hive <color=#150515>(Dark)</color> <color=#cce2ea>(Flying)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ns_maggot_bestiary_name", "Noxious Grub <color=#880696>(Poison)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ns_slime_bestiary_name", "Noxious Puddle Slime <color=#26ce21>(Slime)</color> <color=#880696>(Poison)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ns_slime_rotten_bestiary_name", "Noxious Slime <color=#880696>(Poison)</color> <color=#26ce21>(Slime)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ns_slime_tiny_bestiary_name", "Noxious Smol Slime <color=#26ce21>(Slime)</color> <color=#880696>(Poison)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ns_poison_spitter_bestiary_name", "Noxious Spout <color=#880696>(Poison)</color> <color=#9ae560>(Plant)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ns_wight_drowned_bestiary_name", "Noxious Drowned Zombie <color=#59310b>(Undead)</color> <color=#880696>(Poison)</color>")
        game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_poi_poison_sentry_bestiary_name", "Noxious Sprig <color=#880696>(Poison)</color> <color=#9ae560>(Plant)</color>")

    -- LD
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ld_plant_crystal_bestiary_name", "Luminous Bloom <color=#36f9ec>(Crystal)</color> <color=#9ae560>(Plant)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ld_sentryplant_bestiary_name", "Luminous Blossom <color=#9ae560>(Plant)</color> <color=#36f9ec>(Crystal)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ld_crystal_elemental_bestiary_name", "Luminous Elemental <color=#36f9ec>(Crystal)</color> <color=#877e68>(Stone)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ld_slime_crystal_bestiary_name", "Luminous Glob Burster <color=#26ce21>(Slime)</color> <color=#36f9ec>(Crystal)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ld_fat_crystal_slime_bestiary_name", "Luminous Great Slime <color=#36f9ec>(Crystal)</color> <color=#26ce21>(Slime)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ld_skeleton_bestiary_name", "Luminous Skeleton <color=#59310b>(Undead)</color> <color=#36f9ec>(Crystal)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ld_possessed_skull_bestiary_name", "Luminous Skull <color=#59310b>(Undead)</color> <color=#36f9ec>(Crystal)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_ld_rotatingbeam_bestiary_name", "Luminous Prizm <color=#36f9ec>(Crystal)</color> <color=#5450af>(Magic)</color>")
    -- GM
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_gm_rock_elemental_bestiary_name", "Gloaming Elemental <color=#877e68>(Stone)</color> <color=#5450af>(Magic)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_gm_slime_bone_bestiary_name", "Gloaming Glob Burster <color=#26ce21>(Slime)</color> <color=#877e68>(Stone)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_gm_slime_stone_bestiary_name", "Gloaming Glob Spiker <color=#877e68>(Stone)</color> <color=#150515>(Dark)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_gm_skeleton_bestiary_name", "Gloaming Skeleton <color=#59310b>(Undead)</color> <color=#150515>(Dark)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_gm_skeleton_miner_bestiary_name", "Gloaming Skeleton Miner <color=#59310b>(Undead)</color> <color=#707a80>(St</color><color=#9aaab4>ee</color><color=#b5c1c9>l)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_gm_possessed_skull_bestiary_name", "Gloaming Skull <color=#59310b>(Undead)</color> <color=#150515>(Dark)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("enemy_gm_sentryplant_bestiary_name", "Gloaming Sprig <color=#9ae560>(Plant)</color> <color=#150515>(Dark)</color>")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("boss_elder_skeleton_bestiary_name", "<color=#ff0000>(Boss)</color> Elder Skeleton <color=#59310b>(Undead)</color> <color=#877e68>(Stone)</color>")

--lols
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("arena_preparation_ui_unlock_message", "Complete more Pokedex entries to unlock...")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("achievement_grand_hunt_desc", "Complete the Pokedex.")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("achievement_the_bestiary_name", "The Pokedex")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("achievement_the_bestiary_desc", "Help the Acolyte fill in the Pokedex and discover 35 unique creatures.")
    game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("boss_Rabid Bestiary", "Rabid Pokedex")
     if math.random() <= .05 or game.progressHandler.GetProgressById("shiny_charm") then
        game.localizationInterpreter.currentlySelectedLanguage.SetTranslation("poi_clarence_bestiary_name", "Clarence <color=#26ce21>(Slime)</color> <color=#e058e8>(Cutie patootie)</color> ")
    end
end

-- the types are as follows, slime, undead, poison, plant, magic, stone, crystal, dark, flying, fire, steel

-- slime: #26ce21
-- undead: #59310b
-- poison: #880696
-- plant: #9ae560
-- magic: #5450af and maybe #7277F1
-- stone: #877e68
-- crystal: #36f9ec
-- dark: #15051
-- flying: #cce2ea
-- fire: #f95909
--Steel: #707a80 #9aaab4 #b5c1c9 <color=#707a80>(St</color><color=#9aaab4>ee</color><color=#b5c1c9>l)</color>


























































































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
