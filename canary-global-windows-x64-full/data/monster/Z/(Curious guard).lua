local mType = Game.createMonsterType("(Curious guard)")
local monster = {}

monster.description = "a curious guard"
monster.experience = 1080
monster.health = 1200
monster.maxHealth = 1200
monster.race = "blood"
monster.corpse = 41744
monster.speed = 310
monster.manaCost = 0
monster.raceId = 2511

monster.outfit = {
    lookType = 1840,
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
    illusionable = true,
    canPushItems = true,
    canPushCreatures = false,
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
    {id = 3446, chance = 99495, maxCount = 11},
    {id = 3031, chance = 82951, maxCount = 33},
    {id = 3592, chance = 16940},
    {id = 239, chance = 13574, maxCount = 2},
    {id = 3577, chance = 5500},
    {id = 3349, chance = 913},
    {id = 3563, chance = 836},
    {id = 3048, chance = 770, maxCount = 2},
    {id = 3003, chance = 1100},
    {id = 3572, chance = 1100},
    {id = 2815, chance = 913},
    {id = 3028, chance = 913},
    {id = 3279, chance = 143},
    {id = 3269, chance = 913},
    {id = 3415, chance = 363},
    {id = 3371, chance = 253},
    {id = 3369, chance = 220},
    {name = "ultimate magic wall rune", chance = 3840},
    {name = "special blank rune", chance = 4310},
    {name = "special mana leach holy rune", chance = 3930}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 10, maxDamage = -175},
    	{name ="combat", interval = 2000, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = 10, maxDamage = -100, range = 7, shootEffect = CONST_ANI_BOLT, target = false}
}

monster.defenses = {
    	defense = 50,
    	armor = 35,
    	{name ="combat", interval = 4000, chance = 25, type = COMBAT_HEALING, minDamage = 20, maxDamage = 80, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
