local mType = Game.createMonsterType("(Soldier)")
local monster = {}

monster.description = "a soldier"
monster.experience = 1800
monster.health = 1600
monster.maxHealth = 1600
monster.race = "blood"
monster.corpse = 41744
monster.speed = 220
monster.manaCost = 0
monster.raceId = 2602

monster.outfit = {
    lookType = 1931,
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
    {name = "gold coin", chance = 100000, maxCount = 220},
    {name = "platinum coin", chance = 66264, maxCount = 2},
    {name = "strong health potion", chance = 12045, maxCount = 2},
    {name = "great mana potion", chance = 9163, maxCount = 2},
    {name = "brown mushroom", chance = 18590, maxCount = 2},
    {id = 12600, chance = 14410},
    {name = "holy ash", chance = 14410},
    {name = "small topaz", chance = 11264},
    {name = "lost husher's staff", chance = 7590},
    {name = "skull shatterer", chance = 8382},
    {name = "wimp tooth chain", chance = 13090},
    {name = "red hair dye", chance = 13882},
    {name = "basalt fetish", chance = 8910},
    {name = "bonecarving knife", chance = 8910},
    {name = "basalt figurine", chance = 8910},
    {name = "bone fetish", chance = 9769},
    {id = 3097, chance = 1147},
    {name = "guardian shield", chance = 1573},
    {name = "buckle", chance = 2090},
    {name = "clay lump", chance = 781},
    {name = "knight axe", chance = 1045},
    {name = "terra boots", chance = 264},
    {name = "suspicious device", chance = 275},
    {name = "tower shield", chance = 264},
    {name = "terra legs", chance = 264},
    {name = "fire axe", chance = 781},
    {name = "skull staff", chance = 528},
    {name = "spiked squelcher", chance = 264},
    {name = "ultimate explosion rune", chance = 2660},
    {name = "arcane water rune", chance = 2460},
    {name = "special tornado holy rune", chance = 3590}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -120},
    	{name ="sudden death rune", interval = 2000, chance = 15, minDamage = -150, maxDamage = -350, range = 3, length = 6, spread = 3, effect = CONST_ME_MORTAREA, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_MANADRAIN, minDamage = -150, maxDamage = -250, range = 3, length = 5, spread = 5, effect = CONST_ME_SMOKE, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -150, maxDamage = -290, range = 3, length = 5, spread = 5, shootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_POISONAREA, target = false},
    	{name ="sudden death rune", interval = 2000, chance = 15, minDamage = -70, maxDamage = -250, range = 7, target = false},
    	{name ="drunk", interval = 2000, chance = 10, range = 7, shootEffect = CONST_ANI_ENERGY, target = false, duration = 5000}
}

monster.defenses = {
    	defense = 20,
    	armor = 20,
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 0, maxDamage = 160, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
    	{type = COMBAT_ENERGYDAMAGE, percent = 30},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 30},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 30},
    	{type = COMBAT_HOLYDAMAGE , percent = -30},
    	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
