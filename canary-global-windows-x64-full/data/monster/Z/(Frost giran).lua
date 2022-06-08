local mType = Game.createMonsterType("(Frost giran)")
local monster = {}

monster.description = "a frost giran"
monster.experience = 1800
monster.health = 2000
monster.maxHealth = 2000
monster.race = "blood"
monster.corpse = 41744
monster.speed = 540
monster.manaCost = 0
monster.raceId = 2668

monster.outfit = {
    lookType = 1997,
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
    pushable = true,
    rewardBoss = false,
    illusionable = false,
    canPushItems = false,
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
    {name = "quara eye", chance = 27216},
    {name = "mind stone", chance = 14459},
    {name = "shrimp", chance = 9639, maxCount = 5},
    {name = "small topaz", chance = 9180, maxCount = 3},
    {name = "small emerald", chance = 8708, maxCount = 3},
    {name = "great mana potion", chance = 7938, maxCount = 3},
    {name = "spirit cloak", chance = 7628},
    {name = "great health potion", chance = 6682, maxCount = 3},
    {name = "yellow piece of cloth", chance = 4360},
    {name = "green crystal shard", chance = 4050},
    {name = "green piece of cloth", chance = 3888},
    {id = 3052, chance = 2956},
    {name = "fish fin", chance = 1863},
    {id = 281, chance = 1552},
    {name = "wand of cosmic energy", chance = 1552},
    {name = "green gem", chance = 621},
    {name = "knight armor", chance = 621},
    {name = "charm extra posion shot", chance = 1790},
    {name = "arcane ice rune", chance = 2740}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 110, attack = 90, effect = CONST_ME_DRAWBLOOD, condition = {type = CONDITION_POISON, totalDamage = 5, interval = 4000}},
    	{name ="speed", interval = 2000, chance = 15, speedChange = -350, range = 7, effect = CONST_ME_MAGIC_RED, target = false, duration = 15000}
}

monster.defenses = {
    	defense = 15,
    	armor = 15,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 100, maxDamage = 120, effect = CONST_ME_MAGIC_BLUE, target = false}
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
