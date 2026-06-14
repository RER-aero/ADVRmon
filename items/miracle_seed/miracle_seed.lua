function ADVR.onLoad()
    pickup.name = "Miracle Seed"
    pickup.desc = "An item to be held by a Pokémon. It's a seed imbued with life-force that boosts the power of the holder's effective Grass-type attacks."
	pickup.weight = 85
	pickup.tier = 1
	pickup.maxAmount = 10
	pickup.amountUses = -1
	pickup.price = 35
	pickup.spawnsIn = {relicPool.SECRET, relicPool.SHOP, relicPool.PODEST}
	pickup.supportedInMultiplayer = true
end

function ADVR.onPickup()
    pickup.RegisterItem()
end

