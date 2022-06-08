local mType = Game.createMonsterType("(Dende)")
local monster = {}

monster.description = "a dende"
monster.experience = 1800
monster.health = 2600
monster.maxHealth = 2600
monster.race = "blood"
monster.corpse = 41744
monster.speed = 310
monster.manaCost = 0
monster.raceId = 2318

monster.outfit = {
    lookType = 1647,
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
    canWalkOnFire = false,
    canWalkOnPoison = false
}

monster.loot = {
    {name = "piggy bank", chance = 6008},
    {name = "gold coin", chance = 81000, maxCount = 135},
    {name = "platinum coin", chance = 94500, maxCount = 3},
    {name = "fire axe", chance = 418},
    {name = "war axe", chance = 162},
    {name = "knight legs", chance = 418},
    {name = "black shield", chance = 5008},
    {name = "brown mushroom", chance = 20480, maxCount = 3},
    {name = "iron ore", chance = 7128},
    {name = "chaos mace", chance = 216},
    {name = "spiked squelcher", chance = 567},
    {name = "great mana potion", chance = 15174},
    {name = "terra boots", chance = 1053},
    {name = "ultimate health potion", chance = 13838},
    {name = "small topaz", chance = 13770},
    {id = 12600, chance = 28526},
    {name = "blue crystal shard", chance = 1134},
    {name = "lost basher's spike", chance = 23301},
    {name = "lost basher's spike", chance = 19413},
    {name = "bloody dwarven beard", chance = 2336},
    {name = "pair of iron fists", chance = 1904},
    {name = "buckle", chance = 14756},
    {name = "bonecarving knife", chance = 9882},
    {name = "basalt fetish", chance = 11880},
    {name = "basalt figurine", chance = 12784},
    {name = "semi-perfect amethyst", chance = 2590},
    {name = "charm life regeneration", chance = 1550},
    {name = "life leach fire rune", chance = 3490}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -351},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -220, range = 7, radius = 3, shootEffect = CONST_ANI_WHIRLWINDAXE, effect = CONST_ME_EXPLOSIONAREA, target = true},
    	{name ="drunk", interval = 2000, chance = 15, radius = 4, shootEffect = CONST_ANI_WHIRLWINDCLUB, effect = CONST_ME_SOUND_RED, target = true, duration = 6000},
    	{name ="speed", interval = 2000, chance = 15, speedChange = -650, radius = 2, effect = CONST_ME_ENERGYHIT, target = false, duration = 15000}
}

monster.defenses = {
    	defense = 30,
    	armor = 30,
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 250, maxDamage = 500, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 15},
    	{type = COMBAT_EARTHDAMAGE, percent = 100},
    	{type = COMBAT_FIREDAMAGE, percent = 40},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = 1},
    	{type = COMBAT_HOLYDAMAGE , percent = 0},
    	{type = COMBAT_DEATHDAMAGE , percent = 1}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
