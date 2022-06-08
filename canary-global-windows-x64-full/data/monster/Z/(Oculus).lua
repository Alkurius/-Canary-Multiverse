local mType = Game.createMonsterType("(Oculus)")
local monster = {}

monster.description = "a oculus"
monster.experience = 6050
monster.health = 6400
monster.maxHealth = 6400
monster.race = "blood"
monster.corpse = 41374
monster.speed = 450
monster.manaCost = 0
monster.raceId = 2472

monster.outfit = {
    lookType = 1801,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Magical",
    race = BESTY_RACE_MAGICAL,
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
    {name = "gold coin", chance = 100000, maxCount = 130},
    {name = "platinum coin", chance = 100000, maxCount = 9},
    {name = "banana skin", chance = 13910},
    {name = "piece of iron", chance = 13650},
    {name = "fishbone", chance = 12350},
    {id = 3114, chance = 13520},
    {id = 3115, chance = 11960},
    {id = 3116, chance = 5850},
    {name = "two handed sword", chance = 3510},
    {id = 3578, chance = 9100, maxCount = 4},
    {name = "ham", chance = 13000},
    {name = "iron ore", chance = 3900},
    {name = "fish fin", chance = 6500},
    {name = "hardened bone", chance = 7410},
    {id = 5951, chance = 12220},
    {name = "assassin dagger", chance = 1300},
    {name = "haunted blade", chance = 2600},
    {name = "nightmare blade", chance = 494},
    {name = "great mana potion", chance = 22100, maxCount = 4},
    {name = "great health potion", chance = 24050, maxCount = 3},
    {name = "sai", chance = 1560},
    {name = "violet crystal shard", chance = 3900},
    {name = "brown crystal splinter", chance = 15600, maxCount = 3},
    {name = "red crystal fragment", chance = 9880},
    {id = 16279, chance = 15600},
    {name = "cluster of solace", chance = 1196},
    {name = "frazzle tongue", chance = 19500},
    {name = "frazzle skin", chance = 18200},
    {name = "stamina fuild from another multiverse", chance = 1120},
    {name = "summon rune RR", chance = 3530},
    {name = "charm soul (pasive)", chance = 1300},
    {name = "heaven legs", chance = 1000},
    {name = "corrupted watcher armor", chance = 790},
    {name = "corrupted watcher sword", chance = 1550},
    {name = "corrupted watcher bow", chance = 590},
    {name = "watcher helmet", chance = 1730},
    {name = "watcher legs", chance = 1070},
    {name = "watcher boots", chance = 1440}
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
