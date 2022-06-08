local mType = Game.createMonsterType("(Lobster's revenge)")
local monster = {}

monster.description = "a lobster's revenge"
monster.experience = 1600
monster.health = 2200
monster.maxHealth = 2200
monster.race = "blood"
monster.corpse = 41744
monster.speed = 500
monster.manaCost = 0
monster.raceId = 2623

monster.outfit = {
    lookType = 1952,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Aquatic",
    race = BESTY_RACE_AQUATIC,
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
    canWalkOnPoison = false
}

monster.loot = {
    {name = "gold coin", chance = 35000, maxCount = 125},
    {name = "gold coin", chance = 62500, maxCount = 68},
    {name = "quara bone", chance = 12325},
    {name = "royal spear", chance = 11550, maxCount = 9},
    {name = "small diamond", chance = 6625, maxCount = 2},
    {name = "shrimp", chance = 6225, maxCount = 6},
    {name = "double axe", chance = 3764},
    {name = "fish fin", chance = 2400, maxCount = 1},
    {name = "great health potion", chance = 1300},
    {name = "relic sword", chance = 838},
    {name = "assassin star", chance = 662},
    {name = "glacier robe", chance = 550},
    {name = "skull helmet", chance = 488},
    {name = "giant shrimp", chance = 12},
    {name = "charm mana regeneration", chance = 890},
    {name = "ultimate missile water rune", chance = 4200}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -473, effect = CONST_ME_DRAWBLOOD}
}

monster.defenses = {
    	defense = 45,
    	armor = 45,
    	{name ="speed", interval = 2000, chance = 15, speedChange = 270, effect = CONST_ME_MAGIC_GREEN, target = false, duration = 5000},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 25, maxDamage = 75, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = -25},
    	{type = COMBAT_EARTHDAMAGE, percent = -10},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 100},
    	{type = COMBAT_ICEDAMAGE, percent = 100},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
