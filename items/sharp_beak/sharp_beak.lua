function ADVR.onLoad()
    pickup.name = "Scope Lens"
    pickup.desc = "An item to be held by a Pokémon. It's a long, sharp beak that boosts the power of the holder's <color=#9dcad5>Fl</color><color=#b5d8e2>yi</color><color=#cce2ea>ng</color>-type attacks. "
	pickup.weight = 100
	pickup.tier = 1
	pickup.maxAmount = 10
	pickup.amountUses = -1
	pickup.price = 10
	pickup.spawnsIn = {relicPool.GOLDEN_CHEST, relicPool.SHOP, relicPool.PODEST}
	pickup.supportedInMultiplayer = true
end

function ADVR.onPickup()
    pickup.RegisterItem()
end

