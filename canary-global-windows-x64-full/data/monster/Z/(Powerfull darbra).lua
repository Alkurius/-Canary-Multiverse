local mType = Game.createMonsterType("(Powerfull darbra)")
local monster = {}

monster.description = "a powerfull darbra"
monster.experience = 2700
monster.health = 4800
monster.maxHealth = 4800
monster.race = "fire"
monster.corpse = 41747
monster.speed = 510
monster.manaCost = 0
monster.raceId = 2724

monster.outfit = {
    lookType = 2053,
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
    illusionable = true,
    canPushItems = true,
    canPushCreatures = true,
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "small diamond", chance = 11880, maxCount = 4},
    {name = "gold coin", chance = 67500, maxCount = 135},
    {name = "gold coin", chance = 67500, maxCount = 134},
    {name = "platinum coin", chance = 100000, maxCount = 7},
    {name = "yellow gem", chance = 1390},
    {id = 3051, chance = 2228},
    {name = "fire sword", chance = 2268},
    {name = "black shield", chance = 2092},
    {name = "iron ore", chance = 5778},
    {name = "white piece of cloth", chance = 3118},
    {name = "red piece of cloth", chance = 1256},
    {name = "yellow piece of cloth", chance = 4023},
    {name = "great mana potion", chance = 8775},
    {name = "great health potion", chance = 9814},
    {name = "magma amulet", chance = 4212},
    {name = "magma boots", chance = 2457},
    {name = "wand of draconia", chance = 5778},
    {name = "fiery heart", chance = 10544},
    {id = 12600, chance = 2261},
    {name = "crystalline arrow", chance = 8033, maxCount = 14},
    {name = "wand of everblazing", chance = 932},
    {name = "blue crystal shard", chance = 5306, maxCount = 3},
    {name = "brown crystal splinter", chance = 11475, maxCount = 3},
    {name = "green crystal fragment", chance = 9450},
    {name = "magma clump", chance = 15660},
    {name = "blazing bone", chance = 15525},
    {name = "blazing bone", chance = 16497},
    {name = "perfect topaz", chance = 1830},
    {name = "ultimate ice rune", chance = 4020},
    {name = "plague sword", chance = 10},
    {name = "nightmare axe", chance = 590},
    {name = "black wizard helmet", chance = 1100},
    {name = "exp boost  x 5", chance = 3110}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -203},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -300, maxDamage = -1100, length = 8, spread = 3, effect = CONST_ME_MORTAREA, target = false},
    	{name ="magma crawler wave", interval = 2000, chance = 15, minDamage = -290, maxDamage = -800, target = false},
    	{name ="magma crawler soulfire", interval = 2000, chance = 20, target = false},
    	{name ="soulfire rune", interval = 2000, chance = 10, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -140, maxDamage = -180, radius = 3, effect = CONST_ME_HITBYFIRE, target = false},
    	{name ="speed", interval = 2000, chance = 10, speedChange = -800, radius = 2, effect = CONST_ME_MAGIC_RED, target = false, duration = 20000}
}

monster.defenses = {
    	defense = 45,
    	armor = 45,
    	{name ="invisible", interval = 2000, chance = 10, effect = CONST_ME_MAGIC_BLUE}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
    	{type = COMBAT_ENERGYDAMAGE, percent = 10},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 10},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 5}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
