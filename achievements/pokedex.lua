function ADVR.onLoad()
    achievement.psvrID = 500
    achievement.name = "Pokedex Completed"
    achievement.desc = "Catch every catchable enemy. <color=#c90808>(ADV</color><color=#1c1b1a>R</color><color=#cecece>MON)</color>"
	achievement.hideDescription = false
    achievement.predecessors = {achievements.GOOD_LUCK}
    achievement.showProgressBar = true
    achievement.category = "exploration"
end


function ADVR.onSpawnInHomeBase()
    if HasCaughtEveything() == true then
        achievement.Unlock()
    end
end

function HasCaughtEveything()
  
   local list = GetList("EnemiesCaught")

    return #list >= 76 - 7
end
function GetProgressInfo()
    local collected = GetList("EnemiesCaught")

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