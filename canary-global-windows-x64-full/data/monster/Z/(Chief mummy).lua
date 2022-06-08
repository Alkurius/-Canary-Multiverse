local mType = Game.createMonsterType("(Chief mummy)")
local monster = {}

monster.description = "a chief mummy"
monster.experience = 900
monster.health = 1000
monster.maxHealth = 1000
monster.race = "undead"
monster.corpse = 41744
monster.speed = 270
monster.manaCost = 0
monster.raceId = 2295

monster.outfit = {
    lookType = 1624,
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
    {name = "candlestick", chance = 91000},
    {name = "wedding ring", chance = 598},
    {id = 3007, chance = 78},
    {name = "silver brooch", chance = 1625},
    {name = "white pearl", chance = 1313},
    {name = "black pearl", chance = 2639},
    {name = "gold coin", chance = 39000, maxCount = 104},
    {name = "silver amulet", chance = 11310},
    {id = 3059, chance = 676},
    {name = "life crystal", chance = 91},
    {name = "stone skin amulet", chance = 1066},
    {id = 3098, chance = 949},
    {id = 3260, chance = 1183},
    {name = "poison dagger", chance = 1755},
    {name = "red robe", chance = 195},
    {name = "blue robe", chance = 910},
    {name = "simple dress", chance = 7865},
    {name = "strong mana potion", chance = 884},
    {name = "terra mantle", chance = 442},
    {name = "petrified scream", chance = 5395},
    {name = "hair of a banshee", chance = 6253},
    {name = "sweet smelling bait", chance = 52},
    {name = "imperfect amethyst", chance = 1040},
    {name = "charm cancel invisibility", chance = 710},
    {name = "meteoro fire rune", chance = 3260}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -100, condition = {type = CONDITION_POISON, totalDamage = 3, interval = 4000}},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -100, maxDamage = -200, radius = 4, effect = CONST_ME_SOUND_RED, target = false},
    	{name ="combat", interval = 2000, chance = 5, type = COMBAT_DEATHDAMAGE, minDamage = -55, maxDamage = -350, range = 1, radius = 1, effect = CONST_ME_SMALLCLOUDS, target = true},
    	{name ="speed", interval = 2000, chance = 10, speedChange = -300, range = 7, effect = CONST_ME_MAGIC_RED, target = false, duration = 15000}
}

monster.defenses = {
    	defense = 25,
    	armor = 25,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 120, maxDamage = 190, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 100},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = -25},
    	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
