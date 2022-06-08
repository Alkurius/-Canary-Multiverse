local mType = Game.createMonsterType("(Watcher)")
local monster = {}

monster.description = "a watcher"
monster.experience = 255
monster.health = 390
monster.maxHealth = 390
monster.race = "venom"
monster.corpse = 41075
monster.speed = 200
monster.manaCost = 0
monster.raceId = 2340

monster.outfit = {
    lookType = 1669,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Magical",
    race = BESTY_RACE_MAGICAL,
    toKill = 250,
    FirstUnlock = 50,
    SecondUnlock = 100,
    CharmsPoints = 25,
    Stars = 1,
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
    canPushCreatures = false,
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
    {name = "gold coin", chance = 100000, maxCount = 72},
    {id = 3059, chance = 7485},
    {name = "terra rod", chance = 765},
    {name = "two handed sword", chance = 5925},
    {name = "morning star", chance = 10530},
    {name = "longsword", chance = 13590},
    {name = "steel shield", chance = 5970},
    {name = "bonelord shield", chance = 165},
    {name = "bonelord eye", chance = 1515},
    {name = "mana potion", chance = 450},
    {name = "small flask of eyedrops", chance = 7590}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -5},
    	{name ="combat", interval = 2000, chance = 5, type = COMBAT_ENERGYDAMAGE, minDamage = -15, maxDamage = -45, range = 7, shootEffect = CONST_ANI_ENERGY, target = false},
    	{name ="combat", interval = 2000, chance = 5, type = COMBAT_FIREDAMAGE, minDamage = -25, maxDamage = -45, range = 7, shootEffect = CONST_ANI_FIRE, target = false},
    	{name ="combat", interval = 2000, chance = 5, type = COMBAT_DEATHDAMAGE, minDamage = -30, maxDamage = -50, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_SMALLCLOUDS, target = false},
    	{name ="combat", interval = 2000, chance = 5, type = COMBAT_EARTHDAMAGE, minDamage = -5, maxDamage = -45, range = 7, shootEffect = CONST_ANI_POISON, target = false},
    	{name ="combat", interval = 2000, chance = 5, type = COMBAT_DEATHDAMAGE, minDamage = -5, maxDamage = -50, range = 7, shootEffect = CONST_ANI_DEATH, target = false},
    	{name ="combat", interval = 2000, chance = 5, type = COMBAT_LIFEDRAIN, minDamage = 0, maxDamage = -45, range = 7, effect = CONST_ME_MAGIC_RED, target = false},
    	{name ="combat", interval = 2000, chance = 5, type = COMBAT_MANADRAIN, minDamage = -5, maxDamage = -35, range = 7, target = false}
}

monster.defenses = {
    	defense = 5,
    	armor = 5
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = -10},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 20},
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
