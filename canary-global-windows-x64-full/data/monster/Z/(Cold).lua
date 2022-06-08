local mType = Game.createMonsterType("(Cold)")
local monster = {}

monster.description = "a cold"
monster.experience = 26000
monster.health = 32000
monster.maxHealth = 32000
monster.race = "blood"
monster.corpse = 41750
monster.speed = 250
monster.manaCost = 0
monster.raceId = 2698

monster.outfit = {
    lookType = 2027,
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
    {name = "crystal coin", chance = 95229},
    {name = "platinum coin", chance = 100000, maxCount = 68},
    {name = "ultimate health potion", chance = 43497, maxCount = 9},
    {name = "small diamond", chance = 88506, maxCount = 9},
    {name = "gold ingot", chance = 34506},
    {name = "blue crystal splinter", chance = 34506},
    {name = "cyan crystal fragment", chance = 34506},
    {name = "red crystal fragment", chance = 34506},
    {name = "magma boots", chance = 47925},
    {name = "blue gem", chance = 88506},
    {name = "giant sword", chance = 18225},
    {name = "war axe", chance = 12825},
    {name = "mercenary sword", chance = 15525},
    {name = "green crystal fragment", chance = 12825},
    {name = "onyx chip", chance = 10125},
    {id = 34109, chance = 68},
    {name = "perfect amethyst", chance = 2410},
    {name = "life leach ice rune", chance = 2670},
    {name = "titanium legs", chance = 720},
    {name = "nightmare helmet", chance = 1640},
    {name = "armor of the dark lord", chance = 1940},
    {name = "sword of RA", chance = 1580}
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
