local mType = Game.createMonsterType("(Dark pit lord)")
local monster = {}

monster.description = "a dark pit lord"
monster.experience = 1700
monster.health = 2600
monster.maxHealth = 2600
monster.race = "fire"
monster.corpse = 41134
monster.speed = 300
monster.manaCost = 0
monster.raceId = 2366

monster.outfit = {
    lookType = 1695,
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
    staticAttackChance = 80,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = false
}

monster.loot = {
    {name = "small ruby", chance = 15625, maxCount = 6},
    {name = "gold coin", chance = 62500, maxCount = 125},
    {name = "gold coin", chance = 62500, maxCount = 98},
    {name = "platinum coin", chance = 41666, maxCount = 5},
    {id = 3049, chance = 6250},
    {name = "wand of inferno", chance = 1115},
    {name = "steel boots", chance = 111},
    {name = "brown mushroom", chance = 5681},
    {name = "magic sulphur", chance = 668},
    {name = "butcher's axe", chance = 446},
    {name = "bullseye potion", chance = 892},
    {name = "strong health potion", chance = 17856},
    {name = "strong mana potion", chance = 17856},
    {name = "magma coat", chance = 892},
    {name = "demonic finger", chance = 222},
    {name = "semi-perfect topaz", chance = 830},
    {name = "summon rune A", chance = 3650},
    {name = "arcane energy rune", chance = 3140}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -319},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -40, maxDamage = -90, range = 7, radius = 6, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK, target = false},
    	{name ="shaburak wave", interval = 2000, chance = 15, minDamage = -100, maxDamage = -200, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -150, maxDamage = -250, length = 4, spread = 0, effect = CONST_ME_HITBYFIRE, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = -700, radius = 1, effect = CONST_ME_MAGIC_RED, target = true, duration = 15000}
}

monster.defenses = {
    	defense = 30,
    	armor = 30,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 100, maxDamage = 150, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 50},
    	{type = COMBAT_EARTHDAMAGE, percent = -30},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 50},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = false},
    	{type = "bleed", condition = false}
}

mType:register(monster)
