local mType = Game.createMonsterType("Realityquake")
local monster = {}

monster.description = "Realityquake"
monster.experience = 80000
monster.outfit = {
	lookTypeEx = 1949
}

monster.health = 110000
monster.maxHealth = 110000
monster.race = "venom"
monster.corpse = 23567
monster.speed = 400
monster.manaCost = 0

monster.changeTarget = {
	interval = 3000,
	chance = 20
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.events = {
	"HeartBossDeath"
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = 3031, chance = 100000, maxCount = 200},
	{id = 238, chance = 8000, maxCount = 5},
	{id = 7642, chance = 8000, maxCount = 5},
	{id = 7643, chance = 8000, maxCount = 5},
	{id = 23535, chance = 8000, maxCount = 5},
	{id = 16119, chance = 8000, maxCount = 3},
	{id = 16121, chance = 8000, maxCount = 3},
	{id = 3032, chance = 8000, maxCount = 5},
	{id = 3030, chance = 8000, maxCount = 5},
	{id = 16120, chance = 8000, maxCount = 3},
	{id = 23507, chance = 8000},
	{id = 23508, chance = 8000},
	{id = 3039, chance = 8000},
	{id = 22721, chance = 100000},
	{id = 23509, chance = 100000},
	{id = 23510, chance = 100000},
	{id = 281, chance = 4000},
	{id = 282, chance = 4000},
	{id = 3073, chance = 8000},
	{id = 23531, chance = 6000},
	{id = 23533, chance = 6000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -400, maxDamage = -1000},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -350, maxDamage = -800, length = 10, spread = 3, effect = CONST_ME_ENERGYAREA, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_PHYSICALDAMAGE, minDamage = -350, maxDamage = -800, length = 10, spread = 3, effect = CONST_ME_BLOCKHIT, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_PHYSICALDAMAGE, minDamage = -240, maxDamage = -600, radius = 5, effect = CONST_ME_POFF, target = true},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_HOLYDAMAGE, minDamage = -240, maxDamage = -600, radius = 5, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYDAMAGE, target = true},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_EARTHDAMAGE, minDamage = -200, maxDamage = -450, length = 4, spread = 2, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -240, maxDamage = -600, radius = 5, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_SMALLCLOUDS, target = true},
	{name ="anomaly break", interval = 2000, chance = 40, target = false}
}

monster.defenses = {
	defense = 100,
	armor = 100,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, radius = 8, effect = CONST_ME_POFF, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType.onDisappear = function(monster, creature)
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)
