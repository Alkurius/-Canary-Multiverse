local mType = Game.createMonsterType("(Dark arcane)")
local monster = {}

monster.description = "a dark arcane"
monster.experience = 7000
monster.health = 7500
monster.maxHealth = 7500
monster.race = "blood"
monster.corpse = 41747
monster.speed = 380
monster.manaCost = 0
monster.raceId = 2214

monster.outfit = {
    lookType = 1543,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Human",
    race = BESTY_RACE_HUMAN,
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
    {name = "platinum coin", chance = 96389, maxCount = 5},
    {name = "gold ingot", chance = 14722},
    {name = "lion cloak patch", chance = 10555},
    {name = "lion crest", chance = 10278},
    {name = "black pearl", chance = 7222},
    {id = 281, chance = 6945},
    {name = "terra hood", chance = 5834},
    {name = "lightning headband", chance = 4722},
    {name = "green gem", chance = 4445},
    {name = "springsprout rod", chance = 3334},
    {name = "ham", chance = 3055},
    {name = "magma monocle", chance = 2222},
    {name = "wand of cosmic energy", chance = 2222},
    {name = "underworld rod", chance = 1666},
    {name = "knight legs", chance = 1389},
    {name = "wand of starstorm", chance = 834},
    {name = "keys Backpack", chance = 2180},
    {name = "perfect opalo", chance = 2120},
    {name = "ultimate earth rune", chance = 2780},
    {name = "volcano boots", chance = 1770},
    {name = "pit demon helmet", chance = 460},
    {name = "ancestral rubi shield", chance = 790},
    {name = "exp boost  X 2", chance = 2530}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -250, effect = CONST_ME_DRAWBLOOD},
    	{name ="singledeathchain", interval = 6000, chance = 15, minDamage = -250, maxDamage = -530, range = 5, effect = CONST_ME_MORTAREA, target = true},
    	{name ="singleicechain", interval = 6000, chance = 18, minDamage = -150, maxDamage = -450, range = 5, effect = CONST_ME_ICEATTACK, target = true},
    	{name ="combat", interval = 4000, chance = 12, type = COMBAT_ICEDAMAGE, minDamage = -200, maxDamage = -450, radius = 4, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEATTACK, target = true} -- avalanche
}

monster.defenses = {
    	defense = 50,
    	armor = 82
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 5},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 30},
    	{type = COMBAT_HOLYDAMAGE , percent = 32},
    	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
