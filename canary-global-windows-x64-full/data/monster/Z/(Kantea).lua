local mType = Game.createMonsterType("(Kantea)")
local monster = {}

monster.description = "a kantea"
monster.experience = 110
monster.health = 180
monster.maxHealth = 180
monster.race = "blood"
monster.corpse = 41738
monster.speed = 310
monster.manaCost = 0
monster.raceId = 2746

monster.outfit = {
    lookType = 2075,
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
    Stars = 1,
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
    {id = 2920, chance = 1323},
    {id = 3012, chance = 13784},
    {name = "gold coin", chance = 62100, maxCount = 109},
    {name = "obsidian lance", chance = 1485},
    {name = "orcish axe", chance = 9288},
    {name = "scale armor", chance = 824},
    {name = "battle shield", chance = 13365},
    {name = "meat", chance = 32400, maxCount = 4},
    {name = "orc tooth", chance = 2700},
    {name = "warwolf fur", chance = 12704},
    {name = "orc leather", chance = 13176}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -130}
}

monster.defenses = {
    	defense = 15,
    	armor = 15,
    	{name ="speed", interval = 2000, chance = 15, speedChange = 200, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 20},
    	{type = COMBAT_EARTHDAMAGE, percent = -10},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 10},
    	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = false},
    	{type = "bleed", condition = false}
}

mType:register(monster)
