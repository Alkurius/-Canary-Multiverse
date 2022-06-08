local mType = Game.createMonsterType("(Anti-mine soldier)")
local monster = {}

monster.description = "a anti-mine soldier"
monster.experience = 1100
monster.health = 1200
monster.maxHealth = 1200
monster.race = "blood"
monster.corpse = 41744
monster.speed = 310
monster.manaCost = 0
monster.raceId = 2607

monster.outfit = {
    lookType = 1936,
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
    pushable = true,
    rewardBoss = false,
    illusionable = true,
    canPushItems = false,
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
    {id = 3031, chance = 55352, maxCount = 132},
    {id = 3035, chance = 55352},
    {id = 236, chance = 55352},
    {id = 3078, chance = 55352},
    {id = 3316, chance = 22000},
    {id = 3724, chance = 55352, maxCount = 3},
    {id = 23811, chance = 6600},
    {id = 24380, chance = 5390},
    {id = 24381, chance = 1980},
    {id = 24382, chance = 14025},
    {id = 3027, chance = 2761, maxCount = 2},
    {id = 3030, chance = 2134, maxCount = 2},
    {id = 7452, chance = 1100},
    {id = 8015, chance = 9757},
    {id = 9057, chance = 10670},
    {id = 16123, chance = 16819, maxCount = 3},
    {id = 17828, chance = 1001},
    {id = 2966, chance = 1001},
    {id = 7439, chance = 1001},
    {id = 7419, chance = 330},
    {name = "ultimate explosion rune", chance = 2660},
    {name = "meteoro water rune", chance = 2600},
    {name = "special tornado holy rune", chance = 3590}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -240},
    	{name ="combat", interval = 2000, chance = 35, type = COMBAT_PHYSICALDAMAGE, minDamage = -180, maxDamage = -220, range = 7, shootEffect = CONST_ANI_LARGEROCK, target = true}
}

monster.defenses = {
    	defense = 25,
    	armor = 35,
    	{name ="speed", interval = 2000, chance = 10, speedChange = 336, effect = CONST_ME_MAGIC_RED, target = false, duration = 2000},
    	{name ="combat", interval = 2000, chance = 17, type = COMBAT_HEALING, minDamage = 80, maxDamage = 150, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = -10},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 20},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 20},
    	{type = COMBAT_HOLYDAMAGE , percent = 50},
    	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
