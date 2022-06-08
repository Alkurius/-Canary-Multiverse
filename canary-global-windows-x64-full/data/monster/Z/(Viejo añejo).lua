local mType = Game.createMonsterType("(Viejo añejo)")
local monster = {}

monster.description = "a viejo añejo"
monster.experience = 6400
monster.health = 8500
monster.maxHealth = 8500
monster.race = "blood"
monster.corpse = 41747
monster.speed = 370
monster.manaCost = 0
monster.raceId = 2382

monster.outfit = {
    lookType = 1711,
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
    staticAttackChance = 80,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "platinum coin", chance = 100000, maxCount = 2},
    {name = "fafnar symbol", chance = 9200},
    {id = 31433, chance = 8262},
    {id = 31435, chance = 8262},
    {id = 31436, chance = 8262},
    {id = 31331, chance = 3175},
    {name = "sea horse figurine", chance = 1138},
    {id = 31369, chance = 662},
    {name = "wand of decay", chance = 1562},
    {name = "wand of everblazing", chance = 1612},
    {name = "golden sickle", chance = 1562},
    {name = "relic sword", chance = 1738},
    {name = "war axe", chance = 2221},
    {name = "leather backpack", chance = 1970},
    {name = "summon rune K", chance = 4280},
    {name = "tornado energy rune", chance = 3790},
    {name = "infernalist armor", chance = 1930},
    {name = "cursed shield", chance = 1740},
    {name = "helmet of mythical justice", chance = 410}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -350},
    	{name ="targetfirering", interval = 2000, chance = 8, minDamage = -300, maxDamage = -500, target = true},
    	{name ="combat", interval = 2000, chance = 14, type = COMBAT_FIREDAMAGE, minDamage = -350, maxDamage = -500, radius = 2, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_EXPLOSIONHIT, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -250, maxDamage = -400, radius = 3, effect = CONST_ME_ENERGYAREA, target = false},
    	{name ="combat", interval = 2000, chance = 12, type = COMBAT_ENERGYDAMAGE, minDamage = -250, maxDamage = -350, length = 4, spread = 3, effect = CONST_ME_ENERGYHIT, target = false}
}

monster.defenses = {
    	defense = 82,
    	armor = 82
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 85},
    	{type = COMBAT_EARTHDAMAGE, percent = 0},
    	{type = COMBAT_FIREDAMAGE, percent = 80},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -25},
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
