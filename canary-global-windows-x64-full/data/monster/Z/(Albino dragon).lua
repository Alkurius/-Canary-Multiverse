local mType = Game.createMonsterType("(Albino dragon)")
local monster = {}

monster.description = "a albino dragon"
monster.experience = 7200
monster.health = 8350
monster.maxHealth = 8350
monster.race = "undead"
monster.corpse = 41188
monster.speed = 380
monster.manaCost = 0
monster.raceId = 2381

monster.outfit = {
    lookType = 1710,
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
    illusionable = true,
    canPushItems = true,
    canPushCreatures = true,
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
    {id = 6499, chance = 21870},
    {id = 3031, chance = 100000, maxCount = 297},
    {id = 239, chance = 35610, maxCount = 4},
    {id = 238, chance = 38490, maxCount = 4},
    {id = 5925, chance = 21870},
    {id = 3035, chance = 74685, maxCount = 8},
    {id = 9058, chance = 2445},
    {id = 10316, chance = 48390},
    {id = 3061, chance = 1710},
    {id = 7430, chance = 6435},
    {id = 3342, chance = 2445},
    {id = 7368, chance = 36945, maxCount = 8},
    {id = 3450, chance = 23580, maxCount = 22},
    {id = 3360, chance = 1275},
    {id = 10438, chance = 1275},
    {id = 3370, chance = 7395},
    {id = 8057, chance = 750},
    {id = 8061, chance = 795},
    {id = 3027, chance = 31935, maxCount = 3},
    {id = 3029, chance = 41415, maxCount = 3},
    {id = 3041, chance = 1755},
    {id = 3392, chance = 1380},
    {id = 6299, chance = 2925},
    {id = 2903, chance = 7560},
    {name = "leather backpack", chance = 1970},
    {name = "Dranus Doll", chance = 1050},
    {name = "tornado energy rune", chance = 3790},
    {name = "infernalist legs", chance = 380},
    {name = "cursed armor", chance = -50},
    {name = "dragon warrior armor", chance = 1890},
    {name = "great dragon warrior axe", chance = 590}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 150, attack = 60},
    	{name ="combat", interval = 2000, chance = 9, type = COMBAT_EARTHDAMAGE, minDamage = -100, maxDamage = -400, range = 7, radius = 4, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true},
    	{name ="combat", interval = 2000, chance = 9, type = COMBAT_LIFEDRAIN, minDamage = -100, maxDamage = -400, range = 7, radius = 4, shootEffect = CONST_ANI_DEATH, target = true},
    	{name ="combat", interval = 2000, chance = 11, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -615, range = 7, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA, target = false},
    	{name ="undead dragon curse", interval = 2000, chance = 9, target = false},
    	{name ="combat", interval = 2000, chance = 9, type = COMBAT_LIFEDRAIN, minDamage = -200, maxDamage = -700, length = 8, spread = 3, effect = CONST_ME_MAGIC_RED, target = false},
    	{name ="combat", interval = 2000, chance = 9, type = COMBAT_DEATHDAMAGE, minDamage = -400, maxDamage = -550, length = 8, spread = 3, effect = CONST_ME_SMALLCLOUDS, target = false}
}

monster.defenses = {
    	defense = 63,
    	armor = 45,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 200, maxDamage = 250, effect = CONST_ME_MAGIC_RED, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 100},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 50},
    	{type = COMBAT_HOLYDAMAGE , percent = -25},
    	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
