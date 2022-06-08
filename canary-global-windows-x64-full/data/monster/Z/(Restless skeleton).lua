local mType = Game.createMonsterType("(Restless skeleton)")
local monster = {}

monster.description = "a restless skeleton"
monster.experience = 6000
monster.health = 6500
monster.maxHealth = 6500
monster.race = "blood"
monster.corpse = 41402
monster.speed = 450
monster.manaCost = 0
monster.raceId = 2485

monster.outfit = {
    lookType = 1814,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Undead",
    race = BESTY_RACE_UNDEAD,
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
    canWalkOnEnergy = true,
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "platinum coin", chance = 100000, maxCount = 9},
    {name = "great spirit potion", chance = 100000, maxCount = 4},
    {name = "protection amulet", chance = 19500},
    {name = "life crystal", chance = 15665},
    {name = "silver amulet", chance = 19500},
    {name = "wand of voodoo", chance = 14365},
    {name = "wand of cosmic energy", chance = 15340},
    {name = "dragon necklace", chance = 21580},
    {name = "stone skin amulet", chance = 11518},
    {id = 30082, chance = 20280},
    {name = "glacier amulet", chance = 21957},
    {name = "orb", chance = 24674},
    {name = "hailstorm rod", chance = 22815},
    {name = "elven amulet", chance = 2340},
    {name = "garlic necklace", chance = 3432},
    {name = "platinum amulet", chance = 3380},
    {name = "mind stone", chance = 2340},
    {name = "glacial rod", chance = 676},
    {name = "shockwave amulet", chance = 806},
    {name = "strange symbol", chance = 936},
    {name = "hexagonal ruby", chance = 624},
    {name = "demonic life potion", chance = 900},
    {name = "Lich Doll", chance = -160},
    {name = "special ultimate holy rune", chance = 3910},
    {name = "darkness club", chance = 360},
    {name = "axe of eternal flames", chance = 1180},
    {name = "Dark warrior helmet", chance = 130}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = -400, maxDamage = -580},
    	{name ="combat", interval = 2000, chance = 25, type = COMBAT_LIFEDRAIN, minDamage = -270, maxDamage = -390, radius = 4, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="combat", interval = 2000, chance = 25, type = COMBAT_ICEDAMAGE, minDamage = -280, maxDamage = -410, radius = 4, effect = CONST_ME_ICEAREA, target = true},
    	{name ="combat", interval = 2000, chance = 5200, type = COMBAT_ICEDAMAGE, minDamage = -280, maxDamage = -370, effect = CONST_ME_ICEATTACK, target = true},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -200, maxDamage = -290, length = 5, spread = 3, effect = CONST_ME_ICEATTACK, target = false}
}

monster.defenses = {
    	defense = 70,
    	armor = 70,
    	{name ="combat", interval = 2000, chance = 30, type = COMBAT_HEALING, minDamage = 150, maxDamage = 200, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 100},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = -20},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 70},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
