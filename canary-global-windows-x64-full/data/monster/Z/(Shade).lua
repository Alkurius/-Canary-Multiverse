local mType = Game.createMonsterType("(Shade)")
local monster = {}

monster.description = "a shade"
monster.experience = 4025
monster.health = 4370
monster.maxHealth = 4370
monster.race = "blood"
monster.corpse = 41747
monster.speed = 430
monster.manaCost = 0
monster.raceId = 2561

monster.outfit = {
    lookType = 1890,
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
    staticAttackChance = 70,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "platinum coin", chance = 100000, maxCount = 7},
    {name = "Great Spirit Potion", chance = 43274, maxCount = 3},
    {name = "Two Handed Sword", chance = 23100},
    {name = "Terra Rod", chance = 6692},
    {name = "Silver Brooch", chance = 21266},
    {name = "Emerald Bangle", chance = 20636},
    {name = "Twin Hooks", chance = 1638},
    {name = "Springsprout Rod", chance = 1694},
    {id = 30083, chance = 2646},
    {name = "Coral Brooch", chance = 1862},
    {name = "Serpent Sword", chance = 2730},
    {name = "Hexagonal Ruby", chance = 1120},
    {name = "Assassin Dagger", chance = 1358},
    {name = "Spike Sword", chance = 742},
    {name = "Wyvern Fang", chance = 168},
    {name = "cobra life potion", chance = 990},
    {name = "tornado death rune", chance = 2700},
    {name = "rare special ultimate holy rune", chance = 3860},
    {name = "darkness helmet", chance = 700},
    {name = "sword of eternal winter", chance = 410},
    {name = "Xena sword", chance = 1650}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -370},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -200, maxDamage = -390, radius = 4, effect = CONST_ME_GREEN_RINGS, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -320, maxDamage = -460, radius = 4, effect = CONST_ME_EXPLOSIONAREA, target = true},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -340, length = 3, spread = 0, effect = CONST_ME_GROUNDSHAKER, target = false}
}

monster.defenses = {
    	defense = 69,
    	armor = 69,
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 150, maxDamage = 200, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 20},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = -10},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 20},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
