function ADVR.onLoad()
    achievement.psvrID = 499
    achievement.name = "Shifted Pokedex Completed"
    achievement.desc = "Catch every catchable enemy from <color=#888888>Sh</color><color=#999999>ift</color><color=#aaaaaa>ing</color> <color=#68a86f>De</color><color=#55a15d>pt</color><color=#44944c>hs</color>. <color=#c90808>(ADV</color><color=#1c1b1a>R</color><color=#cecece>MON)</color>"
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
   
   local list = GetList("ModdedEnemiesCaught")

    return #list >= 27
end
function GetProgressInfo()
    local collected = GetList("ModdedEnemiesCaught")

    return #collected, 27 
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