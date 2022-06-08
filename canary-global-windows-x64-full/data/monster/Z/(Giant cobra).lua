local mType = Game.createMonsterType("(Giant cobra)")
local monster = {}

monster.description = "a giant cobra"
monster.experience = 3380
monster.health = 3900
monster.maxHealth = 3900
monster.race = "venom"
monster.corpse = 41417
monster.speed = 550
monster.manaCost = 0
monster.raceId = 2493

monster.outfit = {
    lookType = 1822,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Reptile",
    race = BESTY_RACE_REPTILE,
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
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {id = 3583, chance = 20864},
    {id = 21801, chance = 19264},
    {id = 762, chance = 11232, maxCount = 27},
    {id = 829, chance = 4288},
    {id = 21892, chance = 640},
    {id = 3035, chance = 100000, maxCount = 8},
    {id = 236, chance = 11232, maxCount = 3},
    {id = 237, chance = 16592, maxCount = 3},
    {id = 21747, chance = 16048},
    {id = 3026, chance = 5888, maxCount = 3},
    {id = 3027, chance = 3744, maxCount = 5},
    {id = 281, chance = 1600},
    {id = 5944, chance = 5344},
    {id = 3028, chance = 8032, maxCount = 5},
    {id = 21800, chance = 27824},
    {id = 815, chance = 1072},
    {id = 823, chance = 5888},
    {id = 819, chance = 4816},
    {id = 16096, chance = 1072},
    {id = 8093, chance = 1072},
    {name = "ultimate paralise rune", chance = 3460},
    {name = "summon rune X", chance = 3330},
    {name = "special life leach holy rune", chance = 3460}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 120, attack = 82},
    	{name ="combat", interval = 2000, chance = 7, type = COMBAT_DEATHDAMAGE, minDamage = -200, maxDamage = -260, range = 7, shootEffect = CONST_ANI_EARTH, effect = CONST_ME_SOUND_RED, target = true},
    	{name ="combat", interval = 2000, chance = 11, type = COMBAT_LIFEDRAIN, minDamage = -200, maxDamage = -285, radius = 3, effect = CONST_ME_MAGIC_RED, target = false},
    	{name ="seacrest serpent wave", interval = 2000, chance = 30, minDamage = 0, maxDamage = -284, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -300, length = 4, spread = 3, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.defenses = {
    	defense = 31,
    	armor = 22,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 145, maxDamage = 200, effect = CONST_ME_SOUND_BLUE, target = false},
    	{name ="melee", interval = 2000, chance = 10, minDamage = 0, maxDamage = 0}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 15},
    	{type = COMBAT_ENERGYDAMAGE, percent = 10},
    	{type = COMBAT_EARTHDAMAGE, percent = 20},
    	{type = COMBAT_FIREDAMAGE, percent = 20},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 100},
    	{type = COMBAT_ICEDAMAGE, percent = 100},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 5}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
