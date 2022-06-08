local mType = Game.createMonsterType("(Santa claus)")
local monster = {}

monster.description = "a santa claus"
monster.experience = 10603
monster.health = 10500
monster.maxHealth = 10500
monster.race = "undead"
monster.corpse = 41747
monster.speed = 510
monster.manaCost = 0
monster.raceId = 2580

monster.outfit = {
    lookType = 1909,
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
    {name = "Platinum Coin", chance = 100000, maxCount = 16},
    {name = "Book Page", chance = 18000, maxCount = 11},
    {name = "Small Amethyst", chance = 18000, maxCount = 14},
    {name = "Glowing Rune", chance = 18000, maxCount = 5},
    {name = "Quill", chance = 18000, maxCount = 5},
    {name = "Silken Bookmark", chance = 18000, maxCount = 5},
    {name = "Flash Arrow", chance = 18000, maxCount = 11},
    {name = "Throwing Star", chance = 18000, maxCount = 18},
    {name = "Crystal Sword", chance = 18000},
    {id = 3051, chance = 18000},
    {name = "Guardian Shield", chance = 18000},
    {name = "Mana Potion", chance = 18000, maxCount = 18},
    {name = "Ultimate Mana Potion", chance = 18000, maxCount = 14},
    {name = "Ultimate Health Potion", chance = 18000, maxCount = 14},
    {name = "Wand of Cosmic Energy", chance = 540},
    {name = "cobra mana potion", chance = 1250},
    {name = "mana leach death rune", chance = 3500},
    {name = "special ultimate earth rune", chance = 2680},
    {name = "ogre crossbow", chance = 50},
    {name = "shot bow of eternal winter", chance = 1410},
    {name = "Holy helmet", chance = 1490}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -400},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HOLYDAMAGE, minDamage = -200, maxDamage = -680, radius = 3, effect = CONST_ME_HOLYDAMAGE, target = true},
    	{name ="combat", interval = 2000, chance = 14, type = COMBAT_ENERGYDAMAGE, minDamage = -200, maxDamage = -680, range = 7, shootEffect = CONST_ANI_ENERGY, target = false}
}

monster.defenses = {
    	defense = 33,
    	armor = 76,
    	{name ="combat", interval = 2000, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = 100, maxDamage = 300, radius = 3, effect = CONST_ME_BLOCKHIT, target = false},
    	{name ="combat", interval = 200, chance = 55, type = COMBAT_PHYSICALDAMAGE, minDamage = 100, maxDamage = 300, radius = 3, effect = CONST_ME_ENERGYHIT, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 100},
    	{type = COMBAT_EARTHDAMAGE, percent = 10},
    	{type = COMBAT_FIREDAMAGE, percent = -10},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 10},
    	{type = COMBAT_HOLYDAMAGE , percent = 50},
    	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
