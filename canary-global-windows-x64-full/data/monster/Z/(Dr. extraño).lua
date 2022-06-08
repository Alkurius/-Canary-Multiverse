local mType = Game.createMonsterType("(Dr. extraño)")
local monster = {}

monster.description = "a dr. extraño"
monster.experience = 10000
monster.health = 90500
monster.maxHealth = 90500
monster.race = "fire"
monster.corpse = 41750
monster.speed = 380
monster.manaCost = 0
monster.raceId = 2542

monster.outfit = {
    lookType = 1871,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Human",
    race = BESTY_RACE_HUMAN,
    toKill = 250,
    FirstUnlock = 50,
    SecondUnlock = 100,
    CharmsPoints = 25,
    Stars = 5,
    Occurrence = 0,
    Locations = "Carlin? Thais? Probably in all Tibia."
}

monster.changeTarget = {
    interval = 4000,
    chance = 10
}

monster.strategiesTarget = {
    nearest = 80,
    health = 10,
    damage = 10
}

monster.light = {
    level = 0,
    color = 0
}

monster.voices = {
    interval = 5000,
    chance = 5,
    {text = "attack the weakest!", yell = false},
    {text = "It is all you have?", yell = false},
    {text = "I will make you my pet!", yell = false},
    {text = "you will be my breakfast.", yell = false}
}

monster.flags = {
    summonable = false,
    attackable = true,
    hostile = true,
    convinceable = false,
    pushable = false,
    rewardBoss = false,
    illusionable = false,
    canPushItems = true,
    canPushCreatures = true,
    staticAttackChance = 85,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = false
}

monster.loot = {
    {id = 6499, chance = 100000},
    {id = 3031, chance = 100000, maxCount = 262},
    {id = 8899, chance = 72900},
    {id = 8896, chance = 60750},
    {id = 238, chance = 36450},
    {id = 7642, chance = 35100},
    {id = 239, chance = 31050},
    {id = 7643, chance = 29700},
    {id = 9058, chance = 28350},
    {id = 3035, chance = 28350, maxCount = 40},
    {id = 6104, chance = 28350},
    {id = 5944, chance = 28350, maxCount = 14},
    {id = 3034, chance = 24300, maxCount = 40},
    {id = 5911, chance = 22950, maxCount = 14},
    {id = 3017, chance = 22950},
    {id = 5912, chance = 20250, maxCount = 14},
    {id = 5909, chance = 20250, maxCount = 14},
    {id = 5910, chance = 18900, maxCount = 14},
    {id = 5914, chance = 18900, maxCount = 14},
    {id = 5913, chance = 16200, maxCount = 14},
    {id = 5954, chance = 13095, maxCount = 3},
    {id = 3079, chance = 11745},
    {id = 3057, chance = 8100},
    {id = 3554, chance = 6075},
    {id = 3555, chance = 2025},
    {name = "life redbull", chance = 2110},
    {name = "meteoro death rune", chance = 3490},
    {name = "special tornado energy rune", chance = 3720},
    {name = "legendary warrior legs", chance = 1270},
    {name = "pharaonic wand (Earth)", chance = 480},
    {name = "ancient gold wand", chance = 1550},
    {name = "divine sword", chance = 810}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -800},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = 0, maxDamage = -500, range = 4, effect = CONST_ME_MAGIC_RED, target = true},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = 0, maxDamage = -500, length = 7, spread = 3, effect = CONST_ME_MORTAREA, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = 0, maxDamage = -100, radius = 4, effect = CONST_ME_SMALLCLOUDS, target = false},
    	-- fire
    	{name ="condition", type = CONDITION_FIRE, interval = 3000, chance = 20, minDamage = -10, maxDamage = -10, radius = 4, effect = CONST_ME_EXPLOSIONHIT, target = true},
    	{name ="combat", interval = 1000, chance = 13, type = COMBAT_MANADRAIN, minDamage = -60, maxDamage = -200, radius = 5, effect = CONST_ME_WATERSPLASH, target = false}
}

monster.defenses = {
    	defense = 55,
    	armor = 45,
    	{name ="combat", interval = 2000, chance = 50, type = COMBAT_HEALING, minDamage = 40, maxDamage = 60, effect = CONST_ME_MAGIC_GREEN, target = false},
    	{name ="combat", interval = 2000, chance = 50, type = COMBAT_HEALING, minDamage = 400, maxDamage = 600, effect = CONST_ME_MAGIC_GREEN, target = false},
    	{name ="invisible", interval = 1000, chance = 5, effect = CONST_ME_MAGIC_BLUE}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
    	{type = COMBAT_ENERGYDAMAGE, percent = 20},
    	{type = COMBAT_EARTHDAMAGE, percent = 40},
    	{type = COMBAT_FIREDAMAGE, percent = 30},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 25},
    	{type = COMBAT_HOLYDAMAGE , percent = 30},
    	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
