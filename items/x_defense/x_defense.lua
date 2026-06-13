function ADVR.onLoad()
    pickup.name = "X Defense"
    pickup.desc = "An item that boosts the Health of your current Pokémon during a battle. "
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

