local mType = Game.createMonsterType("(Armored dinosaur)")
local monster = {}

monster.description = "a armored dinosaur"
monster.experience = 1450
monster.health = 1800
monster.maxHealth = 1800
monster.race = "blood"
monster.corpse = 41744
monster.speed = 288
monster.manaCost = 0
monster.raceId = 2662

monster.outfit = {
    lookType = 1991,
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
    illusionable = true,
    canPushItems = true,
    canPushCreatures = false,
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "gold coin", chance = 43200, maxCount = 135},
    {name = "gold coin", chance = 43200, maxCount = 135},
    {name = "gold coin", chance = 43200, maxCount = 36},
    {name = "small emerald", chance = 3402, maxCount = 5},
    {name = "platinum coin", chance = 6615, maxCount = 3},
    {name = "tower shield", chance = 1404},
    {name = "lizard leather", chance = 1350},
    {name = "lizard scale", chance = 1310},
    {name = "strong health potion", chance = 16099},
    {name = "great health potion", chance = 9544},
    {name = "red lantern", chance = 1647},
    {name = "bunch of ripe rice", chance = 6682},
    {name = "Zaoan armor", chance = 108},
    {name = "Zaoan shoes", chance = 945},
    {name = "Zaoan legs", chance = 972},
    {name = "spiked iron ball", chance = 9450},
    {name = "high guard flag", chance = 4037},
    {name = "high guard shoulderplates", chance = 11002},
    {name = "charm extra fire shot", chance = 1870},
    {name = "ultimate water rune", chance = 3980}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -306}
}

monster.defenses = {
    	defense = 35,
    	armor = 35,
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 25, maxDamage = 75, effect = CONST_ME_MAGIC_GREEN, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 45},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -10},
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
