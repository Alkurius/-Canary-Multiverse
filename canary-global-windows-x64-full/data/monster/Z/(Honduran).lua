local mType = Game.createMonsterType("(Honduran)")
local monster = {}

monster.description = "a honduran"
monster.experience = 1700
monster.health = 1400
monster.maxHealth = 1400
monster.race = "blood"
monster.corpse = 41744
monster.speed = 280
monster.manaCost = 0
monster.raceId = 2446

monster.outfit = {
    lookType = 1775,
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
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = false
}

monster.loot = {
    {id = 3147, chance = 17680, maxCount = 3},
    {id = 3031, chance = 100000, maxCount = 259},
    {id = 3347, chance = 19344, maxCount = 6},
    {id = 3035, chance = 44057, maxCount = 4},
    {id = 7378, chance = 14833, maxCount = 6},
    {id = 236, chance = 13455, maxCount = 3},
    {id = 237, chance = 13806, maxCount = 3},
    {id = 5944, chance = 9659},
    {id = 5878, chance = 6539},
    {id = 11472, chance = 6136, maxCount = 3},
    {id = 3030, chance = 3432, maxCount = 4},
    {id = 3033, chance = 3354, maxCount = 4},
    {id = 3049, chance = 2886},
    {id = 5912, chance = 2171},
    {id = 5910, chance = 1846},
    {id = 5911, chance = 1768},
    {id = 21175, chance = 832},
    {id = 3037, chance = 611},
    {id = 3039, chance = 520},
    {id = 7401, chance = 247},
    {id = 21166, chance = 221},
    {name = "ultimate death rune", chance = 4130},
    {name = "summon rune V", chance = 3320},
    {name = "atonement rune", chance = 3040}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 50, attack = 50},
    	{name ="combat", interval = 2000, chance = 22, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -150, range = 7, shootEffect = CONST_ANI_SPEAR, effect = CONST_ME_EXPLOSIONAREA, target = false},
    	-- bleed
    	{name ="condition", type = CONDITION_BLEEDING, interval = 2000, chance = 40, minDamage = -300, maxDamage = -400, range = 7, radius = 3, shootEffect = CONST_ANI_THROWINGKNIFE, effect = CONST_ME_HITAREA, target = true},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -160, maxDamage = -260, range = 7, radius = 2, shootEffect = CONST_ANI_BURSTARROW, effect = CONST_ME_EXPLOSIONHIT, target = true},
    	{name ="combat", interval = 2000, chance = 14, type = COMBAT_LIFEDRAIN, minDamage = -35, maxDamage = -150, radius = 4, effect = CONST_ME_EXPLOSIONAREA, target = false}
}

monster.defenses = {
    	defense = 30,
    	armor = 30,
    	{name ="combat", interval = 2000, chance = 7, type = COMBAT_HEALING, minDamage = 95, maxDamage = 180, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="speed", interval = 2000, chance = 10, speedChange = 520, effect = CONST_ME_POFF, target = false, duration = 5000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 10},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -5},
    	{type = COMBAT_HOLYDAMAGE , percent = 10},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
