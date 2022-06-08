local mType = Game.createMonsterType("(Warrior harpy)")
local monster = {}

monster.description = "a warrior harpy"
monster.experience = 4650
monster.health = 7350
monster.maxHealth = 7350
monster.race = "undead"
monster.corpse = 41747
monster.speed = 420
monster.manaCost = 0
monster.raceId = 2272

monster.outfit = {
    lookType = 1601,
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
    rewardBoss = false,
    illusionable = false,
    canPushItems = true,
    canPushCreatures = true,
    staticAttackChance = 80,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "gold coin", chance = 62500, maxCount = 125},
    {name = "gold coin", chance = 50000, maxCount = 124},
    {name = "platinum coin", chance = 68750, maxCount = 10},
    {name = "golden legs", chance = 38},
    {id = 3461, chance = 6562},
    {name = "steel boots", chance = 6312},
    {name = "ham", chance = 75000, maxCount = 2},
    {name = "orichalcum pearl", chance = 3450, maxCount = 2},
    {name = "cat's paw", chance = 2778},
    {name = "jewelled backpack", chance = 1490},
    {name = "soul orb", chance = 28750},
    {id = 6299, chance = 2510},
    {name = "demonic essence", chance = 10650},
    {name = "flask of demonic blood", chance = 41666, maxCount = 4},
    {name = "assassin star", chance = 2778, maxCount = 6},
    {name = "vile axe", chance = 600},
    {name = "butcher's axe", chance = 1062},
    {name = "great mana potion", chance = 18538, maxCount = 2},
    {name = "great health potion", chance = 12500, maxCount = 2},
    {name = "gold ingot", chance = 3925},
    {name = "HMM earth Backpack", chance = 1780},
    {name = "crystal ruby", chance = 2570},
    {name = "mana leach holy rune", chance = 3970},
    {name = "bushi armor", chance = 1830},
    {name = "crystal bow", chance = 1490},
    {name = "ancestral esmeralda sword", chance = -40}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -500},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -781, range = 7, shootEffect = CONST_ANI_THROWINGKNIFE, target = false},
    	{name ="dark torturer skill reducer", interval = 2000, chance = 5, target = false}
}

monster.defenses = {
    	defense = 40,
    	armor = 40,
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 200, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 30},
    	{type = COMBAT_EARTHDAMAGE, percent = 90},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -10},
    	{type = COMBAT_HOLYDAMAGE , percent = -10},
    	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
