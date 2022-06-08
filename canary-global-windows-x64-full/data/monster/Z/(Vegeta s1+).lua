local mType = Game.createMonsterType("(Vegeta s1+)")
local monster = {}

monster.description = "a vegeta s1+"
monster.experience = 9204
monster.health = 15000
monster.maxHealth = 15000
monster.race = "undead"
monster.corpse = 41747
monster.speed = 470
monster.manaCost = 0
monster.raceId = 2247

monster.outfit = {
    lookType = 1576,
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
    {name = "Platinum Coin", chance = 13500, maxCount = 14},
    {name = "Book Page", chance = 13500, maxCount = 7},
    {name = "burnt Scroll", chance = 13500, maxCount = 7},
    {name = "Glowing Rune", chance = 13500, maxCount = 7},
    {name = "Small Diamond", chance = 13500, maxCount = 7},
    {name = "Fire Axe", chance = 338},
    {name = "Soul Orb", chance = 351, maxCount = 7},
    {name = "Spellbook of Warding", chance = 338},
    {name = "Wand of Inferno", chance = 338},
    {name = "Fire Sword", chance = 338},
    {name = "Magma Coat", chance = 473},
    {name = "Magma Legs", chance = 338},
    {name = "Piece of Hellfire Armor", chance = 675, maxCount = 7},
    {id = 12600, chance = 13500, maxCount = 7},
    {name = "PLZ Backpack", chance = 2470},
    {name = "crystal sapphire", chance = 1540},
    {name = "tornado holy rune", chance = 3270},
    {name = "bushi helmet", chance = 250},
    {name = "crystal legs", chance = 50},
    {name = "ancestral rubi wand", chance = 620},
    {name = "exp boost  X 2", chance = 2530}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = -200, maxDamage = -550},
    	{name ="combat", interval = 2000, chance = 13, type = COMBAT_ENERGYDAMAGE, minDamage = -200, maxDamage = -605, radius = 3, effect = CONST_ME_ENERGYAREA, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -375, maxDamage = -500, length = 5, spread = 3, effect = CONST_ME_MAGIC_RED, target = false},
    	{name ="combat", interval = 2000, chance = 12, type = COMBAT_FIREDAMAGE, minDamage = -400, maxDamage = -775, radius = 3, effect = CONST_ME_HITBYFIRE, target = false}
}

monster.defenses = {
    	defense = 40,
    	armor = 82
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 50},
    	{type = COMBAT_EARTHDAMAGE, percent = 30},
    	{type = COMBAT_FIREDAMAGE, percent = 80},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 50},
    	{type = COMBAT_HOLYDAMAGE , percent = 50},
    	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
