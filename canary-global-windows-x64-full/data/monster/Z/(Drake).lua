local mType = Game.createMonsterType("(Drake)")
local monster = {}

monster.description = "a drake"
monster.experience = 3565
monster.health = 5750
monster.maxHealth = 5750
monster.race = "blood"
monster.corpse = 41173
monster.speed = 386
monster.manaCost = 0
monster.raceId = 2377

monster.outfit = {
    lookType = 1706,
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
    staticAttackChance = 70,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "ring of the sky", chance = 536},
    {name = "small ruby", chance = 10020, maxCount = 7},
    {name = "gold coin", chance = 59450, maxCount = 145},
    {name = "gold coin", chance = 84100, maxCount = 145},
    {name = "platinum coin", chance = 36990, maxCount = 7},
    {name = "green gem", chance = 1406},
    {name = "wand of inferno", chance = 2407},
    {name = "meat", chance = 44080},
    {name = "great mana potion", chance = 7206},
    {name = "focus cape", chance = 2102},
    {name = "Zaoan shoes", chance = 2871},
    {name = "weaver's wandtip", chance = 28696},
    {name = "draken trophy", chance = 14},
    {name = "spellweaver's robe", chance = 899},
    {name = "Zaoan robe", chance = 1116},
    {name = "luminous orb", chance = 2871},
    {name = "draken sulphur", chance = 5698},
    {name = "harness", chance = 44},
    {name = "bamboo leaves", chance = 261},
    {name = "shell backpack", chance = 1610},
    {name = "summon rune L", chance = 3320},
    {name = "meteoro energy rune", chance = 3060},
    {name = "infernalist boots", chance = 1100},
    {name = "cursed helmet", chance = 980},
    {name = "drake wand", chance = 420},
    {name = "drake armor", chance = -40},
    {name = "drake shield", chance = 270},
    {name = "drake club", chance = 800},
    {name = "drake axe", chance = 1830}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -252},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -240, maxDamage = -480, length = 4, spread = 3, effect = CONST_ME_EXPLOSIONHIT, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -100, maxDamage = -250, range = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -150, maxDamage = -300, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -200, maxDamage = -380, radius = 4, effect = CONST_ME_POFF, target = true},
    	{name ="soulfire rune", interval = 2000, chance = 10, target = false},
    	-- poison
    	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 10, minDamage = -280, maxDamage = -360, shootEffect = CONST_ANI_POISON, target = true}
}

monster.defenses = {
    	defense = 25,
    	armor = 25,
    	{name ="invisible", interval = 2000, chance = 10, effect = CONST_ME_MAGIC_RED},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 270, maxDamage = 530, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
    	{type = COMBAT_ENERGYDAMAGE, percent = -10},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -10},
    	{type = COMBAT_HOLYDAMAGE , percent = -5},
    	{type = COMBAT_DEATHDAMAGE , percent = 75}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
