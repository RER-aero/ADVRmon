function ADVR.onLoad()
	achievement.psvrID = 151
	achievement.name = "A Route Completed"
	achievement.desc = "Win a run with the trainers armament <color=#c90808>(ADV</color><color=#1c1b1a>R</color><color=#cecece>MON)</color>"
	achievement.predecessors = {achievements.GOOD_LUCK,}
	achievement.category = "combat"
	achievement.unlocksItem = "max_potion"
end

function ADVR.onRunComplete()
	if game.GetPlayerWeaponCombo().id == "pokemontrainer" then
		achievement.Unlock()
	end
end
