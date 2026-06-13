function ADVR.onLoad()
    pickup.name = "Aux Evasion"
    pickup.desc = "An item that boosts evasion of a Pokémon during a battle."
	pickup.weight = 100
	pickup.tier = 1
	pickup.maxAmount = 10
	pickup.amountUses = -1
	pickup.price = 20
	pickup.spawnsIn = {relicPool.GOLDEN_CHEST, relicPool.SHOP, relicPool.SPECIAL}
	pickup.supportedInMultiplayer = true
end

function ADVR.onPickup()
    pickup.RegisterItem()
end

