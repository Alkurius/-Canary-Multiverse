local mType = Game.createMonsterType("(Mort bioman)")
local monster = {}

monster.description = "a mort bioman"
monster.experience = 305
monster.health = 475
monster.maxHealth = 475
monster.race = "blood"
monster.corpse = 41741
monster.speed = 288
monster.manaCost = 0
monster.raceId = 2772

monster.outfit = {
    lookType = 2101,
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
    illusionable = true,
    canPushItems = true,
    canPushCreatures = true,
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
    {name = "emerald bangle", chance = 310},
    {name = "black pearl", chance = 2430},
    {name = "gold coin", chance = 100000, maxCount = 81},
    {name = "bronze amulet", chance = 297},
    {id = 3114, chance = 1350},
    {name = "spike sword", chance = 1350},
    {name = "ice rapier", chance = 567},
    {name = "katana", chance = 2106},
    {name = "strange helmet", chance = 567},
    {name = "vampire shield", chance = 310},
    {name = "grave flower", chance = 2578},
    {name = "strong health potion", chance = 2025},
    {name = "vampire teeth", chance = 10260},
    {name = "blood preservation", chance = 6885}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -150},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -50, maxDamage = -200, range = 1, effect = CONST_ME_SMALLCLOUDS, target = true},
    	{name ="speed", interval = 2000, chance = 15, speedChange = -400, range = 1, effect = CONST_ME_MAGIC_RED, target = true, duration = 60000}
}

monster.defenses = {
    	defense = 30,
    	armor = 30,
    	{name ="outfit", interval = 4000, chance = 10, effect = CONST_ME_GROUNDSHAKER, target = false, duration = 5000, outfitMonster = "bat"},
    	{name ="speed", interval = 2000, chance = 15, speedChange = 300, effect = CONST_ME_MAGIC_RED, target = false, duration = 3000},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 15, maxDamage = 25, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 35},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = -10},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 100},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = -25},
    	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
