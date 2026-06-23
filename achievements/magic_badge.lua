function ADVR.onLoad()
    achievement.psvrID = 802
    achievement.name = "Magic Badge"
    achievement.desc = "Defeat the Forgotten Library with the Trainers Armament <color=#c90808>(ADV</color><color=#1c1b1a>R</color><color=#cecece>MON)</color>"
	achievement.hideDescription = false
    achievement.predecessors = {achievements.GOOD_LUCK}
    achievement.unlocksItem = "old_spellbook"
    achievement.category = "combat"
end



function ADVR.onAfterBossAreaGenerated()
	if game.GetPlayerWeaponCombo().id == "pokemontrainer" and game.currentFloor == dungeonFloor.FORGOTTEN_LIBRARY then
		achievement.Unlock()
	end
end