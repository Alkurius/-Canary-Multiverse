local mType = Game.createMonsterType("(Energy bumblebee)")
local monster = {}

monster.description = "a energy bumblebee"
monster.experience = 2400
monster.health = 3800
monster.maxHealth = 3800
monster.race = "venom"
monster.corpse = 41747
monster.speed = 280
monster.manaCost = 0
monster.raceId = 2278

monster.outfit = {
    lookType = 1607,
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
    pushable = true,
    rewardBoss = false,
    illusionable = false,
    canPushItems = true,
    canPushCreatures = true,
    staticAttackChance = 95,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "small ruby", chance = 10634, maxCount = 3},
    {name = "gold coin", chance = 63700, maxCount = 130},
    {name = "gold coin", chance = 65000, maxCount = 126},
    {name = "platinum coin", chance = 85800, maxCount = 4},
    {id = 3098, chance = 4251},
    {name = "steel boots", chance = 169},
    {name = "great mana potion", chance = 11635, maxCount = 5},
    {id = 281, chance = 3380},
    {name = "ultimate health potion", chance = 5200, maxCount = 4},
    {name = "gold ingot", chance = 6708},
    {name = "kollos shell", chance = 20007},
    {name = "compound eye", chance = 20436},
    {name = "calopteryx cape", chance = 468},
    {name = "carapace shield", chance = 403},
    {name = "hive scythe", chance = 910},
    {name = "buggy backpack", chance = 598},
    {name = "tarsal arrow", chance = 13273, maxCount = 6},
    {name = "orc backpack", chance = 870},
    {name = "crystal ruby", chance = 2570},
    {name = "ultimate holy rune", chance = 3300},
    {name = "bushi boots", chance = 160},
    {name = "the crystal boots", chance = 880},
    {name = "ancestral esmeralda gun", chance = 990}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -315},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -500, range = 7, radius = 3, shootEffect = CONST_ANI_EXPLOSION, effect = CONST_ME_EXPLOSIONHIT, target = true}
}

monster.defenses = {
    	defense = 35,
    	armor = 35
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 5},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 30},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -5},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
