function ADVR.onLoad()
    achievement.psvrID = 806
    achievement.name = "Crystal Badge"
    achievement.desc = "Defeat the Luminous Depths with the Trainers Armament <color=#c90808>(ADV</color><color=#1c1b1a>R</color><color=#cecece>MON)</color>"
	achievement.hideDescription = false
    achievement.predecessors = {achievements.GOOD_LUCK}
    achievement.unlocksItem = "blue_quartz"
    achievement.category = "combat"
end



function ADVR.onAfterBossAreaGenerated()
	if game.GetPlayerWeaponCombo().id == "pokemontrainer" and game.currentFloor == dungeonFloor.LUMINOUS_DEPTHS then
		achievement.Unlock()
	end
end
