local mType = Game.createMonsterType("(Face of decay)")
local monster = {}

monster.description = "a face of decay"
monster.experience = 15000
monster.health = 46500
monster.maxHealth = 46500
monster.race = "fire"
monster.corpse = 41750
monster.speed = 182
monster.manaCost = 0
monster.raceId = 2549

monster.outfit = {
    lookType = 1878,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Plant",
    race = BESTY_RACE_PLANT,
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
    {name = "emerald bangle", chance = 27000},
    {name = "gold coin", chance = 100000, maxCount = 135},
    {name = "platinum coin", chance = 22499, maxCount = 40},
    {name = "violet gem", chance = 22499},
    {name = "yellow gem", chance = 27000},
    {name = "green gem", chance = 16875},
    {name = "mana redbull", chance = 1990},
    {name = "Zildur Doll", chance = 440},
    {name = "special tornado energy rune", chance = 3720},
    {name = "legendary warrior armor", chance = 2110},
    {name = "pharaonic wand (Holy)", chance = 1010},
    {name = "olimpic helmet", chance = 1970},
    {name = "Bills armor", chance = 1130}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1707},
    	{name ="combat", interval = 1000, chance = 11, type = COMBAT_DEATHDAMAGE, minDamage = 0, maxDamage = -600, length = 8, spread = 3, effect = CONST_ME_MORTAREA, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -200, maxDamage = -700, radius = 4, effect = CONST_ME_ICEAREA, target = false},
    	{name ="combat", interval = 3000, chance = 18, type = COMBAT_PHYSICALDAMAGE, minDamage = -50, maxDamage = -255, radius = 5, effect = CONST_ME_GROUNDSHAKER, target = true},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -50, maxDamage = -600, radius = 6, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true}
}

monster.defenses = {
    	defense = 55,
    	armor = 60,
    	{name ="combat", interval = 1000, chance = 14, type = COMBAT_HEALING, minDamage = 400, maxDamage = 900, effect = CONST_ME_MAGIC_GREEN, target = false},
    	{name ="speed", interval = 1000, chance = 4, speedChange = 500, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 7000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 96},
    	{type = COMBAT_EARTHDAMAGE, percent = -10},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 20},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 95}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
