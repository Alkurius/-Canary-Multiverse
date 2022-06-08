local mType = Game.createMonsterType("(Lady vampire)")
local monster = {}

monster.description = "a lady vampire"
monster.experience = 28600
monster.health = 30000
monster.maxHealth = 30000
monster.race = "undead"
monster.corpse = 41750
monster.speed = 265
monster.manaCost = 0
monster.raceId = 2584

monster.outfit = {
    lookType = 1913,
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
    {name = "crystal coin", chance = 91702},
    {name = "platinum coin", chance = 100000, maxCount = 42},
    {name = "ultimate health potion", chance = 41886, maxCount = 9},
    {name = "violet gem", chance = 96928},
    {name = "green gem", chance = 83928},
    {name = "blue gem", chance = 70928},
    {name = "northwind rod", chance = 15496},
    {name = "sacred tree amulet", chance = 28496},
    {id = 33933, chance = 14196},
    {name = "glacier shoes", chance = 16796},
    {name = "glacier robe", chance = 29796},
    {name = "stone skin amulet", chance = 11596},
    {id = 23533, chance = 37596},
    {id = 33932, chance = 7696},
    {name = "glacial rod", chance = 5096},
    {id = 34024, chance = 585},
    {id = 34109, chance = 65},
    {name = "hermit seed extract", chance = 1990},
    {name = "mana leach death rune", chance = 3500},
    {name = "special reflect fire rune", chance = 4100},
    {name = "darkness armor", chance = 730},
    {name = "pharaonic wand (Fire)", chance = 600},
    {name = "olimpic legs", chance = 340},
    {name = "Bills legs", chance = 1130}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -800},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -550, maxDamage = -800, range = 7, shootEffect = CONST_ANI_SNOWBALL, effect = CONST_ME_ICEATTACK, target = true},
    	{name ="combat", interval = 2000, chance = 12, type = COMBAT_ICEDAMAGE, minDamage = -500, maxDamage = -900, range = 7, radius = 5, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEAREA, target = true},
    	{name ="combat", interval = 2000, chance = 17, type = COMBAT_HOLYDAMAGE, minDamage = -500, maxDamage = -900, radius = 3, effect = CONST_ME_HOLYAREA, target = false},
    	{name ="combat", interval = 3000, chance = 25, type = COMBAT_HOLYDAMAGE, minDamage = -500, maxDamage = -800, radius = 4, effect = CONST_ME_HOLYDAMAGE, target = false},
    	{name ="combat", interval = 2000, chance = 18, type = COMBAT_HOLYDAMAGE, minDamage = -500, maxDamage = -900, radius = 4, effect = CONST_ME_HOLYAREA, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -600, maxDamage = -1100, radius = 7, effect = CONST_ME_BIGCLOUDS, target = false}
    	-- Chain: const_me-> CONST_ME_YELLOW_ENERGY_SPARK, combat_t->COMBAT_HOLYDAMAGE
    
}

monster.defenses = {
    	defense = 90,
    	armor = 105
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 5},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 30},
    	{type = COMBAT_HOLYDAMAGE , percent = 50},
    	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = true},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
