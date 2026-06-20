function ADVR.onLoad()
    pickup.name = "Golden Razzberry"
    pickup.desc = "A Berry that makes it drastically easier to catch the next Pokémon you try and capture."
	pickup.weight = 80
	pickup.tier = 1
	pickup.maxAmount = 10
	pickup.amountUses = -1
	pickup.price = 5
	pickup.spawnsIn = {relicPool.GOLDEN_CHEST, relicPool.SHOP, relicPool.PODEST}
	pickup.supportedInMultiplayer = true
end

function ADVR.onPickup()
    pickup.RegisterItem()
end

