local mType = Game.createMonsterType("(Arcane 2)")
local monster = {}

monster.description = "a arcane 2"
monster.experience = 2000
monster.health = 2600
monster.maxHealth = 2600
monster.race = "blood"
monster.corpse = 41744
monster.speed = 350
monster.manaCost = 0
monster.raceId = 2530

monster.outfit = {
    lookType = 1859,
    lookHead = 0,
    lookBody = 80,
    lookLegs = 114,
    lookFeet = 114,
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
    canPushCreatures = false,
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {id = 3031, chance = 100000, maxCount = 125},
    {id = 3035, chance = 100000, maxCount = 4},
    {id = 21816, chance = 11362},
    {id = 238, chance = 8928},
    {id = 21203, chance = 6944},
    {id = 9057, chance = 6944, maxCount = 2},
    {id = 7642, chance = 6250},
    {id = 239, chance = 5681},
    {id = 21143, chance = 5000},
    {id = 21814, chance = 3788},
    {id = 21179, chance = 3125},
    {id = 21178, chance = 3125},
    {id = 21165, chance = 2500},
    {id = 3032, chance = 1865, maxCount = 2},
    {id = 21158, chance = 1865},
    {id = 7643, chance = 1865},
    {id = 21146, chance = 1250},
    {id = 3324, chance = 1250},
    {id = 21164, chance = 1250},
    {id = 3038, chance = 1250},
    {id = 21180, chance = 1250},
    {id = 3342, chance = 1250},
    {id = 811, chance = 1250},
    {id = 3344, chance = 1250},
    {id = 21183, chance = 625},
    {id = 813, chance = 625},
    {id = 812, chance = 625},
    {name = "ultimate magic wall rune", chance = 3840},
    {name = "arcane death rune", chance = 4310},
    {name = "special tornado ice rune", chance = 4270}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 80, attack = 68},
    	{name ="combat", interval = 2000, chance = 50, type = COMBAT_PHYSICALDAMAGE, minDamage = -60, maxDamage = -200, range = 8, shootEffect = CONST_ANI_ARROW, target = false}
}

monster.defenses = {
    	defense = 32,
    	armor = 32,
    	{name ="combat", interval = 3000, chance = 35, type = COMBAT_HEALING, minDamage = 200, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 15},
    	{type = COMBAT_ENERGYDAMAGE, percent = 20},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = -5},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 10},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
