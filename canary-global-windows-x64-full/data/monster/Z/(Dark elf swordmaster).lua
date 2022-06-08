local mType = Game.createMonsterType("(Dark elf swordmaster)")
local monster = {}

monster.description = "a dark elf swordmaster"
monster.experience = 5400
monster.health = 5800
monster.maxHealth = 5800
monster.race = "blood"
monster.corpse = 39780
monster.speed = 430
monster.manaCost = 0
monster.raceId = 2394

monster.outfit = {
    lookType = 1723,
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
    {name = "platinum coin", chance = 100000, maxCount = 16},
    {name = "red crystal fragment", chance = 100000},
    {name = "blank rune backpack", chance = 920},
    {name = "summon rune K", chance = 4280},
    {name = "life leach energy rune", chance = 3360},
    {name = "infernalist rod", chance = 780},
    {name = "black spirit helmet", chance = 300},
    {name = "shield of mythical justice", chance = 890}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = -150, maxDamage = -400},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -200, maxDamage = -300, radius = 5, effect = CONST_ME_ICEAREA, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -240, maxDamage = -300, length = 4, spread = 3, effect = CONST_ME_GIANTICE, target = false},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -250, maxDamage = -300, range = 7, shootEffect = CONST_ANI_ICE, target = false}
}

monster.defenses = {
    	defense = 20,
    	armor = 70
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = -10},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 100},
    	{type = COMBAT_ICEDAMAGE, percent = 100},
    	{type = COMBAT_HOLYDAMAGE , percent = 50},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = true},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
