local internalNpcName = "Master Karin"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 150
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 2080,
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
	{ itemName = "infinite energy sword", clientId = 40315, sell = 3501000},
	{ itemName = "north wind sword", clientId = 40316, sell = 3316500},
	{ itemName = "sword of the eternal glacier", clientId = 40317, sell = 3490500},
	{ itemName = "bleeding sword", clientId = 40318, sell = 2425200},
	{ itemName = "plague helmet", clientId = 40544, sell = 3215800},
	{ itemName = "plague robe", clientId = 40545, sell = 3564400},
	{ itemName = "plague legs", clientId = 40546, sell = 2767800},
	{ itemName = "plague boots", clientId = 40547, sell = 3204600},
	{ itemName = "plague shield", clientId = 40548, sell = 2511600},
	{ itemName = "plague sword", clientId = 40549, sell = 3298400},
	{ itemName = "plague axe", clientId = 40550, sell = 3266200},
	{ itemName = "plague club", clientId = 40551, sell = 3252200},
	{ itemName = "plague flame wand", clientId = 40552, sell = 1846600},
	{ itemName = "skull plague rod", clientId = 40553, sell = 1521800},
	{ itemName = "plague bow", clientId = 40554, sell = 2683800},
	{ itemName = "samurai sword", clientId = 40591, sell = 2763600},
	{ itemName = "samurai helmet", clientId = 40592, sell = 2720400},
	{ itemName = "samurai armor", clientId = 40593, sell = 3354000},
	{ itemName = "samurai legs", clientId = 40594, sell = 2377200},
	{ itemName = "samurai boots", clientId = 40595, sell = 2439600},
	{ itemName = "samurai twinaxe", clientId = 40596, sell = 2840400},
	{ itemName = "samurai dager", clientId = 40597, sell = 2468400},
	{ itemName = "nightmare helmet", clientId = 40666, sell = 2522400},
	{ itemName = "nightmare armor", clientId = 40667, sell = 3133200},
	{ itemName = "the nightmare shield", clientId = 40668, sell = 1902000},
	{ itemName = "nightmare legs", clientId = 40669, sell = 2364000},
	{ itemName = "nightmare sword", clientId = 40670, sell = 2887200},
	{ itemName = "nightmare wand", clientId = 40671, sell = 1335600},
	{ itemName = "nightmare club", clientId = 40672, sell = 2458800},
	{ itemName = "nightmare axe", clientId = 40673, sell = 2911200},
	{ itemName = "nightmare bow", clientId = 40674, sell = 2460000},
	{ itemName = "nightmare boots", clientId = 40675, sell = 2697600},
	{ itemName = "corrupted watcher helmet", clientId = 40682, sell = 2596800},
	{ itemName = "corrupted watcher armor", clientId = 40683, sell = 3530400},
	{ itemName = "corrupted watcher shield", clientId = 40684, sell = 2328000},
	{ itemName = "corrupted watcher legs", clientId = 40685, sell = 2688000},
	{ itemName = "corrupted watcher sword", clientId = 40686, sell = 2872800},
	{ itemName = "corrupted watcher club", clientId = 40687, sell = 2802000},
	{ itemName = "corrupted watcher axe", clientId = 40688, sell = 2403600},
	{ itemName = "corrupted watcher bow", clientId = 40689, sell = 2472000},
	{ itemName = "corrupted watcher long bow", clientId = 40690, sell = 2277600},
	{ itemName = "corrupted watcher boots", clientId = 40691, sell = 2234400},
	{ itemName = "pit demon quiver", clientId = 40699, sell = 1076400},
	{ itemName = "pit demon helmet", clientId = 40700, sell = 2965300},
	{ itemName = "pit demon armor", clientId = 40701, sell = 3567200},
	{ itemName = "pit demon shield", clientId = 40702, sell = 2327000},
	{ itemName = "pit demon legs", clientId = 40703, sell = 2966600},
	{ itemName = "pit demon bow", clientId = 40704, sell = 2557100},
	{ itemName = "pit demon boots", clientId = 40705, sell = 2964000},
	{ itemName = "corrupted demon quiver", clientId = 40754, sell = 1003800},
	{ itemName = "corrupted demon helmet", clientId = 40755, sell = 2744000},
	{ itemName = "corrupted demon armor", clientId = 40756, sell = 3682000},
	{ itemName = "corrupted demon shield", clientId = 40757, sell = 2662800},
	{ itemName = "corrupted demon legs", clientId = 40758, sell = 3208800},
	{ itemName = "corrupted demon club", clientId = 40759, sell = 2842000},
	{ itemName = "corrupted demon axe", clientId = 40760, sell = 3175200},
	{ itemName = "corrupted demon bow", clientId = 40761, sell = 2791600},
	{ itemName = "Anubis helmet", clientId = 40762, sell = 2512800},
	{ itemName = "Anubis armor", clientId = 40763, sell = 3130800},
	{ itemName = "Anubis shield", clientId = 40764, sell = 1880400},
	{ itemName = "Anubis legs", clientId = 40765, sell = 2509200},
	{ itemName = "Anubis sword", clientId = 40766, sell = 2851200},
	{ itemName = "Anubis club", clientId = 40767, sell = 2420400},
	{ itemName = "Anubis axe", clientId = 40768, sell = 2758800},
	{ itemName = "Anubis wand", clientId = 40769, sell = 1423200},
	{ itemName = "Anubis long bow", clientId = 40770, sell = 2166000},
	{ itemName = "Anubis bow", clientId = 40771, sell = 2420400},
	{ itemName = "Anubis boots", clientId = 40772, sell = 2697600},
	{ itemName = "helmet of eternal flames", clientId = 40805, sell = 2949700},
	{ itemName = "armor of eternal flames", clientId = 40806, sell = 3866200},
	{ itemName = "shield of eternal flames", clientId = 40807, sell = 2044900},
	{ itemName = "shield of fire ice", clientId = 40808, sell = 2381600},
	{ itemName = "legs of eternal flames", clientId = 40809, sell = 2614300},
	{ itemName = "sword of eternal flames", clientId = 40810, sell = 2888600},
	{ itemName = "hammer of eternal flames", clientId = 40811, sell = 3134300},
	{ itemName = "club of eternal flames", clientId = 40812, sell = 2698800},
	{ itemName = "axe of eternal flames", clientId = 40813, sell = 2704000},
	{ itemName = "chopper of eternal flames", clientId = 40814, sell = 3092700},
	{ itemName = "bow of eternal flames", clientId = 40815, sell = 2515500},
	{ itemName = "wand of eternal winter", clientId = 40816, sell = 1501500},
	{ itemName = "helmet of eternal winter", clientId = 40817, sell = 2379000},
	{ itemName = "armor of eternal winter", clientId = 40818, sell = 3555500},
	{ itemName = "shield of eternal winter", clientId = 40819, sell = 2015000},
	{ itemName = "legs of eternal winter", clientId = 40820, sell = 2419300},
	{ itemName = "blade of eternal winter", clientId = 40821, sell = 2928900},
	{ itemName = "sword of eternal winter", clientId = 40822, sell = 2640300},
	{ itemName = "club of eternal winter", clientId = 40823, sell = 3233100},
	{ itemName = "axe of eternal winter", clientId = 40824, sell = 3030300},
	{ itemName = "rod of eternal winter", clientId = 40825, sell = 1905800},
	{ itemName = "shot bow of eternal winter", clientId = 40826, sell = 2624700},
	{ itemName = "bow of eternal winter", clientId = 40827, sell = 2713100},
	{ itemName = "centurion helmet", clientId = 40828, sell = 2332800},
	{ itemName = "centurion armor", clientId = 40829, sell = 3218400},
	{ itemName = "centurion shield", clientId = 40830, sell = 1856400},
	{ itemName = "centurion sword", clientId = 40831, sell = 2607600},
	{ itemName = "centurion hammer", clientId = 40832, sell = 2512800},
	{ itemName = "centurion club", clientId = 40833, sell = 2924400},
	{ itemName = "centurion axe", clientId = 40834, sell = 2449200},
	{ itemName = "drake wand", clientId = 40868, sell = 1233100},
	{ itemName = "drake helmet", clientId = 40869, sell = 2262700},
	{ itemName = "drake armor", clientId = 40870, sell = 3108600},
	{ itemName = "drake shield", clientId = 40871, sell = 1800700},
	{ itemName = "drake legs", clientId = 40872, sell = 2203300},
	{ itemName = "drake club", clientId = 40873, sell = 2394700},
	{ itemName = "drake axe", clientId = 40874, sell = 2646600},
	{ itemName = "drake rod", clientId = 40875, sell = 1549900},
	{ itemName = "ancestral rubi helmet", clientId = 40889, sell = 3381000},
	{ itemName = "ancestral rubi armor", clientId = 40890, sell = 4236000},
	{ itemName = "ancestral rubi shield", clientId = 40891, sell = 2977500},
	{ itemName = "ancestral rubi sword", clientId = 40892, sell = 3144000},
	{ itemName = "ancestral rubi axe", clientId = 40893, sell = 3358500},
	{ itemName = "ancestral rubi chopper", clientId = 40894, sell = 3162000},
	{ itemName = "ancestral rubi twin-axe", clientId = 40895, sell = 3313500},
	{ itemName = "ancestral rubi wand", clientId = 40896, sell = 2235000},
	{ itemName = "ancestral esmeralda spelbook", clientId = 40897, sell = 2725500},
	{ itemName = "ancestral esmeralda sword", clientId = 40898, sell = 3712500},
	{ itemName = "ancestral esmeralda gun", clientId = 40899, sell = 3165000},
	{ itemName = "ancestral esmeralda quiver", clientId = 40900, sell = 822000},
	{ itemName = "ancestral esmeralda bow", clientId = 40901, sell = 2923500},
	{ itemName = "ancestral esmeralda crossbow", clientId = 40902, sell = 3405000},
	{ itemName = "ancestral esmeralda helmet", clientId = 40903, sell = 3244500},
	{ itemName = "ancestral esmeralda armor", clientId = 40904, sell = 4122000},
	{ itemName = "ancestral esmeralda shield", clientId = 40905, sell = 2706000},
	{ itemName = "ancestral esmeralda axe", clientId = 40906, sell = 3676500},
	{ itemName = "Dark warrior helmet", clientId = 40960, sell = 3000200},
	{ itemName = "Dark warrior armor", clientId = 40961, sell = 4051600},
	{ itemName = "Dark warrior legs", clientId = 40962, sell = 2896600},
	{ itemName = "Dark warrior boots", clientId = 40963, sell = 2661400},
	{ itemName = "Dark warrior axe", clientId = 40964, sell = 3304000},
	{ itemName = "Dark warrior chopper", clientId = 40965, sell = 2844800},
	{ itemName = "glaciar armor", clientId = 40985, sell = 2785200},
	{ itemName = "glaciar legs", clientId = 40986, sell = 2310000},
	{ itemName = "glaciar boots", clientId = 40987, sell = 2348500},
	{ itemName = "Holy helmet", clientId = 40991, sell = 3375000},
	{ itemName = "Holy armor", clientId = 40992, sell = 4252500},
	{ itemName = "Holy legs", clientId = 40993, sell = 2940000},
	{ itemName = "Holy boots", clientId = 40994, sell = 2866500},
	{ itemName = "heart helmet", clientId = 40995, sell = 3255000},
	{ itemName = "heart legs", clientId = 40996, sell = 2988000},
	{ itemName = "heart boots", clientId = 40997, sell = 3381000},
	{ itemName = "heart armor", clientId = 40998, sell = 3877500},
	{ itemName = "Blood boots", clientId = 41003, sell = 2458500},
	{ itemName = "Blood legs", clientId = 41004, sell = 2447500},
	{ itemName = "Blood armor", clientId = 41005, sell = 3208700},
	{ itemName = "Blood helmet", clientId = 41006, sell = 2182400},
	{ itemName = "Earth helmet", clientId = 41013, sell = 2339700},
	{ itemName = "Earth armor", clientId = 41014, sell = 2911700},
	{ itemName = "Earth legs", clientId = 41015, sell = 2013000},
	{ itemName = "Earth boots", clientId = 41016, sell = 2415600}
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
		return npcHandler:say("Me Master Karin.", npc, creature)	
	end
	return true
end

npcHandler:setMessage(MESSAGE_FAREWELL, "cya.")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

npcType:register(npcConfig)
