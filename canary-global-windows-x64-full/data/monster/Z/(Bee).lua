local mType = Game.createMonsterType("(Bee)")
local monster = {}

monster.description = "a bee"
monster.experience = 830
monster.health = 1100
monster.maxHealth = 1100
monster.race = "venom"
monster.corpse = 41574
monster.speed = 360
monster.manaCost = 0
monster.raceId = 2422

monster.outfit = {
    lookType = 1751,
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
    canPushItems = false,
    canPushCreatures = false,
    staticAttackChance = 95,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "emerald bangle", chance = 2754},
    {name = "black pearl", chance = 5710},
    {name = "gold coin", chance = 54000, maxCount = 135},
    {name = "gold coin", chance = 67500, maxCount = 47},
    {name = "platinum coin", chance = 54580},
    {name = "yellow gem", chance = 1404},
    {name = "waspoid claw", chance = 12280},
    {name = "waspoid wing", chance = 18752},
    {name = "compound eye", chance = 8181},
    {name = "grasshopper legs", chance = 310},
    {name = "carapace shield", chance = 162},
    {name = "hive scythe", chance = 446},
    {name = "semi-perfect sapphire", chance = 2360},
    {name = "summon rune R", chance = 4380},
    {name = "reflect energy rune", chance = 3960}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -248, condition = {type = CONDITION_POISON, totalDamage = 400, interval = 4000}},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -110, maxDamage = -180, radius = 3, effect = CONST_ME_POISONAREA, target = true},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -80, maxDamage = -100, range = 7, shootEffect = CONST_ANI_POISON, target = false}
}

monster.defenses = {
    	defense = 25,
    	armor = 25
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = -5},
    	{type = COMBAT_ENERGYDAMAGE, percent = 25},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = -10},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = -5},
    	{type = COMBAT_DEATHDAMAGE , percent = 5}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
