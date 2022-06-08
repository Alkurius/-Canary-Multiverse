local mType = Game.createMonsterType("(Pandillero 2)")
local monster = {}

monster.description = "a pandillero 2"
monster.experience = 1150
monster.health = 1500
monster.maxHealth = 1500
monster.race = "blood"
monster.corpse = 41744
monster.speed = 175
monster.manaCost = 0
monster.raceId = 2753

monster.outfit = {
    lookType = 2082,
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
    staticAttackChance = 95,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = false
}

monster.loot = {
    {name = "strong health potion", chance = 23907},
    {name = "gold coin", chance = 100000, maxCount = 287},
    {name = "black pearl", chance = 663, maxCount = 3},
    {name = "berserk potion", chance = 3822},
    {name = "small ruby", chance = 5226, maxCount = 6},
    {name = "battle axe", chance = 8242},
    {name = "bug meat", chance = 22308},
    {name = "red mushroom", chance = 10049, maxCount = 4},
    {name = "halberd", chance = 12857},
    {name = "orcish axe", chance = 1105},
    {name = "cultish robe", chance = 12857},
    {name = "ham", chance = 11648},
    {name = "orc tooth", chance = 7033},
    {name = "orcish gear", chance = 20098},
    {name = "orc leather", chance = 10049},
    {name = "charm extra physical shot", chance = 1170},
    {name = "ultimate missile earth rune", chance = 3550}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -500}
}

monster.defenses = {
    	defense = 40,
    	armor = 40,
    	{name ="speed", interval = 2000, chance = 30, speedChange = 290, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = false},
    	{type = "bleed", condition = false}
}

mType:register(monster)
