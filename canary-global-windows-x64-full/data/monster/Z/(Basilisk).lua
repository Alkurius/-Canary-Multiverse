local mType = Game.createMonsterType("(Basilisk)")
local monster = {}

monster.description = "a basilisk"
monster.experience = 2990
monster.health = 2535
monster.maxHealth = 2535
monster.race = "blood"
monster.corpse = 41019
monster.speed = 530
monster.manaCost = 0
monster.raceId = 2494

monster.outfit = {
    lookType = 1823,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Reptile",
    race = BESTY_RACE_REPTILE,
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
    {name = "small sapphire", chance = 8960, maxCount = 5},
    {name = "gold coin", chance = 60800, maxCount = 160},
    {name = "gold coin", chance = 48000, maxCount = 160},
    {name = "gold coin", chance = 48000, maxCount = 58},
    {name = "platinum coin", chance = 40000, maxCount = 5},
    {id = 3049, chance = 640},
    {id = 3098, chance = 1760},
    {name = "serpent sword", chance = 6720},
    {name = "plate legs", chance = 11440},
    {name = "dragon ham", chance = 96000, maxCount = 3},
    {name = "strong health potion", chance = 8800},
    {name = "strong mana potion", chance = 6160},
    {name = "great mana potion", chance = 1472},
    {name = "glacier amulet", chance = 1408},
    {name = "glacier kilt", chance = 688},
    {name = "spirit cloak", chance = 4640},
    {name = "focus cape", chance = 592},
    {name = "crystalline armor", chance = 144},
    {name = "northwind rod", chance = 1488},
    {name = "sea serpent scale", chance = 16320},
    {name = "ultimate paralise rune", chance = 3460},
    {name = "summon rune X", chance = 3330},
    {name = "special life leach holy rune", chance = 3460}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -250},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -60, maxDamage = -300, length = 7, spread = 2, effect = CONST_ME_SMALLPLANTS, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -101, maxDamage = -300, length = 7, spread = 2, effect = CONST_ME_ICEATTACK, target = false},
    	{name ="sea serpent drown", interval = 2000, chance = 15, range = 5, target = false}
}

monster.defenses = {
    	defense = 45,
    	armor = 45,
    	{name ="combat", interval = 2000, chance = 30, type = COMBAT_HEALING, minDamage = 70, maxDamage = 273, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = 400, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = -15},
    	{type = COMBAT_ENERGYDAMAGE, percent = -5},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 30},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 100},
    	{type = COMBAT_ICEDAMAGE, percent = 100},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
