local mType = Game.createMonsterType("(Strong orc berserker)")
local monster = {}

monster.description = "a strong orc berserker"
monster.experience = 3750
monster.health = 5550
monster.maxHealth = 5550
monster.race = "undead"
monster.corpse = 39892
monster.speed = 350
monster.manaCost = 0
monster.raceId = 2451

monster.outfit = {
    lookType = 1780,
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
    staticAttackChance = 70,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = false,
    canWalkOnPoison = false
}

monster.loot = {
    {name = "crystal necklace", chance = 1040},
    {name = "gold coin", chance = 100000, maxCount = 180},
    {name = "gold coin", chance = 72000, maxCount = 180},
    {name = "gold coin", chance = 72000, maxCount = 180},
    {name = "gold coin", chance = 100000, maxCount = 74},
    {name = "small amethyst", chance = 13846, maxCount = 4},
    {name = "platinum coin", chance = 7499, maxCount = 5},
    {name = "mind stone", chance = 1015},
    {name = "giant sword", chance = 3049},
    {name = "crowbar", chance = 25713},
    {name = "plate armor", chance = 7825},
    {name = "dark armor", chance = 18000},
    {id = 3449, chance = 22500, maxCount = 22},
    {id = 3456, chance = 11250},
    {name = "steel boots", chance = 1786},
    {name = "meat", chance = 90000, maxCount = 11},
    {name = "skull helmet", chance = 194},
    {name = "soul orb", chance = 11999},
    {id = 6299, chance = 259},
    {name = "demonic essence", chance = 36000},
    {name = "dreaded cleaver", chance = 1499},
    {name = "chaos mace", chance = 1564},
    {name = "great health potion", chance = 2045},
    {name = "metal spike", chance = 12856},
    {name = "mana fuild from another multiverse", chance = 2510},
    {name = "summon rune V", chance = 3320},
    {name = "atonement rune", chance = 3040},
    {name = "evil club", chance = 200},
    {name = "shield of eternal flames", chance = 210},
    {name = "full warrior helmet", chance = 1880}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -500},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -200, range = 7, shootEffect = CONST_ANI_LARGEROCK, target = false}
}

monster.defenses = {
    	defense = 30,
    	armor = 30,
    	{name ="speed", interval = 2000, chance = 15, speedChange = 420, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 25},
    	{type = COMBAT_ENERGYDAMAGE, percent = 100},
    	{type = COMBAT_EARTHDAMAGE, percent = 20},
    	{type = COMBAT_FIREDAMAGE, percent = 30},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -15},
    	{type = COMBAT_HOLYDAMAGE , percent = -3},
    	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
