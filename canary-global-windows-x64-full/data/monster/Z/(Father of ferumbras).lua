local mType = Game.createMonsterType("(Father of ferumbras)")
local monster = {}

monster.description = "a father of ferumbras"
monster.experience = 18000
monster.health = 75000
monster.maxHealth = 75000
monster.race = "venom"
monster.corpse = 41434
monster.speed = 370
monster.manaCost = 0
monster.raceId = 2512

monster.outfit = {
    lookType = 1841,
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
    {id = 5903, chance = 100000},
    {id = 3031, chance = 100000, maxCount = 331},
    {id = 9058, chance = 100000, maxCount = 4},
    {id = 3422, chance = 46800},
    {id = 8075, chance = 46800},
    {id = 3360, chance = 43200},
    {id = 3364, chance = 39600},
    {id = 8074, chance = 39600},
    {id = 8040, chance = 39600},
    {id = 3420, chance = 36000},
    {id = 8057, chance = 36000},
    {id = 821, chance = 36000},
    {id = 3442, chance = 36000},
    {id = 3010, chance = 32400},
    {id = 823, chance = 32400},
    {id = 822, chance = 32400},
    {id = 3439, chance = 32400},
    {id = 8090, chance = 32400},
    {id = 812, chance = 32400},
    {id = 8102, chance = 28800},
    {id = 7405, chance = 28800},
    {id = 7451, chance = 28800},
    {id = 3032, chance = 28800, maxCount = 180},
    {id = 281, chance = 25200, maxCount = 9},
    {id = 282, chance = 25200, maxCount = 9},
    {id = 3366, chance = 25200},
    {id = 3414, chance = 25200},
    {id = 7417, chance = 25200},
    {id = 8076, chance = 25200},
    {id = 7427, chance = 21600},
    {id = 8098, chance = 21600},
    {id = 8041, chance = 21600},
    {id = 3029, chance = 21600, maxCount = 176},
    {id = 3026, chance = 21600, maxCount = 158},
    {id = 7407, chance = 18000},
    {id = 8096, chance = 18000},
    {id = 7411, chance = 18000},
    {id = 3033, chance = 18000, maxCount = 97},
    {id = 9057, chance = 18000, maxCount = 157},
    {id = 7382, chance = 14400},
    {id = 7422, chance = 14400},
    {id = 3035, chance = 14400, maxCount = 104},
    {id = 7423, chance = 14400},
    {id = 5944, chance = 14400, maxCount = 16},
    {name = "demonic death potion", chance = 1300},
    {name = "Laphis Doll", chance = -50},
    {name = "special mana leach holy rune", chance = 3930},
    {name = "great empire sword", chance = 1210},
    {name = "pharaonic axe", chance = 1990},
    {name = "ancient gold axe", chance = 1160},
    {name = "divine crossbow", chance = 1360}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -350},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_MANADRAIN, minDamage = -500, maxDamage = -700, range = 7, effect = CONST_ME_MAGIC_RED, target = false},
    	{name ="combat", interval = 2000, chance = 25, type = COMBAT_LIFEDRAIN, minDamage = -300, maxDamage = -450, length = 8, spread = 3, effect = CONST_ME_HITBYPOISON, target = false},
    	{name ="combat", interval = 2000, chance = 21, type = COMBAT_LIFEDRAIN, minDamage = -450, maxDamage = -500, radius = 6, effect = CONST_ME_POFF, target = false},
    	-- poison
    	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 15, minDamage = -20, maxDamage = -40, range = 7, shootEffect = CONST_ANI_POISON, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -900, maxDamage = -1000, range = 4, radius = 3, target = false},
    	-- energy damage
    	{name ="condition", type = CONDITION_ENERGY, interval = 2000, chance = 18, minDamage = -300, maxDamage = -400, radius = 6, effect = CONST_ME_ENERGYHIT, target = false},
    	-- fire
    	{name ="condition", type = CONDITION_FIRE, interval = 3000, chance = 20, minDamage = -500, maxDamage = -600, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true}
}

monster.defenses = {
    	defense = 120,
    	armor = 100,
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 900, maxDamage = 1500, effect = CONST_ME_MAGIC_GREEN, target = false},
    	{name ="invisible", interval = 4000, chance = 20, effect = CONST_ME_MAGIC_BLUE}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 100},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 90},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 20},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
