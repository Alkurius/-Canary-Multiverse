local mType = Game.createMonsterType("(Slave guard)")
local monster = {}

monster.description = "a slave guard"
monster.experience = 6900
monster.health = 7200
monster.maxHealth = 7200
monster.race = "blood"
monster.corpse = 41398
monster.speed = 410
monster.manaCost = 0
monster.raceId = 2483

monster.outfit = {
    lookType = 1812,
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
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "small ruby", chance = 12960, maxCount = 4},
    {name = "gold coin", chance = 100000, maxCount = 135},
    {name = "small emerald", chance = 18900},
    {name = "small amethyst", chance = 22950, maxCount = 4},
    {name = "platinum coin", chance = 100000, maxCount = 11},
    {name = "giant sword", chance = 756},
    {name = "warrior helmet", chance = 3807},
    {name = "knight armor", chance = 5400},
    {name = "white piece of cloth", chance = 6102},
    {name = "red piece of cloth", chance = 1526},
    {name = "great mana potion", chance = 48600, maxCount = 3},
    {name = "ultimate health potion", chance = 35100},
    {name = "small topaz", chance = 22950, maxCount = 3},
    {name = "blue crystal shard", chance = 8100},
    {name = "blue crystal splinter", chance = 17550},
    {name = "cyan crystal fragment", chance = 22950},
    {id = 20029, chance = 1526},
    {name = "trapped bad dream monster", chance = 17550},
    {name = "bowl of terror sweat", chance = 24300},
    {name = "demonic life potion", chance = 900},
    {name = "summon rune O", chance = 2840},
    {name = "special ultimate holy rune", chance = 3910},
    {name = "arcane club", chance = 20},
    {name = "templar legs", chance = 970},
    {name = "full warrior bow", chance = 740}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -450},
    	-- poison
    	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 20, minDamage = -1000, maxDamage = -1500, radius = 7, effect = CONST_ME_YELLOW_RINGS, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -100, maxDamage = -300, radius = 5, effect = CONST_ME_MAGIC_RED, target = false},
    	{name ="feversleep skill reducer", interval = 2000, chance = 10, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -350, maxDamage = -500, length = 6, spread = 3, effect = CONST_ME_YELLOWENERGY, target = true},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -200, maxDamage = -450, radius = 1, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true}
}

monster.defenses = {
    	defense = 50,
    	armor = 50,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 350, maxDamage = 600, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="invisible", interval = 2000, chance = 15, effect = CONST_ME_HITAREA},
    	{name ="speed", interval = 2000, chance = 15, speedChange = 300, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
    	{type = COMBAT_ENERGYDAMAGE, percent = 5},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 5},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 5},
    	{type = COMBAT_HOLYDAMAGE , percent = -10},
    	{type = COMBAT_DEATHDAMAGE , percent = 5}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
