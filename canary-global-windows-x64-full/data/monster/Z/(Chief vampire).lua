local mType = Game.createMonsterType("(Chief vampire)")
local monster = {}

monster.description = "a chief vampire"
monster.experience = 1575
monster.health = 1800
monster.maxHealth = 1800
monster.race = "blood"
monster.corpse = 41744
monster.speed = 250
monster.manaCost = 0
monster.raceId = 2320

monster.outfit = {
    lookType = 1649,
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
    {name = "emerald bangle", chance = 1980},
    {name = "small diamond", chance = 1836, maxCount = 4},
    {name = "gold coin", chance = 100000, maxCount = 268},
    {name = "platinum coin", chance = 17838},
    {name = "moonlight rod", chance = 9900},
    {name = "boots of haste", chance = 396},
    {name = "strong health potion", chance = 9000},
    {name = "strong mana potion", chance = 18378},
    {id = 649, chance = 360},
    {name = "hibiscus dress", chance = 1854},
    {name = "blood goblet", chance = 108},
    {id = 8895, chance = 1818},
    {id = 8923, chance = 1746},
    {name = "vampire teeth", chance = 18000},
    {name = "blood preservation", chance = 8910},
    {name = "leather whip", chance = 36},
    {name = "imperfect topaz", chance = 2100},
    {name = "charm life regeneration", chance = 1550},
    {name = "reflect fire rune", chance = 3560}
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
