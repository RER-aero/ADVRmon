function ADVR.onLoad()
    pickup.name = "Dire Hit"
    pickup.desc = "An item that boosts the Critical stat of a Pokémon during a battle."
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

