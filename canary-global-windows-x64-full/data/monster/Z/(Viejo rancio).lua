local mType = Game.createMonsterType("(Viejo rancio)")
local monster = {}

monster.description = "a viejo rancio"
monster.experience = 7350
monster.health = 10000
monster.maxHealth = 10000
monster.race = "blood"
monster.corpse = 41747
monster.speed = 340
monster.manaCost = 0
monster.raceId = 2383

monster.outfit = {
    lookType = 1712,
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
    canPushCreatures = false,
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
    {name = "Platinum Coin", chance = 100000, maxCount = 4},
    {name = "Fafnar Symbol", chance = 8250},
    {id = 31433, chance = 7000},
    {id = 31435, chance = 7000},
    {id = 31436, chance = 7000},
    {name = "Dragon Necklace", chance = 5875},
    {name = "Lightning Pendant", chance = 5125},
    {name = "Magma Amulet", chance = 4625},
    {name = "Strange Talisman", chance = 3750},
    {name = "Magma Boots", chance = 3375},
    {id = 31331, chance = 3000},
    {name = "Elven Amulet", chance = 2625},
    {name = "Lightning Legs", chance = 2500},
    {name = "Lightning Headband", chance = 2125},
    {name = "Lightning Boots", chance = 1750},
    {name = "Spellweaver's Robe", chance = 1062},
    {id = 31369, chance = 712},
    {name = "Sea Horse Figurine", chance = 175},
    {name = "spider backpack", chance = 1730},
    {name = "summon rune K", chance = 4280},
    {name = "tornado energy rune", chance = 3790},
    {name = "infernalist armor", chance = 1930},
    {name = "cursed shield", chance = 1740},
    {name = "helmet of mythical justice", chance = 410}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -550},
    	{name ="firering", interval = 2000, chance = 10, minDamage = -300, maxDamage = -500, target = false},
    	{name ="firex", interval = 2000, chance = 15, minDamage = -300, maxDamage = -500, target = false},
    	{name ="combat", interval = 2000, chance = 17, type = COMBAT_FIREDAMAGE, minDamage = -300, maxDamage = -500, radius = 2, effect = CONST_ME_FIREATTACK, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -300, maxDamage = -500, length = 3, spread = 0, effect = CONST_ME_ENERGYHIT, target = false}
}

monster.defenses = {
    	defense = 40,
    	armor = 89
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
    	{type = COMBAT_ENERGYDAMAGE, percent = 20},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 30},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -20},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
