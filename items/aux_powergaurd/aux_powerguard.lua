function ADVR.onLoad()
    pickup.name = "Aux Powerguard"
    pickup.desc = "An item that boosts defensive and offensive stats of a Pokémon during a battle."
	pickup.weight = 100
	pickup.tier = 1
	pickup.maxAmount = 10
	pickup.amountUses = -1
	pickup.price = 35
	pickup.spawnsIn = {relicPool.SECRET, relicPool.SHOP, relicPool.SPECIAL}
	pickup.supportedInMultiplayer = true
end

function ADVR.onPickup()
    pickup.RegisterItem()
end

