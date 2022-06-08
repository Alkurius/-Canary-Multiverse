local mType = Game.createMonsterType("(Death robot)")
local monster = {}

monster.description = "a death robot"
monster.experience = 13345
monster.health = 20000
monster.maxHealth = 20000
monster.race = "undead"
monster.corpse = 41747
monster.speed = 490
monster.manaCost = 0
monster.raceId = 2212

monster.outfit = {
    lookType = 1541,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Construct",
    race = BESTY_RACE_CONSTRUCT,
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
    canWalkOnEnergy = false,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {id = 28569, chance = 12500, maxCount = 4},
    {name = "Platinum Coin", chance = 12500, maxCount = 12},
    {id = 28566, chance = 12500, maxCount = 4},
    {name = "Small Diamond", chance = 12500, maxCount = 9},
    {name = "Small Stone", chance = 12500, maxCount = 9},
    {name = "Small Topaz", chance = 12500, maxCount = 9},
    {name = "Protection Amulet", chance = 12500},
    {name = "Terra Boots", chance = 438},
    {name = "Terra Hood", chance = 750},
    {name = "Diamond Sceptre", chance = 750},
    {name = "Terra Mantle", chance = 312},
    {name = "Terra Legs", chance = 312},
    {name = "Terra Amulet", chance = 625},
    {name = "Stone Skin Amulet", chance = 438},
    {name = "Springsprout Rod", chance = 438},
    {name = "Sacred Tree Amulet", chance = 438},
    {name = "Swamplair Armor", chance = 312},
    {name = "shenlong backpack", chance = 1630},
    {name = "perfect opalo", chance = 2120},
    {name = "ultimate earth rune", chance = 2780},
    {name = "volcano boots", chance = 1770},
    {name = "pit demon helmet", chance = 460},
    {name = "ancestral rubi armor", chance = 400},
    {name = "exp boost  X 2", chance = 2530}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -200},
    	{name ="combat", interval = 1000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -400, maxDamage = -680, range = 7, shootEffect = CONST_ANI_EARTHARROW, target = false},
    	{name ="combat", interval = 1000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -400, maxDamage = -575, length = 5, spread = 3, effect = CONST_ME_POISONAREA, target = false},
    	{name ="combat", interval = 1000, chance = 12, type = COMBAT_PHYSICALDAMAGE, minDamage = -230, maxDamage = -880, range = 7, radius = 3, effect = CONST_ME_GROUNDSHAKER, target = false}
}

monster.defenses = {
    	defense = 40,
    	armor = 82
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = -10},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
