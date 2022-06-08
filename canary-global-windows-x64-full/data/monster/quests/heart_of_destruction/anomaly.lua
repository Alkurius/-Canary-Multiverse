local mType = Game.createMonsterType("Anomaly")
local monster = {}

monster.description = "Anomaly"
monster.experience = 50000
monster.outfit = {
	lookType = 876,
	lookHead = 19,
	lookBody = 98,
	lookLegs = 19,
	lookFeet = 79,
	lookAddons = 1,
	lookMount = 0
}

monster.health = 290000
monster.maxHealth = 290000
monster.race = "venom"
monster.corpse = 23564
monster.speed = 400
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 25
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
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.events = {
	"AnomalyTransform",
	"HeartBossDeath"
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Brzlll! Brzzzl!", yell = false}
}

monster.loot = {
	{id = 22721, chance = 100000, maxCount = 4},
	{id = 23509, chance = 100000},
	{id = 23510, chance = 100000},
	{id = 3031, chance = 100000, maxCount = 200},
	{id = 3035, chance = 100000, maxCount = 30},
	{id = 16119, chance = 8000, maxCount = 3},
	{id = 16120, chance = 8000, maxCount = 3},
	{id = 16121, chance = 8000, maxCount = 3},
	{id = 3033, chance = 8000, maxCount = 10},
	{id = 3028, chance = 8000, maxCount = 10},
	{id = 9057, chance = 8000, maxCount = 10},
	{id = 238, chance = 8000, maxCount = 10},
	{id = 7642, chance = 8000, maxCount = 5},
	{id = 7643, chance = 8000, maxCount = 5},
	{id = 23545, chance = 8000, maxCount = 5},
	{id = 3037, chance = 8000},
	{id = 3041, chance = 6000},
	{id = 3038, chance = 6000},
	{id = 23542, chance = 3500},-- collar of blue plasma
	{id = 23529, chance = 3500},
	{id = 23531, chance = 3500},
	{id = 23511, chance = 8000},
	{id = 23519, chance = 8000},
	{id = 16160, chance = 4000, unique = true},
	{id = 828, chance = 4000},
	{id = 7427, chance = 3000},
	{id = 7451, chance = 3000},
	{id = 8073, chance = 3000},
	{id = 822, chance = 2500},
	{id = 825, chance = 2500},
	{id = 23474, chance = 1600, unique = true},
	{id = 23477, chance = 1600, unique = true},
	{id = 6553, chance = 1600, unique = true},
	{id = 282, chance = 1600, maxCount = 3}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -300, maxDamage = -1400},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -300, maxDamage = -600, radius = 4, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true},
	{name ="anomaly wave", interval = 2000, chance = 25, minDamage = -500, maxDamage = -900, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_PHYSICALDAMAGE, minDamage = -600, maxDamage = -1000, length = 9, spread = 3, effect = CONST_ME_EXPLOSIONHIT, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_LIFEDRAIN, minDamage = -300, maxDamage = -600, length = 9, spread = 3, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="anomaly break", interval = 2000, chance = 40, target = false}
}

monster.defenses = {
	defense = 100,
	armor = 100,
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_HEALING, minDamage = 150, maxDamage = 400, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -20},
	{type = COMBAT_ENERGYDAMAGE, percent = -20},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = -20},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -20},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
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
