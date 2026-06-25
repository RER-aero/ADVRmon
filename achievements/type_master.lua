function ADVR.onLoad()
    achievement.psvrID = 457
    achievement.name = "Type Master"
    achievement.desc = "Catch every type <color=#c90808>(ADV</color><color=#1c1b1a>R</color><color=#cecece>MON)</color>"
	achievement.hideDescription = false
    achievement.predecessors = {achievements.GOOD_LUCK}
    achievement.showProgressBar = true
    achievement.category = "exploration"
    achievement.unlocksItem = "toxic_orb"
end


function ADVR.onPlayerDeathOrRunComplete()
     local collected = GetList("TypesCaught")
    if #collected == 12 then
        achievement.Unlock()
    end
end

function GetProgressInfo()
    local collected = GetList("TypesCaught")

    return #collected, 12
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