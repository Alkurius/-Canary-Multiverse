local mType = Game.createMonsterType("(Aribano)")
local monster = {}

monster.description = "a aribano"
monster.experience = 4700
monster.health = 5800
monster.maxHealth = 5800
monster.race = "undead"
monster.corpse = 41747
monster.speed = 430
monster.manaCost = 0
monster.raceId = 2730

monster.outfit = {
    lookType = 2059,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Undead",
    race = BESTY_RACE_UNDEAD,
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
    canWalkOnPoison = false
}

monster.loot = {
    {name = "gold coin", chance = 100000, maxCount = 135},
    {name = "platinum coin", chance = 100000, maxCount = 11},
    {id = 3051, chance = 4050},
    {id = 3052, chance = 5670},
    {id = 3098, chance = 4050},
    {name = "guardian shield", chance = 2079},
    {name = "beastslayer axe", chance = 4442},
    {name = "brown piece of cloth", chance = 8100},
    {name = "yellow piece of cloth", chance = 4725},
    {name = "great mana potion", chance = 27000, maxCount = 4},
    {name = "terra boots", chance = 972},
    {name = "great spirit potion", chance = 27000, maxCount = 4},
    {name = "ultimate health potion", chance = 25650, maxCount = 4},
    {name = "spellbook of mind control", chance = 972},
    {name = "underworld rod", chance = 972},
    {name = "springsprout rod", chance = 688},
    {name = "green crystal shard", chance = 2079},
    {name = "brown crystal splinter", chance = 70875, maxCount = 3},
    {name = "blue crystal splinter", chance = 13500, maxCount = 4},
    {name = "cluster of solace", chance = 837},
    {name = "dead weight", chance = 19143},
    {name = "hemp rope", chance = 19143},
    {name = "perfect topaz", chance = 1830},
    {name = "arcane earth rune", chance = 2450},
    {name = "plague club", chance = 230},
    {name = "nightmare bow", chance = 1720},
    {name = "black wizard shield", chance = 760},
    {name = "exp boost  x 5", chance = 3110}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -499, condition = {type = CONDITION_POISON, totalDamage = 600, interval = 4000}},
    	-- poison
    	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 10, minDamage = -700, maxDamage = -900, length = 5, spread = 3, effect = CONST_ME_HITBYPOISON, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -300, radius = 1, shootEffect = CONST_ANI_EXPLOSION, effect = CONST_ME_SLEEP, target = true},
    	{name ="speed", interval = 2000, chance = 20, speedChange = -800, radius = 1, shootEffect = CONST_ANI_EXPLOSION, effect = CONST_ME_SLEEP, target = true, duration = 15000},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -130, maxDamage = -300, radius = 4, effect = CONST_ME_SOUND_RED, target = false},
    	{name ="choking fear drown", interval = 2000, chance = 20, target = false},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -250, maxDamage = -500, radius = 4, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true}
}

monster.defenses = {
    	defense = 35,
    	armor = 35,
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 80, maxDamage = 150, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
    	{type = COMBAT_ENERGYDAMAGE, percent = 15},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 10},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
