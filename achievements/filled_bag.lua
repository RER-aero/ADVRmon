function ADVR.onLoad()
    achievement.psvrID = 12
    achievement.name = "Filled Satchel"
    achievement.desc = "Buy at least 10 augments for the Trainers Armament <color=#c90808>(ADV</color><color=#1c1b1a>R</color><color=#cecece>MON)</color>"
	achievement.hideDescription = false
    achievement.predecessors = {achievements.GOOD_LUCK}
    achievement.unlocksItem = "silver_pinap_berry"
    achievement.category = "combat"
    achievement.showProgressBar = true
    NpcIdKey = "blacksmith_pokemontrainer_primary"
end

function ADVR.onProgressBought(npcId)
    if npcId ~= NpcIdKey or HasBoughtAtLeast10Upgrades() == false then
        return
    end

    achievement.Unlock()

    -- Refresh the achievement UI.
    game.RefreshHomeBaseUIs()
end

-- Failsafe
function ADVR.onSpawnInHomeBase()
    if HasBoughtAtLeast10Upgrades() == true then
        achievement.Unlock()

        -- Refresh the achievement UI.
        game.RefreshHomeBaseUIs()
    end
end

function HasBoughtAtLeast10Upgrades()
    local boughtCount = 0
    for progressRepresentation in game.progressHandler.GetProgressesByNpc(NpcIdKey) do
        if progressRepresentation.IsBought() then
            boughtCount = boughtCount + 1
        end
    end

    return boughtCount >= 10
end

function GetProgressInfo()
    local boughtCount
   for progressRepresentation in game.progressHandler.GetProgressesByNpc(NpcIdKey) do
        if progressRepresentation.IsBought() then
            boughtCount = boughtCount + 1
        end
    end

    return boughtCount, 10
end