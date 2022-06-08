local mType = Game.createMonsterType("(Powerfull youmaoh)")
local monster = {}

monster.description = "a powerfull youmaoh"
monster.experience = 4200
monster.health = 4500
monster.maxHealth = 4500
monster.race = "blood"
monster.corpse = 41747
monster.speed = 440
monster.manaCost = 0
monster.raceId = 2702

monster.outfit = {
    lookType = 2031,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Mammal",
    race = BESTY_RACE_MAMMAL,
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
    canPushItems = true,
    canPushCreatures = true,
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
    {name = "platinum coin", chance = 100000, maxCount = 7},
    {name = "Brown Crystal Splinter", chance = 1215},
    {name = "Red Crystal Fragment", chance = 11475},
    {name = "Small Enchanted Ruby", chance = 10125},
    {name = "Small Diamond", chance = 8100},
    {name = "Small Sapphire", chance = 6750},
    {name = "perfect amethyst", chance = 2410},
    {name = "life leach ice rune", chance = 2670},
    {name = "titanium axe", chance = 1710},
    {name = "the nightmare shield", chance = 1630},
    {name = "decay armor", chance = 1240},
    {name = "exp boost x 10", chance = 2200}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = -250, maxDamage = -480},
    	{name ="combat", interval = 2000, chance = 25, type = COMBAT_FIREDAMAGE, minDamage = -200, maxDamage = -350, range = 7, shootEffect = CONST_ANI_FIRE, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -200, maxDamage = -350, radius = 3, effect = CONST_ME_FIREATTACK, target = true},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -250, maxDamage = -430, length = 4, spread = 3, effect = CONST_ME_YELLOWENERGY, target = false}
}

monster.defenses = {
    	defense = 78,
    	armor = 78,
    	{name ="combat", interval = 2000, chance = 30, type = COMBAT_HEALING, minDamage = 150, maxDamage = 200, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 85},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 70},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -30},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
