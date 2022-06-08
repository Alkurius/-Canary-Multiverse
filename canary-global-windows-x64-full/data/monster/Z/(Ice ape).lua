local mType = Game.createMonsterType("(Ice ape)")
local monster = {}

monster.description = "a ice ape"
monster.experience = 1700
monster.health = 1500
monster.maxHealth = 1500
monster.race = "blood"
monster.corpse = 41744
monster.speed = 320
monster.manaCost = 0
monster.raceId = 2288

monster.outfit = {
    lookType = 1617,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Mammal",
    race = BESTY_RACE_MAMMAL,
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

monster.loot = {
    {id = 11479, chance = 33750},
    {id = 3031, chance = 24975, maxCount = 61},
    {id = 3287, chance = 19575, maxCount = 24},
    {id = 3578, chance = 15255, maxCount = 3},
    {id = 3316, chance = 7695},
    {id = 3347, chance = 7695},
    {id = 3357, chance = 7574},
    {id = 3557, chance = 6318},
    {id = 3307, chance = 5468},
    {id = 3084, chance = 3632},
    {id = 3265, chance = 2970},
    {id = 3384, chance = 2565},
    {id = 818, chance = 1013},
    {name = "imperfect amethyst", chance = 1040},
    {name = "charm cancel invisibility", chance = 710},
    {name = "arcane fire rune", chance = 3650}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -300}
}

monster.defenses = {
    	defense = 35,
    	armor = 32
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 2},
    	{type = COMBAT_EARTHDAMAGE, percent = -10},
    	{type = COMBAT_FIREDAMAGE, percent = 80},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 10},
    	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
