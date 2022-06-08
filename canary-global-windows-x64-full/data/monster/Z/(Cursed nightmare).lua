local mType = Game.createMonsterType("(Cursed nightmare)")
local monster = {}

monster.description = "a cursed nightmare"
monster.experience = 28600
monster.health = 30000
monster.maxHealth = 30000
monster.race = "undead"
monster.corpse = 41359
monster.speed = 265
monster.manaCost = 0
monster.raceId = 2467

monster.outfit = {
    lookType = 1796,
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
    {name = "crystal coin", chance = 88175},
    {name = "platinum coin", chance = 100000, maxCount = 40},
    {name = "ultimate health potion", chance = 40275, maxCount = 9},
    {name = "violet gem", chance = 93200},
    {name = "green gem", chance = 80700},
    {name = "blue gem", chance = 68200},
    {name = "northwind rod", chance = 14900},
    {name = "sacred tree amulet", chance = 27400},
    {id = 33933, chance = 13650},
    {name = "glacier shoes", chance = 16150},
    {name = "glacier robe", chance = 28650},
    {name = "stone skin amulet", chance = 11150},
    {id = 23533, chance = 36150},
    {id = 33932, chance = 7400},
    {name = "glacial rod", chance = 4900},
    {id = 34024, chance = 562},
    {id = 34109, chance = 62},
    {name = "life fuild from another multiverse", chance = 810},
    {name = "summon rune Z", chance = 3650},
    {name = "charm purification (pasive)", chance = 2260},
    {name = "evil shield", chance = 1010},
    {name = "sword of eternal flames", chance = 10},
    {name = "full warrior rod", chance = 1840}
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
