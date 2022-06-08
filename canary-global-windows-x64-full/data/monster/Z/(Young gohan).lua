local mType = Game.createMonsterType("(Young gohan)")
local monster = {}

monster.description = "a young gohan"
monster.experience = 1950
monster.health = 2500
monster.maxHealth = 2500
monster.race = "venom"
monster.corpse = 41744
monster.speed = 360
monster.manaCost = 0
monster.raceId = 2734

monster.outfit = {
    lookType = 2063,
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
    {id = 3031, chance = 100000, maxCount = 135},
    {id = 3035, chance = 100000, maxCount = 5},
    {id = 239, chance = 19170},
    {id = 7642, chance = 18900},
    {id = 238, chance = 17145},
    {id = 23545, chance = 15120},
    {id = 23535, chance = 14715},
    {id = 23501, chance = 13365},
    {id = 23524, chance = 11205},
    {id = 23506, chance = 10800},
    {id = 16126, chance = 4590},
    {id = 16120, chance = 4590},
    {id = 16124, chance = 3645, maxCount = 3},
    {id = 16119, chance = 2565},
    {id = 3039, chance = 2025},
    {id = 8092, chance = 1485},
    {name = "charm extra physical shot", chance = 1170},
    {name = "arcane earth rune", chance = 2450}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -300},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -180, maxDamage = -300, range = 5, radius = 5, shootEffect = CONST_ANI_ENERGYBALL, effect = CONST_ME_PURPLEENERGY, target = true},
    	{name ="reality reaver wave", interval = 2000, chance = 20, minDamage = -200, maxDamage = -350, target = false},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -80, maxDamage = -200, radius = 3, effect = CONST_ME_STUN, target = false}
}

monster.defenses = {
    	defense = 45,
    	armor = 45,
    	{name ="invisible", interval = 2000, chance = 15, effect = CONST_ME_POFF},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 80, maxDamage = 210, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="speed", interval = 2000, chance = 10, speedChange = 330, effect = CONST_ME_HITAREA, target = false, duration = 8000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 15},
    	{type = COMBAT_ENERGYDAMAGE, percent = 100},
    	{type = COMBAT_EARTHDAMAGE, percent = -20},
    	{type = COMBAT_FIREDAMAGE, percent = 50},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 20},
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
