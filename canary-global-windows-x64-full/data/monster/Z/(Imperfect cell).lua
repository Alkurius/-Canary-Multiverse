local mType = Game.createMonsterType("(Imperfect cell)")
local monster = {}

monster.description = "a imperfect cell"
monster.experience = 7350
monster.health = 10000
monster.maxHealth = 10000
monster.race = "blood"
monster.corpse = 41747
monster.speed = 340
monster.manaCost = 0
monster.raceId = 2700

monster.outfit = {
    lookType = 2029,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Vermin",
    race = BESTY_RACE_VERMIN,
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
    {name = "Fafnar Symbol", chance = 8910},
    {id = 31433, chance = 7560},
    {id = 31435, chance = 7560},
    {id = 31436, chance = 7560},
    {name = "Dragon Necklace", chance = 6345},
    {name = "Lightning Pendant", chance = 5535},
    {name = "Magma Amulet", chance = 4995},
    {name = "Strange Talisman", chance = 4050},
    {name = "Magma Boots", chance = 3645},
    {id = 31331, chance = 3240},
    {name = "Elven Amulet", chance = 2835},
    {name = "Lightning Legs", chance = 2700},
    {name = "Lightning Headband", chance = 2295},
    {name = "Lightning Boots", chance = 1890},
    {name = "Spellweaver's Robe", chance = 1148},
    {id = 31369, chance = 770},
    {name = "Sea Horse Figurine", chance = 189},
    {name = "perfect amethyst", chance = 2410},
    {name = "life leach ice rune", chance = 2670},
    {name = "titanium boots", chance = 1870},
    {name = "nightmare armor", chance = 1350},
    {name = "decay helmet", chance = 1180},
    {name = "exp boost x 10", chance = 2200}
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
