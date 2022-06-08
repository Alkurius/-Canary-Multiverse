local mType = Game.createMonsterType("(Dark pterodactyl-tek)")
local monster = {}

monster.description = "a dark pterodactyl-tek"
monster.experience = 2200
monster.health = 2500
monster.maxHealth = 2500
monster.race = "blood"
monster.corpse = 41744
monster.speed = 160
monster.manaCost = 0
monster.raceId = 2660

monster.outfit = {
    lookType = 1989,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Reptile",
    race = BESTY_RACE_REPTILE,
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
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "platinum coin", chance = 100000},
    {name = "great mana potion", chance = 26091},
    {name = "werehyaena nose", chance = 20215},
    {name = "small amethyst", chance = 14092},
    {name = "green crystal splinter", chance = 11856},
    {name = "hailstorm rod", chance = 8359},
    {name = "doublet", chance = 7007},
    {name = "brown crystal splinter", chance = 6539},
    {name = "wand of starstorm", chance = 6396},
    {name = "small enchanted emerald", chance = 6019},
    {id = 3091, chance = 5837},
    {name = "wand of voodoo", chance = 5187},
    {name = "protection amulet", chance = 3458},
    {name = "werehyaena talisman", chance = 845},
    {name = "moonlight crystals", chance = 793},
    {name = "werehyaena trophy", chance = 182},
    {name = "charm extra fire shot", chance = 1870},
    {name = "ultimate water rune", chance = 3980}
}

monster.attacks = {
    	{name = "melee", type = COMBAT_PHYSICALDAMAGE, interval = 2*1000, minDamage = 0, maxDamage = -260},
        {name = "combat", type = COMBAT_DEATHDAMAGE, interval = 2*1000, chance = 10, minDamage = -280, maxDamage = -325, radius = 3, effect = CONST_ME_HITBYPOISON},
        {name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2*1000, chance = 17, minDamage = -280, maxDamage = -315, range = 5, radius = 4, target = true, shootEffect = CONST_ANI_EARTH, effect = CONST_ME_GREEN_RINGS},
        {name = "combat", type = COMBAT_DEATHDAMAGE, interval = 2*1000, chance = 15, minDamage = -370, maxDamage = -430, range = 5, radius = 1, target = true, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA},
        {name = "combat", type = COMBAT_DEATHDAMAGE, interval = 2*1000, chance = 13, minDamage = -280, maxDamage = -325, length = 3, spread = 0, effect = CONST_ME_MORTAREA}
}

monster.defenses = {
    	{name = "speed", interval = 2*1000, chance = 15, speed = 200, duration = 5*1000, effect = CONST_ME_MAGIC_BLUE},
    	defense = 0,
    	armor = 38
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 0},
    	{type = COMBAT_EARTHDAMAGE, percent = 60},
    	{type = COMBAT_FIREDAMAGE, percent = 75},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -20},
    	{type = COMBAT_HOLYDAMAGE , percent = 95},
    	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = true},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = true}
}

mType:register(monster)
