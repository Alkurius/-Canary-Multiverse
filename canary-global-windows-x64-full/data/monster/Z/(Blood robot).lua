local mType = Game.createMonsterType("(Blood robot)")
local monster = {}

monster.description = "a blood robot"
monster.experience = 11934
monster.health = 18000
monster.maxHealth = 18000
monster.race = "fire"
monster.corpse = 41747
monster.speed = 490
monster.manaCost = 0
monster.raceId = 2217

monster.outfit = {
    lookType = 1546,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Construct",
    race = BESTY_RACE_CONSTRUCT,
    toKill = 250,
    FirstUnlock = 50,
    SecondUnlock = 100,
    CharmsPoints = 25,
    Stars = 4,
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
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "Platinum Coin", chance = 100000, maxCount = 35},
    {name = "Book Page", chance = 3750, maxCount = 9},
    {name = "Demonic Essence", chance = 3750, maxCount = 6},
    {name = "flask of demonic blood", chance = 3750, maxCount = 4},
    {name = "Small Amethyst", chance = 2500, maxCount = 5},
    {id = 3307, chance = 3750},
    {name = "Silken Bookmark", chance = 2500, maxCount = 2},
    {name = "Magma Coat", chance = 2500},
    {name = "Guardian Shield", chance = 1875},
    {name = "Soul Orb", chance = 3750, maxCount = 5},
    {name = "Necrotic Rod", chance = 3750},
    {name = "Magma Monocle", chance = 1875},
    {id = 6299, chance = 1500},
    {id = 3049, chance = 2250},
    {name = "Shadow Sceptre", chance = 11238},
    {name = "UH backpack", chance = 2270},
    {name = "perfect sapphire", chance = 1210},
    {name = "arcane holy rune", chance = 2970},
    {name = "volcano crosbow", chance = 640},
    {name = "pit demon armor", chance = 880},
    {name = "ancestral rubi sword", chance = 70},
    {name = "exp boost  X 2", chance = 2530}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = -200, maxDamage = -700},
    	{name ="combat", interval = 1000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -780, range = 7, shootEffect = CONST_ANI_FLAMMINGARROW, effect = CONST_ME_HITBYFIRE, target = false},
    	{name ="combat", interval = 1500, chance = 12, type = COMBAT_PHYSICALDAMAGE, minDamage = -500, maxDamage = -900, radius = 3, effect = CONST_ME_EXPLOSIONAREA, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -400, maxDamage = -850, length = 5, spread = 3, effect = CONST_ME_MAGIC_RED, target = false},
    	{name ="combat", interval = 2000, chance = 12, type = COMBAT_FIREDAMAGE, minDamage = -400, maxDamage = -775, radius = 3, effect = CONST_ME_HITBYFIRE, target = false}
}

monster.defenses = {
    	defense = 33,
    	armor = 82
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -10},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
