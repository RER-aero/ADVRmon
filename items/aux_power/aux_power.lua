function ADVR.onLoad()
    pickup.name = "Aux Power"
    pickup.desc = "An item that boosts critical chance and attack damage of a Pokémon during a battle."
	pickup.weight = 100
	pickup.tier = 1
	pickup.maxAmount = 10
	pickup.amountUses = -1
	pickup.price = 25
	pickup.spawnsIn = {relicPool.GOLDEN_CHEST, relicPool.SHOP, relicPool.SPECIAL}
	pickup.supportedInMultiplayer = true
end

function ADVR.onPickup()
    pickup.RegisterItem()
end

