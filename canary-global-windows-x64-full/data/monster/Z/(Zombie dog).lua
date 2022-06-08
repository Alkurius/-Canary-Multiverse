local mType = Game.createMonsterType("(Zombie dog)")
local monster = {}

monster.description = "a zombie dog"
monster.experience = 518
monster.health = 632
monster.maxHealth = 632
monster.race = "blood"
monster.corpse = 41556
monster.speed = 280
monster.manaCost = 0
monster.raceId = 2350

monster.outfit = {
    lookType = 1679,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Mammal",
    race = BESTY_RACE_MAMMAL,
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
    {name = "gold coin", chance = 49400, maxCount = 84},
    {name = "gold coin", chance = 52000, maxCount = 84},
    {id = 3049, chance = 702},
    {id = 3114, chance = 26312},
    {name = "mouldy cheese", chance = 1235},
    {name = "halberd", chance = 3887},
    {name = "plate shield", chance = 4875},
    {name = "tower shield", chance = 65},
    {name = "green mushroom", chance = 1807},
    {name = "stone herb", chance = 6396},
    {name = "health potion", chance = 728},
    {name = "spellbook of enlightenment", chance = 390},
    {name = "mutated rat tail", chance = 4940}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -158, condition = {type = CONDITION_POISON, totalDamage = 100, interval = 4000}},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -45, maxDamage = -85, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false},
    	-- poison
    	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 10, minDamage = -80, maxDamage = -100, length = 5, spread = 3, effect = CONST_ME_POISONAREA, target = false},
    	{name ="speed", interval = 2000, chance = 10, speedChange = -600, range = 7, effect = CONST_ME_MAGIC_RED, target = true, duration = 30000},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -30, maxDamage = -70, range = 7, radius = 3, effect = CONST_ME_MAGIC_RED, target = false},
    	-- poison
    	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 10, range = 7, radius = 3, effect = CONST_ME_POISONAREA, target = false}
}

monster.defenses = {
    	defense = 15,
    	armor = 15,
    	{name ="combat", interval = 2000, chance = 5, type = COMBAT_HEALING, minDamage = 80, maxDamage = 95, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = -10},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 100},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 10},
    	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
