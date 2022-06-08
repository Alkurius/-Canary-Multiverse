local mType = Game.createMonsterType("(Frost king crab)")
local monster = {}

monster.description = "a frost king crab"
monster.experience = 6300
monster.health = 7200
monster.maxHealth = 7200
monster.race = "blood"
monster.corpse = 41747
monster.speed = 360
monster.manaCost = 0
monster.raceId = 2620

monster.outfit = {
    lookType = 1949,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Aquatic",
    race = BESTY_RACE_AQUATIC,
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
    canWalkOnFire = true,
    canWalkOnPoison = false
}

monster.loot = {
    {name = "crystalline arrow", chance = 37890, maxCount = 38},
    {name = "Vortex Bolt", chance = 32010, maxCount = 38},
    {name = "Small Emerald", chance = 31365, maxCount = 18},
    {name = "Deepling Warts", chance = 30420},
    {name = "Deeptags", chance = 22650},
    {name = "Deepling Filet", chance = 21945},
    {name = "Small Enchanted Sapphire", chance = 19500, maxCount = 12},
    {name = "Deepling Ridge", chance = 16860},
    {name = "Great Mana Potion", chance = 15000},
    {name = "Great Health Potion", chance = 15000},
    {name = "Heavy Trident", chance = 9930},
    {name = "Eye of a Deepling", chance = 9105},
    {name = "Warrior's Shield", chance = 5445},
    {name = "Warrior's Axe", chance = 5205},
    {id = 3052, chance = 4500},
    {name = "Fish Fin", chance = 1380},
    {name = "Necklace of the Deep", chance = 660},
    {name = "perfect emerald", chance = 2490},
    {name = "ultimate missile water rune", chance = 4200},
    {name = "infinite energy sword", chance = 1350},
    {name = "cyclops armor", chance = 1910},
    {name = "crustacean helmet", chance = 340},
    {name = "crustacean legs", chance = 80},
    {name = "crustacean boots", chance = 860},
    {name = "crustacean axe", chance = 1390},
    {name = "crustacean club", chance = 630},
    {name = "crustacean wand", chance = 1920},
    {name = "acuatic helmet", chance = 1480},
    {name = "acuatic legs", chance = 650},
    {name = "acuatic boots", chance = 1360}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -300, effect = CONST_ME_DRAWBLOOD},
    	{name ="combat", interval = 4000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -400, range = 5, shootEffect = CONST_ANI_HUNTINGSPEAR, target = false},
    	{name ="combat", interval = 4000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -150, maxDamage = -300, range = 5, shootEffect = CONST_ANI_LARGEROCK, target = false},
    	{name ="combat", interval = 4000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -350, maxDamage = -550, radius = 3, effect = CONST_ME_POFF, target = false}
}

monster.defenses = {
    	defense = 72,
    	armor = 72
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = -10},
    	{type = COMBAT_EARTHDAMAGE, percent = -10},
    	{type = COMBAT_FIREDAMAGE, percent = 100},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 100},
    	{type = COMBAT_ICEDAMAGE, percent = 100},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
