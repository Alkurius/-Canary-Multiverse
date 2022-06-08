local mType = Game.createMonsterType("(Toribio)")
local monster = {}

monster.description = "a toribio"
monster.experience = 9350
monster.health = 6500
monster.maxHealth = 6500
monster.race = "undead"
monster.corpse = 41747
monster.speed = 530
monster.manaCost = 0
monster.raceId = 2729

monster.outfit = {
    lookType = 2058,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Undead",
    race = BESTY_RACE_UNDEAD,
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
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {id = 3116, chance = 675, maxCount = 3},
    {name = "Book Page", chance = 675, maxCount = 5},
    {name = "Glowing Rune", chance = 675, maxCount = 3},
    {name = "Platinum Coin", chance = 13500, maxCount = 7},
    {name = "Silken Bookmark", chance = 675, maxCount = 4},
    {name = "perfect topaz", chance = 1830},
    {name = "arcane earth rune", chance = 2450},
    {name = "plague axe", chance = 940},
    {name = "nightmare bow", chance = 1720},
    {name = "black wizard shield", chance = 760},
    {name = "exp boost  x 5", chance = 3110}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1055},
    	{name ="combat", interval = 1000, chance = 12, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -1210, radius = 5, effect = CONST_ME_SMOKE, target = false},
    	{name ="combat", interval = 1000, chance = 14, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -1210, radius = 3, effect = CONST_ME_BATS, target = false}
}

monster.defenses = {
    	defense = 40,
    	armor = 76
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
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
