function ADVR.onLoad()
    achievement.psvrID = 160
    achievement.name = "One After Another"
    achievement.desc = "Catch 5 enemies in a row without failing a catch<color=#c90808>(ADV</color><color=#1c1b1a>R</color><color=#cecece>MON)</color>"
    achievement.predecessors = { achievements.GOOD_LUCK, }
    achievement.category = "combat"
    achievement.unlocksItem = "choice_band"
end

function ADVR.onPlayerDeathOrRunComplete()
    if Streak() then
        achievement.Unlock()
    end
end

function Streak()
    return game.LoadInt("HighestStreak", 0) >= 5
end
