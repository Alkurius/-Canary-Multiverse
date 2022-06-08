local mType = Game.createMonsterType("(Skeleton archer)")
local monster = {}

monster.description = "a skeleton archer"
monster.experience = 750
monster.health = 850
monster.maxHealth = 850
monster.race = "venom"
monster.corpse = 41429
monster.speed = 280
monster.manaCost = 0
monster.raceId = 2500

monster.outfit = {
    lookType = 1829,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Undead",
    race = BESTY_RACE_UNDEAD,
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
    illusionable = false,
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
    {id = 3031, chance = 100000, maxCount = 104},
    {id = 3035, chance = 13507},
    {id = 236, chance = 13403},
    {id = 237, chance = 12987},
    {id = 21182, chance = 5616},
    {id = 3052, chance = 2119},
    {id = 3029, chance = 1443},
    {id = 9057, chance = 1482, maxCount = 3},
    {id = 3032, chance = 1222, maxCount = 3},
    {id = 3038, chance = 104},
    {id = 21183, chance = 169},
    {id = 21180, chance = 78},
    {id = 21158, chance = 598},
    {name = "special meteoro ice rune", chance = 2770},
    {name = "summon rune XX", chance = 3260},
    {name = "specialreflect holy rune", chance = 2920}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 58, attack = 50, condition = {type = CONDITION_POISON, totalDamage = 280, interval = 4000}},
    	{name ="combat", interval = 2000, chance = 13, type = COMBAT_EARTHDAMAGE, minDamage = -150, maxDamage = -250, range = 7, radius = 3, shootEffect = CONST_ANI_GLOOTHSPEAR, effect = CONST_ME_POISONAREA, target = true},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -150, maxDamage = -230, length = 6, spread = 3, effect = CONST_ME_POISONAREA, target = false},
    	-- poison
    	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 10, minDamage = -200, maxDamage = -300, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true},
    	{name ="rot elemental paralyze", interval = 2000, chance = 11, target = false}
}

monster.defenses = {
    	defense = 15,
    	armor = 10,
    	{name ="combat", interval = 2000, chance = 7, type = COMBAT_HEALING, minDamage = 40, maxDamage = 60, effect = CONST_ME_MAGIC_BLUE, target = false},
    	{name ="speed", interval = 2000, chance = 9, speedChange = 470, effect = CONST_ME_SMOKE, target = false, duration = 7000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
    	{type = COMBAT_ENERGYDAMAGE, percent = -5},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = -5},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 30},
    	{type = COMBAT_HOLYDAMAGE , percent = 20},
    	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
