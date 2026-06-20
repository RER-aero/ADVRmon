function ADVR.onLoad()
    pickup.name = "Charcoal"
    pickup.desc = "An item to be held by a Pokémon. It's an old deer skull that boosts the power of the holder's <color=#59310b>Undead</color>-type attacks."
	pickup.weight = 110
	pickup.tier = 1
	pickup.maxAmount = 10
	pickup.amountUses = -1
	pickup.price = 10
	pickup.spawnsIn = {relicPool.SACRIFICE, relicPool.SHOP, relicPool.SECRET}
	pickup.supportedInMultiplayer = true
end

function ADVR.onPickup()
    pickup.RegisterItem()
end

