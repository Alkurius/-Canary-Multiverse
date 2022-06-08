local mType = Game.createMonsterType("(Fiery beetle)")
local monster = {}

monster.description = "a fiery beetle"
monster.experience = 900
monster.health = 1200
monster.maxHealth = 1200
monster.race = "venom"
monster.corpse = 41260
monster.speed = 410
monster.manaCost = 0
monster.raceId = 2417

monster.outfit = {
    lookType = 1746,
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
    Stars = 3,
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
    canPushCreatures = false,
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
    {name = "gold coin", chance = 100000, maxCount = 135},
    {name = "platinum coin", chance = 19966},
    {name = "terra rod", chance = 1148},
    {name = "serpent sword", chance = 1836},
    {name = "black shield", chance = 1782},
    {name = "white mushroom", chance = 9642, maxCount = 7},
    {name = "blue piece of cloth", chance = 2808},
    {name = "yellow piece of cloth", chance = 2916},
    {name = "strong health potion", chance = 6656},
    {name = "strong mana potion", chance = 7088},
    {name = "crystalline arrow", chance = 20979, maxCount = 7},
    {name = "green crystal splinter", chance = 4860},
    {name = "green crystal fragment", chance = 2794},
    {name = "drill bolt", chance = 20601, maxCount = 7},
    {name = "semi-perfect sapphire", chance = 2360},
    {name = "summon rune R", chance = 4380},
    {name = "reflect energy rune", chance = 3960}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -200, condition = {type = CONDITION_POISON, totalDamage = 500, interval = 4000}},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -180, maxDamage = -270, length = 4, spread = 3, target = false},
    	-- poison
    	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 10, minDamage = -160, maxDamage = -200, range = 7, shootEffect = CONST_ANI_POISONARROW, effect = CONST_ME_SMALLPLANTS, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = -700, length = 3, spread = 2, effect = CONST_ME_HITAREA, target = false, duration = 30000}
}

monster.defenses = {
    	defense = 15,
    	armor = 15,
    	{name ="speed", interval = 2000, chance = 15, speedChange = 510, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 5},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = -5},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
