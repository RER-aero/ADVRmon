function ADVR.onLoad()
    pickup.name = "Repel"
    pickup.desc = "An item that drives away a few wild Pokémon so you won't encounter them."
	pickup.weight = 85
	pickup.tier = 1
	pickup.maxAmount = 10
	pickup.amountUses = -1
	pickup.price = 10
	pickup.spawnsIn = {relicPool.SECRET, relicPool.SHOP, relicPool.SACRIFICE}
	pickup.supportedInMultiplayer = true
end

function ADVR.onPickup()
    pickup.RegisterItem()
end

