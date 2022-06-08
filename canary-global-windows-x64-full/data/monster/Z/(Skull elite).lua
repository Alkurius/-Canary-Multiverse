local mType = Game.createMonsterType("(Skull elite)")
local monster = {}

monster.description = "a skull elite"
monster.experience = 1050
monster.health = 1200
monster.maxHealth = 1200
monster.race = "blood"
monster.corpse = 41744
monster.speed = 250
monster.manaCost = 0
monster.raceId = 2200

monster.outfit = {
    lookType = 1529,
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
    staticAttackChance = 80,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "emerald bangle", chance = 1430},
    {name = "small diamond", chance = 1326, maxCount = 3},
    {name = "gold coin", chance = 100000, maxCount = 194},
    {name = "platinum coin", chance = 12883},
    {name = "moonlight rod", chance = 7150},
    {name = "boots of haste", chance = 286},
    {name = "strong health potion", chance = 6500},
    {name = "strong mana potion", chance = 13273},
    {id = 649, chance = 260},
    {name = "hibiscus dress", chance = 1339},
    {name = "blood goblet", chance = 78},
    {id = 8895, chance = 1313},
    {id = 8923, chance = 1261},
    {name = "vampire teeth", chance = 13000},
    {name = "blood preservation", chance = 6435},
    {name = "leather whip", chance = 26},
    {name = "imperfect emerald", chance = 1690},
    {name = "charm steal mana", chance = 1880},
    {name = "reflect earth rune", chance = 3130}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -190},
    	{name ="combat", interval = 3000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -60, maxDamage = -130, range = 1, effect = CONST_ME_MAGIC_RED, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -60, maxDamage = -150, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true},
    	{name ="combat", interval = 4000, chance = 5, type = COMBAT_DEATHDAMAGE, minDamage = -60, maxDamage = -150, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_HEARTS, target = true},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -60, maxDamage = -150, range = 7, shootEffect = CONST_ANI_ENERGY, target = true}
}

monster.defenses = {
    	defense = 20,
    	armor = 20,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 40, maxDamage = 80, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 10},
    	{type = COMBAT_EARTHDAMAGE, percent = 20},
    	{type = COMBAT_FIREDAMAGE, percent = -10},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 10},
    	{type = COMBAT_ICEDAMAGE, percent = 20},
    	{type = COMBAT_HOLYDAMAGE , percent = -10},
    	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
