local mType = Game.createMonsterType("(Tenshinhan)")
local monster = {}

monster.description = "a tenshinhan"
monster.experience = 1100
monster.health = 1600
monster.maxHealth = 1600
monster.race = "fire"
monster.corpse = 41744
monster.speed = 370
monster.manaCost = 0
monster.raceId = 2275

monster.outfit = {
    lookType = 1604,
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
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "gold coin", chance = 67500, maxCount = 135},
    {name = "gold coin", chance = 67500, maxCount = 9},
    {name = "platinum coin", chance = 19953},
    {name = "wand of inferno", chance = 1350},
    {id = 3091, chance = 3942},
    {name = "fire sword", chance = 351},
    {name = "banana", chance = 14067, maxCount = 14},
    {name = "strong health potion", chance = 9585},
    {name = "strong mana potion", chance = 9585},
    {name = "magma amulet", chance = 1310},
    {name = "magma coat", chance = 189},
    {name = "fiery heart", chance = 12663},
    {id = 12600, chance = 1269},
    {name = "brown crystal splinter", chance = 6548},
    {name = "red crystal fragment", chance = 3078},
    {name = "magma clump", chance = 16794},
    {name = "blazing bone", chance = 10840},
    {name = "semi-perfect ruby", chance = 2140},
    {name = "charm steal life", chance = 1890},
    {name = "mana leach holy rune", chance = 3970}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -235},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -195, maxDamage = -340, length = 8, spread = 3, effect = CONST_ME_EXPLOSIONHIT, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -100, maxDamage = -200, range = 7, shootEffect = CONST_ANI_FIRE, target = true},
    	{name ="vulcongra soulfire", interval = 3000, chance = 100, target = false}
}

monster.defenses = {
    	defense = 35,
    	armor = 35
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -5},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 5}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
