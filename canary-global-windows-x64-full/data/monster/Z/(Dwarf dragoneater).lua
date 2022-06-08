local mType = Game.createMonsterType("(Dwarf dragoneater)")
local monster = {}

monster.description = "a dwarf dragoneater"
monster.experience = 4400
monster.health = 5900
monster.maxHealth = 5900
monster.race = "blood"
monster.corpse = 39760
monster.speed = 350
monster.manaCost = 0
monster.raceId = 2820

monster.outfit = {
    lookType = 2149,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Humanoid",
    race = BESTY_RACE_HUMANOID,
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
    {name = "piggy bank", chance = 4900},
    {name = "gold coin", chance = 62500, maxCount = 125},
    {name = "gold coin", chance = 62500, maxCount = 125},
    {name = "platinum coin", chance = 100000, maxCount = 11},
    {id = 3097, chance = 2850},
    {name = "knight axe", chance = 2588},
    {name = "fire axe", chance = 475},
    {name = "royal helmet", chance = 188},
    {name = "guardian shield", chance = 1750},
    {name = "tower shield", chance = 1252},
    {name = "black shield", chance = 800},
    {name = "brown mushroom", chance = 18988, maxCount = 2},
    {name = "iron ore", chance = 10612},
    {name = "magic sulphur", chance = 900},
    {name = "chaos mace", chance = 688},
    {name = "spiked squelcher", chance = 1012},
    {name = "great mana potion", chance = 17062},
    {name = "great health potion", chance = 17062},
    {name = "terra boots", chance = 800},
    {name = "small topaz", chance = 9962, maxCount = 2},
    {name = "clay lump", chance = 1162},
    {id = 12600, chance = 2562},
    {name = "violet crystal shard", chance = 4375},
    {name = "brown crystal splinter", chance = 9425, maxCount = 2},
    {name = "blue crystal splinter", chance = 5762},
    {name = "green crystal fragment", chance = 8588},
    {name = "drill bolt", chance = 10262, maxCount = 12},
    {name = "perfect opalo", chance = 2120},
    {name = "mana leach earth rune", chance = 3180},
    {name = "volcano armor", chance = 760},
    {name = "warlock shield", chance = 670},
    {name = "general dwarf armor", chance = 1270},
    {name = "general dwarf legs", chance = 1450},
    {name = "general dwarf club", chance = 1390},
    {name = "royal dwarf helmet", chance = 730},
    {name = "royal dwarf shield", chance = 470},
    {name = "royal dwarf club", chance = 1120},
    {name = "dwarf volcano helmet", chance = 1570},
    {name = "dwarf volcano legs", chance = 1190},
    {name = "dwarf volcano bow", chance = 1940}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -501},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -300, range = 7, shootEffect = CONST_ANI_WHIRLWINDAXE, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -250, range = 7, radius = 3, shootEffect = CONST_ANI_EXPLOSION, effect = CONST_ME_EXPLOSIONAREA, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -150, maxDamage = -250, radius = 5, effect = CONST_ME_MAGIC_RED, target = false},
    	{name ="speed", interval = 2000, chance = 10, speedChange = -800, radius = 2, effect = CONST_ME_MAGIC_RED, target = false, duration = 20000},
    	{name ="drunk", interval = 2000, chance = 10, radius = 4, effect = CONST_ME_STUN, target = true, duration = 6000}
}

monster.defenses = {
    	defense = 40,
    	armor = 40,
    	{name ="invisible", interval = 2000, chance = 5, effect = CONST_ME_TELEPORT}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 40},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 10},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 40},
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
