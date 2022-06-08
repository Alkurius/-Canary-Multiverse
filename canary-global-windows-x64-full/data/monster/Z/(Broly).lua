local mType = Game.createMonsterType("(Broly)")
local monster = {}

monster.description = "a broly"
monster.experience = 25000
monster.health = 35000
monster.maxHealth = 35000
monster.race = "blood"
monster.corpse = 41750
monster.speed = 310
monster.manaCost = 0
monster.raceId = 2270

monster.outfit = {
    lookType = 1599,
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
    rewardBoss = true,
    illusionable = false,
    canPushItems = true,
    canPushCreatures = true,
    staticAttackChance = 70,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "energy bar", chance = 100000},
    {name = "platinum coin", chance = 100000, maxCount = 7},
    {name = "supreme health potion", chance = 78072, maxCount = 27},
    {name = "ultimate mana potion", chance = 75226, maxCount = 27},
    {name = "yellow gem", chance = 48388, maxCount = 3},
    {name = "HMM earth Backpack", chance = 1780},
    {name = "crystal ruby", chance = 2570},
    {name = "mana leach holy rune", chance = 3970},
    {name = "empire sword", chance = 2010},
    {name = "big crystal wand", chance = 360},
    {name = "ancient gold armor", chance = 1560},
    {name = "divine armor", chance = 1290}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -900, effect = CONST_ME_DRAWBLOOD},
    	{name ="combat", interval = 6000, chance = 25, type = COMBAT_HOLYDAMAGE, minDamage = -650, maxDamage = -950, length = 8, spread = 3, effect = CONST_ME_HOLYAREA, target = false},
    	{name ="combat", interval = 2750, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -600, maxDamage = -1000, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = false},
    	{name ="combat", interval = 2500, chance = 22, type = COMBAT_DEATHDAMAGE, minDamage = -600, maxDamage = -800, radius = 3, effect = CONST_ME_MORTAREA, target = false},
    	{name ="combat", interval = 3300, chance = 24, type = COMBAT_ICEDAMAGE, minDamage = -500, maxDamage = -700, length = 4, spread = 0, effect = CONST_ME_ICEATTACK, target = false},
    	{name ="singlecloudchain", interval = 6000, chance = 34, minDamage = -400, maxDamage = -900, range = 4, effect = CONST_ME_ENERGYHIT, target = true}
}

monster.defenses = {
    	defense = 60,
    	armor = 82,
    	{name ="combat", interval = 4000, chance = 40, type = COMBAT_HEALING, minDamage = 300, maxDamage = 800, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
    	{type = COMBAT_ENERGYDAMAGE, percent = -20},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
