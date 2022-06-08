local mType = Game.createMonsterType("(Zildur)")
local monster = {}

monster.description = "a zildur"
monster.experience = 15000
monster.health = 55000
monster.maxHealth = 55000
monster.race = "fire"
monster.corpse = 41750
monster.speed = 450
monster.manaCost = 0
monster.raceId = 2552

monster.outfit = {
    lookType = 1881,
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
    pushable = false,
    rewardBoss = true,
    illusionable = false,
    canPushItems = true,
    canPushCreatures = true,
    staticAttackChance = 98,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = false
}

monster.loot = {
    {name = "platinum coin", chance = 100000, maxCount = 96},
    {name = "demonic essence", chance = 100000, maxCount = 6},
    {name = "green gem", chance = 65000},
    {name = "great mana potion", chance = 58500},
    {name = "small amethyst", chance = 46800, maxCount = 23},
    {name = "devileye", chance = 46800},
    {name = "small emerald", chance = 35100, maxCount = 9},
    {name = "small sapphire", chance = 35100, maxCount = 12},
    {name = "red tome", chance = 35100},
    {name = "ultimate health potion", chance = 35100},
    {name = "talon", chance = 28600, maxCount = 9},
    {name = "demon horn", chance = 28600, maxCount = 3},
    {id = 6299, chance = 28600},
    {id = 3098, chance = 28600},
    {name = "chain bolter", chance = 28600},
    {name = "dark lord's cape", chance = 28600},
    {name = "ironworker", chance = 32500},
    {name = "double axe", chance = 23400},
    {name = "great spirit potion", chance = 23400},
    {name = "magic plate armor", chance = 23400},
    {name = "might ring", chance = 23400},
    {name = "mind stone", chance = 23400},
    {id = 3049, chance = 23400},
    {name = "fireborn giant armor", chance = 23400},
    {name = "royal crossbow", chance = 23400},
    {name = "teddy bear", chance = 23400},
    {name = "white pearl", chance = 16900, maxCount = 14},
    {name = "black pearl", chance = 16900, maxCount = 17},
    {name = "assassin star", chance = 16900, maxCount = 46},
    {name = "demonbone", chance = 16900},
    {name = "golden mug", chance = 16900},
    {name = "Morgaroth's heart", chance = 16900},
    {name = "obsidian truncheon", chance = 16900},
    {name = "stomper", chance = 16900},
    {name = "blue gem", chance = 11700},
    {name = "gold ring", chance = 11700},
    {name = "demon shield", chance = 11700},
    {id = 3051, chance = 11700},
    {name = "giant sword", chance = 11700},
    {name = "golden legs", chance = 11700},
    {name = "life crystal", chance = 11700},
    {id = 3046, chance = 11700},
    {name = "orb", chance = 11700},
    {name = "strange symbol", chance = 11700},
    {name = "steel boots", chance = 11700},
    {name = "thunder hammer", chance = 11700},
    {name = "small diamond", chance = 5850, maxCount = 6},
    {id = 3007, chance = 5850},
    {name = "fire axe", chance = 5850},
    {name = "great health potion", chance = 5850},
    {name = "mastermind shield", chance = 5850},
    {name = "dragon robe", chance = 5850},
    {name = "molten plate", chance = 5850},
    {name = "great shield", chance = 650},
    {name = "mana redbull", chance = 1990},
    {name = "Rel'tir Doll", chance = 430},
    {name = "special reflect death rune", chance = 3920},
    {name = "darkness helmet", chance = 700},
    {name = "pharaonic wand (Energy)", chance = 910},
    {name = "olimpic helmet", chance = 1970},
    {name = "Bills armor", chance = 1130}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2250},
    	{name ="combat", interval = 3000, chance = 35, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -1210, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
    	{name ="combat", interval = 1800, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -580, range = 7, radius = 5, effect = CONST_ME_HITAREA, target = false},
    	{name ="combat", interval = 3000, chance = 30, type = COMBAT_ENERGYDAMAGE, minDamage = -300, maxDamage = -1450, length = 8, spread = 3, effect = CONST_ME_ENERGYHIT, target = false},
    	{name ="combat", interval = 2500, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -480, range = 7, radius = 5, effect = CONST_ME_MAGIC_GREEN, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -250, maxDamage = -500, range = 7, radius = 13, effect = CONST_ME_SOUND_RED, target = false},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -450, radius = 14, effect = CONST_ME_LOSEENERGY, target = false},
    	{name ="combat", interval = 3000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -100, maxDamage = -200, range = 7, radius = 3, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = -400, range = 7, effect = CONST_ME_SOUND_RED, target = false, duration = 20000},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_MANADRAIN, minDamage = -70, maxDamage = -320, radius = 3, effect = CONST_ME_HITAREA, target = true},
    	{name ="dark torturer skill reducer", interval = 2000, chance = 5, target = false}
}

monster.defenses = {
    	defense = 65,
    	armor = 55,
    	{name ="combat", interval = 3000, chance = 35, type = COMBAT_HEALING, minDamage = 800, maxDamage = 1100, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="combat", interval = 9000, chance = 15, type = COMBAT_HEALING, minDamage = 3800, maxDamage = 4000, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="speed", interval = 4000, chance = 80, speedChange = 470, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
    	{type = COMBAT_ENERGYDAMAGE, percent = 80},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -5},
    	{type = COMBAT_HOLYDAMAGE , percent = -5},
    	{type = COMBAT_DEATHDAMAGE , percent = 80}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
