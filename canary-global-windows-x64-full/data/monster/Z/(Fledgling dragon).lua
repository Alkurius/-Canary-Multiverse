local mType = Game.createMonsterType("(Fledgling dragon)")
local monster = {}

monster.description = "a fledgling dragon"
monster.experience = 700
monster.health = 1000
monster.maxHealth = 1000
monster.race = "blood"
monster.corpse = 41203
monster.speed = 222
monster.manaCost = 0
monster.raceId = 2385

monster.outfit = {
    lookType = 1714,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Dragon",
    race = BESTY_RACE_DRAGON,
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
    canPushCreatures = true,
    staticAttackChance = 80,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = true,
    canWalkOnPoison = false
}

monster.loot = {
    {name = "small diamond", chance = 570},
    {name = "gold coin", chance = 71250, maxCount = 105},
    {name = "gold coin", chance = 56250, maxCount = 68},
    {name = "life crystal", chance = 180},
    {name = "wand of inferno", chance = 1508},
    {name = "double axe", chance = 1440},
    {name = "longsword", chance = 6000},
    {name = "serpent sword", chance = 630},
    {name = "broadsword", chance = 2925},
    {name = "dragon hammer", chance = 840},
    {name = "crossbow", chance = 15000},
    {name = "steel helmet", chance = 4500},
    {name = "steel shield", chance = 22500},
    {name = "dragon shield", chance = 480},
    {id = 3449, chance = 12090, maxCount = 15},
    {name = "plate legs", chance = 3000},
    {name = "dragon ham", chance = 98250, maxCount = 4},
    {name = "green dragon leather", chance = 1508},
    {name = "green dragon scale", chance = 1500},
    {name = "dragonbone staff", chance = 165},
    {name = "strong health potion", chance = 1500},
    {name = "dragon's tail", chance = 14610},
    {name = "semi-perfect diamond", chance = 2500},
    {name = "summon rune K", chance = 4280},
    {name = "tornado energy rune", chance = 3790}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -120},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -60, maxDamage = -140, range = 7, radius = 4, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -100, maxDamage = -170, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false}
}

monster.defenses = {
    	defense = 30,
    	armor = 30,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 40, maxDamage = 70, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 20},
    	{type = COMBAT_EARTHDAMAGE, percent = 80},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -10},
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
