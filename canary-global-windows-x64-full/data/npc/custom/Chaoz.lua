local internalNpcName = "Chaoz"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 150
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 2129,
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
	{ itemName = "volcano helmet", clientId = 40567, sell = 1887300},
	{ itemName = "volcano armor", clientId = 40568, sell = 2284200},
	{ itemName = "volcano legs", clientId = 40569, sell = 1851300},
	{ itemName = "volcano boots", clientId = 40570, sell = 1716300},
	{ itemName = "volcano crosbow", clientId = 40571, sell = 1807200},
	{ itemName = "volcano sword", clientId = 40572, sell = 1813500},
	{ itemName = "volcano bow", clientId = 40573, sell = 2042100},
	{ itemName = "volcano shield", clientId = 40574, sell = 1752300},
	{ itemName = "volcano wand", clientId = 40575, sell = 1227600},
	{ itemName = "bushi helmet", clientId = 40576, sell = 1183800},
	{ itemName = "bushi armor", clientId = 40577, sell = 1518600},
	{ itemName = "bushi legs", clientId = 40578, sell = 1156200},
	{ itemName = "bushi boots", clientId = 40579, sell = 1261800},
	{ itemName = "bushi shield", clientId = 40580, sell = 1089000},
	{ itemName = "darkness rod", clientId = 40581, sell = 984000},
	{ itemName = "darkness bow", clientId = 40582, sell = 1447200},
	{ itemName = "darkness axe", clientId = 40583, sell = 1728000},
	{ itemName = "darkness club", clientId = 40584, sell = 1697600},
	{ itemName = "darkness sword", clientId = 40585, sell = 1967200},
	{ itemName = "darkness shield", clientId = 40586, sell = 1212000},
	{ itemName = "darkness helmet", clientId = 40587, sell = 1711200},
	{ itemName = "darkness armor", clientId = 40588, sell = 2363200},
	{ itemName = "darkness legs", clientId = 40589, sell = 1516800},
	{ itemName = "darkness boots", clientId = 40590, sell = 1460000},
	{ itemName = "lava sword", clientId = 40604, sell = 2242000},
	{ itemName = "lava shield", clientId = 40605, sell = 1774000},
	{ itemName = "lava boots", clientId = 40606, sell = 1927000},
	{ itemName = "lava legs", clientId = 40607, sell = 1923000},
	{ itemName = "lava armor", clientId = 40608, sell = 2993000},
	{ itemName = "lava helmet", clientId = 40609, sell = 1991000},
	{ itemName = "lava crossbow", clientId = 40610, sell = 2061000},
	{ itemName = "arcane club", clientId = 40630, sell = 1463700},
	{ itemName = "arcane helmet", clientId = 40631, sell = 1379700},
	{ itemName = "arcane legs", clientId = 40632, sell = 1340500},
	{ itemName = "arcane armor", clientId = 40633, sell = 2080400},
	{ itemName = "arcane shield", clientId = 40634, sell = 1187900},
	{ itemName = "arcane boots", clientId = 40635, sell = 1493100},
	{ itemName = "lost demon helmet", clientId = 40636, sell = 1813000},
	{ itemName = "lost demon armor", clientId = 40637, sell = 2625000},
	{ itemName = "lost demon shield", clientId = 40638, sell = 1840000},
	{ itemName = "lost demon legs", clientId = 40639, sell = 1882000},
	{ itemName = "lost demon club", clientId = 40640, sell = 2305000},
	{ itemName = "lost demon chopper", clientId = 40641, sell = 2127000},
	{ itemName = "lost demon axe", clientId = 40642, sell = 2471000},
	{ itemName = "elite royal helmet", clientId = 40659, sell = 1561600},
	{ itemName = "royal armor", clientId = 40660, sell = 2353600},
	{ itemName = "royal shield", clientId = 40661, sell = 1403200},
	{ itemName = "royal legs", clientId = 40662, sell = 1498400},
	{ itemName = "royal sword", clientId = 40663, sell = 1856000},
	{ itemName = "royal club", clientId = 40664, sell = 1928000},
	{ itemName = "elite royal axe", clientId = 40665, sell = 1635200},
	{ itemName = "watcher helmet", clientId = 40692, sell = 1403500},
	{ itemName = "watcher armor", clientId = 40693, sell = 1752800},
	{ itemName = "watcher shield", clientId = 40694, sell = 1335600},
	{ itemName = "watcher legs", clientId = 40695, sell = 1474900},
	{ itemName = "watcher sword", clientId = 40696, sell = 1586900},
	{ itemName = "watcher club", clientId = 40697, sell = 1640100},
	{ itemName = "watcher boots", clientId = 40698, sell = 1450400},
	{ itemName = "general dwarf helmet", clientId = 40706, sell = 2028600},
	{ itemName = "general dwarf armor", clientId = 40707, sell = 2542500},
	{ itemName = "general dwarf shield", clientId = 40708, sell = 1468800},
	{ itemName = "general dwarf legs", clientId = 40709, sell = 1893600},
	{ itemName = "general dwarf sword", clientId = 40710, sell = 1935000},
	{ itemName = "general dwarf club", clientId = 40711, sell = 1896300},
	{ itemName = "general dwarf axe", clientId = 40712, sell = 1885500},
	{ itemName = "crystal helmet", clientId = 40713, sell = 1900800},
	{ itemName = "crystal armor", clientId = 40714, sell = 2675700},
	{ itemName = "crystal shield", clientId = 40715, sell = 1651500},
	{ itemName = "crystal legs", clientId = 40716, sell = 1879200},
	{ itemName = "big crystal sword", clientId = 40717, sell = 2097900},
	{ itemName = "crystal club", clientId = 40718, sell = 2250000},
	{ itemName = "crystal axe", clientId = 40719, sell = 1900800},
	{ itemName = "big crystal wand", clientId = 40720, sell = 1301400},
	{ itemName = "crystal bow", clientId = 40721, sell = 1740600},
	{ itemName = "the crystal boots", clientId = 40722, sell = 1715400},
	{ itemName = "templar helmet", clientId = 40747, sell = 1378800},
	{ itemName = "templar armor", clientId = 40748, sell = 1755600},
	{ itemName = "templar shield", clientId = 40749, sell = 1036800},
	{ itemName = "templar legs", clientId = 40750, sell = 1086000},
	{ itemName = "templar sword", clientId = 40751, sell = 1357800},
	{ itemName = "templar club", clientId = 40752, sell = 1246200},
	{ itemName = "templar axe", clientId = 40753, sell = 1308600},
	{ itemName = "crustacean helmet", clientId = 40773, sell = 1369200},
	{ itemName = "crustacean armor", clientId = 40774, sell = 1998500},
	{ itemName = "crustacean legs", clientId = 40775, sell = 1381800},
	{ itemName = "crustacean boots", clientId = 40776, sell = 1391600},
	{ itemName = "crustacean shield", clientId = 40777, sell = 1134000},
	{ itemName = "crustacean axe", clientId = 40778, sell = 1442000},
	{ itemName = "crustacean club", clientId = 40779, sell = 1618400},
	{ itemName = "crustacean sword", clientId = 40780, sell = 1689100},
	{ itemName = "crustacean wand", clientId = 40781, sell = 838600},
	{ itemName = "decay skull rod", clientId = 40861, sell = 1304100},
	{ itemName = "decay helmet", clientId = 40862, sell = 1718100},
	{ itemName = "decay armor", clientId = 40863, sell = 2313900},
	{ itemName = "decay shield", clientId = 40864, sell = 1755900},
	{ itemName = "decay legs", clientId = 40865, sell = 1647900},
	{ itemName = "decay axe", clientId = 40866, sell = 2011500},
	{ itemName = "decay rod", clientId = 40867, sell = 1049400},
	{ itemName = "Medusa helmet", clientId = 40920, sell = 1712800},
	{ itemName = "Gorgon helmet", clientId = 40921, sell = 1668800},
	{ itemName = "Gorgon armor", clientId = 40922, sell = 2365600},
	{ itemName = "Medusa armor", clientId = 40923, sell = 2116000},
	{ itemName = "Medusa wand", clientId = 40924, sell = 906400},
	{ itemName = "Gorgon rod", clientId = 40925, sell = 1160800},
	{ itemName = "full warrior shield", clientId = 40952, sell = 1135800},
	{ itemName = "full warrior helmet", clientId = 40953, sell = 1140000},
	{ itemName = "full warrior armor", clientId = 40954, sell = 1532400},
	{ itemName = "full warrior club", clientId = 40955, sell = 1452600},
	{ itemName = "full warrior rod", clientId = 40956, sell = 828000},
	{ itemName = "full warrior double axe", clientId = 40957, sell = 1499400},
	{ itemName = "full warrior axe", clientId = 40958, sell = 1421400},
	{ itemName = "full warrior bow", clientId = 40959, sell = 1270800},
	{ itemName = "Xena helmet", clientId = 40966, sell = 2147000},
	{ itemName = "Xena armor", clientId = 40967, sell = 2830000},
	{ itemName = "Xena legs", clientId = 40968, sell = 2173000},
	{ itemName = "Xena boots", clientId = 40969, sell = 2243000},
	{ itemName = "Xena sword", clientId = 40970, sell = 2342000}

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
		return npcHandler:say("Me Chaoz.", npc, creature)	
	end
	return true
end

npcHandler:setMessage(MESSAGE_FAREWELL, "cya.")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

npcType:register(npcConfig)
