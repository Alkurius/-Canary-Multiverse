local mType = Game.createMonsterType("(Strong orc shaman)")
local monster = {}

monster.description = "a strong orc shaman"
monster.experience = 165
monster.health = 172
monster.maxHealth = 172
monster.race = "blood"
monster.corpse = 39886
monster.speed = 190
monster.manaCost = 0
monster.raceId = 2449

monster.outfit = {
    lookType = 1778,
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
    Stars = 1,
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
    canPushItems = false,
    canPushCreatures = false,
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = false
}

monster.loot = {
    {id = 2824, chance = 832},
    {name = "gold coin", chance = 100000, maxCount = 8},
    {name = "wand of decay", chance = 1600},
    {name = "spear", chance = 7760},
    {name = "chain armor", chance = 14000},
    {name = "corncob", chance = 16960, maxCount = 3},
    {name = "orc tooth", chance = 3360},
    {name = "broken shamanic staff", chance = 16480},
    {name = "shamanic hood", chance = 10976},
    {name = "orc leather", chance = 6880},
    {id = 23986, chance = 1600}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -15},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -20, maxDamage = -31, range = 7, shootEffect = CONST_ANI_ENERGYBALL, target = false},
    	{name ="combat", interval = 2000, chance = 5, type = COMBAT_FIREDAMAGE, minDamage = -5, maxDamage = -43, range = 7, radius = 1, shootEffect = CONST_ANI_FIRE, target = true}
}

monster.defenses = {
    	defense = 10,
    	armor = 10,
    	{name ="combat", interval = 2000, chance = 60, type = COMBAT_HEALING, minDamage = 27, maxDamage = 43, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 50},
    	{type = COMBAT_EARTHDAMAGE, percent = -10},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 25},
    	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
