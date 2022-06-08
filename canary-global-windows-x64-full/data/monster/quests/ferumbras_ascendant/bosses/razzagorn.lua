local mType = Game.createMonsterType("Razzagorn")
local monster = {}

monster.description = "razzagorn"
monster.experience = 65000
monster.outfit = {
	lookType = 842,
	lookHead = 78,
	lookBody = 94,
	lookLegs = 52,
	lookFeet = 126,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 290000
monster.maxHealth = 290000
monster.race = "fire"
monster.corpse = 22495
monster.speed = 340
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
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
	runHealth = 1,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.summon = {
	maxSummons = 2,
	summons = {
		{name = "Eruption of Destruction", chance = 15, interval = 2000, count = 2}
	}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "YOUR FUTILE ATTACKS ONLY FEED MY RAGE!", yell = false},
	{text = "YOU-ARE-WEAK!!", yell = false},
	{text = "DEEESTRUCTIOOON!!", yell = false}
}

monster.loot = {
	{id = 22516, chance = 1000000},
	{id = 6558, chance = 10000},
	{id = 6558, chance = 10000},
	{id = 6558, chance = 10000},
	{id = 6558, chance = 10000},
	{id = 6558, chance = 10000},
	{id = 3031, chance = 98000, maxCount = 200},
	{id = 3026, chance = 12000, maxCount = 8},
	{id = 3029, chance = 12000, maxCount = 9},
	{id = 3033, chance = 10000, maxCount = 5},
	{id = 3035, chance = 8000, maxCount = 58},
	{id = 3036, chance = 1000},
	{id = 3037, chance = 1000},
	{id = 3039, chance = 1000},
	{id = 3041, chance = 1000},
	{id = 3065, chance = 13000},
	{id = 3356, chance = 8000},
	{id = 22193, chance = 46100, maxCount = 5},
	{id = 22194, chance = 46100, maxCount = 5},
	{id = 22754, chance = 500},
	{id = 22762, chance = 500, unique = true},
	{id = 5021, chance = 46100, maxCount = 5},
	{id = 6499, chance = 11000},
	{id = 7439, chance = 8000},
	{id = 7440, chance = 4000},
	{id = 7443, chance = 4000},
	{id = 238, chance = 23000, maxCount = 5},
	{id = 239, chance = 46100, maxCount = 5},
	{id = 281, chance = 14000, maxCount = 5},
	{id = 282, chance = 14000, maxCount = 5},
	{id = 7642, chance = 46100, maxCount = 10},
	{id = 3422, chance = 100, unique = true},
	{id = 7643, chance = 23000, maxCount = 5},
	{id = 9057, chance = 10000, maxCount = 8}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -1000, maxDamage = -2000},
	{name ="combat", interval = 3000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -1000, length = 10, spread = 3, effect = CONST_ME_HITBYFIRE, target = false},
	{name ="speed", interval = 2000, chance = 25, speedChange = -600, radius = 7, effect = CONST_ME_GREEN_RINGS, target = false, duration = 15000},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -500, maxDamage = -700, radius = 7, effect = CONST_ME_LOSEENERGY, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -300, maxDamage = -700, radius = 5, effect = CONST_ME_EXPLOSIONHIT, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -1500, maxDamage = -1800, length = 12, spread = 3, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -800, length = 10, spread = 3, effect = CONST_ME_HITBYFIRE, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -500, maxDamage = -800, length = 10, spread = 3, effect = CONST_ME_ENERGYHIT, target = false}
}

monster.defenses = {
	defense = 145,
	armor = 188,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 1000, maxDamage = 3000, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 8, speedChange = 480, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000},
	{name ="razzagorn summon", interval = 2000, chance = 3, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
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
