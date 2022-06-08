local mType = Game.createMonsterType("(Corrupted watcher)")
local monster = {}

monster.description = "a corrupted watcher"
monster.experience = 4700
monster.health = 5800
monster.maxHealth = 5800
monster.race = "undead"
monster.corpse = 41371
monster.speed = 430
monster.manaCost = 0
monster.raceId = 2471

monster.outfit = {
    lookType = 1800,
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
    {name = "gold coin", chance = 100000, maxCount = 130},
    {name = "platinum coin", chance = 100000, maxCount = 10},
    {id = 3051, chance = 3900},
    {id = 3052, chance = 5460},
    {id = 3098, chance = 3900},
    {name = "guardian shield", chance = 2002},
    {name = "beastslayer axe", chance = 4277},
    {name = "brown piece of cloth", chance = 7800},
    {name = "yellow piece of cloth", chance = 4550},
    {name = "great mana potion", chance = 26000, maxCount = 4},
    {name = "terra boots", chance = 936},
    {name = "great spirit potion", chance = 26000, maxCount = 4},
    {name = "ultimate health potion", chance = 24700, maxCount = 4},
    {name = "spellbook of mind control", chance = 936},
    {name = "underworld rod", chance = 936},
    {name = "springsprout rod", chance = 663},
    {name = "green crystal shard", chance = 2002},
    {name = "brown crystal splinter", chance = 68250, maxCount = 3},
    {name = "blue crystal splinter", chance = 13000, maxCount = 4},
    {name = "cluster of solace", chance = 806},
    {name = "dead weight", chance = 18434},
    {name = "hemp rope", chance = 18434},
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
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -499, condition = {type = CONDITION_POISON, totalDamage = 600, interval = 4000}},
    	-- poison
    	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 10, minDamage = -700, maxDamage = -900, length = 5, spread = 3, effect = CONST_ME_HITBYPOISON, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -300, radius = 1, shootEffect = CONST_ANI_EXPLOSION, effect = CONST_ME_SLEEP, target = true},
    	{name ="speed", interval = 2000, chance = 20, speedChange = -800, radius = 1, shootEffect = CONST_ANI_EXPLOSION, effect = CONST_ME_SLEEP, target = true, duration = 15000},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -130, maxDamage = -300, radius = 4, effect = CONST_ME_SOUND_RED, target = false},
    	{name ="choking fear drown", interval = 2000, chance = 20, target = false},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -250, maxDamage = -500, radius = 4, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true}
}

monster.defenses = {
    	defense = 35,
    	armor = 35,
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 80, maxDamage = 150, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
    	{type = COMBAT_ENERGYDAMAGE, percent = 15},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 10},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
