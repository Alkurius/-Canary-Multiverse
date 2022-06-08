local mType = Game.createMonsterType("(Azure mercenary)")
local monster = {}

monster.description = "a azure mercenary"
monster.experience = 2800
monster.health = 2700
monster.maxHealth = 2700
monster.race = "blood"
monster.corpse = 41396
monster.speed = 250
monster.manaCost = 0
monster.raceId = 2482

monster.outfit = {
    lookType = 1811,
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
    Stars = 3,
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
    illusionable = true,
    canPushItems = true,
    canPushCreatures = true,
    staticAttackChance = 70,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = true,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = false
}

monster.loot = {
    {id = 3031, chance = 100000, maxCount = 162},
    {id = 7642, chance = 100000, maxCount = 3},
    {id = 35572, chance = 13500},
    {id = 813, chance = 6427},
    {id = 813, chance = 6427},
    {id = 17812, chance = 6750},
    {id = 17813, chance = 6750},
    {id = 17817, chance = 22499},
    {id = 17818, chance = 5192},
    {id = 35596, chance = 15000},
    {id = 17820, chance = 19285},
    {id = 17821, chance = 19285},
    {id = 820, chance = 2176},
    {id = 818, chance = 4354},
    {name = "ultimate paralise rune", chance = 3460},
    {name = "summon rune O", chance = 2840},
    {name = "special ultimate holy rune", chance = 3910}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 450, maxDamage = -140},
    	{name ="corym vanguard wave", interval = 2000, chance = 10, minDamage = -50, maxDamage = -100, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -40, maxDamage = -70, radius = 4, effect = CONST_ME_MORTAREA, target = true}
}

monster.defenses = {
    	defense = 65,
    	armor = 65,
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 30, maxDamage = 60, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = -110},
    	{type = COMBAT_ENERGYDAMAGE, percent = 30},
    	{type = COMBAT_EARTHDAMAGE, percent = -130},
    	{type = COMBAT_FIREDAMAGE, percent = 30},
    	{type = COMBAT_LIFEDRAIN, percent = 30},
    	{type = COMBAT_MANADRAIN, percent = 30},
    	{type = COMBAT_DROWNDAMAGE, percent = 30},
    	{type = COMBAT_ICEDAMAGE, percent = 20},
    	{type = COMBAT_HOLYDAMAGE , percent = 30},
    	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
