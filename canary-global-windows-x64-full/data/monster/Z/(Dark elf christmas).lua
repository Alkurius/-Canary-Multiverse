local mType = Game.createMonsterType("(Dark elf christmas)")
local monster = {}

monster.description = "a dark elf christmas"
monster.experience = 258
monster.health = 528
monster.maxHealth = 528
monster.race = "blood"
monster.corpse = 39789
monster.speed = 270
monster.manaCost = 0
monster.raceId = 2397

monster.outfit = {
    lookType = 1726,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Humanoid",
    race = BESTY_RACE_HUMANOID,
    toKill = 250,
    FirstUnlock = 50,
    SecondUnlock = 100,
    CharmsPoints = 25,
    Stars = 2,
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
    staticAttackChance = 80,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "gold coin", chance = 100000, maxCount = 74},
    {name = "crossbow", chance = 3850},
    {name = "bolt", chance = 67578, maxCount = 21},
    {name = "meat", chance = 34902},
    {name = "piercing bolt", chance = 20860, maxCount = 7},
    {name = "elvish bow", chance = 126},
    {name = "small topaz", chance = 658},
    {name = "elven hoof", chance = 9842},
    {name = "venison", chance = 18494}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -125},
    	{name ="combat", interval = 1500, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -100, range = 7, radius = 4, shootEffect = CONST_ANI_HUNTINGSPEAR, effect = CONST_ME_MAGIC_GREEN, target = true},
    	{name ="forest fury skill reducer", interval = 2000, chance = 20, range = 5, target = false}
}

monster.defenses = {
    	defense = 20,
    	armor = 20
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = -5},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 10},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = false},
    	{type = "bleed", condition = false}
}

mType:register(monster)
