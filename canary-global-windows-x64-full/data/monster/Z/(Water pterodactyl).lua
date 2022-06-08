local mType = Game.createMonsterType("(Water pterodactyl)")
local monster = {}

monster.description = "a water pterodactyl"
monster.experience = 2700
monster.health = 3250
monster.maxHealth = 3250
monster.race = "blood"
monster.corpse = 41747
monster.speed = 500
monster.manaCost = 0
monster.raceId = 2653

monster.outfit = {
    lookType = 1982,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Reptile",
    race = BESTY_RACE_REPTILE,
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
    illusionable = true,
    canPushItems = true,
    canPushCreatures = false,
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
    {name = "platinum coin", chance = 100000, maxCount = 5},
    {name = "quara bone", chance = 13000, maxCount = 1},
    {name = "royal spear", chance = 10400, maxCount = 9},
    {name = "great health potion", chance = 8684, maxCount = 3},
    {name = "mind stone", chance = 8372},
    {name = "assassin star", chance = 6803, maxCount = 13},
    {name = "shrimp", chance = 5863, maxCount = 6},
    {name = "small diamond", chance = 4082, maxCount = 4},
    {name = "fish fin", chance = 2731},
    {name = "blue crystal shard", chance = 1677},
    {name = "relic sword", chance = 1366},
    {name = "skull helmet", chance = 728},
    {name = "glacier robe", chance = 520},
    {name = "abyss hammer", chance = 416},
    {name = "frozen plate", chance = 208},
    {name = "giant shrimp", chance = 104},
    {name = "complete ruby", chance = 2260},
    {name = "reflect water rune", chance = 3340},
    {name = "leopard helmet", chance = 440},
    {name = "cyclops legs", chance = 1600},
    {name = "platinum thief armor", chance = 660},
    {name = "Blood helmet", chance = 1350}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 100, attack = 82, effect = CONST_ME_DRAWBLOOD}
}

monster.defenses = {
    	defense = 45,
    	armor = 40,
    	{name ="speed", interval = 2000, chance = 15, speedChange = 30, effect = CONST_ME_MAGIC_GREEN, target = false, duration = 5000},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 50, maxDamage = 100, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = -25},
    	{type = COMBAT_EARTHDAMAGE, percent = -10},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
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
