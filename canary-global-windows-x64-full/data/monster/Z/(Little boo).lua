local mType = Game.createMonsterType("(Little boo)")
local monster = {}

monster.description = "a little boo"
monster.experience = 28600
monster.health = 25000
monster.maxHealth = 25000
monster.race = "blood"
monster.corpse = 41747
monster.speed = 285
monster.manaCost = 0
monster.raceId = 2682

monster.outfit = {
    lookType = 2011,
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
    {name = "crystal coin", chance = 95229},
    {name = "platinum coin", chance = 100000, maxCount = 45},
    {name = "great mana potion", chance = 97092, maxCount = 7},
    {id = 281, chance = 73656},
    {id = 282, chance = 73656},
    {name = "blue gem", chance = 87156},
    {id = 23533, chance = 39150},
    {name = "wand of voodoo", chance = 43092},
    {name = "wand of defiance", chance = 34992},
    {name = "wand of everblazing", chance = 28242},
    {name = "alloy legs", chance = 24192},
    {id = 23529, chance = 39150},
    {id = 23531, chance = 39150},
    {name = "wand of starstorm", chance = 16092},
    {name = "perfect ruby", chance = 2300},
    {name = "ultimate missile ice rune", chance = 3320},
    {name = "leopard boots", chance = 1250},
    {name = "elite royal helmet", chance = 1120},
    {name = "platinum thief sword", chance = 1100},
    {name = "Earth legs", chance = 720}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -800},
    	{name ="combat", interval = 2000, chance = 13, type = COMBAT_ICEDAMAGE, minDamage = -750, maxDamage = -900, range = 7, radius = 4, shootEffect = CONST_ANI_ICE, effect = CONST_ME_BIGCLOUDS, target = true},
    	{name ="combat", interval = 2000, chance = 17, type = COMBAT_HOLYDAMAGE, minDamage = -750, maxDamage = -900, radius = 4, effect = CONST_ME_HOLYAREA, target = false},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -750, maxDamage = -1100, range = 7, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYDAMAGE, target = true},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -750, maxDamage = -1100, range = 7, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK, target = true},
    	{name ="combat", interval = 2000, chance = 13, type = COMBAT_ICEDAMAGE, minDamage = -750, maxDamage = -900, radius = 3, effect = CONST_ME_ICEATTACK, target = false}
    	-- Chain: const_me-> CONST_ME_BLUE_ENERGY_SPARK, combat_t->COMBAT_ICEDAMAGE
}

monster.defenses = {
    	defense = 75,
    	armor = 100
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = -20},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = -20},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 30},
    	{type = COMBAT_HOLYDAMAGE , percent = 40},
    	{type = COMBAT_DEATHDAMAGE , percent = -20}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = true},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
