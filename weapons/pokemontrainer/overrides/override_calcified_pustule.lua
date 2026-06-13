function ADVR.onLoad()
	pickup.name = "Calcified Pustule"
	pickup.desc = "Ranged strikes produce a poisonous cloud, but projectiles are slower"
	pickup.globalTickDelay = 0.1
	pickup.supportedInMultiplayer = true

	-- Variables
	SlowdownFactor = 0.7

	-- State
	AllowedToExplode = true
end

function ADVR.onPickup()
	pickup.RegisterItem()

	KnifeRef = game.inventory.currentSecondaryWeapon.AsThrowingKnifeBase()
	KnifeRef.dealsHitDamage = false
	KnifeRef.pullbackSpeed = 10
end

function ADVR.onPickupProxies(originalPlayerRef)
end

function ADVR.onKnifeInHand()
	AllowedToExplode = true
end

function ADVR.onRangedWeaponCollide(knife, collision)
	if AllowedToExplode == false then
		return
	end

	local explosion = game.SpawnObjectNetwork(objects.EFFECT_CALCIFIED_PUSTULE, knife.transform.position).GetComponent_Explosion_()
	explosion.damage = player.GetSecondaryDamageWithPickupModifiers() * 1.1
	explosion.damagePlayer = false
	explosion.enableCritChance = true
	explosion.damagesEnemies = true

	AllowedToExplode = false
end

function ADVR.onGlobalTick()
	local vel = KnifeRef.rigidb.velocity

	if vel.x > 1.0 or vel.x < -1.0 then
		vel.x = vel.x * SlowdownFactor
	end
	if vel.y > 0.0 then
		vel.y = vel.y * SlowdownFactor
	end
	if vel.z > 1.0 or vel.z < -1.0 then
		vel.z = vel.z * SlowdownFactor
	end

	if KnifeRef.rigidb.useGravity == false then
		vel.y = vel.y - 0.1
	end

	KnifeRef.rigidb.velocity = vel
end