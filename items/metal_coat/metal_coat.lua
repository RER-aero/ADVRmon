function ADVR.onLoad()
    pickup.name = "Metal Coat"
    pickup.desc = "An item to be held by a Pokémon. It's a special metallic coating that boosts the power of the holder's Steel-type attacks. "
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

