local mType = Game.createMonsterType("(Python)")
local monster = {}

monster.description = "a python"
monster.experience = 650
monster.health = 1040
monster.maxHealth = 1040
monster.race = "blood"
monster.corpse = 41744
monster.speed = 270
monster.manaCost = 0
monster.raceId = 2647

monster.outfit = {
    lookType = 1976,
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
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "platinum coin", chance = 81488, maxCount = 6},
    {name = "rare earth", chance = 63600, maxCount = 3},
    {id = 12600, chance = 44768, maxCount = 8},
    {name = "glob of acid slime", chance = 37888},
    {name = "stonerefiner's skull", chance = 32176},
    {name = "poisonous slime", chance = 32064, maxCount = 5},
    {name = "half-digested stones", chance = 24336, maxCount = 8},
    {name = "charm extra death shot", chance = 1490},
    {name = "mana leach water rune", chance = 3690}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -100},
    	{name ="berserk", interval = 2000, chance = 15, minDamage = 0, maxDamage = -70, target = false},
    	{name ="stone shower rune", interval = 2000, chance = 10, minDamage = -40, maxDamage = -80, range = 7, target = false}
}

monster.defenses = {
    	defense = 45,
    	armor = 20
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 1},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 90},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = false},
    	{type = "bleed", condition = false}
}

mType:register(monster)
