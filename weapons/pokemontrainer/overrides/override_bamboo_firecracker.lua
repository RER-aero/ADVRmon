function ADVR.onLoad()
	pickup.name = "Bamboo Firecracker"
	pickup.desc = "Your projectile strikes cause an explosion"
	pickup.supportedInMultiplayer = true
	game.RegisterForRPCEvents(pickup)
end

function ADVR.onPickup()
	pickup.RegisterItem()
	game.inventory.currentSecondaryWeapon.AsThrowingKnifeBase().dealsHitDamage = false
end

function ADVR.onPickupProxies(originalPlayerRef)
end

function ADVR.onRangedWeaponCollide(knife, collision)
	-- special case for chests, which should just open naturally 
	local living = collision.gameObject.GetComponent_LivingBase_()
	if living ~= nil and string.find(living.livingId, "prop_chest_") then
		living.DoHit(player.networkObject, 1, damageType.PLAYER_SECONDARY_NO_KNOCKBACK, vector3.__new(0,0,0), false)
		return
	end

	if collision.relativeVelocity.magnitude > 2 then
		local expl = game.SpawnObjectLocal(objects.EFFECT_EXPLOSION_SMALL, knife.transform.position).GetComponent_Explosion_()
		expl.damage = player.GetSecondaryDamageWithPickupModifiers()
		expl.enableCritChance = true
		pickup.SendRPCEvent(1, knife.transform.position, rpcType.TO_PROXIES)
	end
end

function ADVR.onRPCReceived(eventID, sourcePlayer, position)
	if eventID == 1 then
		local expl = game.SpawnObjectLocal(objects.EFFECT_EXPLOSION_SMALL, position).GetComponent_Explosion_()
		expl.damage = 0
	end
end