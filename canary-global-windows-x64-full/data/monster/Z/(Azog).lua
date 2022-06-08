local mType = Game.createMonsterType("(Azog)")
local monster = {}

monster.description = "a azog"
monster.experience = 23000
monster.health = 50000
monster.maxHealth = 50000
monster.race = "blood"
monster.corpse = 41332
monster.speed = 260
monster.manaCost = 0
monster.raceId = 2457

monster.outfit = {
    lookType = 1786,
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
    Stars = 5,
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
    pushable = true,
    rewardBoss = true,
    illusionable = true,
    canPushItems = true,
    canPushCreatures = true,
    staticAttackChance = 60,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = false
}

monster.loot = {
    {name = "small sapphire", chance = 3710, maxCount = 13},
    {name = "gold coin", chance = 91000, maxCount = 78},
    {name = "platinum coin", chance = 100000, maxCount = 13},
    {name = "Gold Ingot", chance = 4482, maxCount = 13},
    {name = "Broccoli", chance = 3171, maxCount = 13},
    {name = "Small Diamond", chance = 647, maxCount = 13},
    {name = "Blue Gem", chance = 3250},
    {name = "mana fuild from another multiverse", chance = 2510},
    {name = "summon rune Z", chance = 3650},
    {name = "atonement rune", chance = 3040},
    {name = "great empire sword", chance = 1210},
    {name = "pharaonic axe", chance = 1990},
    {name = "ancient gold club", chance = 600},
    {name = "divine crossbow", chance = 1360}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -500},
    	{name ="combat", interval = 2000, chance = 14, type = COMBAT_HOLYDAMAGE, minDamage = -100, maxDamage = -700, length = 8, spread = 3, effect = CONST_ME_MORTAREA, target = false},
    	{name ="combat", interval = 2000, chance = 18, type = COMBAT_PHYSICALDAMAGE, minDamage = -300, maxDamage = -700, radius = 4, effect = CONST_ME_EXPLOSIONAREA, target = false},
    	{name ="combat", interval = 2000, chance = 14, type = COMBAT_FIREDAMAGE, minDamage = -300, maxDamage = -840, length = 8, spread = 3, effect = CONST_ME_HITBYFIRE, target = false},
    	{name ="combat", interval = 2000, chance = 14, type = COMBAT_HOLYDAMAGE, minDamage = -300, maxDamage = -700, length = 8, spread = 3, effect = CONST_ME_HOLYAREA, target = false},
    	{name ="combat", interval = 2000, chance = 29, type = COMBAT_ICEDAMAGE, minDamage = -300, maxDamage = -840, range = 7, radius = 4, effect = CONST_ME_FIREAREA, target = true}
}

monster.defenses = {
    	defense = 60,
    	armor = 86,
    	{name ="combat", interval = 1000, chance = 20, type = COMBAT_HEALING, minDamage = 200, maxDamage = 500, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="combat", interval = 3000, chance = 20, type = COMBAT_HEALING, minDamage = 500, maxDamage = 1000, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = -20},
    	{type = COMBAT_EARTHDAMAGE, percent = -20},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 100},
    	{type = COMBAT_ICEDAMAGE, percent = 100},
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
