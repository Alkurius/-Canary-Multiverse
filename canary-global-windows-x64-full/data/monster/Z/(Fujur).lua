local mType = Game.createMonsterType("(Fujur)")
local monster = {}

monster.description = "a fujur"
monster.experience = 7216
monster.health = 9500
monster.maxHealth = 9500
monster.race = "undead"
monster.corpse = 41338
monster.speed = 390
monster.manaCost = 0
monster.raceId = 2459

monster.outfit = {
    lookType = 1788,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Mammal",
    race = BESTY_RACE_MAMMAL,
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
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "gold coin", chance = 100000, maxCount = 266},
    {name = "platinum coin", chance = 100000, maxCount = 11},
    {name = "great mana potion", chance = 47048, maxCount = 4},
    {name = "great health potion", chance = 46292, maxCount = 4},
    {name = "great spirit potion", chance = 41661, maxCount = 4},
    {name = "flask of demonic blood", chance = 31590, maxCount = 4},
    {name = "demonic essence", chance = 25974},
    {name = "some grimeleech wings", chance = 25758},
    {name = "fire mushroom", chance = 20736, maxCount = 7},
    {name = "green mushroom", chance = 19980, maxCount = 7},
    {name = "small diamond", chance = 15242, maxCount = 7},
    {name = "small ruby", chance = 14513, maxCount = 7},
    {name = "small topaz", chance = 13041, maxCount = 7},
    {name = "small amethyst", chance = 13014, maxCount = 7},
    {name = "underworld rod", chance = 9302},
    {name = "wand of voodoo", chance = 6494},
    {name = "mana fuild from another multiverse", chance = 2510},
    {name = "summon rune Z", chance = 3650},
    {name = "charm purification (pasive)", chance = 2260},
    {name = "evil club", chance = 200},
    {name = "shield of eternal flames", chance = 210},
    {name = "full warrior helmet", chance = 1880}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 70, attack = 80},
    	{name ="melee", interval = 2000, chance = 2, skill = 153, attack = 100},
    	{name ="combat", interval = 2000, chance = 14, type = COMBAT_PHYSICALDAMAGE, minDamage = 100, maxDamage = -565, range = 7, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA, target = true},
    	{name ="combat", interval = 2000, chance = 12, type = COMBAT_DEATHDAMAGE, minDamage = -150, maxDamage = -220, length = 8, spread = 3, target = false},
    	{name ="combat", interval = 2000, chance = 13, type = COMBAT_DEATHDAMAGE, minDamage = -225, maxDamage = -375, radius = 4, target = false},
    	{name ="combat", interval = 2000, chance = 9, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -300, length = 8, spread = 3, effect = CONST_ME_EXPLOSIONAREA, target = false}
}

monster.defenses = {
    	defense = 30,
    	armor = 30,
    	{name ="combat", interval = 2000, chance = 16, type = COMBAT_HEALING, minDamage = 130, maxDamage = 205, effect = CONST_ME_MAGIC_RED, target = false},
    	{name ="effect", interval = 2000, chance = 9, effect = CONST_ME_MAGIC_GREEN, target = false},
    	{name ="effect", interval = 2000, chance = 10, target = false},
    	{name ="speed", interval = 2000, chance = 12, speedChange = 532, effect = CONST_ME_MAGIC_RED, target = false, duration = 4000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
    	{type = COMBAT_ENERGYDAMAGE, percent = -10},
    	{type = COMBAT_EARTHDAMAGE, percent = 40},
    	{type = COMBAT_FIREDAMAGE, percent = -10},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 65},
    	{type = COMBAT_HOLYDAMAGE , percent = -10},
    	{type = COMBAT_DEATHDAMAGE , percent = 80}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
