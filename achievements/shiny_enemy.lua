function ADVR.onLoad()
	achievement.psvrID = 999
    achievement.name = "That one sparkles!"
	achievement.desc = "Find and catch a shiny enemy <color=#c90808>(ADV</color><color=#1c1b1a>R</color><color=#cecece>MON)</color>"
	achievement.hideDescription = false
	achievement.unlocksItem = "metal_coat"
	achievement.predecessors = {achievements.GOOD_LUCK}
	achievement.category = "exploration"
  
end

function ADVR.onPlayerDeath(playerLiving)
	if game.LoadBool("CaughtShiny", false) == true then
		achievement.Unlock()
	end
end

function ADVR.onRunComplete()
	if game.LoadBool("CaughtShiny", false) == true then
		achievement.Unlock()
	end
end