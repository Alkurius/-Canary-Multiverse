local mType = Game.createMonsterType("(Dark saiyan ape)")
local monster = {}

monster.description = "a dark saiyan ape"
monster.experience = 17672
monster.health = 18000
monster.maxHealth = 18000
monster.race = "undead"
monster.corpse = 41747
monster.speed = 480
monster.manaCost = 0
monster.raceId = 2290

monster.outfit = {
    lookType = 1619,
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
    {name = "Violet Crystal Shard", chance = 1215, maxCount = 5},
    {name = "Platinum Coin", chance = 100000, maxCount = 16},
    {name = "Glowing Rune", chance = 1215, maxCount = 5},
    {name = "Instable Proto Matter", chance = 1620, maxCount = 5},
    {name = "Energy Ball", chance = 1620, maxCount = 5},
    {name = "Energy Bar", chance = 1620, maxCount = 5},
    {name = "Energy Drink", chance = 1620, maxCount = 5},
    {name = "Odd Organ", chance = 1620, maxCount = 5},
    {name = "Frozen Lightning", chance = 1620, maxCount = 5},
    {id = 28568, chance = 1620, maxCount = 4},
    {name = "Small Ruby", chance = 1620, maxCount = 5},
    {name = "Violet Gem", chance = 1620, maxCount = 5},
    {name = "Blue Crystal Splinter", chance = 1620, maxCount = 5},
    {name = "Cyan Crystal Fragment", chance = 1620, maxCount = 5},
    {name = "Ultimate Mana Potion", chance = 1620, maxCount = 5},
    {name = "Piece of Dead Brain", chance = 1620, maxCount = 5},
    {name = "Wand of Defiance", chance = 1080},
    {name = "Lightning Headband", chance = 1282},
    {name = "Lightning Pendant", chance = 1148},
    {name = "Might Ring", chance = 1755},
    {name = "Slime Heart", chance = 1620, maxCount = 5},
    {id = 23544, chance = 756},
    {id = 23542, chance = 756},
    {id = 23543, chance = 756},
    {id = 23533, chance = 756},
    {id = 23529, chance = 756},
    {id = 23531, chance = 756},
    {name = "LL earth backpack", chance = 2370},
    {name = "great emerald", chance = 2140},
    {name = "arcane fire rune", chance = 3650},
    {name = "samurai armor", chance = 790},
    {name = "corrupted demon legs", chance = 1870},
    {name = "ancestral esmeralda armor", chance = 1910}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -200},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -200, maxDamage = -470, range = 7, shootEffect = CONST_ANI_ENERGY, target = false},
    	{name ="combat", interval = 2000, chance = 13, type = COMBAT_ENERGYDAMAGE, minDamage = -200, maxDamage = -505, radius = 3, effect = CONST_ME_ENERGYAREA, target = false}
}

monster.defenses = {
    	defense = 40,
    	armor = 82
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 90},
    	{type = COMBAT_EARTHDAMAGE, percent = 30},
    	{type = COMBAT_FIREDAMAGE, percent = 50},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 50},
    	{type = COMBAT_HOLYDAMAGE , percent = 70},
    	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
