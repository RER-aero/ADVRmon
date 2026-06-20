function ADVR.onLoad()
    pickup.name = "Silver Powder"
    pickup.desc = "An item to be held by a Pokémon. It's a shiny silver powder that boosts the power of the holder's <color=#6a8a1a>B</color><color=#8fb52a>u</color><color=#b3d940>g</color>-type moves."
	pickup.weight = 100
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

