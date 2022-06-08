local mType = Game.createMonsterType("(Frost bioman)")
local monster = {}

monster.description = "a frost bioman"
monster.experience = 650
monster.health = 550
monster.maxHealth = 550
monster.race = "undead"
monster.corpse = 41741
monster.speed = 280
monster.manaCost = 0
monster.raceId = 2774

monster.outfit = {
    lookType = 2103,
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
    illusionable = false,
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
    {name = "small diamond", chance = 1350},
    {name = "small sapphire", chance = 1350},
    {name = "gold coin", chance = 67500, maxCount = 135},
    {name = "small emerald", chance = 1350, maxCount = 3},
    {name = "platinum coin", chance = 13500},
    {id = 3051, chance = 1282},
    {id = 3052, chance = 1256},
    {id = 3578, chance = 27000},
    {name = "rainbow trout", chance = 1269},
    {name = "green perch", chance = 1418},
    {name = "strong health potion", chance = 13500},
    {name = "strong mana potion", chance = 13500},
    {id = 281, chance = 1080},
    {id = 282, chance = 1080}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -160, condition = {type = CONDITION_POISON, totalDamage = 60, interval = 4000}},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DROWNDAMAGE, minDamage = -125, maxDamage = -235, range = 7, radius = 2, effect = CONST_ME_LOSEENERGY, target = true},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -88, maxDamage = -150, range = 7, shootEffect = CONST_ANI_SMALLICE, target = false},
    	-- poison
    	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 15, minDamage = -225, maxDamage = -260, radius = 5, effect = CONST_ME_POISONAREA, target = false}
}

monster.defenses = {
    	defense = 20,
    	armor = 20,
    	{name ="combat", interval = 2000, chance = 5, type = COMBAT_HEALING, minDamage = 50, maxDamage = 80, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = 300, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 35},
    	{type = COMBAT_ENERGYDAMAGE, percent = -25},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 100},
    	{type = COMBAT_ICEDAMAGE, percent = 100},
    	{type = COMBAT_HOLYDAMAGE , percent = 50},
    	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
