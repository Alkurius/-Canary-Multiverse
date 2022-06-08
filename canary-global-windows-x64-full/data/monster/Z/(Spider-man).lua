local mType = Game.createMonsterType("(Spider-man)")
local monster = {}

monster.description = "a spider-man"
monster.experience = 15000
monster.health = 60000
monster.maxHealth = 60000
monster.race = "undead"
monster.corpse = 41750
monster.speed = 450
monster.manaCost = 0
monster.raceId = 2859

monster.outfit = {
    lookType = 2188,
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
    {name = "blue tome", chance = 27000},
    {name = "teddy bear", chance = 16875},
    {id = 3007, chance = 11250},
    {name = "white pearl", chance = 33750, maxCount = 20},
    {name = "black pearl", chance = 15000, maxCount = 19},
    {name = "small diamond", chance = 33750, maxCount = 7},
    {name = "small sapphire", chance = 33750, maxCount = 14},
    {name = "small emerald", chance = 33750, maxCount = 14},
    {name = "small amethyst", chance = 33750, maxCount = 23},
    {name = "talon", chance = 16875, maxCount = 9},
    {name = "platinum coin", chance = 100000, maxCount = 93},
    {name = "green gem", chance = 27000},
    {name = "blue gem", chance = 19285},
    {name = "might ring", chance = 16875},
    {id = 3049, chance = 16875},
    {name = "strange symbol", chance = 15000},
    {name = "life crystal", chance = 16875},
    {name = "mind stone", chance = 27000},
    {name = "gold ring", chance = 27000},
    {id = 3098, chance = 27000},
    {name = "twin axe", chance = 15000},
    {name = "golden armor", chance = 11250},
    {name = "magic plate armor", chance = 11250},
    {name = "demon shield", chance = 16875},
    {name = "golden boots", chance = 11250},
    {name = "demon horn", chance = 45000, maxCount = 3},
    {id = 6299, chance = 33750},
    {name = "demonic essence", chance = 100000},
    {name = "ruthless axe", chance = 19285},
    {name = "assassin star", chance = 16875, maxCount = 59},
    {name = "havoc blade", chance = 22499},
    {name = "ravenwing", chance = 19285},
    {name = "great mana potion", chance = 27000},
    {name = "great health potion", chance = 27000},
    {name = "glacier kilt", chance = 11250},
    {name = "great spirit potion", chance = 33750},
    {name = "ultimate health potion", chance = 33750},
    {name = "oceanborn leviathan armor", chance = 22499},
    {name = "frozen plate", chance = 11250},
    {name = "spellbook of warding", chance = 27000},
    {name = "spellbook of mind control", chance = 15000},
    {name = "spellbook of lost souls", chance = 22499},
    {name = "spellscroll of prophecies", chance = 33750},
    {name = "spellbook of dark mysteries", chance = 27000},
    {name = "perfect opalo", chance = 2120},
    {name = "reflect earth rune", chance = 3130},
    {name = "empire club", chance = 1240},
    {name = "warlock wand", chance = 790},
    {name = "legs of the dark lord", chance = 1600},
    {name = "Iluminati legs", chance = 390}
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
