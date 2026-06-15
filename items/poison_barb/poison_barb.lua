function ADVR.onLoad()
    pickup.name = "Poison Barb"
    pickup.desc = "An item to be held by a Pokémon. This small poisonous barb boosts the power of the holder's Poison-type attacks."
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

