local mType = Game.createMonsterType("(Little trunks s2)")
local monster = {}

monster.description = "a little trunks s2"
monster.experience = 2400
monster.health = 3500
monster.maxHealth = 3500
monster.race = "blood"
monster.corpse = 41747
monster.speed = 320
monster.manaCost = 0
monster.raceId = 2231

monster.outfit = {
    lookType = 1560,
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
    canWalkOnPoison = false
}

monster.loot = {
    {id = 3031, chance = 100000, maxCount = 267},
    {id = 3035, chance = 91274, maxCount = 4},
    {id = 9058, chance = 526},
    {id = 5911, chance = 4360},
    {id = 5878, chance = 19858},
    {id = 11472, chance = 8883, maxCount = 3},
    {id = 21201, chance = 17766},
    {id = 239, chance = 15498},
    {id = 238, chance = 13581},
    {id = 3577, chance = 9760},
    {id = 9057, chance = 7844, maxCount = 3},
    {id = 3030, chance = 6102, maxCount = 3},
    {id = 7412, chance = 1215},
    {id = 3381, chance = 1040},
    {id = 21176, chance = 1917},
    {id = 3318, chance = 1040},
    {id = 7413, chance = 526},
    {id = 7401, chance = 702},
    {name = "HMM Backpack", chance = 1820},
    {name = "perfect sapphire", chance = 1210},
    {name = "meteoro holy rune", chance = 2960},
    {name = "volcano bow", chance = 600},
    {name = "pit demon bow", chance = -30},
    {name = "ancestral rubi chopper", chance = 610},
    {name = "exp boost  X 2", chance = 2530}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 90, attack = 80},
    	{name ="combat", interval = 2000, chance = 8, type = COMBAT_LIFEDRAIN, minDamage = -135, maxDamage = -280, range = 7, radius = 5, shootEffect = CONST_ANI_WHIRLWINDAXE, target = true},
    	{name ="combat", interval = 2000, chance = 8, type = COMBAT_PHYSICALDAMAGE, minDamage = -90, maxDamage = -200, range = 7, shootEffect = CONST_ANI_WHIRLWINDAXE, effect = CONST_ME_EXPLOSIONAREA, target = true}
}

monster.defenses = {
    	defense = 40,
    	armor = 40
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 1},
    	{type = COMBAT_ENERGYDAMAGE, percent = 10},
    	{type = COMBAT_EARTHDAMAGE, percent = 20},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 10},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 15}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
