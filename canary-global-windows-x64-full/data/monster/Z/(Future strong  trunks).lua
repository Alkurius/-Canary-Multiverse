local mType = Game.createMonsterType("(Future strong  trunks)")
local monster = {}

monster.description = "a future strong  trunks"
monster.experience = 50000
monster.health = 290000
monster.maxHealth = 290000
monster.race = "venom"
monster.corpse = 41750
monster.speed = 550
monster.manaCost = 0
monster.raceId = 2741

monster.outfit = {
    lookType = 2070,
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
    {id = 3031, chance = 100000, maxCount = 270},
    {id = 3035, chance = 100000, maxCount = 14},
    {id = 16119, chance = 10800, maxCount = 4},
    {id = 238, chance = 10800, maxCount = 14},
    {id = 16121, chance = 10800, maxCount = 4},
    {id = 3033, chance = 10800, maxCount = 14},
    {id = 3029, chance = 10800, maxCount = 7},
    {id = 7643, chance = 10800, maxCount = 7},
    {id = 16120, chance = 10800, maxCount = 4},
    {id = 22721, chance = 100000},
    {id = 23509, chance = 100000},
    {id = 3038, chance = 10800},
    {id = 7427, chance = 8100},
    {id = 23533, chance = 6750},
    {id = 23474, chance = 2700},
    {id = 23477, chance = 2700},
    {id = 16160, chance = 2700},
    {name = "perfect diamond", chance = 2030},
    {name = "meteoro earth rune", chance = 4230},
    {name = "empire axe", chance = 2090},
    {name = "warlock legs", chance = 850},
    {name = "shield of the dark lord", chance = 200},
    {name = "Iluminati armor", chance = 2070},
    {name = "Trunks armor", chance = 1700},
    {name = "Trunks legs", chance = 570},
    {name = "Trunks boots", chance = 1850}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = -300, maxDamage = -1800},
    	{name ="big energy purple wave", interval = 2000, chance = 25, minDamage = -700, maxDamage = -1300, target = false},
    	{name ="combat", interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -300, maxDamage = -600, radius = 4, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA, target = true},
    	{name ="combat", interval = 2000, chance = 25, type = COMBAT_PHYSICALDAMAGE, minDamage = -800, maxDamage = -1300, length = 8, spread = 3, effect = CONST_ME_HITAREA, target = false},
    	{name ="combat", interval = 2000, chance = 25, type = COMBAT_LIFEDRAIN, minDamage = -600, maxDamage = -900, length = 8, spread = 3, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="big skill reducer", interval = 2000, chance = 25, target = false},
    	{name ="anomaly break", interval = 2000, chance = 40, target = false}
}

monster.defenses = {
    	defense = 100,
    	armor = 100
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
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
