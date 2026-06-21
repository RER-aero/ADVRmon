function ADVR.onLoad()
    achievement.psvrID = 153
    achievement.name = "Shinier and Slimier"
    achievement.desc = "Catch a shiny gold slime <color=#c90808>(ADV</color><color=#1c1b1a>R</color><color=#cecece>MON)</color>"
    achievement.predecessors = { achievements.GOOD_LUCK, }
    achievement.category = "combat"
    achievement.unlocksItem = "coins:30"
end

function ADVR.onPlayerDeathOrRunComplete()
    if HasInList("EnemiesShinyCaught", "enemy_slime_golden") then
        achievement.Unlock()
    end
end
function ADVR.onSpawnInHomeBase()
    if HasInList("EnemiesShinyCaught", "enemy_slime_golden") then
        achievement.Unlock()
    end
end



function GetList(key)
    local raw = game.LoadString(key, "")
  if raw == "" then return {} end
    local list = {}
    for entry in raw:gmatch("[^,]+") do
        table.insert(list, entry)
    end
    return list
end

function HasInList(key, name)
    return table.contains(GetList(key), name) or not nil
end


function table.contains(tbl, val)
    for _, v in ipairs(tbl) do
        if v == val then
            return true
        end
    end
    return false
end