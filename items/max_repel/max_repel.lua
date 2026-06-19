function ADVR.onLoad()
    pickup.name = "Max Repel"
    pickup.desc = "An item that drives away wild Pokémon so you won't encounter them. It has a stronger effect than a Super Repel. "
	pickup.weight = 85
	pickup.tier = 1
	pickup.maxAmount = 10
	pickup.amountUses = -1
	pickup.price = 20
	pickup.spawnsIn = {relicPool.SECRET, relicPool.SHOP, relicPool.SACRIFICE}
	pickup.supportedInMultiplayer = true
end

function ADVR.onPickup()
    pickup.RegisterItem()
end

