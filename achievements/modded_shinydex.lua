function ADVR.onLoad()
    achievement.psvrID = 498
    achievement.name = "Shifted, <color=#c8960c>Sh</color><color=#e8b84b>in</color><color=#f5d78e>y</color> Pokedex Completed"
    achievement.desc = "Catch the <color=#c8960c>Sh</color><color=#e8b84b>in</color><color=#f5d78e>y</color> variant of every catchable enemy from <color=#888888>Sh</color><color=#999999>ift</color><color=#aaaaaa>ing</color> <color=#68a86f>De</color><color=#55a15d>pt</color><color=#44944c>hs</color>. <color=#c90808>(ADV</color><color=#1c1b1a>R</color><color=#cecece>MON)</color>"
	achievement.hideDescription = false
    achievement.predecessors = {achievements.GOOD_LUCK}
    achievement.showProgressBar = true
    achievement.category = "exploration"
    achievement.unlocksItem = "coins:200"
end


function ADVR.onSpawnInHomeBase()
    if HasCaughtEveything() == true then
        achievement.Unlock()
    end
end

function HasCaughtEveything()
   local count
   local list = GetList("ModdedEnemiesShinyCaught")

    return #list >= 27
end
function GetProgressInfo()
    local collected = GetList("ModdedEnemiesShinyCaught")

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