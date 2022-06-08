local internalNpcName = "Bulma"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 150
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 1596,
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
	{ itemName = "leopard helmet", clientId = 40533, sell = 224700},
	{ itemName = "strong leopard armor", clientId = 40534, sell = 299900},
	{ itemName = "leopard legs", clientId = 40535, sell = 208100},
	{ itemName = "leopard boots", clientId = 40536, sell = 217100},
	{ itemName = "leopard shield", clientId = 40537, sell = 177500},
	{ itemName = "leopard axe", clientId = 40538, sell = 214200},
	{ itemName = "titanium helmet", clientId = 40539, sell = 228000},
	{ itemName = "titanium armor", clientId = 40540, sell = 291100},
	{ itemName = "titanium legs", clientId = 40541, sell = 190900},
	{ itemName = "titanium boots", clientId = 40542, sell = 189100},
	{ itemName = "titanium axe", clientId = 40543, sell = 234400},
	{ itemName = "infernalist boots", clientId = 40611, sell = 722400},
	{ itemName = "infernalist legs", clientId = 40612, sell = 805200},
	{ itemName = "infernalist armor", clientId = 40613, sell = 1088000},
	{ itemName = "infernalist wand", clientId = 40614, sell = 439200},
	{ itemName = "infernalist helmet", clientId = 40615, sell = 821200},
	{ itemName = "infernalist rod", clientId = 40616, sell = 460800},
	{ itemName = "evil armor", clientId = 40617, sell = 773700},
	{ itemName = "evil legs", clientId = 40618, sell = 576900},
	{ itemName = "evil boots", clientId = 40619, sell = 645000},
	{ itemName = "evil spellbok", clientId = 40620, sell = 461700},
	{ itemName = "evil club", clientId = 40621, sell = 663300},
	{ itemName = "evil helmet", clientId = 40622, sell = 627900},
	{ itemName = "evil shield", clientId = 40623, sell = 463800},
	{ itemName = "heaven boots", clientId = 40624, sell = 906000},
	{ itemName = "heaven legs", clientId = 40625, sell = 1128500},
	{ itemName = "heaven shield", clientId = 40626, sell = 889500},
	{ itemName = "heaven armor", clientId = 40627, sell = 1479500},
	{ itemName = "heaven helmet", clientId = 40628, sell = 943500},
	{ itemName = "heaven sword", clientId = 40629, sell = 1090500},
	{ itemName = "ogre crossbow", clientId = 40643, sell = 546600},
	{ itemName = "ogre helmet", clientId = 40644, sell = 655200},
	{ itemName = "ogre armor", clientId = 40645, sell = 815700},
	{ itemName = "ogre shield", clientId = 40646, sell = 578100},
	{ itemName = "ogre legs", clientId = 40647, sell = 600600},
	{ itemName = "ogre axe", clientId = 40648, sell = 629700},
	{ itemName = "ogre boots", clientId = 40649, sell = 592200},
	{ itemName = "cyclops helmet", clientId = 40650, sell = 567900},
	{ itemName = "cyclops mask", clientId = 40651, sell = 573000},
	{ itemName = "cyclops armor", clientId = 40652, sell = 895500},
	{ itemName = "cyclops runic shield", clientId = 40653, sell = 521400},
	{ itemName = "cyclops face shield", clientId = 40654, sell = 542100},
	{ itemName = "cyclops legs", clientId = 40655, sell = 682500},
	{ itemName = "cyclops sword", clientId = 40656, sell = 669600},
	{ itemName = "cyclops club", clientId = 40657, sell = 706800},
	{ itemName = "cyclops boots", clientId = 40658, sell = 677700},
	{ itemName = "warlock helmet", clientId = 40676, sell = 820800},
	{ itemName = "warlock armor", clientId = 40677, sell = 1121200},
	{ itemName = "warlock legs", clientId = 40678, sell = 896800},
	{ itemName = "warlock boots", clientId = 40679, sell = 862000},
	{ itemName = "warlock shield", clientId = 40680, sell = 623200},
	{ itemName = "warlock wand", clientId = 40681, sell = 586800},
	{ itemName = "mythical crown helmet", clientId = 40782, sell = 380200},
	{ itemName = "mythical crown armor", clientId = 40783, sell = 517600},
	{ itemName = "mythical crown shield", clientId = 40784, sell = 317800},
	{ itemName = "mythical crown legs", clientId = 40785, sell = 439400},
	{ itemName = "mythical crown club", clientId = 40786, sell = 406600},
	{ itemName = "mythical crown boots", clientId = 40787, sell = 422000},
	{ itemName = "cursed helmet", clientId = 40788, sell = 1026000},
	{ itemName = "cursed armor", clientId = 40789, sell = 1479500},
	{ itemName = "cursed shield", clientId = 40790, sell = 883500},
	{ itemName = "cursed axe", clientId = 40791, sell = 1200500},
	{ itemName = "black spirit helmet", clientId = 40792, sell = 828400},
	{ itemName = "black spirit armor", clientId = 40793, sell = 1002800},
	{ itemName = "black spirit legs", clientId = 40794, sell = 822000},
	{ itemName = "black spirit rod", clientId = 40795, sell = 594400},
	{ itemName = "dragon warrior helmet", clientId = 40843, sell = 184900},
	{ itemName = "dragon warrior armor", clientId = 40844, sell = 269900},
	{ itemName = "dragon warrior legs", clientId = 40845, sell = 185000},
	{ itemName = "great dragon warrior axe", clientId = 40846, sell = 245100},
	{ itemName = "dragon warrior chopper", clientId = 40847, sell = 245900},
	{ itemName = "platinum thief chopper", clientId = 40848, sell = 235900},
	{ itemName = "platinum thief helmet", clientId = 40849, sell = 199100},
	{ itemName = "platinum thief armor", clientId = 40850, sell = 256600},
	{ itemName = "platinum thief legs", clientId = 40851, sell = 180600},
	{ itemName = "platinum thief boots", clientId = 40852, sell = 204000},
	{ itemName = "platinum thief sword", clientId = 40853, sell = 208900},
	{ itemName = "platinum thief axe", clientId = 40854, sell = 214100},
	{ itemName = "royal dwarf helmet", clientId = 40855, sell = 449200},
	{ itemName = "royal dwarf armor", clientId = 40856, sell = 587000},
	{ itemName = "royal dwarf shield", clientId = 40857, sell = 326000},
	{ itemName = "royal dwarf sword", clientId = 40858, sell = 474200},
	{ itemName = "royal dwarf club", clientId = 40859, sell = 462800},
	{ itemName = "royal dwarf axe", clientId = 40860, sell = 425600},
	{ itemName = "black wizard helmet", clientId = 40882, sell = 459600},
	{ itemName = "black wizard armor", clientId = 40883, sell = 568200},
	{ itemName = "black wizard shield", clientId = 40884, sell = 380400},
	{ itemName = "black wizard club", clientId = 40885, sell = 446400},
	{ itemName = "black wizard axe", clientId = 40886, sell = 414400},
	{ itemName = "black wizard rod", clientId = 40887, sell = 267600},
	{ itemName = "black wizard bow", clientId = 40888, sell = 425800},
	{ itemName = "dwarf volcano helmet", clientId = 40907, sell = 811200},
	{ itemName = "dwarf volcano armor", clientId = 40908, sell = 1098000},
	{ itemName = "dwarf volcano legs", clientId = 40909, sell = 860000},
	{ itemName = "dwarf volcano wand", clientId = 40910, sell = 560000},
	{ itemName = "dwarf volcano bow", clientId = 40911, sell = 911600},
	{ itemName = "dwarf volcano crossbow", clientId = 40912, sell = 749200},
	{ itemName = "minotaur helmet", clientId = 40933, sell = 186400},
	{ itemName = "minotaur armor", clientId = 40934, sell = 295200},
	{ itemName = "minotaur sword", clientId = 40935, sell = 226100},
	{ itemName = "minotaur club", clientId = 40936, sell = 234700},
	{ itemName = "minotaur chopper", clientId = 40937, sell = 219100},
	{ itemName = "minotaur axe", clientId = 40938, sell = 216300},
	{ itemName = "helmet of mythical justice", clientId = 40946, sell = 666900},
	{ itemName = "armor of mythical justice", clientId = 40947, sell = 798900},
	{ itemName = "shield of mythical justice", clientId = 40948, sell = 559200},
	{ itemName = "sword of mythical justice", clientId = 40949, sell = 686700},
	{ itemName = "club of mythical justice", clientId = 40950, sell = 673500},
	{ itemName = "axe of mythical justice", clientId = 40951, sell = 604800},
	{ itemName = "acuatic helmet", clientId = 40978, sell = 938000},
	{ itemName = "acuatic armor", clientId = 40979, sell = 1419500},
	{ itemName = "acuatic legs", clientId = 40980, sell = 973500},
	{ itemName = "acuatic boots", clientId = 40981, sell = 1139000},
	{ itemName = "imperfect emerald", clientId = 40014, sell = 10000},
	{ itemName = "semi-perfect emerald", clientId = 40015, sell = 20000},
	{ itemName = "complete emerald", clientId = 40016, sell = 40000},
	{ itemName = "perfect emerald", clientId = 40017, sell = 80000},
	{ itemName = "imperfect ruby", clientId = 40018, sell = 10000},
	{ itemName = "semi-perfect ruby", clientId = 40019, sell = 20000},
	{ itemName = "complete ruby", clientId = 40020, sell = 40000},
	{ itemName = "perfect ruby", clientId = 40021, sell = 80000},
	{ itemName = "imperfect amethyst", clientId = 40022, sell = 10000},
	{ itemName = "semi-perfect amethyst", clientId = 40023, sell = 20000},
	{ itemName = "complete amethyst", clientId = 40024, sell = 40000},
	{ itemName = "perfect amethyst", clientId = 40025, sell = 80000},
	{ itemName = "imperfect topaz", clientId = 40026, sell = 10000},
	{ itemName = "semi-perfect topaz", clientId = 40027, sell = 20000},
	{ itemName = "complete topaz", clientId = 40028, sell = 40000},
	{ itemName = "perfect topaz", clientId = 40029, sell = 80000},
	{ itemName = "perfect diamond", clientId = 40030, sell = 80000},
	{ itemName = "semi-perfect diamond", clientId = 40031, sell = 20000},
	{ itemName = "perfect opalo", clientId = 40032, sell = 80000},
	{ itemName = "semi-perfect opalo", clientId = 40033, sell = 20000},
	{ itemName = "semi-perfect sapphire", clientId = 40034, sell = 20000},
	{ itemName = "perfect sapphire", clientId = 40035, sell = 80000},
	{ itemName = "crystal emerald", clientId = 40036, sell = 50000},
	{ itemName = "crystal sapphire", clientId = 40037, sell = 50000},
	{ itemName = "crystal ruby", clientId = 40038, sell = 50000},
	{ itemName = "great emerald", clientId = 40039, sell = 30000},
	{ itemName = "great sapphire", clientId = 40040, sell = 30000},
	{ itemName = "great ruby", clientId = 40041, sell = 30000},
	{ itemName = "fine ruby", clientId = 40042, sell = 25000}
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
		return npcHandler:say("Me Bulma.", npc, creature)	
	end
	return true
end

npcHandler:setMessage(MESSAGE_FAREWELL, "cya.")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

npcType:register(npcConfig)
