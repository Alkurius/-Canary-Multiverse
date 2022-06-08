local mType = Game.createMonsterType("(Fledgling dragon lord)")
local monster = {}

monster.description = "a fledgling dragon lord"
monster.experience = 2100
monster.health = 1900
monster.maxHealth = 1900
monster.race = "blood"
monster.corpse = 41200
monster.speed = 250
monster.manaCost = 0
monster.raceId = 2386

monster.outfit = {
    lookType = 1715,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Dragon",
    race = BESTY_RACE_DRAGON,
    toKill = 250,
    FirstUnlock = 50,
    SecondUnlock = 100,
    CharmsPoints = 25,
    Stars = 3,
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
    staticAttackChance = 80,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {id = 2842, chance = 13500},
    {name = "golden mug", chance = 4785},
    {name = "small sapphire", chance = 7950},
    {name = "gold coin", chance = 50625, maxCount = 150},
    {name = "gold coin", chance = 50625, maxCount = 150},
    {name = "gold coin", chance = 50625, maxCount = 68},
    {id = 3051, chance = 7875},
    {name = "life crystal", chance = 1020},
    {name = "fire sword", chance = 435},
    {name = "strange helmet", chance = 540},
    {name = "dragon scale mail", chance = 255},
    {name = "royal helmet", chance = 420},
    {name = "tower shield", chance = 375},
    {name = "power bolt", chance = 10050, maxCount = 10},
    {name = "dragon ham", chance = 100000, maxCount = 8},
    {name = "green mushroom", chance = 18000},
    {name = "red dragon scale", chance = 2880},
    {name = "red dragon leather", chance = 1560},
    {name = "royal spear", chance = 13200, maxCount = 4},
    {name = "dragon lord trophy", chance = 120},
    {name = "dragon slayer", chance = 150},
    {name = "strong health potion", chance = 1455},
    {name = "semi-perfect diamond", chance = 2500},
    {name = "summon rune K", chance = 4280},
    {name = "tornado energy rune", chance = 3790}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -230},
    	{name ="combat", interval = 2000, chance = 30, type = COMBAT_FIREDAMAGE, minDamage = -100, maxDamage = -220, range = 7, radius = 4, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
    	{name ="firefield", interval = 2000, chance = 10, range = 7, radius = 4, shootEffect = CONST_ANI_FIRE, target = true},
    	{name ="combat", interval = 2000, chance = 22, type = COMBAT_FIREDAMAGE, minDamage = -150, maxDamage = -270, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false}
}

monster.defenses = {
    	defense = 34,
    	armor = 34,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 57, maxDamage = 93, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 20},
    	{type = COMBAT_EARTHDAMAGE, percent = 80},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -10},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
