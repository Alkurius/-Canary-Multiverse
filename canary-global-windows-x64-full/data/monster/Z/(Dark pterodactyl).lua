local mType = Game.createMonsterType("(Dark pterodactyl)")
local monster = {}

monster.description = "a dark pterodactyl"
monster.experience = 3000
monster.health = 3200
monster.maxHealth = 3200
monster.race = "blood"
monster.corpse = 41747
monster.speed = 380
monster.manaCost = 0
monster.raceId = 2654

monster.outfit = {
    lookType = 1983,
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
    pushable = true,
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
    canWalkOnFire = true,
    canWalkOnPoison = false
}

monster.loot = {
    {name = "gold coin", chance = 100000, maxCount = 130},
    {name = "gold coin", chance = 100000, maxCount = 112},
    {name = "great health potion", chance = 32500},
    {name = "eye of a deepling", chance = 32500},
    {name = "deepling filet", chance = 32500},
    {name = "vortex bolt", chance = 32240, maxCount = 6},
    {name = "deepling warts", chance = 31720},
    {name = "great mana potion", chance = 31460},
    {name = "deeptags", chance = 26780},
    {name = "deepling ridge", chance = 25350},
    {name = "small emerald", chance = 8957, maxCount = 3},
    {id = 3052, chance = 6968},
    {name = "heavy trident", chance = 4784},
    {name = "fish fin", chance = 2990},
    {name = "warrior's shield", chance = 1994},
    {name = "warrior's axe", chance = 1066},
    {name = "complete ruby", chance = 2260},
    {name = "reflect water rune", chance = 3340},
    {name = "leopard helmet", chance = 440},
    {name = "cyclops sword", chance = 1030},
    {name = "platinum thief armor", chance = 660},
    {name = "Blood helmet", chance = 1350}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -300, effect = CONST_ME_DRAWBLOOD},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -290, range = 7, shootEffect = CONST_ANI_LARGEROCK, target = true}
}

monster.defenses = {
    	defense = 45,
    	armor = 45,
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 150, maxDamage = 200, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = -10},
    	{type = COMBAT_EARTHDAMAGE, percent = -10},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
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
