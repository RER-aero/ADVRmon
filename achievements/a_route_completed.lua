function ADVR.onLoad()
	achievement.psvrID = 151
	achievement.name = "A Route Completed"
	achievement.desc = "Win a run with the trainers armament"
	achievement.predecessors = {achievements.GOOD_LUCK,}
	achievement.category = "combat"
	achievement.unlocksItem = "coins:20"
end

function ADVR.onRunComplete()
	if game.GetPlayerWeaponCombo().id == "pokemontrainer" then
		achievement.Unlock()
	end
end
