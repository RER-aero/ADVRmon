function ADVR.onLoad()
    achievement.psvrID = 803
    achievement.name = "Poison Badge"
    achievement.desc = "Defeat the Infested Dungeon with the Trainers Armament <color=#c90808>(ADV</color><color=#1c1b1a>R</color><color=#cecece>MON)</color>"
	achievement.hideDescription = false
    achievement.predecessors = {achievements.GOOD_LUCK}
    achievement.unlocksItem = "poison_barb"
    achievement.category = "combat"
end



function ADVR.onAfterBossAreaGenerated()
	if game.GetPlayerWeaponCombo().id == "pokemontrainer"  and game.currentFloor == dungeonFloor.INFESTED_DUNGEON then
		achievement.Unlock()
	end
end
