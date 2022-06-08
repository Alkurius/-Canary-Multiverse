local mType = Game.createMonsterType("(Frost esfinge)")
local monster = {}

monster.description = "a frost esfinge"
monster.experience = 9204
monster.health = 15000
monster.maxHealth = 15000
monster.race = "undead"
monster.corpse = 41110
monster.speed = 470
monster.manaCost = 0
monster.raceId = 2358

monster.outfit = {
    lookType = 1687,
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
    {name = "Platinum Coin", chance = 13000, maxCount = 13},
    {name = "Book Page", chance = 13000, maxCount = 6},
    {name = "burnt Scroll", chance = 13000, maxCount = 6},
    {name = "Glowing Rune", chance = 13000, maxCount = 6},
    {name = "Small Diamond", chance = 13000, maxCount = 6},
    {name = "Fire Axe", chance = 325},
    {name = "Soul Orb", chance = 338, maxCount = 6},
    {name = "Spellbook of Warding", chance = 325},
    {name = "Wand of Inferno", chance = 325},
    {name = "Fire Sword", chance = 325},
    {name = "Magma Coat", chance = 455},
    {name = "Magma Legs", chance = 325},
    {name = "Piece of Hellfire Armor", chance = 650, maxCount = 6},
    {id = 12600, chance = 13000, maxCount = 6},
    {name = "HMM fire Backpack", chance = 2430},
    {name = "summon rune A", chance = 3650},
    {name = "arcane energy rune", chance = 3140},
    {name = "lava armor", chance = 1060},
    {name = "Anubis helmet", chance = 240},
    {name = "Anubis armor", chance = 830},
    {name = "Anubis legs", chance = 150},
    {name = "Anubis sword", chance = 1260},
    {name = "Anubis axe", chance = 40},
    {name = "Anubis wand", chance = 610},
    {name = "Anubis bow", chance = 1760},
    {name = "Anubis boots", chance = 1230}
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
