function ADVR.onLoad()
	achievement.psvrID = 252
	achievement.name = "A Region Conquered"
	achievement.desc = "Win a run with the trainers armament in hard mode (2.0x)"
	achievement.predecessors = {achievements.GOOD_LUCK}
	achievement.category = "combat"
	achievement.unlocksItem = "coins:50"
end

function ADVR.onRunComplete()
	if game.GetPlayerWeaponCombo().id == "pokemontrainer"  and player.inHardMode == true and player.GetDifficultyMultiplier() >= 2.0 then
		achievement.Unlock()
	end
end
