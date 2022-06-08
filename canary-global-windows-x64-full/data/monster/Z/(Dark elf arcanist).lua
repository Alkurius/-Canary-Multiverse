local mType = Game.createMonsterType("(Dark elf arcanist)")
local monster = {}

monster.description = "a dark elf arcanist"
monster.experience = 4700
monster.health = 5300
monster.maxHealth = 5300
monster.race = "blood"
monster.corpse = 39792
monster.speed = 450
monster.manaCost = 0
monster.raceId = 2399

monster.outfit = {
    lookType = 1728,
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
    {name = "power bolt", chance = 100000},
    {name = "small enchanted sapphire", chance = 100000, maxCount = 2},
    {name = "platinum coin", chance = 100000, maxCount = 6},
    {id = 5921, chance = 1875},
    {name = "dream essence egg", chance = 1444},
    {name = "elvish talisman", chance = 1694},
    {name = "violet crystal shard", chance = 1844},
    {name = "small enchanted ruby", chance = 2194},
    {name = "red crystal fragment", chance = 1956},
    {name = "leaf star", chance = 13875, maxCount = 10},
    {id = 23529, chance = 1250},
    {name = "sun fruit", chance = 32250},
    {id = 23542, chance = 1988},
    {name = "wood cape", chance = 37500},
    {name = "small diamond", chance = 1000},
    {name = "yellow gem", chance = 800},
    {name = "crystal crossbow", chance = 750},
    {name = "food backpack", chance = 2120},
    {name = "summon rune U", chance = 3330},
    {name = "life leach energy rune", chance = 3360},
    {name = "evil armor", chance = 1900},
    {name = "black spirit armor", chance = 620},
    {name = "sword of mythical justice", chance = 1200}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = -210, maxDamage = -530},
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
