function ADVR.onLoad()
    pickup.name = "Metal Coat"
    pickup.desc = "An item to be held by a Pokémon. It's a special metallic coating that boosts the power of the holder's <color=#707a80>St</color><color=#9aaab4>ee</color><color=#b5c1c9>l</color>-type attacks. "
	pickup.weight = 85
	pickup.tier = 1
	pickup.maxAmount = 10
	pickup.amountUses = -1
	pickup.price = 35
	pickup.spawnsIn = {relicPool.SECRET, relicPool.SHOP, relicPool.PODEST}
	pickup.supportedInMultiplayer = true
end

function ADVR.onPickup()
    pickup.RegisterItem()
end

