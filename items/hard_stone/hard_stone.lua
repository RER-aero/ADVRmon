function ADVR.onLoad()
    pickup.name = "Hard Stone" 
    pickup.desc = " An item to be held by a Pokémon. It's a durable stone that boosts the power of the holder's <color=#877e68>Stone</color>-type attacks. "
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

