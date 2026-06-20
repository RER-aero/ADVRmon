function ADVR.onLoad()
    pickup.name = "Razzberry"
    pickup.desc = "A Berry that makes it slightly easier to catch the next Pokémon you try and capture."
	pickup.weight = 110
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

