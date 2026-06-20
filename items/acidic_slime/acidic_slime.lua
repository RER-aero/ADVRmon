function ADVR.onLoad()
    pickup.name = "Charcoal"
    pickup.desc = "An item to be held by a Pokémon. It's a highly acidic liquid that boosts the power of the holder's <color=#0f5a0d>S</color><color=#178514>l</color><color=#1ea819>i</color><color=#26ce21>m</color><color=#5cdc58>e</color>-type attacks."
	pickup.weight = 110
	pickup.tier = 1
	pickup.maxAmount = 10
	pickup.amountUses = -1
	pickup.price = 10
	pickup.spawnsIn = {relicPool.GOLDEN_CHEST, relicPool.SHOP, relicPool.CHEST}
	pickup.supportedInMultiplayer = true
end

function ADVR.onPickup()
    pickup.RegisterItem()
end

