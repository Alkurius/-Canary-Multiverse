local mType = Game.createMonsterType("(Perfect cell)")
local monster = {}

monster.description = "a perfect cell"
monster.experience = 13345
monster.health = 20000
monster.maxHealth = 20000
monster.race = "undead"
monster.corpse = 41750
monster.speed = 490
monster.manaCost = 0
monster.raceId = 2699

monster.outfit = {
    lookType = 2028,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Vermin",
    race = BESTY_RACE_VERMIN,
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
    {id = 28569, chance = 13500, maxCount = 4},
    {name = "Platinum Coin", chance = 13500, maxCount = 14},
    {id = 28566, chance = 13500, maxCount = 4},
    {name = "Small Diamond", chance = 13500, maxCount = 9},
    {name = "Small Stone", chance = 13500, maxCount = 9},
    {name = "Small Topaz", chance = 13500, maxCount = 9},
    {name = "Protection Amulet", chance = 13500},
    {name = "Terra Boots", chance = 473},
    {name = "Terra Hood", chance = 810},
    {name = "Diamond Sceptre", chance = 810},
    {name = "Terra Mantle", chance = 338},
    {name = "Terra Legs", chance = 338},
    {name = "Terra Amulet", chance = 675},
    {name = "Stone Skin Amulet", chance = 473},
    {name = "Springsprout Rod", chance = 473},
    {name = "Sacred Tree Amulet", chance = 473},
    {name = "Swamplair Armor", chance = 338},
    {name = "perfect amethyst", chance = 2410},
    {name = "life leach ice rune", chance = 2670},
    {name = "titanium boots", chance = 1870},
    {name = "nightmare helmet", chance = 1640},
    {name = "armor of the dark lord", chance = 1940},
    {name = "Iluminati helmet", chance = 400}
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
