local mType = Game.createMonsterType("(Blood ent)")
local monster = {}

monster.description = "a blood ent"
monster.experience = 2550
monster.health = 3500
monster.maxHealth = 3500
monster.race = "fire"
monster.corpse = 41747
monster.speed = 394
monster.manaCost = 0
monster.raceId = 2550

monster.outfit = {
    lookType = 1879,
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
    {name = "gold coin", chance = 81000, maxCount = 135},
    {name = "gold coin", chance = 81000, maxCount = 135},
    {name = "gold coin", chance = 81000, maxCount = 49},
    {name = "morning star", chance = 13500},
    {name = "warrior helmet", chance = 2546},
    {name = "knight legs", chance = 4091},
    {name = "red mushroom", chance = 10384, maxCount = 3},
    {name = "demonic essence", chance = 12272},
    {name = "assassin star", chance = 12272, maxCount = 3},
    {name = "onyx flail", chance = 139},
    {name = "berserk potion", chance = 1261},
    {name = "spiked squelcher", chance = 1310},
    {name = "great health potion", chance = 54450},
    {name = "ultimate health potion", chance = 12272},
    {id = 8895, chance = 4219},
    {id = 8896, chance = 4219},
    {id = 9034, chance = 189},
    {name = "black skull", chance = 204},
    {name = "small topaz", chance = 7941, maxCount = 4},
    {name = "hellspawn tail", chance = 27000},
    {name = "mana redbull", chance = 1990},
    {name = "ultimate missile death rune", chance = 3470},
    {name = "special reflect death rune", chance = 3920},
    {name = "lost demon armor", chance = 310},
    {name = "shield of eternal winter", chance = 800},
    {name = "Xena armor", chance = 1220}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -352},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -150, maxDamage = -175, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK, target = false},
    	{name ="hellspawn soulfire", interval = 2000, chance = 10, range = 5, target = false}
}

monster.defenses = {
    	defense = 40,
    	armor = 40,
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 120, maxDamage = 230, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = 270, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
    	{type = COMBAT_ENERGYDAMAGE, percent = 10},
    	{type = COMBAT_EARTHDAMAGE, percent = 80},
    	{type = COMBAT_FIREDAMAGE, percent = 40},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -10},
    	{type = COMBAT_HOLYDAMAGE , percent = 30},
    	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
