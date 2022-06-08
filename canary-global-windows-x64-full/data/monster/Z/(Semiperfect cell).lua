local mType = Game.createMonsterType("(Semiperfect cell)")
local monster = {}

monster.description = "a semiperfect cell"
monster.experience = 11000
monster.health = 14000
monster.maxHealth = 14000
monster.race = "blood"
monster.corpse = 41747
monster.speed = 380
monster.manaCost = 0
monster.raceId = 2701

monster.outfit = {
    lookType = 2030,
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
    pushable = false,
    rewardBoss = false,
    illusionable = true,
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
    {id = 3031, chance = 100000, maxCount = 176},
    {id = 3035, chance = 27000, maxCount = 12},
    {id = 6558, chance = 5400, maxCount = 4},
    {id = 9058, chance = 1755, maxCount = 3},
    {id = 238, chance = 12960, maxCount = 3},
    {id = 7642, chance = 3105, maxCount = 3},
    {id = 3033, chance = 2700, maxCount = 7},
    {id = 3028, chance = 1215, maxCount = 7},
    {id = 3032, chance = 1215, maxCount = 7},
    {id = 3030, chance = 2700, maxCount = 7},
    {id = 9057, chance = 1215, maxCount = 7},
    {id = 7643, chance = 7155, maxCount = 3},
    {id = 3019, chance = 1350},
    {id = 6499, chance = 2160},
    {id = 281, chance = 1080},
    {id = 3038, chance = 1080},
    {id = 818, chance = 675},
    {id = 821, chance = 1620},
    {id = 3414, chance = 473},
    {id = 22729, chance = 1080},
    {id = 3039, chance = 675},
    {id = 22866, chance = 378},
    {id = 22867, chance = 243},
    {id = 5741, chance = 608},
    {id = 22727, chance = 270},
    {id = 7413, chance = 1215},
    {id = 3360, chance = 1013},
    {id = 8074, chance = 1215},
    {id = 3340, chance = 540},
    {name = "perfect amethyst", chance = 2410},
    {name = "life leach ice rune", chance = 2670},
    {name = "titanium axe", chance = 1710},
    {name = "nightmare armor", chance = 1350},
    {name = "decay helmet", chance = 1180},
    {name = "exp boost x 10", chance = 2200}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 200, maxDamage = -869, condition = {type = CONDITION_FIRE, totalDamage = 6, interval = 9000}},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -170, maxDamage = -300, range = 7, shootEffect = CONST_ANI_POISON, target = false},
    	{name ="renegade knight", interval = 2000, chance = 20, target = false},
    	{name ="choking fear drown", interval = 2000, chance = 20, target = false},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -250, maxDamage = -500, radius = 4, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -50, maxDamage = -200, length = 8, spread = 3, effect = CONST_ME_PURPLEENERGY, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -300, maxDamage = -550, radius = 1, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK, target = true},
    	{name ="warlock skill reducer", interval = 2000, chance = 5, range = 5, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = 300, maxDamage = -500, radius = 1, shootEffect = CONST_ANI_EXPLOSION, effect = CONST_ME_SLEEP, target = true}
}

monster.defenses = {
    	defense = 20,
    	armor = 20,
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 80, maxDamage = 95, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = -10},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 100},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
