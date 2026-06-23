function ADVR.onLoad()
    achievement.psvrID = 801
    achievement.name = "Bug Badge"
    achievement.desc = "Defeat the Noxious Sewers with the Trainers Armament <color=#c90808>(ADV</color><color=#1c1b1a>R</color><color=#cecece>MON)</color>"
	achievement.hideDescription = false
    achievement.predecessors = {achievements.GOOD_LUCK}
    achievement.unlocksItem = "silver_powder"
    achievement.category = "combat"
end



function ADVR.onAfterBossAreaGenerated()
	if game.GetPlayerWeaponCombo().id == "pokemontrainer" and game.currentFloor == dungeonFloor.NOXIOUS_SEWERS then
		achievement.Unlock()
	end
end