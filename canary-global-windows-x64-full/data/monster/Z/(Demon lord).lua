local mType = Game.createMonsterType("(Demon lord)")
local monster = {}

monster.description = "a demon lord"
monster.experience = 26000
monster.health = 32000
monster.maxHealth = 32000
monster.race = "blood"
monster.corpse = 41128
monster.speed = 250
monster.manaCost = 0
monster.raceId = 2364

monster.outfit = {
    lookType = 1693,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Demon",
    race = BESTY_RACE_DEMON,
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
    canPushItems = false,
    canPushCreatures = false,
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
    {name = "crystal coin", chance = 77594},
    {name = "platinum coin", chance = 99594, maxCount = 55},
    {name = "ultimate health potion", chance = 35442, maxCount = 8},
    {name = "small diamond", chance = 72116, maxCount = 8},
    {name = "gold ingot", chance = 28116},
    {name = "blue crystal splinter", chance = 28116},
    {name = "cyan crystal fragment", chance = 28116},
    {name = "red crystal fragment", chance = 28116},
    {name = "magma boots", chance = 39050},
    {name = "blue gem", chance = 72116},
    {name = "giant sword", chance = 14850},
    {name = "war axe", chance = 10450},
    {name = "mercenary sword", chance = 12650},
    {name = "green crystal fragment", chance = 10450},
    {name = "onyx chip", chance = 8250},
    {id = 34109, chance = 55},
    {name = "Meteoro death backpack", chance = 1020},
    {name = "Fire Devil Doll", chance = 1330},
    {name = "arcane energy rune", chance = 3140},
    {name = "lava crossbow", chance = 1540},
    {name = "mythical crown boots", chance = 120},
    {name = "Gorgon rod", chance = 1120}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1050},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -750, maxDamage = -1000, radius = 4, effect = CONST_ME_MORTAREA, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -550, maxDamage = -900, range = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -800, maxDamage = -1250, length = 8, effect = CONST_ME_EXPLOSIONHIT, target = false}
    	-- Chain: const_me-> CONST_ME_WHITE_ENERGY_SPARK, combat_t->COMBAT_DEATHDAMAGE
}

monster.defenses = {
    	defense = 110,
    	armor = 120,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 650, maxDamage = 1200, effect = CONST_ME_MAGIC_RED, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 40},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -20},
    	{type = COMBAT_HOLYDAMAGE , percent = -25},
    	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = true},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
