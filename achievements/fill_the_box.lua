function ADVR.onLoad()
	achievement.psvrID = 152
	achievement.name = "Fill the box"
	achievement.desc = "Catch 30 Pokemon <color=#c90808>(ADV</color><color=#1c1b1a>R</color><color=#cecece>MON)</color>"
	achievement.predecessors = {achievements.GOOD_LUCK,}
	achievement.category = "exploration"
	achievement.unlocksItem = "max_repel"
    achievement.showProgressBar = true
end

function ADVR.onRunComplete()
	local caught = game.LoadInt("pokemoncaught", 0)
    if caught > 29 then
		achievement.Unlock()
	end
end

function ADVR.onPlayerDeathOrRunComplete()
	local caught = game.LoadInt("pokemoncaught", 0)
    if caught > 29 then
		achievement.Unlock()
	end
end
function GetProgressInfo()
    local collected = game.LoadInt("pokemoncaught", 0)

    return collected, 30
end