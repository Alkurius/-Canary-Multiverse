local mType = Game.createMonsterType("Omrafir")
local monster = {}

monster.description = "Omrafir"
monster.experience = 50000
monster.outfit = {
	lookType = 12,
	lookHead = 78,
	lookBody = 3,
	lookLegs = 79,
	lookFeet = 79,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 322000
monster.maxHealth = 322000
monster.race = "fire"
monster.corpse = 6068
monster.speed = 480
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
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "FIRST I'LL OBLITERATE YOU THEN I BURN THIS PRISON DOWN!!", yell = false},
	{text = "I'M TOO HOT FOR YOU TO HANDLE!", yell = true},
	{text = "FREEDOM FOR PRINCESS", yell = true},
	{text = "THE POWER OF HIS INTERNAL FIRE RENEWS OMRAFIR!", yell = true},
	{text = "OMRAFIR INHALES DEEPLY!", yell = true},
	{text = "OMRAFIR BREATHES INFERNAL FIRE", yell = true},
	{text = "I WILL RULE WHEN THE NEW ORDER IS ESTABLISHED!", yell = true}
}

monster.loot = {
	{id = 16119, chance = 37500, maxCount = 5},
	{id = 20062, chance = 62500, maxCount = 4},
	{id = 16125, chance = 43750, maxCount = 3},
	{id = 5954, chance = 100000},
	{id = 6499, chance = 812500, maxCount = 4},
	{id = 20278, chance = 6250},
	{id = 20063, chance = 81250, maxCount = 2},
	{id = 20276, chance = 3250, unique = true},
	{id = 20279, chance = 2500},
	{id = 281, chance = 43750},
	{id = 282, chance = 43750},
	{id = 3031, chance = 18750, maxCount = 100},
	{id = 238, chance = 6250, maxCount = 8},
	{id = 7642, chance = 56250, maxCount = 8},
	{id = 16127, chance = 37500, maxCount = 3},
	{id = 16121, chance = 18750, maxCount = 5},
	{id = 3038, chance = 18750},
	{id = 820, chance = 12500},
	{id = 825, chance = 18750},
	{id = 20282, chance = 12500},
	{id = 20274, chance = 100000, unique = true},
	{id = 3035, chance = 93750, maxCount = 20},
	{id = 20277, chance = 6250},
	{id = 16126, chance = 6250, maxCount = 3},
	{id = 3098, chance = 6250}, -- Ring of healing
	{id = 5741, chance = 6250},
	{id = 3554, chance = 6250},
	{id = 7643, chance = 31250, maxCount = 8},
	{id = 20264, chance = 81250, maxCount = 3},
	{id = 16120, chance = 18750, maxCount = 5}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 392, attack = 500},
	{name ="omrafir wave", interval = 2000, chance = 17, minDamage = -500, maxDamage = -1000, target = false},
	{name ="omrafir beam", interval = 2000, chance = 15, minDamage = -7000, maxDamage = -10000, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -1000, maxDamage = -3000, length = 10, spread = 3, effect = CONST_ME_FIREATTACK, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -200, maxDamage = -400, radius = 3, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 2000, chance = 19, type = COMBAT_FIREDAMAGE, minDamage = -150, maxDamage = -300, radius = 4, effect = CONST_ME_EXPLOSIONHIT, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, radius = 1, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_HITBYFIRE, target = true},
	{name ="firefield", interval = 2000, chance = 12, radius = 3, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK, target = true}
}

monster.defenses = {
	defense = 165,
	armor = 155,
	{name ="combat", interval = 2000, chance = 22, type = COMBAT_HEALING, minDamage = 440, maxDamage = 800, target = false},
	{name ="omrafir summon", interval = 2000, chance = 50, target = false},
	{name ="omrafir healing 2", interval = 2000, chance = 20, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
	{type = COMBAT_ENERGYDAMAGE, percent = 50},
	{type = COMBAT_EARTHDAMAGE, percent = 50},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 50},
	{type = COMBAT_HOLYDAMAGE , percent = 50},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
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
