local mType = Game.createMonsterType("(Clown)")
local monster = {}

monster.description = "a clown"
monster.experience = 1500
monster.health = 1700
monster.maxHealth = 1700
monster.race = "blood"
monster.corpse = 41744
monster.speed = 330
monster.manaCost = 0
monster.raceId = 2540

monster.outfit = {
    lookType = 1869,
    lookHead = 62,
    lookBody = 50,
    lookLegs = 114,
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
    illusionable = true,
    canPushItems = true,
    canPushCreatures = false,
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
    {id = 7364, chance = 1634, maxCount = 5},
    {id = 3031, chance = 100000, maxCount = 40},
    {id = 3035, chance = 100000, maxCount = 3},
    {id = 3592, chance = 1634},
    {id = 3577, chance = 1634, maxCount = 3},
    {id = 239, chance = 1634},
    {id = 3269, chance = 2174},
    {id = 3658, chance = 688},
    {id = 3003, chance = 2039},
    {id = 11510, chance = 1228},
    {id = 11450, chance = 1228},
    {id = 3030, chance = 1094, maxCount = 3},
    {id = 3029, chance = 1094, maxCount = 3},
    {id = 3004, chance = 688},
    {id = 5911, chance = 284},
    {id = 3279, chance = 284},
    {id = 3381, chance = 418},
    {id = 3280, chance = 284},
    {id = 3385, chance = 418},
    {id = 3419, chance = 284},
    {id = 3382, chance = 148},
    {id = 3055, chance = 284},
    {name = "tornado fire rune", chance = 3770},
    {name = "meteoro death rune", chance = 3490},
    {name = "special tornado energy rune", chance = 3720}
}

monster.attacks = {
    	{name ="vile grandmaster", interval = 2000, chance = 15, target = false},
    	{name ="melee", interval = 2000, chance = 100, minDamage = 10, maxDamage = -260},
    	-- bleed
    	{name ="condition", type = CONDITION_BLEEDING, interval = 2000, chance = 20, minDamage = -150, maxDamage = -225, radius = 4, shootEffect = CONST_ANI_THROWINGKNIFE, target = true}
}

monster.defenses = {
    	defense = 50,
    	armor = 35,
    	{name ="combat", interval = 4000, chance = 15, type = COMBAT_HEALING, minDamage = 220, maxDamage = 280, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 10},
    	{type = COMBAT_FIREDAMAGE, percent = 10},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 10},
    	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
