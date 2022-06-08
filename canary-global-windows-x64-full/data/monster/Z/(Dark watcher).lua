local mType = Game.createMonsterType("(Dark watcher)")
local monster = {}

monster.description = "a dark watcher"
monster.experience = 4100
monster.health = 5300
monster.maxHealth = 5300
monster.race = "fire"
monster.corpse = 41083
monster.speed = 410
monster.manaCost = 0
monster.raceId = 2342

monster.outfit = {
    lookType = 1671,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Magical",
    race = BESTY_RACE_MAGICAL,
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
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "gold coin", chance = 100000, maxCount = 130},
    {name = "platinum coin", chance = 100000, maxCount = 12},
    {name = "fire sword", chance = 1612},
    {name = "crown shield", chance = 2210},
    {name = "tower shield", chance = 715},
    {name = "brown mushroom", chance = 18200, maxCount = 3},
    {name = "beastslayer axe", chance = 5538},
    {name = "mercenary sword", chance = 3250},
    {name = "spiked squelcher", chance = 533},
    {name = "great mana potion", chance = 16250},
    {name = "great health potion", chance = 19500},
    {name = "underworld rod", chance = 2340},
    {name = "wand of starstorm", chance = 1248},
    {id = 20029, chance = 4810},
    {name = "goosebump leather", chance = 21320},
    {name = "pool of chitinous glue", chance = 18200},
    {name = "meteoro fire backpack", chance = 1240},
    {name = "fine ruby", chance = 1610},
    {name = "mana leach fire rune", chance = 3950},
    {name = "lava boots", chance = 780},
    {name = "corrupted watcher helmet", chance = 80},
    {name = "corrupted watcher legs", chance = 1020},
    {name = "corrupted watcher axe", chance = 420},
    {name = "corrupted watcher boots", chance = 1170},
    {name = "watcher shield", chance = 1550},
    {name = "watcher club", chance = 1720}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -400},
    	{name ="drunk", interval = 2000, chance = 10, length = 4, spread = 3, effect = CONST_ME_MAGIC_GREEN, target = true, duration = 5000},
    	{name ="speed", interval = 2000, chance = 15, speedChange = -700, radius = 4, shootEffect = CONST_ANI_WHIRLWINDCLUB, effect = CONST_ME_STUN, target = true, duration = 15000},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -110, radius = 4, effect = CONST_ME_HITAREA, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -200, radius = 1, shootEffect = CONST_ANI_SNIPERARROW, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -200, maxDamage = -350, radius = 1, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK, target = true}
}

monster.defenses = {
    	defense = 30,
    	armor = 30
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
    	{type = COMBAT_ENERGYDAMAGE, percent = 10},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 15},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
