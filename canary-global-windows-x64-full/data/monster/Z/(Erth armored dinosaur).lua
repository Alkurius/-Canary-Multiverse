local mType = Game.createMonsterType("(Erth armored dinosaur)")
local monster = {}

monster.description = "a erth armored dinosaur"
monster.experience = 780
monster.health = 1200
monster.maxHealth = 1200
monster.race = "blood"
monster.corpse = 41744
monster.speed = 490
monster.manaCost = 0
monster.raceId = 2675

monster.outfit = {
    lookType = 2004,
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
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = false
}

monster.loot = {
    {name = "gold coin", chance = 40500, maxCount = 327},
    {name = "platinum coin", chance = 13392, maxCount = 3},
    {name = "war hammer", chance = 1364},
    {name = "knight armor", chance = 1174},
    {name = "spiked squelcher", chance = 216},
    {name = "strong health potion", chance = 6750, maxCount = 3},
    {name = "strong mana potion", chance = 6750, maxCount = 3},
    {name = "small topaz", chance = 10719, maxCount = 3},
    {name = "stampor horn", chance = 6642},
    {name = "stampor talons", chance = 13432, maxCount = 3},
    {name = "hollow stampor hoof", chance = 4077},
    {name = "charm extra posion shot", chance = 1790},
    {name = "meteoro ice rune", chance = 3680}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -130},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -150, maxDamage = -280, radius = 3, effect = CONST_ME_GROUNDSHAKER, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -75, maxDamage = -100, shootEffect = CONST_ANI_SMALLSTONE, target = true},
    	{name ="stampor skill reducer", interval = 2000, chance = 10, range = 5, target = false}
}

monster.defenses = {
    	defense = 0,
    	armor = 0,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 90, maxDamage = 120, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 20},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 20},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 10},
    	{type = COMBAT_HOLYDAMAGE , percent = 50},
    	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
