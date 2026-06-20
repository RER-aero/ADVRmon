function ADVR.onLoad()
    pickup.name = "Black Glasses"
    pickup.desc = "An item to be held by a Pokémon. It's a pair of shady-looking glasses that boost the power of the holder's <color=#150515>D</color><color=#241024>a</color><color=#341a34>r</color><color=#472547>k</color>-type attacks. "
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

