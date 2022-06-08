local mType = Game.createMonsterType("(Electrical king crab)")
local monster = {}

monster.description = "a electrical king crab"
monster.experience = 6400
monster.health = 7200
monster.maxHealth = 7200
monster.race = "blood"
monster.corpse = 41747
monster.speed = 360
monster.manaCost = 0
monster.raceId = 2619

monster.outfit = {
    lookType = 1948,
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
    pushable = true,
    rewardBoss = false,
    illusionable = false,
    canPushItems = true,
    canPushCreatures = true,
    staticAttackChance = 60,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = true,
    canWalkOnPoison = false
}

monster.loot = {
    {name = "platinum coin", chance = 100000, maxCount = 21},
    {name = "crystalline arrow", chance = 39000, maxCount = 38},
    {name = "Small Emerald", chance = 21060, maxCount = 21},
    {name = "Deepling Filet", chance = 18705},
    {name = "Deeptags", chance = 18705},
    {name = "Great Health Potion", chance = 13695},
    {name = "Deepling Ridge", chance = 13260},
    {name = "Deepling Warts", chance = 12810},
    {name = "Great Mana Potion", chance = 12300},
    {name = "Vortex Bolt", chance = 9570, maxCount = 38},
    {name = "Eye of a Deepling", chance = 7140},
    {name = "Heavy Trident", chance = 6180},
    {name = "Warrior's Shield", chance = 4635},
    {name = "Fish Fin", chance = 4485},
    {name = "Warrior's Axe", chance = 4425},
    {name = "Small Enchanted Sapphire", chance = 3330, maxCount = 6},
    {id = 3052, chance = 3015},
    {name = "Necklace of the Deep", chance = 300},
    {name = "perfect emerald", chance = 2490},
    {name = "ultimate missile water rune", chance = 4200},
    {name = "infinite energy sword", chance = 1350},
    {name = "cyclops mask", chance = 940},
    {name = "crustacean helmet", chance = 340},
    {name = "crustacean armor", chance = 1080},
    {name = "crustacean boots", chance = 860},
    {name = "crustacean shield", chance = 1910},
    {name = "crustacean club", chance = 630},
    {name = "crustacean sword", chance = 870},
    {name = "acuatic helmet", chance = 1480},
    {name = "acuatic armor", chance = 790},
    {name = "acuatic boots", chance = 1360}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -300, effect = CONST_ME_DRAWBLOOD},
    	{name ="combat", interval = 4000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -400, range = 5, shootEffect = CONST_ANI_HUNTINGSPEAR, target = false},
    	{name ="combat", interval = 4000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -150, maxDamage = -300, range = 5, shootEffect = CONST_ANI_LARGEROCK, target = false},
    	{name ="combat", interval = 2000, chance = 14, type = COMBAT_HOLYDAMAGE, minDamage = -400, maxDamage = -700, length = 8, spread = 3, effect = CONST_ME_BLOCKHIT, target = false}
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
