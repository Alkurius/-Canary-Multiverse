local mType = Game.createMonsterType("(Robot z)")
local monster = {}

monster.description = "a robot z"
monster.experience = 1500
monster.health = 1764
monster.maxHealth = 1764
monster.race = "venom"
monster.corpse = 41744
monster.speed = 210
monster.manaCost = 0
monster.raceId = 2638

monster.outfit = {
    lookType = 1967,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Construct",
    race = BESTY_RACE_CONSTRUCT,
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
    staticAttackChance = 70,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.loot = {
    {name = "small diamond", chance = 1200, maxCount = 2},
    {name = "gold coin", chance = 51600, maxCount = 120},
    {name = "gold coin", chance = 60000, maxCount = 48},
    {name = "might ring", chance = 444},
    {name = "life crystal", chance = 1068},
    {name = "war hammer", chance = 1104},
    {name = "iron ore", chance = 1201},
    {name = "bonebreaker", chance = 156},
    {name = "berserk potion", chance = 984},
    {name = "spiked squelcher", chance = 1204},
    {name = "great mana potion", chance = 1764},
    {name = "great health potion", chance = 2520},
    {name = "nail", chance = 6000, maxCount = 6},
    {name = "great spirit potion", chance = 996},
    {name = "gear wheel", chance = 1208},
    {id = 8895, chance = 240},
    {id = 8898, chance = 60},
    {id = 9066, chance = 2724},
    {name = "gear crystal", chance = 2724},
    {name = "charm extra electric shot", chance = 1110},
    {name = "life leach water rune", chance = 3200}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -240},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -125, range = 7, shootEffect = CONST_ANI_SMALLSTONE, target = false}
}

monster.defenses = {
    	defense = 35,
    	armor = 35,
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 200, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
    	{type = COMBAT_ENERGYDAMAGE, percent = -5},
    	{type = COMBAT_EARTHDAMAGE, percent = 50},
    	{type = COMBAT_FIREDAMAGE, percent = 0},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 10},
    	{type = COMBAT_HOLYDAMAGE , percent = 50},
    	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
