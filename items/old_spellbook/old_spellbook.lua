function ADVR.onLoad()
    pickup.name = "Old Spellbook"
    pickup.desc = "An item to be held by a Pokémon. It's an magic book skull that boosts the power of the holder's <color=#7277f1>Ma</color><color=#9599f5>gi</color><color=#bbbdf9>c</color>-type attacks."
	pickup.weight = 110
	pickup.tier = 1
	pickup.maxAmount = 10
	pickup.amountUses = -1
	pickup.price = 10
	pickup.spawnsIn = {relicPool.BOSS, relicPool.SHOP, relicPool.SECRET}
	pickup.supportedInMultiplayer = true
end

function ADVR.onPickup()
    pickup.RegisterItem()
end

