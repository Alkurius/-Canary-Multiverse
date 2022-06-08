local mType = Game.createMonsterType("The Sandking")
local monster = {}

monster.description = "The Sandking"
monster.experience = 0
monster.outfit = {
	lookType = 1013,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 50000
monster.maxHealth = 50000
monster.race = "venom"
monster.corpse = 25866
monster.speed = 250
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 30
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
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 0,
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

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "CREEEAK!", yell = false}
}

monster.loot = {
	{name = "small amethyst", chance = 21000, maxCount = 10},
	{name = "small emerald", chance = 19000, maxCount = 10},
	{id= 3039, chance = 12000},
	{name = "platinum coin", chance = 68299, maxCount = 30},
	{name = "gold coin", chance = 100000, maxCount = 200},
	{name = "small diamond", chance = 21000, maxCount = 10},
	{name = "green gem", chance = 12000},
	{name = "luminous orb", chance = 35000},
	{name = "great mana potion", chance = 31230, maxCount = 10},
	{name = "ultimate health potion", chance = 28230, maxCount = 10},
	{name = "cobra crown", chance = 400},
	{name = "silver token", chance = 2500},
	{name = "gold token", chance = 1532},
	{name = "small topaz", chance = 11520, maxCount = 10},
	{name = "blue gem", chance = 21892},
	{name = "yellow gem", chance = 29460},
	{name = "magic sulphur", chance = 18920},
	{id = 7440, chance = 2000},
	{id = 20062, chance = 2000, maxCount = 2},
	{name = "Hailstorm Rod", chance = 3470},
	{id = 3036, chance = 1000},
	{id = 3098, chance = 20000}, -- Ring of healing
	{id = 3030, chance = 7360, maxCount = 10},
	{id = 281, chance = 28540},
	{name = "Skull Staff", chance = 13790},
	{name = "Grasshopper Legs", chance = 13790},
	{name = "Huge Chunk of Crude Iron", chance = 10000, maxCount = 2},
	{id = 7404, chance = 430},
	{name = "runed sword", chance = 6666},
	{name = "djinn blade", chance = 200},
	{id = 16121, chance = 10000, maxCount = 3},
	{id = 16120, chance = 10000, maxCount = 3},
	{id = 16119, chance = 10000, maxCount = 3},
	{id = 7642, chance = 4800},
	{id = 16161, chance = 7030},
	{id = 3341, chance = 200}, -- Arcane staff
	{name = "heart of the mountain", chance = 400}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -400},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = 0, maxDamage = -500, range = 4, radius = 4, effect = CONST_ME_STONES, target = true},
	{name ="speed", interval = 2000, chance = 20, speedChange = -650, radius = 5, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.defenses = {
	defense = 30,
	armor = 30
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
