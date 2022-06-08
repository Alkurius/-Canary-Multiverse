local mType = Game.createMonsterType("(Nameko shooter)")
local monster = {}

monster.description = "a nameko shooter"
monster.experience = 4000
monster.health = 3650
monster.maxHealth = 3650
monster.race = "blood"
monster.corpse = 41747
monster.speed = 280
monster.manaCost = 0
monster.raceId = 2641

monster.outfit = {
    lookType = 1970,
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
    staticAttackChance = 95,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "red tome", chance = 405},
    {name = "piggy bank", chance = 297},
    {name = "gold coin", chance = 76275, maxCount = 135},
    {name = "gold coin", chance = 54000, maxCount = 63},
    {id = 3051, chance = 2430},
    {name = "skull staff", chance = 8775},
    {name = "magic sulphur", chance = 810},
    {name = "red piece of cloth", chance = 1917},
    {name = "great mana potion", chance = 26595},
    {name = "great health potion", chance = 2565},
    {name = "small enchanted ruby", chance = 5738},
    {name = "magma boots", chance = 405},
    {name = "raspberry", chance = 11475, maxCount = 7},
    {name = "spellbook of mind control", chance = 500},
    {name = "royal tapestry", chance = 702},
    {name = "black skull", chance = 1107},
    {name = "gold ingot", chance = 94},
    {name = "crystal of power", chance = 297},
    {name = "complete ruby", chance = 2260},
    {name = "mana leach water rune", chance = 3690},
    {name = "sword of the eternal glacier", chance = 1900},
    {name = "cyclops face shield", chance = 500},
    {name = "platinum thief chopper", chance = 1400},
    {name = "Blood legs", chance = 1500}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -100},
    	{name ="combat", interval = 2000, chance = 40, type = COMBAT_FIREDAMAGE, minDamage = -65, maxDamage = -180, range = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_HITBYFIRE, target = true},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -90, maxDamage = -180, range = 7, radius = 3, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_MANADRAIN, minDamage = -53, maxDamage = -120, range = 7, radius = 3, shootEffect = CONST_ANI_ENERGYBALL, effect = CONST_ME_TELEPORT, target = true},
    	{name ="firefield", interval = 2000, chance = 15, range = 7, radius = 3, shootEffect = CONST_ANI_FIRE, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -150, maxDamage = -250, length = 8, spread = 3, effect = CONST_ME_FIREATTACK, target = false},
    	{name ="combat", interval = 2000, chance = 5, type = COMBAT_PHYSICALDAMAGE, minDamage = -100, maxDamage = -150, radius = 2, effect = CONST_ME_EXPLOSIONAREA, target = false}
}

monster.defenses = {
    	defense = 15,
    	armor = 15,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 60, maxDamage = 230, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="invisible", interval = 2000, chance = 15, effect = CONST_ME_MAGIC_BLUE}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = -5},
    	{type = COMBAT_ENERGYDAMAGE, percent = 100},
    	{type = COMBAT_EARTHDAMAGE, percent = 95},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -5},
    	{type = COMBAT_HOLYDAMAGE , percent = 20},
    	{type = COMBAT_DEATHDAMAGE , percent = 5}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
