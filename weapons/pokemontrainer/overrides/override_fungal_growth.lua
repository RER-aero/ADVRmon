function ADVR.onLoad()
	pickup.name = "Fungal Growth"
	pickup.desc = "Projectiles emit damaging particles during flight"
	pickup.globalTickDelay = 0.1
	game.RegisterForRPCEvents(pickup)
	LastPosition = vector3.zero
	pickup.isSharedItem = true
end

function ADVR.onPickup()
	pickup.RegisterItem()
	SourcePlayerWeapon = game.inventory.currentSecondaryWeapon.AsThrowingKnifeBase()
	SourcePlayerParticles = game.SpawnObjectNetwork(objects.EFFECT_DAMAGING_PROJECTILE_PARTICLES, SourcePlayerWeapon.transform.position).GetComponent_ParticleSystem_()
	LastPosition = SourcePlayerWeapon.transform.position
	pickup.SendRPCEvent(0, vector3.zero, SourcePlayerParticles.gameObject.GetComponent_NetworkObject_(), rpcType.TO_ALL)
end

function ADVR.onPreGameReload()
	game.Delete(SourcePlayerParticles.gameObject)
	FunctionOnRepeat.shouldCancel = true
end

function ADVR.onPickupProxies(originalPlayerRef)
	FunctionOnRepeat = pickup.CallFunctionOnRepeat("ProxyGlobalTick", 99999, pickup.globalTickDelay)
end

function ProxyGlobalTick()
	ADVR.onGlobalTick()
end

function ADVR.onRPCReceived(eventID, sourcePlayer, position, networkObject)
	SourcePlayerWeapon = sourcePlayer.playerController.networkedPlayerInventory.currentSecondaryWeapon
	SourcePlayerParticles = networkObject.gameObject.GetComponent_ParticleSystem_()

	LastPosition = SourcePlayerWeapon.transform.position
end

function ADVR.onGlobalTick()
	if SourcePlayerWeapon == nil or SourcePlayerParticles == nil then
		return
	end

	LastPosition = SourcePlayerWeapon.transform.position

	if SourcePlayerWeapon.transform.position.y > 999 then
		SourcePlayerParticles.Stop()
		return
	elseif SourcePlayerParticles.isStopped then
		SourcePlayerParticles.Play()
	end

	if SourcePlayerWeapon.networkObject.HasStateAuthority then
		SourcePlayerParticles.transform.position = SourcePlayerWeapon.transform.position
	end
end