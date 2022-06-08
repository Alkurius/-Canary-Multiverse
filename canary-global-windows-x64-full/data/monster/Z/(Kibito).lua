local mType = Game.createMonsterType("(Kibito)")
local monster = {}

monster.description = "a kibito"
monster.experience = 1800
monster.health = 1600
monster.maxHealth = 1600
monster.race = "blood"
monster.corpse = 41744
monster.speed = 220
monster.manaCost = 0
monster.raceId = 2305

monster.outfit = {
    lookType = 1634,
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
    illusionable = false,
    canPushItems = true,
    canPushCreatures = true,
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = false
}

monster.loot = {
    {name = "gold coin", chance = 100000, maxCount = 270},
    {name = "platinum coin", chance = 81324, maxCount = 3},
    {name = "strong health potion", chance = 14783, maxCount = 3},
    {name = "great mana potion", chance = 11246, maxCount = 3},
    {name = "brown mushroom", chance = 22815, maxCount = 3},
    {id = 12600, chance = 17685},
    {name = "holy ash", chance = 17685},
    {name = "small topaz", chance = 13824},
    {name = "lost husher's staff", chance = 9315},
    {name = "skull shatterer", chance = 10287},
    {name = "wimp tooth chain", chance = 16065},
    {name = "red hair dye", chance = 17037},
    {name = "basalt fetish", chance = 10935},
    {name = "bonecarving knife", chance = 10935},
    {name = "basalt figurine", chance = 10935},
    {name = "bone fetish", chance = 11989},
    {id = 3097, chance = 1408},
    {name = "guardian shield", chance = 1931},
    {name = "buckle", chance = 2565},
    {name = "clay lump", chance = 959},
    {name = "knight axe", chance = 1282},
    {name = "terra boots", chance = 324},
    {name = "suspicious device", chance = 338},
    {name = "tower shield", chance = 324},
    {name = "terra legs", chance = 324},
    {name = "fire axe", chance = 959},
    {name = "skull staff", chance = 648},
    {name = "spiked squelcher", chance = 324},
    {name = "semi-perfect amethyst", chance = 2590},
    {name = "charm life regeneration", chance = 1550},
    {name = "ultimate missile fire rune", chance = 4000}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -120},
    	{name ="sudden death rune", interval = 2000, chance = 15, minDamage = -150, maxDamage = -350, range = 3, length = 6, spread = 3, effect = CONST_ME_MORTAREA, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_MANADRAIN, minDamage = -150, maxDamage = -250, range = 3, length = 5, spread = 5, effect = CONST_ME_SMOKE, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -150, maxDamage = -290, range = 3, length = 5, spread = 5, shootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_POISONAREA, target = false},
    	{name ="sudden death rune", interval = 2000, chance = 15, minDamage = -70, maxDamage = -250, range = 7, target = false},
    	{name ="drunk", interval = 2000, chance = 10, range = 7, shootEffect = CONST_ANI_ENERGY, target = false, duration = 5000}
}

monster.defenses = {
    	defense = 20,
    	armor = 20,
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 0, maxDamage = 160, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
    	{type = COMBAT_ENERGYDAMAGE, percent = 30},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 30},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 30},
    	{type = COMBAT_HOLYDAMAGE , percent = -30},
    	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
