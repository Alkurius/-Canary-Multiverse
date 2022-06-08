local mType = Game.createMonsterType("(Vegeta s+)")
local monster = {}

monster.description = "a vegeta s+"
monster.experience = 9000
monster.health = 10000
monster.maxHealth = 10000
monster.race = "blood"
monster.corpse = 41747
monster.speed = 400
monster.manaCost = 0
monster.raceId = 2255

monster.outfit = {
    lookType = 1584,
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
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {id = 3031, chance = 100000, maxCount = 76},
    {id = 3035, chance = 100000, maxCount = 3},
    {id = 24938, chance = 100000},
    {id = 7290, chance = 33750},
    {id = 815, chance = 33750},
    {id = 829, chance = 33750},
    {id = 7441, chance = 33750},
    {id = 3583, chance = 33750, maxCount = 7},
    {id = 3029, chance = 33750},
    {id = 2903, chance = 33750},
    {id = 24937, chance = 100000, maxCount = 3},
    {id = 19362, chance = 675},
    {id = 19363, chance = 675},
    {id = 7409, chance = 2025},
    {id = 16118, chance = 2025},
    {id = 24939, chance = 100000},
    {name = "Holy Backpack", chance = 2330},
    {name = "crystal sapphire", chance = 1540},
    {name = "life leach holy rune", chance = 2840},
    {name = "bushi armor", chance = 1830},
    {name = "crystal club", chance = 1060},
    {name = "ancestral esmeralda spelbook", chance = 0}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 112, attack = 85},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -310, maxDamage = -495, range = 5, radius = 5, effect = CONST_ME_ICETORNADO, target = true},
    	{name ="speed", interval = 2000, chance = 15, speedChange = -600, length = 9, spread = 3, effect = CONST_ME_ICEATTACK, target = false, duration = 10000},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -310, maxDamage = -395, length = 9, spread = 3, effect = CONST_ME_ICEATTACK, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -210, maxDamage = -395, radius = 3, effect = CONST_ME_ICEAREA, target = false},
    	{name ="combat", interval = 2000, chance = 12, type = COMBAT_LIFEDRAIN, minDamage = -150, maxDamage = -280, length = 8, spread = 3, effect = CONST_ME_POFF, target = false}
}

monster.defenses = {
    	defense = 64,
    	armor = 52,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 150, maxDamage = 450, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = -10},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 100},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
