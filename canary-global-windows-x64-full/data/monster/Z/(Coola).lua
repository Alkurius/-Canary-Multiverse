local mType = Game.createMonsterType("(Coola)")
local monster = {}

monster.description = "a coola"
monster.experience = 10000
monster.health = 31500
monster.maxHealth = 31500
monster.race = "fire"
monster.corpse = 41747
monster.speed = 490
monster.manaCost = 0
monster.raceId = 2695

monster.outfit = {
    lookType = 2024,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Demon",
    race = BESTY_RACE_DEMON,
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
    staticAttackChance = 85,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = false
}

monster.loot = {
    {name = "gold coin", chance = 67500, maxCount = 256},
    {name = "platinum coin", chance = 27000, maxCount = 35},
    {name = "orb", chance = 22499},
    {name = "life crystal", chance = 22499},
    {name = "mind stone", chance = 27000},
    {name = "spike sword", chance = 12272},
    {name = "fire sword", chance = 19285},
    {name = "giant sword", chance = 10384},
    {id = 3307, chance = 15000},
    {name = "warrior helmet", chance = 27000},
    {name = "strange helmet", chance = 11250},
    {name = "crown helmet", chance = 8438},
    {name = "royal helmet", chance = 27000},
    {name = "brown mushroom", chance = 67500, maxCount = 40},
    {name = "mysterious voodoo skull", chance = 16875},
    {name = "skull helmet", chance = 27000},
    {name = "iron ore", chance = 45000},
    {name = "spirit container", chance = 6427},
    {name = "flask of warrior's sweat", chance = 7499},
    {name = "enchanted chicken wing", chance = 10384},
    {name = "huge chunk of crude iron", chance = 19285},
    {name = "hardened bone", chance = 33750, maxCount = 27},
    {name = "demon horn", chance = 11250, maxCount = 3},
    {id = 6103, chance = 2785},
    {name = "demonic essence", chance = 100000},
    {id = 7385, chance = 13500},
    {name = "thaian sword", chance = 33750},
    {name = "dragon slayer", chance = 11250},
    {name = "runed sword", chance = 8999},
    {name = "great mana potion", chance = 27000},
    {name = "great health potion", chance = 27000},
    {name = "great spirit potion", chance = 27000},
    {name = "ultimate health potion", chance = 27000},
    {id = 8894, chance = 27000},
    {name = "gold ingot", chance = 22499},
    {name = "complete amethyst", chance = 2640},
    {name = "tornado ice rune", chance = 3580},
    {name = "titanium armor", chance = 770},
    {name = "royal club", chance = 550},
    {name = "decay skull rod", chance = 480},
    {name = "exp boost x 10", chance = 2200}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1088},
    	{name ="combat", interval = 1000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -250, maxDamage = -500, length = 10, spread = 3, effect = CONST_ME_MORTAREA, target = false},
    	{name ="combat", interval = 1000, chance = 8, type = COMBAT_DEATHDAMAGE, minDamage = -30, maxDamage = -760, radius = 5, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA, target = false},
    	{name ="combat", interval = 2000, chance = 9, type = COMBAT_EARTHDAMAGE, minDamage = -200, maxDamage = -585, length = 8, spread = 3, effect = CONST_ME_SMALLPLANTS, target = false},
    	{name ="combat", interval = 1000, chance = 8, type = COMBAT_ICEDAMAGE, minDamage = 0, maxDamage = -430, radius = 6, effect = CONST_ME_ICETORNADO, target = false},
    	{name ="drunk", interval = 3000, chance = 11, radius = 6, effect = CONST_ME_SOUND_PURPLE, target = false},
    	-- energy damage
    	{name ="condition", type = CONDITION_ENERGY, interval = 2000, chance = 15, minDamage = -250, maxDamage = -250, radius = 4, effect = CONST_ME_ENERGYHIT, target = false}
}

monster.defenses = {
    	defense = 45,
    	armor = 50,
    	{name ="combat", interval = 1000, chance = 12, type = COMBAT_HEALING, minDamage = 400, maxDamage = 600, effect = CONST_ME_MAGIC_GREEN, target = false},
    	{name ="speed", interval = 1000, chance = 4, speedChange = 400, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 7000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
    	{type = COMBAT_ENERGYDAMAGE, percent = 30},
    	{type = COMBAT_EARTHDAMAGE, percent = 30},
    	{type = COMBAT_FIREDAMAGE, percent = 30},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 30},
    	{type = COMBAT_HOLYDAMAGE , percent = 25},
    	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
