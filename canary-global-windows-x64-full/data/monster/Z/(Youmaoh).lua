local mType = Game.createMonsterType("(Youmaoh)")
local monster = {}

monster.description = "a youmaoh"
monster.experience = 4050
monster.health = 4500
monster.maxHealth = 4500
monster.race = "blood"
monster.corpse = 41747
monster.speed = 300
monster.manaCost = 0
monster.raceId = 2704

monster.outfit = {
    lookType = 2033,
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
    illusionable = false,
    canPushItems = true,
    canPushCreatures = true,
    staticAttackChance = 80,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "gold coin", chance = 67500, maxCount = 135},
    {name = "gold coin", chance = 67500, maxCount = 122},
    {name = "small emerald", chance = 5090, maxCount = 5},
    {name = "platinum coin", chance = 100000, maxCount = 8},
    {name = "knight armor", chance = 2484},
    {name = "medusa shield", chance = 4104},
    {name = "titan axe", chance = 1566},
    {name = "great mana potion", chance = 13500, maxCount = 3},
    {name = "terra mantle", chance = 1174},
    {name = "terra legs", chance = 567},
    {name = "terra amulet", chance = 5481},
    {name = "ultimate health potion", chance = 12542, maxCount = 3},
    {id = 8896, chance = 675},
    {name = "sacred tree amulet", chance = 1148},
    {name = "strand of medusa hair", chance = 13365},
    {name = "complete topaz", chance = 760},
    {name = "mana leach ice rune", chance = 2490},
    {name = "plague helmet", chance = 1910},
    {name = "nightmare legs", chance = 560},
    {name = "decay shield", chance = 1380},
    {name = "exp boost x 10", chance = 2200}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -450, condition = {type = CONDITION_POISON, totalDamage = 840, interval = 4000}},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -21, maxDamage = -350, range = 7, shootEffect = CONST_ANI_EARTH, effect = CONST_ME_CARNIPHILA, target = true},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -250, maxDamage = -500, length = 8, spread = 3, effect = CONST_ME_CARNIPHILA, target = false},
    	{name ="speed", interval = 2000, chance = 25, radius = 7, effect = CONST_ME_POFF, target = true},
    	{name ="outfit", interval = 2000, chance = 1, range = 7, target = true, duration = 3000, outfitMonster = "clay guardian"}
}

monster.defenses = {
    	defense = 30,
    	armor = 30,
    	{name ="combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 150, maxDamage = 300, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = -10},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = -5},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 100},
    	{type = COMBAT_ICEDAMAGE, percent = 20},
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
