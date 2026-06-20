function ADVR.onLoad()
    pickup.name = "Charcoal"
    pickup.desc = "An item to be held by a Pokémon. It's a combustible fuel that boosts the power of the holder's <color=#f95909>Fi</color><color=#fb7c3a>re</color>-type attacks."
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

