local mType = Game.createMonsterType("(Turin the dwarf)")
local monster = {}

monster.description = "a turin the dwarf"
monster.experience = 4400
monster.health = 5900
monster.maxHealth = 5900
monster.race = "blood"
monster.corpse = 41747
monster.speed = 350
monster.manaCost = 0
monster.raceId = 2547

monster.outfit = {
    lookType = 1876,
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
    {name = "mana redbull", chance = 1990},
    {name = "meteoro death rune", chance = 3490},
    {name = "special tornado energy rune", chance = 3720},
    {name = "lost demon helmet", chance = 350},
    {name = "general dwarf helmet", chance = 620},
    {name = "general dwarf shield", chance = 1470},
    {name = "general dwarf sword", chance = 980},
    {name = "general dwarf axe", chance = 210},
    {name = "royal dwarf armor", chance = 950},
    {name = "royal dwarf sword", chance = 390},
    {name = "royal dwarf axe", chance = 1690},
    {name = "dwarf volcano armor", chance = 1220},
    {name = "dwarf volcano wand", chance = 950},
    {name = "dwarf volcano crossbow", chance = 320}
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
