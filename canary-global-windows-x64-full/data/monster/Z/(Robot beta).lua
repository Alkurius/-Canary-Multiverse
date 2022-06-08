local mType = Game.createMonsterType("(Robot beta)")
local monster = {}

monster.description = "a robot beta"
monster.experience = 1625
monster.health = 1911
monster.maxHealth = 1911
monster.race = "venom"
monster.corpse = 41744
monster.speed = 210
monster.manaCost = 0
monster.raceId = 2639

monster.outfit = {
    lookType = 1968,
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
    {name = "small diamond", chance = 1300, maxCount = 3},
    {name = "gold coin", chance = 55900, maxCount = 130},
    {name = "gold coin", chance = 65000, maxCount = 52},
    {name = "might ring", chance = 481},
    {name = "life crystal", chance = 1157},
    {name = "war hammer", chance = 1196},
    {name = "iron ore", chance = 1301},
    {name = "bonebreaker", chance = 169},
    {name = "berserk potion", chance = 1066},
    {name = "spiked squelcher", chance = 1304},
    {name = "great mana potion", chance = 1911},
    {name = "great health potion", chance = 2730},
    {name = "nail", chance = 6500, maxCount = 6},
    {name = "great spirit potion", chance = 1079},
    {name = "gear wheel", chance = 1309},
    {id = 8895, chance = 260},
    {id = 8898, chance = 65},
    {id = 9066, chance = 2951},
    {name = "gear crystal", chance = 2951},
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
