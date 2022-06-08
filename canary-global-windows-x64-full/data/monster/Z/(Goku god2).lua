local mType = Game.createMonsterType("(Goku god2)")
local monster = {}

monster.description = "a goku god2"
monster.experience = 15000
monster.health = 55000
monster.maxHealth = 55000
monster.race = "fire"
monster.corpse = 41750
monster.speed = 450
monster.manaCost = 0
monster.raceId = 2236

monster.outfit = {
    lookType = 1565,
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
    {name = "platinum coin", chance = 100000, maxCount = 100},
    {name = "demonic essence", chance = 100000, maxCount = 7},
    {name = "green gem", chance = 67500},
    {name = "great mana potion", chance = 60750},
    {name = "small amethyst", chance = 48600, maxCount = 24},
    {name = "devileye", chance = 48600},
    {name = "small emerald", chance = 36450, maxCount = 9},
    {name = "small sapphire", chance = 36450, maxCount = 12},
    {name = "red tome", chance = 36450},
    {name = "ultimate health potion", chance = 36450},
    {name = "talon", chance = 29700, maxCount = 9},
    {name = "demon horn", chance = 29700, maxCount = 3},
    {id = 6299, chance = 29700},
    {id = 3098, chance = 29700},
    {name = "chain bolter", chance = 29700},
    {name = "dark lord's cape", chance = 29700},
    {name = "ironworker", chance = 33750},
    {name = "double axe", chance = 24300},
    {name = "great spirit potion", chance = 24300},
    {name = "magic plate armor", chance = 24300},
    {name = "might ring", chance = 24300},
    {name = "mind stone", chance = 24300},
    {id = 3049, chance = 24300},
    {name = "fireborn giant armor", chance = 24300},
    {name = "royal crossbow", chance = 24300},
    {name = "teddy bear", chance = 24300},
    {name = "white pearl", chance = 17550, maxCount = 15},
    {name = "black pearl", chance = 17550, maxCount = 18},
    {name = "assassin star", chance = 17550, maxCount = 47},
    {name = "demonbone", chance = 17550},
    {name = "golden mug", chance = 17550},
    {name = "Morgaroth's heart", chance = 17550},
    {name = "obsidian truncheon", chance = 17550},
    {name = "stomper", chance = 17550},
    {name = "blue gem", chance = 12150},
    {name = "gold ring", chance = 12150},
    {name = "demon shield", chance = 12150},
    {id = 3051, chance = 12150},
    {name = "giant sword", chance = 12150},
    {name = "golden legs", chance = 12150},
    {name = "life crystal", chance = 12150},
    {id = 3046, chance = 12150},
    {name = "orb", chance = 12150},
    {name = "strange symbol", chance = 12150},
    {name = "steel boots", chance = 12150},
    {name = "thunder hammer", chance = 12150},
    {name = "small diamond", chance = 6075, maxCount = 7},
    {id = 3007, chance = 6075},
    {name = "fire axe", chance = 6075},
    {name = "great health potion", chance = 6075},
    {name = "mastermind shield", chance = 6075},
    {name = "dragon robe", chance = 6075},
    {name = "molten plate", chance = 6075},
    {name = "great shield", chance = 675},
    {name = "MW Backpack", chance = 810},
    {name = "crystal emerald", chance = 1890},
    {name = "ultimate missile holy rune", chance = 4030},
    {name = "empire armor", chance = 400},
    {name = "crystal helmet", chance = 1020},
    {name = "axe of the dark lord", chance = 810},
    {name = "Iluminati axe", chance = 1650},
    {name = "Goku legs", chance = 1200}
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
