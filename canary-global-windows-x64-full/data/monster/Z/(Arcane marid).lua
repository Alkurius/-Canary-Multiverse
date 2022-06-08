local mType = Game.createMonsterType("(Arcane marid)")
local monster = {}

monster.description = "a arcane marid"
monster.experience = 615
monster.health = 825
monster.maxHealth = 825
monster.race = "blood"
monster.corpse = 41158
monster.speed = 284
monster.manaCost = 0
monster.raceId = 2373

monster.outfit = {
    lookType = 1702,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.Bestiary = {
    class = "Magical",
    race = BESTY_RACE_MAGICAL,
    toKill = 250,
    FirstUnlock = 50,
    SecondUnlock = 100,
    CharmsPoints = 25,
    Stars = 2,
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
    canPushCreatures = false,
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
    {id = 2659, chance = 3840},
    {name = "small oil lamp", chance = 165},
    {name = "small sapphire", chance = 9300},
    {name = "gold coin", chance = 90000, maxCount = 105},
    {name = "gold coin", chance = 90000, maxCount = 45},
    {name = "blue gem", chance = 165},
    {name = "hailstorm rod", chance = 1155},
    {id = 2948, chance = 7500},
    {name = "heavy machete", chance = 6795},
    {name = "mystic turban", chance = 435},
    {name = "blueberry", chance = 97500, maxCount = 44},
    {name = "blue piece of cloth", chance = 5625},
    {name = "royal spear", chance = 23250, maxCount = 4},
    {name = "strong mana potion", chance = 14700},
    {name = "seeds", chance = 3600},
    {name = "magma monocle", chance = 480},
    {name = "jewelled belt", chance = 11820},
    {name = "noble turban", chance = 795}
}

monster.attacks = {
    	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -90},
    	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -100, maxDamage = -250, range = 7, shootEffect = CONST_ANI_ENERGYBALL, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -30, maxDamage = -90, range = 7, effect = CONST_ME_MAGIC_RED, target = false},
    	{name ="speed", interval = 2000, chance = 15, speedChange = -650, range = 7, effect = CONST_ME_MAGIC_RED, target = false, duration = 1500},
    	{name ="drunk", interval = 2000, chance = 10, range = 7, shootEffect = CONST_ANI_ENERGY, target = false, duration = 6000},
    	{name ="outfit", interval = 2000, chance = 1, range = 7, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 4000, outfitMonster = "rabbit"},
    	{name ="djinn electrify", interval = 2000, chance = 15, range = 5, target = false},
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -30, maxDamage = -90, radius = 3, effect = CONST_ME_ENERGYHIT, target = false}
}

monster.defenses = {
    	defense = 20,
    	armor = 20,
    	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 50, maxDamage = 80, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
    	{type = COMBAT_ENERGYDAMAGE, percent = 60},
    	{type = COMBAT_EARTHDAMAGE, percent = 1},
    	{type = COMBAT_FIREDAMAGE, percent = 90},
    	{type = COMBAT_LIFEDRAIN, percent = 0},
    	{type = COMBAT_MANADRAIN, percent = 0},
    	{type = COMBAT_DROWNDAMAGE, percent = 0},
    	{type = COMBAT_ICEDAMAGE, percent = -1},
    	{type = COMBAT_HOLYDAMAGE , percent = 1},
    	{type = COMBAT_DEATHDAMAGE , percent = -1}
}

monster.immunities = {
    	{type = "paralyze", condition = true},
    	{type = "outfit", condition = false},
    	{type = "invisible", condition = true},
    	{type = "bleed", condition = false}
}

mType:register(monster)
