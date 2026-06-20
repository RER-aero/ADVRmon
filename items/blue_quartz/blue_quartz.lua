function ADVR.onLoad()
    pickup.name = "Blue Quartz"
    pickup.desc = "An item to be held by a Pokémon. It's a shiny crystal that boosts the power of the holder's <color=#1a9e95>Cr</color><color=#22cfc4>ys</color><color=#36f9ec>ta</color><color=#87fcf6>l</color>-type attacks."
	pickup.weight = 110
	pickup.tier = 1
	pickup.maxAmount = 10
	pickup.amountUses = -1
	pickup.price = 10
	pickup.spawnsIn = {relicPool.GOLDEN_CHEST, relicPool.SHOP, relicPool.CHEST}
	pickup.supportedInMultiplayer = true
end

function ADVR.onPickup()
    pickup.RegisterItem()
end

