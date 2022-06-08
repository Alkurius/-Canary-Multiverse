local mType = Game.createMonsterType("(Dodruk)")
local monster = {}

monster.description = "a dodruk"
monster.experience = 35000
monster.health = 95000
monster.maxHealth = 95000
monster.race = "blood"
monster.corpse = 41750
monster.speed = 490
monster.manaCost = 0
monster.raceId = 2592

monster.outfit = {
    lookType = 1921,
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
    rewardBoss = true,
    illusionable = false,
    canPushItems = true,
    canPushCreatures = true,
    staticAttackChance = 95,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "deepling axe", chance = 1950},
    {name = "depth calcei", chance = 1430},
    {id = 13995, chance = 1820},
    {name = "depth lorica", chance = 1040},
    {name = "ornate chestplate", chance = 845},
    {name = "ornate legs", chance = 962},
    {name = "ornate mace", chance = 1950},
    {name = "ornate shield", chance = 1820},
    {name = "hermit seed extract", chance = 1990},
    {name = "Wrigg Doll", chance = -200},
    {name = "special meteoro holy rune", chance = 2520},
    {name = "darkness legs", chance = 1700},
    {name = "pharaonic rod (ice)", chance = 830},
    {name = "olimpic sword", chance = 1310},
    {name = "Bills boots", chance = 600}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2000, condition = {type = CONDITION_POISON, totalDamage = 870, interval = 4000}},
    	{name ="combat", interval = 2200, chance = 19, type = COMBAT_FIREDAMAGE, minDamage = 0, maxDamage = -1000, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
    	{name ="combat", interval = 3000, chance = 32, type = COMBAT_MANADRAIN, minDamage = -200, maxDamage = -800, range = 7, radius = 7, effect = CONST_ME_MORTAREA, target = true},
    	{name ="combat", interval = 1300, chance = 27, type = COMBAT_EARTHDAMAGE, minDamage = 0, maxDamage = -600, radius = 3, effect = CONST_ME_EXPLOSIONAREA, target = false},
    	{name ="combat", interval = 1200, chance = 6, type = COMBAT_DEATHDAMAGE, minDamage = -300, maxDamage = -900, length = 8, spread = 3, effect = CONST_ME_MORTAREA, target = false},
    	{name ="combat", interval = 1000, chance = 5, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -1000, length = 8, spread = 3, effect = CONST_ME_HITBYFIRE, target = false},
    	{name ="combat", interval = 1000, chance = 5, type = COMBAT_ICEDAMAGE, minDamage = -1000, maxDamage = -2000, length = 8, spread = 3, effect = CONST_ME_ICEAREA, target = false},
    	{name ="combat", interval = 4000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -500, maxDamage = -1000, length = 8, spread = 3, effect = CONST_ME_WATERSPLASH, target = false},
    	{name ="speed", interval = 1900, chance = 14, speedChange = -700, range = 7, radius = 1, target = true, duration = 15000}
}

monster.defenses = {
    	defense = 40,
    	armor = 40,
    	{name ="combat", interval = 5000, chance = 7, type = COMBAT_HEALING, minDamage = 12000, maxDamage = 19000, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 1},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 100},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 15}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
