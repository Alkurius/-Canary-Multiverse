local mType = Game.createMonsterType("Infernatil")
local monster = {}

monster.description = "Infernatil"
monster.experience = 85000
monster.outfit = {
	lookType = 35,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 160000
monster.maxHealth = 160000
monster.race = "fire"
monster.corpse = 4097
monster.speed = 605
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 15
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
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 3000,
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
	maxSummons = 4,
	summons = {
		{name = "hellfire fighter", chance = 8, interval = 1000, count = 3}
	}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Worship Zathroth pathetic mortal!", yell = false},
	{text = "Your soul will be mine!", yell = false},
	{text = "ASHES TO ASHES!", yell = true},
	{text = "YOU WILL ALL BURN!", yell = true},
	{text = "THE DAY OF RECKONING IS AT HAND!", yell = true},
	{text = "BOW TO THE POWER OF THE RUTHLESS SEVEN!", yell = true}
}

monster.loot = {
	{id = 3025, chance = 3500}, -- Ancient amulet
	{id = 3116, chance = 9000},
	{id = 3027, chance = 15000, maxCount = 15},
	{id = 3041, chance = 1500},
	{id = 3079, chance = 4000},
	{id = 3076, chance = 2500},
	{id = 3008, chance = 1500},
	{id = 3007, chance = 5500},
	{id = 3420, chance = 15500},
	{id = 3356, chance = 11000},
	{id = 3275, chance = 20000},
	{id = 3322, chance = 4500},
	{id = 3051, chance = 13500}, -- Energy ring
	{id = 3320, chance = 17000},
	{id = 3281, chance = 12500},
	{id = 3031, chance = 99900, maxCount = 100},
	{id = 3031, chance = 88800, maxCount = 100},
	{id = 3031, chance = 77700, maxCount = 100},
	{id = 3031, chance = 66600, maxCount = 100},
	{id = 3063, chance = 8000},
	{id = 3364, chance = 5000},
	{id = 2903, chance = 7500},
	{id = 3306, chance = 4500},
	{id = 3038, chance = 1500},
	{id = 3284, chance = 7500},
	{id = 3061, chance = 1000},
	{id = 3046, chance = 11500},
	{id = 3366, chance = 3000},
	{id = 3414, chance = 7500},
	{id = 3048, chance = 5000},
	{id = 3062, chance = 4000},
	{id = 3070, chance = 3500},
	{id = 3060, chance = 12000},
	{id = 3055, chance = 4500},
	{id = 3084, chance = 4500},
	{id = 2848, chance = 2600},
	{id = 3098, chance = 13000}, -- Ring of healing
	{id = 3006, chance = 3500},
	{id = 3054, chance = 13000},
	{id = 3290, chance = 15500},
	{id = 3324, chance = 5000},
	{id = 3033, chance = 13500, maxCount = 20},
	{id = 3028, chance = 9500, maxCount = 5},
	{id = 3032, chance = 15500, maxCount = 10},
	{id = 3029, chance = 13500, maxCount = 10},
	{id = 3066, chance = 3500},
	{id = 3049, chance = 9500}, -- Stealth ring
	{id = 3081, chance = 4000},
	{id = 3058, chance = 2500},
	{id = 3034, chance = 14000, maxCount = 7},
	{id = 2993, chance = 14500},
	{id = 3309, chance = 13500},
	{id = 3265, chance = 20000},
	{id = 3069, chance = 3500},
	{id = 3002, chance = 100},
	{id = 3072, chance = 2500},
	{id = 3026, chance = 12500, maxCount = 15}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 210, attack = 260},
	-- fire
	{name ="condition", type = CONDITION_FIRE, interval = 1000, chance = 7, minDamage = -800, maxDamage = -1200, range = 2, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_BLOCKHIT, target = false},
	{name ="combat", interval = 1000, chance = 7, type = COMBAT_PHYSICALDAMAGE, minDamage = -250, maxDamage = -750, radius = 6, effect = CONST_ME_EXPLOSIONHIT, target = false},
	{name ="combat", interval = 1000, chance = 50, type = COMBAT_FIREDAMAGE, minDamage = -200, maxDamage = -500, radius = 5, effect = CONST_ME_BLOCKHIT, target = false},
	{name ="firefield", interval = 1000, chance = 4, radius = 8, effect = CONST_ME_EXPLOSIONHIT, target = false},
	{name ="combat", interval = 1000, chance = 34, type = COMBAT_FIREDAMAGE, minDamage = -350, maxDamage = -850, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 1000, chance = 13, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -1000, length = 8, spread = 3, effect = CONST_ME_EXPLOSIONHIT, target = false},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -300, maxDamage = -1500, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false}
}

monster.defenses = {
	defense = 150,
	armor = 165,
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_HEALING, minDamage = 5000, maxDamage = 10000, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="combat", interval = 1000, chance = 25, type = COMBAT_HEALING, minDamage = 2000, maxDamage = 3000, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 1000, chance = 10, speedChange = 1800, effect = CONST_ME_MAGIC_RED, target = false, duration = 4000}
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
