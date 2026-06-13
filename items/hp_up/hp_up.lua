function ADVR.onLoad()
    pickup.name = "HP Up"
    pickup.desc = "An item that permanently boosts the health of all pokemon you have"
	pickup.weight = 85
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

