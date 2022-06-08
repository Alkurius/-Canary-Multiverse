local mType = Game.createMonsterType("(Drake lord)")
local monster = {}

monster.description = "a drake lord"
monster.experience = 4830
monster.health = 6382
monster.maxHealth = 6382
monster.race = "blood"
monster.corpse = 41145
monster.speed = 382
monster.manaCost = 0
monster.raceId = 2376

monster.outfit = {
    lookType = 1705,
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
    illusionable = true,
    canPushItems = true,
    canPushCreatures = false,
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
    {name = "small diamond", chance = 3538, maxCount = 6},
    {name = "gold coin", chance = 72500, maxCount = 145},
    {name = "gold coin", chance = 68150, maxCount = 145},
    {name = "platinum coin", chance = 73022, maxCount = 12},
    {name = "meat", chance = 43754},
    {name = "magic sulphur", chance = 3045},
    {name = "assassin dagger", chance = 1421},
    {name = "great mana potion", chance = 13543, maxCount = 4},
    {name = "ultimate health potion", chance = 13412, maxCount = 4},
    {name = "Zaoan armor", chance = 710},
    {name = "Zaoan helmet", chance = 218},
    {name = "Zaoan legs", chance = 1116},
    {name = "Zaoan sword", chance = 710},
    {name = "elite draken mail", chance = 160},
    {name = "twiceslicer", chance = 1320},
    {name = "draken sulphur", chance = 11020},
    {name = "draken wristbands", chance = 20344},
    {name = "broken draken mail", chance = 24548},
    {name = "broken slicer", chance = 35772},
    {name = "cobra crown", chance = 14},
    {name = "draken boots", chance = 870},
    {name = "snake god's wristguard", chance = 116},
    {name = "blade of corruption", chance = 29},
    {name = "Meteoro death backpack", chance = 1020},
    {name = "summon rune L", chance = 3320},
    {name = "meteoro energy rune", chance = 3060},
    {name = "infernalist boots", chance = 1100},
    {name = "cursed helmet", chance = 980},
    {name = "drake wand", chance = 420},
    {name = "drake helmet", chance = 1700},
    {name = "drake shield", chance = 270},
    {name = "drake legs", chance = 1900},
    {name = "drake axe", chance = 1830},
    {name = "drake rod", chance = 70}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -354},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -240, maxDamage = -550, length = 4, spread = 3, effect = CONST_ME_EXPLOSIONHIT, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -200, maxDamage = -300, range = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -280, maxDamage = -410, radius = 4, effect = CONST_ME_POFF, target = true},
    	{name ="soulfire rune", interval = 2000, chance = 10, target = false},
    	-- poison
    	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 10, minDamage = -250, maxDamage = -320, range = 7, shootEffect = CONST_ANI_POISON, target = true}
}

monster.defenses = {
    	defense = 45,
    	armor = 45,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 510, maxDamage = 600, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 40},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 30},
    	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
