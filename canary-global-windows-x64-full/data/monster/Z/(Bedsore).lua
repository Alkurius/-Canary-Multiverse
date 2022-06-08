local mType = Game.createMonsterType("(Bedsore)")
local monster = {}

monster.description = "a bedsore"
monster.experience = 6248
monster.health = 8500
monster.maxHealth = 8500
monster.race = "fire"
monster.corpse = 41747
monster.speed = 320
monster.manaCost = 0
monster.raceId = 2569

monster.outfit = {
    lookType = 1898,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Demon",
    race = BESTY_RACE_DEMON,
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
    {name = "gold coin", chance = 100000, maxCount = 250},
    {name = "platinum coin", chance = 100000, maxCount = 8},
    {name = "great spirit potion", chance = 32512, maxCount = 6},
    {name = "great mana potion", chance = 31512, maxCount = 6},
    {name = "vexclaw talon", chance = 26875},
    {name = "demonic essence", chance = 25912},
    {name = "ultimate health potion", chance = 24950, maxCount = 6},
    {name = "fire mushroom", chance = 24925, maxCount = 8},
    {name = "golden sickle", chance = 23675},
    {name = "purple tome", chance = 23062},
    {name = "small amethyst", chance = 12612, maxCount = 6},
    {name = "small topaz", chance = 12238, maxCount = 6},
    {name = "small emerald", chance = 12212, maxCount = 6},
    {name = "small ruby", chance = 11988, maxCount = 6},
    {name = "talon", chance = 6750},
    {name = "yellow gem", chance = 6362},
    {name = "wand of voodoo", chance = 6175},
    {name = "cobra mana potion", chance = 1250},
    {name = "life leach death rune", chance = 3040},
    {name = "special ultimate energy rune", chance = 4250},
    {name = "lost demon axe", chance = 1580},
    {name = "rod of eternal winter", chance = 630},
    {name = "glaciar boots", chance = 1010}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 75, attack = 150},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = 0, maxDamage = -120, range = 7, target = false},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -150, maxDamage = -250, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
    	{name ="choking fear drown", interval = 2000, chance = 20, target = false},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -150, maxDamage = -400, radius = 4, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -50, maxDamage = -200, length = 8, spread = 3, effect = CONST_ME_PURPLEENERGY, target = false},
    	{name ="firefield", interval = 2000, chance = 10, range = 7, radius = 1, shootEffect = CONST_ANI_FIRE, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -300, maxDamage = -490, length = 8, spread = 3, effect = CONST_ME_PURPLEENERGY, target = false},
    	{name ="energy strike", interval = 2000, chance = 10, minDamage = -210, maxDamage = -300, range = 1, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = -300, radius = 1, effect = CONST_ME_MAGIC_RED, target = true, duration = 30000}
}

monster.defenses = {
    	defense = 55,
    	armor = 55,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 180, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
    	{type = COMBAT_ENERGYDAMAGE, percent = 50},
    	{type = COMBAT_EARTHDAMAGE, percent = 40},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 100},
    	{type = COMBAT_ICEDAMAGE, percent = -10},
    	{type = COMBAT_HOLYDAMAGE , percent = -10},
    	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
