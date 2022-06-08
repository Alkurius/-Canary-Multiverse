local mType = Game.createMonsterType("(Pirate captain)")
local monster = {}

monster.description = "a pirate captain"
monster.experience = 1560
monster.health = 1885
monster.maxHealth = 1885
monster.race = "blood"
monster.corpse = 41744
monster.speed = 320
monster.manaCost = 0
monster.raceId = 2585

monster.outfit = {
    lookType = 1914,
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
    {id = 3447, chance = 100000, maxCount = 14},
    {id = 3031, chance = 100000, maxCount = 42},
    {id = 3592, chance = 1694},
    {id = 239, chance = 1694},
    {id = 3577, chance = 1694, maxCount = 3},
    {id = 7364, chance = 1694, maxCount = 6},
    {id = 3381, chance = 294},
    {id = 3385, chance = 434},
    {id = 3419, chance = 294},
    {id = 3382, chance = 154},
    {id = 3280, chance = 434},
    {id = 3269, chance = 2254},
    {id = 3658, chance = 714},
    {id = 3003, chance = 2114},
    {id = 2815, chance = 1274},
    {id = 11510, chance = 1274},
    {id = 11450, chance = 1274},
    {id = 3004, chance = 714},
    {name = "ultimate explosion rune", chance = 2660},
    {name = "reflect death rune", chance = 2740},
    {name = "special reflect fire rune", chance = 4100}
}

monster.attacks = {
    	{name ="renegade knight", interval = 2000, chance = 30, target = false},
    	{name ="melee", interval = 2000, chance = 100, minDamage = 10, maxDamage = -175}
}

monster.defenses = {
    	defense = 50,
    	armor = 35,
    	{name ="combat", interval = 4000, chance = 25, type = COMBAT_HEALING, minDamage = 200, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE, target = false}
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
