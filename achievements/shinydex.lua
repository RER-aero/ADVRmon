function ADVR.onLoad()
    achievement.psvrID = 501
    achievement.name = "<color=#c8960c>Sh</color><color=#e8b84b>in</color><color=#f5d78e>y</color> Pokedex Completed"
    achievement.desc = "Catch the <color=#c8960c>Sh</color><color=#e8b84b>in</color><color=#f5d78e>y</color> variant of every catchable enemy. <color=#c90808>(ADV</color><color=#1c1b1a>R</color><color=#cecece>MON)</color>"
	achievement.hideDescription = false
    achievement.predecessors = {achievements.GOOD_LUCK}
    achievement.showProgressBar = true
    achievement.category = "exploration"
    achievement.unlocksItem = "gold:100"
end


function ADVR.onSpawnInHomeBase()
    if HasCaughtEveything() == true then
        achievement.Unlock()
    end
end

function HasCaughtEveything()
   local list = GetList("EnemiesShinyCaught")

    return #list >= 76 - 7
end
function GetProgressInfo()
    local collected = GetList("EnemiesShinyCaught")

    return #collected, 76 - 7
end

function GetList(key)
    local raw = game.LoadString(key, "")
    if raw == "" or raw == nil then return {} end
    local list = {}
    for entry in raw:gmatch("[^,]+") do
        table.insert(list, entry)
    end
    return list
end