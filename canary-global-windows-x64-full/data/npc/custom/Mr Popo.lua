local internalNpcName = "Mr Popo"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 150
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 1598,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

npcConfig.flags = {
	floorchange = false
}

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)

npcType.onThink = function(npc, interval)
	npcHandler:onThink(npc, interval)
end

npcType.onAppear = function(npc, creature)
	npcHandler:onAppear(npc, creature)
end

npcType.onDisappear = function(npc, creature)
	npcHandler:onDisappear(npc, creature)
end

npcType.onMove = function(npc, creature, fromPosition, toPosition)
	npcHandler:onMove(npc, creature, fromPosition, toPosition)
end

npcType.onSay = function(npc, creature, type, message)
	npcHandler:onSay(npc, creature, type, message)
end

npcType.onCloseChannel = function(npc, creature)
	npcHandler:onCloseChannel(npc, creature)
end

npcConfig.shop = {
	{ itemName = "death's shadow helmet", clientId = 40312, sell = 3529800},
	{ itemName = "death's shadow helmet (charged)", clientId = 40313, sell = 3465000},
	{ itemName = "helmet of infinity flames", clientId = 40314, sell = 3492800},
	{ itemName = "empire axe", clientId = 40555, sell = 4119100},
	{ itemName = "empire club", clientId = 40556, sell = 3901500},
	{ itemName = "empire helmet", clientId = 40557, sell = 3352400},
	{ itemName = "empire armor", clientId = 40558, sell = 4853500},
	{ itemName = "empire legs", clientId = 40559, sell = 3116100},
	{ itemName = "empire boots", clientId = 40560, sell = 3133100},
	{ itemName = "empire shield", clientId = 40561, sell = 3036200},
	{ itemName = "empire sword", clientId = 40562, sell = 3746800},
	{ itemName = "great empire axe", clientId = 40563, sell = 3473100},
	{ itemName = "great empire club", clientId = 40564, sell = 4097000},
	{ itemName = "empire bow", clientId = 40565, sell = 3347300},
	{ itemName = "great empire sword", clientId = 40566, sell = 3680500},
	{ itemName = "legendary warrior boots", clientId = 40598, sell = 3281600},
	{ itemName = "legendary warrior legs", clientId = 40599, sell = 3582400},
	{ itemName = "legendary warrior armor", clientId = 40600, sell = 4112000},
	{ itemName = "legendary warrior helmet", clientId = 40601, sell = 3668800},
	{ itemName = "legendary warrior sword", clientId = 40602, sell = 3980800},
	{ itemName = "legendary warrior shield", clientId = 40603, sell = 2614400},
	{ itemName = "angel quiver", clientId = 40723, sell = 1519800},
	{ itemName = "angel helmet", clientId = 40724, sell = 3906600},
	{ itemName = "angel armor", clientId = 40725, sell = 4607000},
	{ itemName = "angel shield", clientId = 40726, sell = 2614600},
	{ itemName = "angel legs", clientId = 40727, sell = 3828400},
	{ itemName = "angel sword", clientId = 40728, sell = 4057900},
	{ itemName = "angel wand", clientId = 40729, sell = 2199800},
	{ itemName = "angel bow", clientId = 40730, sell = 3564900},
	{ itemName = "angel boots", clientId = 40731, sell = 3423800},
	{ itemName = "pharaonic helmet", clientId = 40732, sell = 3350400},
	{ itemName = "pharaonic armor", clientId = 40733, sell = 4755200},
	{ itemName = "pharaonic sword", clientId = 40734, sell = 3614400},
	{ itemName = "pharaonic axe", clientId = 40735, sell = 3302400},
	{ itemName = "pharaonic wand (Death)", clientId = 40736, sell = 2400000},
	{ itemName = "pharaonic wand (Earth)", clientId = 40737, sell = 1848000},
	{ itemName = "pharaonic wand (Holy)", clientId = 40738, sell = 1921600},
	{ itemName = "pharaonic wand (Energy)", clientId = 40739, sell = 1969600},
	{ itemName = "pharaonic wand (Fire)", clientId = 40740, sell = 1636800},
	{ itemName = "pharaonic rod (Death)", clientId = 40741, sell = 2187200},
	{ itemName = "pharaonic rod (ice)", clientId = 40742, sell = 2244800},
	{ itemName = "pharaonic rod (Earth)", clientId = 40743, sell = 1798400},
	{ itemName = "pharaonic rod (Energy)", clientId = 40744, sell = 1915200},
	{ itemName = "pharaonic rod (Holy)", clientId = 40745, sell = 2161600},
	{ itemName = "pharaonic boots", clientId = 40746, sell = 3678400},
	{ itemName = "helmet of the dark lord", clientId = 40796, sell = 3630000},
	{ itemName = "armor of the dark lord", clientId = 40797, sell = 5222000},
	{ itemName = "shield of the dark lord", clientId = 40798, sell = 3824000},
	{ itemName = "legs of the dark lord", clientId = 40799, sell = 4214000},
	{ itemName = "sword of the dark lord", clientId = 40800, sell = 4808000},
	{ itemName = "club of the dark lord", clientId = 40801, sell = 4018000},
	{ itemName = "axe of the dark lord", clientId = 40802, sell = 4936000},
	{ itemName = "crossbow of the dark lord", clientId = 40803, sell = 4384000},
	{ itemName = "boots of the dark lord", clientId = 40804, sell = 4516000},
	{ itemName = "ancient gold helmet", clientId = 40835, sell = 3583400},
	{ itemName = "ancient gold armor", clientId = 40836, sell = 4997000},
	{ itemName = "ancient gold shield", clientId = 40837, sell = 3218600},
	{ itemName = "ancient gold legs", clientId = 40838, sell = 4033700},
	{ itemName = "ancient gold club", clientId = 40839, sell = 4421300},
	{ itemName = "ancient gold axe", clientId = 40840, sell = 4069800},
	{ itemName = "ancient gold rod", clientId = 40841, sell = 2559300},
	{ itemName = "ancient gold wand", clientId = 40842, sell = 2147000},
	{ itemName = "olimpic helmet", clientId = 40876, sell = 3609100},
	{ itemName = "olimpic armor", clientId = 40877, sell = 4749800},
	{ itemName = "olimpic legs", clientId = 40878, sell = 3131400},
	{ itemName = "olimpic sword", clientId = 40879, sell = 3542800},
	{ itemName = "divine axe", clientId = 40880, sell = 3573400},
	{ itemName = "divine rod", clientId = 40881, sell = 1944800},
	{ itemName = "helmet of RA", clientId = 40913, sell = 4060800},
	{ itemName = "armor of RA", clientId = 40914, sell = 4608000},
	{ itemName = "legs of RA", clientId = 40915, sell = 3465000},
	{ itemName = "sword of RA", clientId = 40916, sell = 4057200},
	{ itemName = "double axe of RA", clientId = 40917, sell = 4273200},
	{ itemName = "axe of RA", clientId = 40918, sell = 4235400},
	{ itemName = "rod of RA", clientId = 40919, sell = 2498400},
	{ itemName = "Iluminati helmet", clientId = 40926, sell = 3318400},
	{ itemName = "Iluminati armor", clientId = 40927, sell = 4986100},
	{ itemName = "Iluminati legs", clientId = 40928, sell = 3813100},
	{ itemName = "Iluminati boots", clientId = 40929, sell = 3209600},
	{ itemName = "Iluminati axe", clientId = 40930, sell = 3746800},
	{ itemName = "Iluminati sword", clientId = 40931, sell = 3532600},
	{ itemName = "great Iluminati sword", clientId = 40932, sell = 3418700},
	{ itemName = "full angel helmet", clientId = 40939, sell = 3870000},
	{ itemName = "full angel armor", clientId = 40940, sell = 5004000},
	{ itemName = "full angel shield", clientId = 40941, sell = 3101400},
	{ itemName = "full angel rod", clientId = 40942, sell = 1931400},
	{ itemName = "full angel gun", clientId = 40943, sell = 3519000},
	{ itemName = "full angel bow", clientId = 40944, sell = 3832200},
	{ itemName = "full angel boots", clientId = 40945, sell = 3587400},
	{ itemName = "divine helmet", clientId = 40971, sell = 3900000},
	{ itemName = "divine armor", clientId = 40972, sell = 5226000},
	{ itemName = "divine legs", clientId = 40973, sell = 4372000},
	{ itemName = "divine boots", clientId = 40974, sell = 3920000},
	{ itemName = "divine crossbow", clientId = 40975, sell = 4474000},
	{ itemName = "divine shield", clientId = 40976, sell = 3660000},
	{ itemName = "divine sword", clientId = 40977, sell = 4764000},
	{ itemName = "Bills armor", clientId = 40982, sell = 5522000},
	{ itemName = "Bills legs", clientId = 40983, sell = 4204000},
	{ itemName = "Bills boots", clientId = 40984, sell = 3890000},
	{ itemName = "Goku armor", clientId = 40988, sell = 5065400},
	{ itemName = "Goku legs", clientId = 40989, sell = 3705000},
	{ itemName = "Goku boots", clientId = 40990, sell = 3706900},
	{ itemName = "Picoro armor", clientId = 40999, sell = 4395200},
	{ itemName = "Picoro legs", clientId = 41000, sell = 3630400},
	{ itemName = "Picoro boots", clientId = 41001, sell = 3664000},
	{ itemName = "Picoro helmet", clientId = 41002, sell = 3104000},
	{ itemName = "Trunks armor", clientId = 41007, sell = 4986000},
	{ itemName = "Trunks legs", clientId = 41008, sell = 4127400},
	{ itemName = "Trunks boots", clientId = 41009, sell = 3506400},
	{ itemName = "Vegeta armor", clientId = 41010, sell = 5359900},
	{ itemName = "Vegeta legs", clientId = 41011, sell = 4048900},
	{ itemName = "Vegeta boots", clientId = 41012, sell = 3845600}
}
-- On buy npc shop message
npcType.onBuyItem = function(npc, player, itemId, subType, amount, inBackpacks, name, totalCost)
	npc:sellItem(player, itemId, amount, subType, true, inBackpacks, 2854)
	player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("Bought %ix %s for %i %s.", amount, name, totalCost, ItemType(npc:getCurrency()):getPluralName():lower()))
end
-- On sell npc shop message
npcType.onSellItem = function(npc, player, clientId, subtype, amount, name, totalCost)
	player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("Sold %ix %s for %i gold.", amount, name, totalCost))
end
-- On check npc shop message (look item)
npcType.onCheckItem = function(npc, player, clientId, subType)
end

local function creatureSayCallback(npc, creature, type, message)
	local player = Player(creature)
	local playerId = player:getId()

	if not npcHandler:checkInteraction(npc, creature) then
		return false
	end

	if MsgContains(message, "name") then
		return npcHandler:say("Me Mr Popo.", npc, creature)	
	end
	return true
end

npcHandler:setMessage(MESSAGE_FAREWELL, "cya.")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

npcType:register(npcConfig)
