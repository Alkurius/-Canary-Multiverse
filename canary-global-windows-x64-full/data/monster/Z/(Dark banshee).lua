local mType = Game.createMonsterType("(Dark banshee)")
local monster = {}

monster.description = "a dark banshee"
monster.experience = 6325
monster.health = 4485
monster.maxHealth = 4485
monster.race = "undead"
monster.corpse = 41356
monster.speed = 370
monster.manaCost = 0
monster.raceId = 2466

monster.outfit = {
    lookType = 1795,
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
    {name = "gold coin", chance = 100000, maxCount = 368},
    {name = "platinum coin", chance = 7280, maxCount = 6},
    {id = 3046, chance = 6790},
    {name = "dark shield", chance = 4200},
    {name = "scythe", chance = 12600},
    {name = "orichalcum pearl", chance = 1960, maxCount = 6},
    {id = 6299, chance = 462},
    {name = "demonic essence", chance = 14840},
    {name = "flask of demonic blood", chance = 49000},
    {name = "nightmare blade", chance = 1232},
    {name = "great mana potion", chance = 14000},
    {name = "glacier kilt", chance = 462},
    {name = "ultimate health potion", chance = 13440},
    {name = "skullcracker armor", chance = 378},
    {name = "underworld rod", chance = 1274},
    {id = 8896, chance = 3500},
    {name = "mystical hourglass", chance = 7420},
    {name = "life fuild from another multiverse", chance = 810},
    {name = "summon rune Z", chance = 3650},
    {name = "charm purification (pasive)", chance = 2260},
    {name = "darkness club", chance = 360},
    {name = "sword of eternal flames", chance = 10},
    {name = "full warrior rod", chance = 1840}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -320},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -165, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -350, maxDamage = -720, length = 8, spread = 3, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -300, length = 7, spread = 3, effect = CONST_ME_EXPLOSIONAREA, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -225, maxDamage = -275, radius = 4, target = false}
}

monster.defenses = {
    	defense = 35,
    	armor = 35,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 130, maxDamage = 205, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = 450, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
    	{type = COMBAT_ENERGYDAMAGE, percent = -10},
    	{type = COMBAT_EARTHDAMAGE, percent = 40},
    	{type = COMBAT_FIREDAMAGE, percent = -10},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 65},
    	{type = COMBAT_HOLYDAMAGE , percent = -10},
    	{type = COMBAT_DEATHDAMAGE , percent = 80}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
