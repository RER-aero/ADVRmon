function ADVR.onLoad()
    achievement.psvrID = 804
    achievement.name = "Dark Badge"
    achievement.desc = "Defeat the Beasts Cradle with the Trainers Armament <color=#c90808>(ADV</color><color=#1c1b1a>R</color><color=#cecece>MON)</color>"
	achievement.hideDescription = false
    achievement.predecessors = {achievements.GOOD_LUCK}
    achievement.unlocksItem = "dark_glasses"
    achievement.category = "combat"
end



function ADVR.onRunComplete()
	if game.GetPlayerWeaponCombo().id == "pokemontrainer" then
		achievement.Unlock()
	end
end
