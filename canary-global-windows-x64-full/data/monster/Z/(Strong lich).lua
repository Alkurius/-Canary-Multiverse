local mType = Game.createMonsterType("(Strong lich)")
local monster = {}

monster.description = "a strong lich"
monster.experience = 4500
monster.health = 4000
monster.maxHealth = 4000
monster.race = "undead"
monster.corpse = 41420
monster.speed = 290
monster.manaCost = 0
monster.raceId = 2496

monster.outfit = {
    lookType = 1825,
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
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "platinum coin", chance = 100000, maxCount = 3},
    {name = "lost soul", chance = 39390},
    {name = "wand of cosmic energy", chance = 6786},
    {name = "springsprout rod", chance = 4979},
    {name = "death toll", chance = 4602},
    {name = "terra rod", chance = 3939},
    {name = "hailstorm rod", chance = 3679},
    {name = "ensouled essence", chance = 2938},
    {name = "necklace of the deep", chance = 2288},
    {name = "cursed bone", chance = 2041},
    {name = "wand of starstorm", chance = 1976},
    {name = "glacial rod", chance = 1248},
    {name = "wand of voodoo", chance = 429},
    {name = "demonic life potion", chance = 900},
    {name = "summon rune X", chance = 3330},
    {name = "specialreflect holy rune", chance = 2920},
    {name = "darkness sword", chance = 140},
    {name = "chopper of eternal flames", chance = 1160},
    {name = "Dark warrior armor", chance = 910}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -500},
    	{name ="combat", interval = 1700, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -150, maxDamage = -550, radius = 3, shootEffect = CONST_ANI_ENVENOMEDARROW, target = true},
    	{name ="combat", interval = 1700, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -150, maxDamage = -550, length = 4, spread = 3, effect = CONST_ME_ENERGYHIT, target = false},
    	{name ="combat", interval = 1700, chance = 35, type = COMBAT_DEATHDAMAGE, minDamage = -150, maxDamage = -550, radius = 3, effect = CONST_ME_MORTAREA, target = false}
}

monster.defenses = {
    	defense = 40,
    	armor = 79
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
    	{type = COMBAT_ENERGYDAMAGE, percent = 20},
    	{type = COMBAT_EARTHDAMAGE, percent = 20},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = -20},
    	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
