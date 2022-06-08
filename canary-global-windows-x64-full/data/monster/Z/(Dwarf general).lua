local mType = Game.createMonsterType("(Dwarf general)")
local monster = {}

monster.description = "a dwarf general"
monster.experience = 4000
monster.health = 5800
monster.maxHealth = 5800
monster.race = "undead"
monster.corpse = 41206
monster.speed = 430
monster.manaCost = 0
monster.raceId = 2388

monster.outfit = {
    lookType = 1717,
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
    canPushCreatures = true,
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "ruby necklace", chance = 1875},
    {name = "white pearl", chance = 12500, maxCount = 4},
    {name = "black pearl", chance = 15000, maxCount = 4},
    {name = "gold coin", chance = 100000, maxCount = 248},
    {name = "platinum coin", chance = 100000, maxCount = 9},
    {name = "pumpkin backpack", chance = 1230},
    {name = "summon rune K", chance = 4280},
    {name = "life leach energy rune", chance = 3360},
    {name = "infernalist wand", chance = 330},
    {name = "general dwarf helmet", chance = 620},
    {name = "general dwarf shield", chance = 1470},
    {name = "general dwarf sword", chance = 980},
    {name = "general dwarf axe", chance = 210},
    {name = "royal dwarf armor", chance = 950},
    {name = "royal dwarf sword", chance = 390},
    {name = "royal dwarf axe", chance = 1690},
    {name = "dwarf volcano armor", chance = 1220},
    {name = "dwarf volcano wand", chance = 950},
    {name = "dwarf volcano crossbow", chance = 320}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -420},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -40, maxDamage = -210, length = 3, spread = 0, effect = CONST_ME_MAGIC_RED, target = false},
    	{name ="speed", interval = 2000, chance = 20, speedChange = -800, radius = 6, effect = CONST_ME_SMALLCLOUDS, target = false, duration = 4000}
}

monster.defenses = {
    	defense = 30,
    	armor = 30
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 10},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 50},
    	{type = COMBAT_HOLYDAMAGE , percent = -20},
    	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
