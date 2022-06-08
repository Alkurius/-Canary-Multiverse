local internalNpcName = "Iskan"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 143,
	lookHead = 38,
	lookBody = 116,
	lookLegs = 38,
	lookFeet = 19,
	lookAddons = 0
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

local function creatureSayCallback(npc, creature, type, message)
	local player = Player(creature)
	local playerId = player:getId()

	if not npcHandler:checkInteraction(npc, creature) then
		return false
	end

	if MsgContains(message, "do for you") then
			npcHandler:say("I run the dog sled service from this city to {Nibelor}.", npc, creature)
	elseif MsgContains(message, "Nibelor") or MsgContains(message, "passage") then
			npcHandler:say("Do you want to Nibelor?", npc, creature)
			npcHandler:setTopic(playerId, 2)
	elseif MsgContains(message, "mission") then
		if player:getStorageValue(Storage.BarbarianTest.Questline) >= 8 then -- if Barbarian Test absolved
			if player:getStorageValue(Storage.TheIceIslands.Questline) < 1 then
				npcHandler:say({
					"Well, one of the boys has run away. I think he got the scent of some beast. He's young and inexperienced so I can't blame the cub ...",
					"I would like you to see after him. He should be somewhere north west of the town. He is probably marking his territory so you should be able to find his trace. Are you willing to do that?"
				}, npc, creature)
				npcHandler:setTopic(playerId, 1)
			elseif player:getStorageValue(Storage.TheIceIslands.Questline) == 2 then
				npcHandler:say("You are a friend of mine and the boys now. I tell you something. If you ever need to go to the isle of Nibelor, just ask me for a {passage}.", npc, creature)
				player:setStorageValue(Storage.TheIceIslands.Questline, 3)
				player:setStorageValue(Storage.TheIceIslands.Mission01, 3) -- Questlog The Ice Islands Quest, Befriending the Musher
				npcHandler:setTopic(playerId, 0)
			else
			npcHandler:say("I have now no mission for you.", npc, creature)
			npcHandler:setTopic(playerId, 0)
			end
		else
			npcHandler:say("Sorry but I only give missions to those who are considered a true Barbarian. ", npc, creature)
		end
	elseif MsgContains(message, "yes") then
		if npcHandler:getTopic(playerId) == 1 then
			npcHandler:say({
				"That's surprising. Take a piece of meat. If you find the boy, feed it to him. That will give him enough strength and incentive to return to his pack ...",
				"Talk to him by calling his name 'Sniffler' and tell him you got meat for him. After he has eaten the meat, return here to talk to me about your mission."
			}, npc, creature)
			player:setStorageValue(Storage.TheIceIslands.Questline, 1)
			player:setStorageValue(Storage.TheIceIslands.Mission01, 1) -- Questlog The Ice Islands Quest, Befriending the Musher
			npcHandler:setTopic(playerId, 0)
		elseif npcHandler:getTopic(playerId) == 2 then
			--if player:getStorageValue(Storage.TheIceIslands.Questline) >= 3 then
			player:teleportTo(Position(32325, 31049, 7))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			npcHandler:setTopic(playerId, 0)
			--else
			--npcHandler:say("Sorry, first time you have to do a mission for me.", npc, creature)
			--npcHandler:setTopic(playerId, 0)
			--end
		end
	end
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

-- npcType registering the npcConfig table
npcType:register(npcConfig)
