function ADVR.onLoad()
    pickup.name = "Zinc"
    pickup.desc = "An item that permanently boosts evasion of all pokemon you have"
	pickup.weight = 85
	pickup.tier = 1
	pickup.maxAmount = 10
	pickup.amountUses = -1
	pickup.price = 35
	pickup.spawnsIn = {relicPool.SPECIAL, relicPool.SHOP, relicPool.SECRET}
	pickup.supportedInMultiplayer = true
end

function ADVR.onPickup()
    pickup.RegisterItem()
end

