local mType = Game.createMonsterType("(Little goku+)")
local monster = {}

monster.description = "a little goku+"
monster.experience = 1500
monster.health = 1600
monster.maxHealth = 1600
monster.race = "blood"
monster.corpse = 41744
monster.speed = 340
monster.manaCost = 0
monster.raceId = 2243

monster.outfit = {
    lookType = 1572,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Human",
    race = BESTY_RACE_HUMAN,
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
    pushable = true,
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
    canWalkOnFire = true,
    canWalkOnPoison = false
}

monster.loot = {
    {name = "gold coin", chance = 81000, maxCount = 135},
    {name = "gold coin", chance = 81000, maxCount = 108},
    {name = "deepling filet", chance = 20635},
    {name = "deeptags", chance = 20216},
    {name = "deepling ridge", chance = 15000},
    {name = "great mana potion", chance = 13784},
    {name = "deepling warts", chance = 13554},
    {name = "great health potion", chance = 13540},
    {name = "vortex bolt", chance = 4632, maxCount = 7},
    {name = "small emerald", chance = 4190},
    {id = 3052, chance = 4051},
    {name = "heavy trident", chance = 1349},
    {name = "fish fin", chance = 1174},
    {name = "warrior's shield", chance = 824},
    {name = "eye of a deepling", chance = 824},
    {name = "warrior's axe", chance = 688},
    {name = "imperfect ruby", chance = 2620},
    {name = "charm paralyze", chance = 2230},
    {name = "tornado holy rune", chance = 3270}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -300, effect = CONST_ME_DRAWBLOOD},
    	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -290, range = 7, shootEffect = CONST_ANI_WHIRLWINDAXE, target = true}
}

monster.defenses = {
    	defense = 25,
    	armor = 25,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 50, maxDamage = 150, effect = CONST_ME_MAGIC_BLUE, target = false}
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
    	{type = "paralyze", condition = false},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
