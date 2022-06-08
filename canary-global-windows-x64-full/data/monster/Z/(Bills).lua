local mType = Game.createMonsterType("(Bills)")
local monster = {}

monster.description = "a bills"
monster.experience = 40000
monster.health = 50000
monster.maxHealth = 50000
monster.race = "blood"
monster.corpse = 41750
monster.speed = 300
monster.manaCost = 0
monster.raceId = 2268

monster.outfit = {
    lookType = 1597,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Humanoid",
    race = BESTY_RACE_HUMANOID,
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
    pushable = true,
    rewardBoss = false,
    illusionable = false,
    canPushItems = false,
    canPushCreatures = false,
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = false
}

monster.loot = {
    {id = 3031, chance = 88695, maxCount = 20},
    {id = 3410, chance = 27000},
    {id = 3286, chance = 17415},
    {id = 3358, chance = 13500},
    {id = 3354, chance = 10530},
    {id = 3264, chance = 6750},
    {id = 3577, chance = 6750},
    {id = 3274, chance = 5400},
    {id = 11472, chance = 2700, maxCount = 3},
    {id = 5878, chance = 1323},
    {id = 3457, chance = 418},
    {id = 3056, chance = 162},
    {name = "LL death backpack", chance = 950},
    {name = "crystal ruby", chance = 2570},
    {name = "mana leach holy rune", chance = 3970},
    {name = "empire sword", chance = 2010},
    {name = "big crystal wand", chance = 360},
    {name = "ancient gold helmet", chance = 1650},
    {name = "divine armor", chance = 1290}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -45}
}

monster.defenses = {
    	defense = 15,
    	armor = 10
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
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
