function ADVR.onLoad()
	achievement.psvrID = 252
	achievement.name = "A Region Conquered"
	achievement.desc = "Win a run with the trainers armament in hard mode (2.0x) <color=#c90808>(ADV</color><color=#1c1b1a>R</color><color=#cecece>MON)</color>"
	achievement.predecessors = {achievements.GOOD_LUCK}
	achievement.category = "combat"
	achievement.unlocksItem = "super_repel"
end

function ADVR.onRunComplete()
	if game.GetPlayerWeaponCombo().id == "pokemontrainer"  and player.inHardMode == true and player.GetDifficultyMultiplier() >= 2.0 then
		achievement.Unlock()
	end
end
