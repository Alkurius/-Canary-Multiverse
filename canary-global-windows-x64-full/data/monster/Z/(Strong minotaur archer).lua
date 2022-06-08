local mType = Game.createMonsterType("(Strong minotaur archer)")
local monster = {}

monster.description = "a strong minotaur archer"
monster.experience = 2200
monster.health = 2600
monster.maxHealth = 2600
monster.race = "blood"
monster.corpse = 41278
monster.speed = 300
monster.manaCost = 0
monster.raceId = 2427

monster.outfit = {
    lookType = 1756,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Humanoid",
    race = BESTY_RACE_HUMANOID,
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
    {id = 7368, chance = 3648, maxCount = 6},
    {id = 21204, chance = 23796},
    {id = 3031, chance = 100000, maxCount = 235},
    {id = 3582, chance = 72936},
    {id = 3577, chance = 5904},
    {id = 3035, chance = 74496, maxCount = 4},
    {id = 9058, chance = 348},
    {id = 5878, chance = 21540},
    {id = 239, chance = 9204},
    {id = 238, chance = 8856},
    {id = 11472, chance = 8160, maxCount = 2},
    {id = 3098, chance = 3648},
    {id = 3030, chance = 6600, maxCount = 2},
    {id = 9057, chance = 1080, maxCount = 2},
    {id = 3033, chance = 1164, maxCount = 2},
    {id = 3032, chance = 4860, maxCount = 2},
    {id = 21175, chance = 3648},
    {id = 21174, chance = 2088},
    {id = 5911, chance = 852},
    {id = 3039, chance = 516},
    {id = 3081, chance = 1020},
    {id = 3037, chance = 1044},
    {id = 3369, chance = 1392},
    {id = 7443, chance = 864},
    {name = "semi-perfect sapphire", chance = 2360},
    {name = "summon rune I", chance = 3950},
    {name = "ultimate energy rune", chance = 4200}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 50, attack = 50},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -50, maxDamage = -305, length = 8, spread = 3, effect = CONST_ME_MAGIC_RED, target = false},
    	{name ="combat", interval = 2000, chance = 16, type = COMBAT_LIFEDRAIN, minDamage = -50, maxDamage = -150, radius = 4, effect = CONST_ME_MAGIC_RED, target = false},
    	{name ="combat", interval = 2000, chance = 22, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -150, range = 7, shootEffect = CONST_ANI_HUNTINGSPEAR, effect = CONST_ME_EXPLOSIONAREA, target = false},
    	-- bleed
    	{name ="condition", type = CONDITION_BLEEDING, interval = 2000, chance = 40, minDamage = -300, maxDamage = -400, radius = 4, shootEffect = CONST_ANI_THROWINGKNIFE, target = true},
    	{name ="minotaur amazon paralyze", interval = 2000, chance = 15, target = false}
}

monster.defenses = {
    	defense = 35,
    	armor = 35
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = -10},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = -5},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 5},
    	{type = COMBAT_HOLYDAMAGE , percent = 10},
    	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
