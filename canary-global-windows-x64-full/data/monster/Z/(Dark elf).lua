local mType = Game.createMonsterType("(Dark elf)")
local monster = {}

monster.description = "a dark elf"
monster.experience = 336
monster.health = 522
monster.maxHealth = 522
monster.race = "blood"
monster.corpse = 39789
monster.speed = 288
monster.manaCost = 0
monster.raceId = 2396

monster.outfit = {
    lookType = 1725,
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
    {name = "emerald bangle", chance = 322},
    {name = "black pearl", chance = 2520},
    {name = "gold coin", chance = 100000, maxCount = 84},
    {name = "bronze amulet", chance = 308},
    {id = 3114, chance = 1400},
    {name = "spike sword", chance = 1400},
    {name = "ice rapier", chance = 588},
    {name = "katana", chance = 2184},
    {name = "strange helmet", chance = 588},
    {name = "vampire shield", chance = 322},
    {name = "grave flower", chance = 2674},
    {name = "strong health potion", chance = 2100},
    {name = "vampire teeth", chance = 10640},
    {name = "blood preservation", chance = 7140}
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
