local mType = Game.createMonsterType("(Saiyan ape+)")
local monster = {}

monster.description = "a saiyan ape+"
monster.experience = 2300
monster.health = 1950
monster.maxHealth = 1950
monster.race = "blood"
monster.corpse = 41744
monster.speed = 530
monster.manaCost = 0
monster.raceId = 2282

monster.outfit = {
    lookType = 1611,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Mammal",
    race = BESTY_RACE_MAMMAL,
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
    staticAttackChance = 70,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "small sapphire", chance = 7560, maxCount = 4},
    {name = "gold coin", chance = 51300, maxCount = 135},
    {name = "gold coin", chance = 40500, maxCount = 135},
    {name = "gold coin", chance = 40500, maxCount = 49},
    {name = "platinum coin", chance = 33750, maxCount = 4},
    {id = 3049, chance = 540},
    {id = 3098, chance = 1485},
    {name = "serpent sword", chance = 5670},
    {name = "plate legs", chance = 9652},
    {name = "dragon ham", chance = 81000, maxCount = 3},
    {name = "strong health potion", chance = 7425},
    {name = "strong mana potion", chance = 5198},
    {name = "great mana potion", chance = 1242},
    {name = "glacier amulet", chance = 1188},
    {name = "glacier kilt", chance = 580},
    {name = "spirit cloak", chance = 3915},
    {name = "focus cape", chance = 500},
    {name = "crystalline armor", chance = 122},
    {name = "northwind rod", chance = 1256},
    {name = "sea serpent scale", chance = 13770},
    {name = "imperfect amethyst", chance = 1040},
    {name = "charm steal life", chance = 1890},
    {name = "ultimate holy rune", chance = 3300}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -250},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -60, maxDamage = -300, length = 7, spread = 2, effect = CONST_ME_SMALLPLANTS, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -101, maxDamage = -300, length = 7, spread = 2, effect = CONST_ME_ICEATTACK, target = false},
    	{name ="sea serpent drown", interval = 2000, chance = 15, range = 5, target = false}
}

monster.defenses = {
    	defense = 45,
    	armor = 45,
    	{name ="combat", interval = 2000, chance = 30, type = COMBAT_HEALING, minDamage = 70, maxDamage = 273, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = 400, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = -15},
    	{type = COMBAT_ENERGYDAMAGE, percent = -5},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 30},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 100},
    	{type = COMBAT_ICEDAMAGE, percent = 100},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
