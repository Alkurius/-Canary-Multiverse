local mType = Game.createMonsterType("(Freeza ii)")
local monster = {}

monster.description = "a freeza ii"
monster.experience = 10000
monster.health = 22500
monster.maxHealth = 22500
monster.race = "fire"
monster.corpse = 41747
monster.speed = 430
monster.manaCost = 0
monster.raceId = 2692

monster.outfit = {
    lookType = 2021,
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
    Stars = 4,
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
    staticAttackChance = 95,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = false
}

monster.loot = {
    {name = "purple tome", chance = 27000},
    {name = "golden mug", chance = 16875},
    {name = "crystal necklace", chance = 27000},
    {name = "white pearl", chance = 45000, maxCount = 20},
    {name = "black pearl", chance = 33750, maxCount = 11},
    {name = "small diamond", chance = 27000, maxCount = 7},
    {name = "small sapphire", chance = 45000, maxCount = 11},
    {name = "small emerald", chance = 33750, maxCount = 9},
    {name = "small amethyst", chance = 27000, maxCount = 23},
    {name = "talon", chance = 27000, maxCount = 4},
    {name = "platinum coin", chance = 100000, maxCount = 93},
    {name = "green gem", chance = 8999},
    {name = "blue gem", chance = 27000},
    {id = 3046, chance = 8999},
    {name = "might ring", chance = 8999},
    {name = "silver amulet", chance = 27000},
    {name = "platinum amulet", chance = 16875},
    {name = "strange symbol", chance = 27000},
    {name = "orb", chance = 8999},
    {name = "life crystal", chance = 16875},
    {name = "mind stone", chance = 27000},
    {name = "boots of haste", chance = 16875},
    {name = "protection amulet", chance = 27000},
    {id = 3098, chance = 45000},
    {name = "two handed sword", chance = 16875},
    {name = "giant sword", chance = 33750},
    {name = "silver dagger", chance = 8999},
    {name = "golden sickle", chance = 8999},
    {name = "fire axe", chance = 16875},
    {name = "dragon hammer", chance = 8999},
    {name = "devil helmet", chance = 45000},
    {name = "golden legs", chance = 16875},
    {name = "magic plate armor", chance = 8999},
    {name = "mastermind shield", chance = 8999},
    {name = "demon shield", chance = 33750},
    {name = "Orshabaal's brain", chance = 8999},
    {name = "thunder hammer", chance = 8999},
    {name = "demon horn", chance = 67500},
    {id = 6299, chance = 67500},
    {name = "demonic essence", chance = 100000},
    {name = "assassin star", chance = 16875, maxCount = 57},
    {name = "great mana potion", chance = 45000},
    {name = "great health potion", chance = 27000},
    {name = "great spirit potion", chance = 16875},
    {name = "ultimate health potion", chance = 45000},
    {name = "gold ingot", chance = 8999},
    {name = "complete amethyst", chance = 2640},
    {name = "tornado ice rune", chance = 3580},
    {name = "leopard axe", chance = 1770},
    {name = "royal sword", chance = 1810},
    {name = "decay skull rod", chance = 480},
    {name = "exp boost x 10", chance = 2200}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1990},
    	{name ="combat", interval = 1000, chance = 13, type = COMBAT_MANADRAIN, minDamage = -300, maxDamage = -600, range = 7, target = false},
    	{name ="combat", interval = 1000, chance = 6, type = COMBAT_MANADRAIN, minDamage = -150, maxDamage = -350, radius = 5, effect = CONST_ME_POISONAREA, target = false},
    	{name ="effect", interval = 1000, chance = 6, radius = 5, effect = CONST_ME_HITAREA, target = false},
    	{name ="combat", interval = 1000, chance = 34, type = COMBAT_FIREDAMAGE, minDamage = -310, maxDamage = -600, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
    	{name ="firefield", interval = 1000, chance = 10, range = 7, radius = 4, shootEffect = CONST_ANI_FIRE, target = true},
    	{name ="combat", interval = 1000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -500, maxDamage = -850, length = 8, spread = 3, effect = CONST_ME_ENERGYHIT, target = false}
}

monster.defenses = {
    	defense = 111,
    	armor = 90,
    	{name ="combat", interval = 1000, chance = 9, type = COMBAT_HEALING, minDamage = 1500, maxDamage = 2500, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="combat", interval = 1000, chance = 17, type = COMBAT_HEALING, minDamage = 600, maxDamage = 1000, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="speed", interval = 1000, chance = 5, speedChange = 1901, effect = CONST_ME_MAGIC_RED, target = false, duration = 7000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -1},
    	{type = COMBAT_HOLYDAMAGE , percent = -1},
    	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
