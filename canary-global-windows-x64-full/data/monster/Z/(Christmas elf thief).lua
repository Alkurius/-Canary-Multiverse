local mType = Game.createMonsterType("(Christmas elf thief)")
local monster = {}

monster.description = "a christmas elf thief"
monster.experience = 52
monster.health = 75
monster.maxHealth = 75
monster.race = "blood"
monster.corpse = 41738
monster.speed = 190
monster.manaCost = 0
monster.raceId = 2792

monster.outfit = {
    lookType = 2121,
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
    pushable = true,
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
    {name = "small stone", chance = 14850, maxCount = 4},
    {name = "gold coin", chance = 75000, maxCount = 14},
    {id = 3115, chance = 19500},
    {name = "mouldy cheese", chance = 9915},
    {name = "dagger", chance = 25500},
    {name = "short sword", chance = 13230},
    {name = "bone club", chance = 7155},
    {name = "leather helmet", chance = 19500},
    {name = "leather armor", chance = 10860},
    {name = "small axe", chance = 14700},
    {id = 3578, chance = 18600}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -15},
    	{name ="drunk", interval = 2000, chance = 10, shootEffect = CONST_ANI_POISON, target = false, duration = 10000},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -35, range = 6, shootEffect = CONST_ANI_THROWINGKNIFE, target = false}
}

monster.defenses = {
    	defense = 15,
    	armor = 15,
    	{name ="invisible", interval = 2000, chance = 10, effect = CONST_ME_MAGIC_BLUE},
    	{name ="speed", interval = 2000, chance = 15, speedChange = 100, effect = CONST_ME_MAGIC_RED, target = false, duration = 3000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 20},
    	{type = COMBAT_EARTHDAMAGE, percent = -10},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 0},
    	{type = COMBAT_HOLYDAMAGE , percent = 1},
    	{type = COMBAT_DEATHDAMAGE , percent = -1}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = false},
    	{type = "bleed", condition = false}
}

mType:register(monster)
