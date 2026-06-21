function ADVR.onLoad()
	achievement.psvrID = 1594
	achievement.name = "A glintier glint"
	achievement.desc = "Catch a shiny ruby slime <color=#c90808>(ADV</color><color=#1c1b1a>R</color><color=#cecece>MON)</color> <color=#888888>(Sh</color><color=#999999>ift</color><color=#aaaaaa>ing</color> <color=#68a86f>De</color><color=#55a15d>pt</color><color=#44944c>hs)</color>"
	achievement.predecessors = {achievements.GOOD_LUCK,}
	achievement.category = "combat"
	achievement.unlocksItem = "coins:40"
end


function ADVR.onPlayerDeathOrRunComplete()
    if HasInList("ModdedEnemiesShinyCaught", "enemy_ruby_slime") then
        achievement.Unlock()
    end
end
function ADVR.onSpawnInHomeBase()
    if HasInList("ModdedEnemiesShinyCaught", "enemy_ruby_slime") then
        achievement.Unlock()
    end
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

function HasInList(key, name)
    return table.contains(GetList(key), name)
end


function table.contains(tbl, val)
    for _, v in ipairs(tbl) do
        if v == val then
            return true
        end
    end
    return false
end


