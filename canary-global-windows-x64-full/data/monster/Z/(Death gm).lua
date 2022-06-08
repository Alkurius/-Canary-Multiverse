local mType = Game.createMonsterType("(Death gm)")
local monster = {}

monster.description = "a death gm"
monster.experience = 7200
monster.health = 8350
monster.maxHealth = 8350
monster.race = "undead"
monster.corpse = 41747
monster.speed = 380
monster.manaCost = 0
monster.raceId = 2806

monster.outfit = {
    lookType = 2135,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Undead",
    race = BESTY_RACE_UNDEAD,
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
    illusionable = true,
    canPushItems = true,
    canPushCreatures = true,
    staticAttackChance = 70,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "golden mug", chance = 7803},
    {name = "black pearl", chance = 29614, maxCount = 3},
    {name = "small sapphire", chance = 36881, maxCount = 3},
    {name = "gold coin", chance = 46150, maxCount = 130},
    {name = "gold coin", chance = 72150, maxCount = 127},
    {name = "platinum coin", chance = 67600, maxCount = 6},
    {name = "life crystal", chance = 3250},
    {name = "war axe", chance = 1677},
    {name = "golden armor", chance = 1118},
    {name = "knight armor", chance = 7150},
    {name = "royal helmet", chance = 2236},
    {name = "power bolt", chance = 19747, maxCount = 20},
    {name = "hardened bone", chance = 18434},
    {id = 6299, chance = 1495},
    {name = "demonic essence", chance = 16198},
    {name = "assassin star", chance = 34645, maxCount = 6},
    {name = "dragon slayer", chance = 1118},
    {name = "dragonbone staff", chance = 5200},
    {name = "great mana potion", chance = 27937},
    {name = "great health potion", chance = 27560},
    {name = "divine plate", chance = 559},
    {name = "skullcracker armor", chance = 377},
    {name = "gold ingot", chance = 741},
    {name = "unholy bone", chance = 43394},
    {name = "spellweaver's robe", chance = 1118},
    {name = "perfect opalo", chance = 2120},
    {name = "mana leach earth rune", chance = 3180},
    {name = "volcano helmet", chance = 470},
    {name = "warlock shield", chance = 670},
    {name = "black wizard bow", chance = 620},
    {name = "exp boost  x 5", chance = 3110}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -480},
    	{name ="combat", interval = 2000, chance = 5, type = COMBAT_PHYSICALDAMAGE, minDamage = -300, maxDamage = -400, range = 7, radius = 4, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -125, maxDamage = -600, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_SMALLCLOUDS, target = false},
    	{name ="combat", interval = 2000, chance = 5, type = COMBAT_EARTHDAMAGE, minDamage = -100, maxDamage = -390, range = 7, radius = 4, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = 0, maxDamage = -180, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -150, maxDamage = -690, length = 8, spread = 3, effect = CONST_ME_POISONAREA, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -300, maxDamage = -700, length = 8, spread = 3, effect = CONST_ME_MAGIC_RED, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -100, maxDamage = -200, radius = 3, effect = CONST_ME_MAGIC_RED, target = false},
    	{name ="undead dragon curse", interval = 2000, chance = 10, target = false}
}

monster.defenses = {
    	defense = 40,
    	armor = 40,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 200, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 100},
    	{type = COMBAT_ICEDAMAGE, percent = 50},
    	{type = COMBAT_HOLYDAMAGE , percent = -25},
    	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
