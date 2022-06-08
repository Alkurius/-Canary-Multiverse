local mType = Game.createMonsterType("(Freeza iv)")
local monster = {}

monster.description = "a freeza iv"
monster.experience = 20000
monster.health = 30000
monster.maxHealth = 30000
monster.race = "blood"
monster.corpse = 41750
monster.speed = 280
monster.manaCost = 0
monster.raceId = 2696

monster.outfit = {
    lookType = 2025,
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
    Stars = 5,
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
    rewardBoss = true,
    illusionable = false,
    canPushItems = true,
    canPushCreatures = true,
    staticAttackChance = 70,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {id = 3115, chance = 40500, maxCount = 1},
    {name = "brass shield", chance = 40500, maxCount = 1},
    {name = "spatial warp almanac", chance = 33750, maxCount = 1},
    {name = "viking helmet", chance = 31050, maxCount = 1},
    {name = "falcon battleaxe", chance = 675, maxCount = 1},
    {name = "falcon longsword", chance = 675, maxCount = 1},
    {name = "falcon mace", chance = 675, maxCount = 1},
    {name = "grant of arms", chance = 675, maxCount = 1},
    {name = "falcon bow", chance = 473, maxCount = 1},
    {name = "falcon circlet", chance = 473, maxCount = 1},
    {name = "falcon coif", chance = 473, maxCount = 1},
    {name = "falcon rod", chance = 473, maxCount = 1},
    {name = "falcon wand", chance = 473, maxCount = 1},
    {name = "falcon shield", chance = 270, maxCount = 1},
    {name = "falcon greaves", chance = 270, maxCount = 1},
    {name = "falcon plate", chance = 270, maxCount = 1},
    {name = "perfect amethyst", chance = 2410},
    {name = "life leach ice rune", chance = 2670},
    {name = "titanium armor", chance = 770},
    {name = "elite royal axe", chance = -40},
    {name = "helmet of the dark lord", chance = 2180},
    {name = "legs of RA", chance = 1600}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1200},
    	{name ="combat", interval = 6000, chance = 80, type = COMBAT_HOLYDAMAGE, minDamage = -1000, maxDamage = -2250, length = 8, spread = 3, effect = CONST_ME_HOLYAREA, target = false},
    	{name ="combat", interval = 1000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -820, maxDamage = -1450, radius = 5, effect = CONST_ME_HITAREA, target = false},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -860, maxDamage = -1500, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = false}
}

monster.defenses = {
    	defense = 60,
    	armor = 82,
    	{name ="speed", interval = 1000, chance = 10, speedChange = 180, effect = CONST_ME_POFF, target = false, duration = 4000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = -5},
    	{type = COMBAT_EARTHDAMAGE, percent = 5},
    	{type = COMBAT_FIREDAMAGE, percent = -5},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = -25},
    	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = true},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
