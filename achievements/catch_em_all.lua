function ADVR.onLoad()
	achievement.psvrID = 154
	achievement.name = "Catch Em All"
	achievement.desc = "Catch 20 enemies in a single run <color=#c90808>(ADV</color><color=#1c1b1a>R</color><color=#cecece>MON)</color>"
	achievement.predecessors = {achievements.GOOD_LUCK,}
	achievement.category = "combat"
	achievement.unlocksItem = "iron"
end

function ADVR.onRunComplete()
	if game.LoadInt("HighScorePokemonCaught", 0) >= 20 then
		achievement.Unlock()
	end
end

