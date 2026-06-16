function ADVR.onLoad()
    pickup.name = "Potion"
    pickup.desc = "A spray-type medicine that restores the HP of your active Pokémon slightly."
	pickup.weight = 95
	pickup.tier = 1
	pickup.maxAmount = 10
	pickup.amountUses = -1
	pickup.price = 35
	pickup.spawnsIn = {relicPool.CHEST, relicPool.SHOP, relicPool.GOLDEN_CHEST}
	pickup.supportedInMultiplayer = true
end

function ADVR.onPickup()
    pickup.RegisterItem()
end

