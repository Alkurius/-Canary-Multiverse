local mType = Game.createMonsterType("(Elf sharpshooter)")
local monster = {}

monster.description = "a elf sharpshooter"
monster.experience = 5000
monster.health = 5500
monster.maxHealth = 5500
monster.race = "blood"
monster.corpse = 41392
monster.speed = 440
monster.manaCost = 0
monster.raceId = 2480

monster.outfit = {
    lookType = 1809,
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
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "platinum coin", chance = 100000, maxCount = 16},
    {name = "elven astral observer", chance = 100000, maxCount = 2},
    {name = "dream essence egg", chance = 18750},
    {name = "belted cape", chance = 14438},
    {name = "two handed sword", chance = 16938},
    {name = "seeds", chance = 18438},
    {id = 3307, chance = 21938},
    {name = "knife", chance = 19562},
    {name = "dragon necklace", chance = 18188},
    {name = "magma amulet", chance = 2069},
    {name = "wand of dragonbreath", chance = 18938},
    {name = "wand of draconia", chance = 1579},
    {name = "magma boots", chance = 13875},
    {name = "sun fruit", chance = 2250},
    {name = "bullseye potion", chance = 1000},
    {name = "demonic life potion", chance = 900},
    {name = "summon rune O", chance = 2840},
    {name = "special ultimate holy rune", chance = 3910},
    {name = "heaven sword", chance = 1200},
    {name = "club of eternal flames", chance = 700},
    {name = "full warrior axe", chance = 340}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = -160, maxDamage = -530},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -270, maxDamage = -710, length = 3, spread = 0, effect = CONST_ME_FIREAREA, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -250, maxDamage = -300, range = 7, shootEffect = CONST_ANI_FIRE, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -350, maxDamage = -380, radius = 5, effect = CONST_ME_EXPLOSIONHIT, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -200, maxDamage = -350, radius = 5, effect = CONST_ME_EXPLOSIONAREA, target = true}
}

monster.defenses = {
    	defense = 20,
    	armor = 70
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 100},
    	{type = COMBAT_ICEDAMAGE, percent = -10},
    	{type = COMBAT_HOLYDAMAGE , percent = 50},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = true},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
