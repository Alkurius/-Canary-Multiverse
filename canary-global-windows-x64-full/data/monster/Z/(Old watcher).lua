local mType = Game.createMonsterType("(Old watcher)")
local monster = {}

monster.description = "a old watcher"
monster.experience = 5100
monster.health = 6700
monster.maxHealth = 6700
monster.race = "blood"
monster.corpse = 41380
monster.speed = 350
monster.manaCost = 0
monster.raceId = 2474

monster.outfit = {
    lookType = 1803,
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
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "platinum coin", chance = 100000, maxCount = 4},
    {name = "flaming arrow", chance = 5317, maxCount = 14},
    {name = "royal star", chance = 1456, maxCount = 5},
    {name = "manticore tail", chance = 11115},
    {name = "manticore ear", chance = 8697},
    {name = "magma legs", chance = 962},
    {name = "magma monocle", chance = 2418},
    {name = "magma boots", chance = 481},
    {name = "magma coat", chance = 3861},
    {name = "wand of everblazing", chance = 1456},
    {name = "wand of dragonbreath", chance = 962},
    {name = "wand of draconia", chance = 481},
    {name = "stamina fuild from another multiverse", chance = 1120},
    {name = "summon rune RR", chance = 3530},
    {name = "charm soul (pasive)", chance = 1300},
    {name = "heaven shield", chance = 1720},
    {name = "corrupted watcher shield", chance = 690},
    {name = "corrupted watcher club", chance = 100},
    {name = "corrupted watcher long bow", chance = 630},
    {name = "watcher armor", chance = 390},
    {name = "watcher sword", chance = 460}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -500},
    	{name ="combat", interval = 2000, chance = 13, type = COMBAT_FIREDAMAGE, minDamage = -350, maxDamage = -450, length = 8, spread = 3, effect = CONST_ME_HITBYFIRE, target = false},
    	{name ="combat", interval = 4000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -300, maxDamage = -400, radius = 3, shootEffect = CONST_ANI_ENVENOMEDARROW, effect = CONST_ME_GREEN_RINGS, target = true},
    	{name ="combat", interval = 2000, chance = 22, type = COMBAT_FIREDAMAGE, minDamage = -300, maxDamage = -500, range = 4, shootEffect = CONST_ANI_BURSTARROW, target = true}
}

monster.defenses = {
    	defense = 78,
    	armor = 78
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 80},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -20},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
