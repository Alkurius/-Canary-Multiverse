local mType = Game.createMonsterType("(Slave hunter)")
local monster = {}

monster.description = "a slave hunter"
monster.experience = 6050
monster.health = 6400
monster.maxHealth = 6400
monster.race = "blood"
monster.corpse = 41387
monster.speed = 450
monster.manaCost = 0
monster.raceId = 2477

monster.outfit = {
    lookType = 1806,
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
    {name = "gold coin", chance = 100000, maxCount = 135},
    {name = "platinum coin", chance = 100000, maxCount = 9},
    {name = "banana skin", chance = 14445},
    {name = "piece of iron", chance = 14175},
    {name = "fishbone", chance = 12825},
    {id = 3114, chance = 14040},
    {id = 3115, chance = 12420},
    {id = 3116, chance = 6075},
    {name = "two handed sword", chance = 3645},
    {id = 3578, chance = 9450, maxCount = 4},
    {name = "ham", chance = 13500},
    {name = "iron ore", chance = 4050},
    {name = "fish fin", chance = 6750},
    {name = "hardened bone", chance = 7695},
    {id = 5951, chance = 12690},
    {name = "assassin dagger", chance = 1350},
    {name = "haunted blade", chance = 2700},
    {name = "nightmare blade", chance = 513},
    {name = "great mana potion", chance = 22950, maxCount = 4},
    {name = "great health potion", chance = 24975, maxCount = 3},
    {name = "sai", chance = 1620},
    {name = "violet crystal shard", chance = 4050},
    {name = "brown crystal splinter", chance = 16200, maxCount = 3},
    {name = "red crystal fragment", chance = 10260},
    {id = 16279, chance = 16200},
    {name = "cluster of solace", chance = 1242},
    {name = "frazzle tongue", chance = 20250},
    {name = "frazzle skin", chance = 18900},
    {name = "stamina fuild from another multiverse", chance = 1120},
    {name = "epic Santa Doll", chance = 180},
    {name = "charm soul (pasive)", chance = 1300},
    {name = "heaven armor", chance = 540},
    {name = "templar armor", chance = 1930},
    {name = "templar axe", chance = 1900}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -499},
    	-- bleed
    	{name ="condition", type = CONDITION_BLEEDING, interval = 2000, chance = 10, minDamage = -500, maxDamage = -1000, radius = 3, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -900, length = 8, spread = 3, effect = CONST_ME_EXPLOSIONAREA, target = false},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -500, radius = 2, shootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_STONES, target = true},
    	{name ="speed", interval = 2000, chance = 15, speedChange = -800, radius = 6, effect = CONST_ME_MAGIC_RED, target = false, duration = 15000},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = 0, maxDamage = -800, length = 8, spread = 3, effect = CONST_ME_MAGIC_RED, target = false}
}

monster.defenses = {
    	defense = 50,
    	armor = 50,
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 250, maxDamage = 425, effect = CONST_ME_HITBYPOISON, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
    	{type = COMBAT_ENERGYDAMAGE, percent = 5},
    	{type = COMBAT_EARTHDAMAGE, percent = 15},
    	{type = COMBAT_FIREDAMAGE, percent = 5},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 5},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 5}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
