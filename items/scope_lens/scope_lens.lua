function ADVR.onLoad()
    pickup.name = "Scope Lens"
    pickup.desc = "An item to be held by a Pokémon. It's a lens for scoping out weak points. It boosts your current pokemons critical-hit ratio."
	pickup.weight = 90
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

