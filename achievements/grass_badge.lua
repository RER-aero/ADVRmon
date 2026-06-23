function ADVR.onLoad()
    achievement.psvrID = 800
    achievement.name = "Grass Badge"
    achievement.desc = "Defeat the Overgrown Gatehouse with the Trainers Armament <color=#c90808>(ADV</color><color=#1c1b1a>R</color><color=#cecece>MON)</color>"
	achievement.hideDescription = false
    achievement.predecessors = {achievements.GOOD_LUCK}
    achievement.unlocksItem = "miracle_seed"
    achievement.category = "combat"
end



function ADVR.onAfterBossAreaGenerated()
	if game.GetPlayerWeaponCombo().id == "pokemontrainer"  and game.currentFloor == dungeonFloor.OVERGROWN_GATEHOUSE then
		achievement.Unlock()
	end
end
