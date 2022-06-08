local mType = Game.createMonsterType("(Hell's chainsaw)")
local monster = {}

monster.description = "a hell's chainsaw"
monster.experience = 22500
monster.health = 90000
monster.maxHealth = 90000
monster.race = "undead"
monster.corpse = 41750
monster.speed = 450
monster.manaCost = 0
monster.raceId = 2526

monster.outfit = {
    lookType = 1855,
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
    {name = "blue tome", chance = 36000},
    {name = "teddy bear", chance = 22500},
    {id = 3007, chance = 14999},
    {name = "white pearl", chance = 45000, maxCount = 27},
    {name = "black pearl", chance = 20000, maxCount = 25},
    {name = "small diamond", chance = 45000, maxCount = 9},
    {name = "small sapphire", chance = 45000, maxCount = 18},
    {name = "small emerald", chance = 45000, maxCount = 18},
    {name = "small amethyst", chance = 45000, maxCount = 31},
    {name = "talon", chance = 22500, maxCount = 13},
    {name = "platinum coin", chance = 100000, maxCount = 124},
    {name = "green gem", chance = 36000},
    {name = "blue gem", chance = 25713},
    {name = "might ring", chance = 22500},
    {id = 3049, chance = 22500},
    {name = "strange symbol", chance = 20000},
    {name = "life crystal", chance = 22500},
    {name = "mind stone", chance = 36000},
    {name = "gold ring", chance = 36000},
    {id = 3098, chance = 36000},
    {name = "twin axe", chance = 20000},
    {name = "golden armor", chance = 14999},
    {name = "magic plate armor", chance = 14999},
    {name = "demon shield", chance = 22500},
    {name = "golden boots", chance = 14999},
    {name = "demon horn", chance = 59999, maxCount = 4},
    {id = 6299, chance = 45000},
    {name = "demonic essence", chance = 100000},
    {name = "ruthless axe", chance = 25713},
    {name = "assassin star", chance = 22500, maxCount = 79},
    {name = "havoc blade", chance = 29999},
    {name = "ravenwing", chance = 25713},
    {name = "great mana potion", chance = 36000},
    {name = "great health potion", chance = 36000},
    {name = "glacier kilt", chance = 14999},
    {name = "great spirit potion", chance = 45000},
    {name = "ultimate health potion", chance = 45000},
    {name = "oceanborn leviathan armor", chance = 29999},
    {name = "frozen plate", chance = 14999},
    {name = "spellbook of warding", chance = 36000},
    {name = "spellbook of mind control", chance = 20000},
    {name = "spellbook of lost souls", chance = 29999},
    {name = "spellscroll of prophecies", chance = 45000},
    {name = "spellbook of dark mysteries", chance = 36000},
    {name = "demonic death potion", chance = 1300},
    {name = "Holibar Doll", chance = 390},
    {name = "special tornado water rune", chance = 3580},
    {name = "legendary warrior boots", chance = 630},
    {name = "pharaonic wand (Death)", chance = 1790},
    {name = "ancient gold axe", chance = 1160},
    {name = "divine shield", chance = 1920}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2191},
    	{name ="combat", interval = 2000, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = -250, maxDamage = -500, range = 7, radius = 6, effect = CONST_ME_HITAREA, target = false},
    	{name ="combat", interval = 3000, chance = 34, type = COMBAT_PHYSICALDAMAGE, minDamage = -120, maxDamage = -500, range = 7, radius = 1, shootEffect = CONST_ANI_WHIRLWINDSWORD, target = true},
    	{name ="combat", interval = 4000, chance = 30, type = COMBAT_ENERGYDAMAGE, minDamage = -100, maxDamage = -800, length = 8, spread = 3, effect = CONST_ME_MORTAREA, target = false},
    	{name ="combat", interval = 3000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -480, range = 14, radius = 5, effect = CONST_ME_POFF, target = false},
    	{name ="combat", interval = 4000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -100, maxDamage = -650, range = 7, radius = 13, effect = CONST_ME_BLOCKHIT, target = false},
    	{name ="combat", interval = 4000, chance = 18, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -600, radius = 14, effect = CONST_ME_LOSEENERGY, target = false},
    	{name ="combat", interval = 3000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -750, range = 7, radius = 4, effect = CONST_ME_ENERGYAREA, target = false}
}

monster.defenses = {
    	defense = 65,
    	armor = 55,
    	{name ="combat", interval = 3000, chance = 35, type = COMBAT_HEALING, minDamage = 300, maxDamage = 800, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="speed", interval = 4000, chance = 80, speedChange = 440, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 1},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 100},
    	{type = COMBAT_HOLYDAMAGE , percent = -1},
    	{type = COMBAT_DEATHDAMAGE , percent = 1}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
