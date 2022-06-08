local mType = Game.createMonsterType("(Strong minotaur berseker)")
local monster = {}

monster.description = "a strong minotaur berseker"
monster.experience = 2600
monster.health = 3200
monster.maxHealth = 3200
monster.race = "blood"
monster.corpse = 41287
monster.speed = 310
monster.manaCost = 0
monster.raceId = 2430

monster.outfit = {
    lookType = 1759,
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
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {id = 3031, chance = 100000, maxCount = 234},
    {id = 3035, chance = 69792, maxCount = 2},
    {id = 21200, chance = 3288, maxCount = 2},
    {id = 21199, chance = 2124},
    {id = 239, chance = 8856, maxCount = 4},
    {id = 238, chance = 8676, maxCount = 4},
    {id = 3577, chance = 7824},
    {id = 3030, chance = 5616, maxCount = 2},
    {id = 5878, chance = 4932},
    {id = 3028, chance = 5280, maxCount = 2},
    {id = 3098, chance = 2892},
    {id = 5911, chance = 1080},
    {id = 21173, chance = 1032},
    {id = 3037, chance = 852},
    {id = 7452, chance = 516},
    {id = 7427, chance = 336},
    {id = 9058, chance = 336},
    {id = 7401, chance = 336},
    {name = "mana fuild from another multiverse", chance = 2510},
    {name = "summon rune I", chance = 3950},
    {name = "ultimate energy rune", chance = 4200},
    {name = "evil spellbok", chance = 460},
    {name = "armor of eternal flames", chance = 1090},
    {name = "minotaur helmet", chance = 1050},
    {name = "minotaur armor", chance = 1370},
    {name = "minotaur sword", chance = 60},
    {name = "minotaur club", chance = 1640},
    {name = "minotaur chopper", chance = 1400},
    {name = "minotaur axe", chance = 1030}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, skill = 110, attack = 50},
    	{name ="combat", interval = 2000, chance = 13, type = COMBAT_PHYSICALDAMAGE, minDamage = -100, maxDamage = -230, length = 3, spread = 0, effect = CONST_ME_GROUNDSHAKER, target = false},
    	{name ="combat", interval = 2000, chance = 12, type = COMBAT_PHYSICALDAMAGE, minDamage = -100, maxDamage = -200, radius = 3, effect = CONST_ME_GROUNDSHAKER, target = false},
    	{name ="combat", interval = 2000, chance = 19, type = COMBAT_LIFEDRAIN, minDamage = -50, maxDamage = -225, radius = 5, effect = CONST_ME_MAGIC_RED, target = false},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -150, maxDamage = -235, range = 7, radius = 4, shootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_EXPLOSIONAREA, target = true}
}

monster.defenses = {
    	defense = 45,
    	armor = 40,
    	{name ="combat", interval = 2000, chance = 9, type = COMBAT_HEALING, minDamage = 50, maxDamage = 150, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 1},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 1},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 15},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 1}
}

monster.immunities = {
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
