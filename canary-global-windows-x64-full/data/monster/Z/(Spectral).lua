local mType = Game.createMonsterType("(Spectral)")
local monster = {}

monster.description = "a spectral"
monster.experience = 6900
monster.health = 7475
monster.maxHealth = 7475
monster.race = "blood"
monster.corpse = 41242
monster.speed = 450
monster.manaCost = 0
monster.raceId = 2405

monster.outfit = {
    lookType = 1734,
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
    {name = "platinum coin", chance = 100000, maxCount = 10},
    {name = "great spirit potion", chance = 100000, maxCount = 4},
    {name = "protection amulet", chance = 21000},
    {name = "life crystal", chance = 16870},
    {name = "silver amulet", chance = 21000},
    {name = "wand of voodoo", chance = 15470},
    {name = "wand of cosmic energy", chance = 16520},
    {name = "dragon necklace", chance = 23240},
    {name = "stone skin amulet", chance = 12404},
    {id = 30082, chance = 21840},
    {name = "glacier amulet", chance = 23646},
    {name = "orb", chance = 26572},
    {name = "hailstorm rod", chance = 24570},
    {name = "elven amulet", chance = 2520},
    {name = "garlic necklace", chance = 3696},
    {name = "platinum amulet", chance = 3640},
    {name = "mind stone", chance = 2520},
    {name = "glacial rod", chance = 728},
    {name = "shockwave amulet", chance = 868},
    {name = "strange symbol", chance = 1008},
    {name = "hexagonal ruby", chance = 672},
    {name = "rings backpack", chance = 2440},
    {name = "Banshee Doll", chance = -20},
    {name = "mana leach energy rune", chance = 4300},
    {name = "darkness axe", chance = 1810},
    {name = "black spirit legs", chance = 1310},
    {name = "club of mythical justice", chance = 990}
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
