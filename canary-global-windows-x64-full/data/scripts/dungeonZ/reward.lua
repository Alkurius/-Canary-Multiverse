local rewardA =  64208 
local rewardB =  64209 
local rewardC =  64210 
local cantidad = 1
local dificultad = 0
local storageT =  64206 

local chestRewardA = Action()
function chestRewardA.onUse(player, item, fromPosition, target, toPosition, isHotkey)

	if Game.getStorageValue(storageT) <= os.time() then
		return player:sendCancelMessage("This chest is empty. (<15min dungeon)")
	end
	
	if player:getStorageValue(rewardA) >= os.time() then
		return player:sendCancelMessage("Only reward each 20h.")
	end
	
	dificultad = Game.getStorageValue(64207)
	if dificultad == 1 then cantidad = 1 end
	if dificultad == 2 then cantidad = 3 end
	if dificultad == 3 then cantidad = 5 end
	if dificultad == 4 then cantidad = 10 end
	
	
	player:addItem(22721, cantidad)
	player:setStorageValue(rewardA, os.time() + 20 * 3600)
	return player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found "..cantidad.. " gold token.")
end

chestRewardA:uid(64211)
chestRewardA:register()



local chestRewardB = Action()
function chestRewardB.onUse(player, item, fromPosition, target, toPosition, isHotkey)

	if Game.getStorageValue(storageT) <= os.time() then		
		return player:sendCancelMessage("This chest is empty. (<15min dungeon)")
	end
	
	if player:getStorageValue(rewardB) >= os.time() then
		return player:sendCancelMessage("Only reward each 20h.")
	end
	
	dificultad = Game.getStorageValue(64207)
	if dificultad == 1 then cantidad = 1 end
	if dificultad == 2 then cantidad = 3 end
	if dificultad == 3 then cantidad = 5 end
	if dificultad == 4 then cantidad = 10 end
	
	
	player:addItem(22721, cantidad)
	player:setStorageValue(rewardB, os.time() + 20 * 3600)
	return player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found "..cantidad.. " gold token.")
end

chestRewardB:uid(64212)
chestRewardB:register()



local chestRewardC = Action()
function chestRewardC.onUse(player, item, fromPosition, target, toPosition, isHotkey)

	if Game.getStorageValue(storageT) <= os.time() then
		return player:sendCancelMessage("This chest is empty. (<15min dungeon)")
	end
	
	if player:getStorageValue(rewardC) >= os.time() then
		return player:sendCancelMessage("Only reward each 20h.")
	end
	
	dificultad = Game.getStorageValue(64207)
	if dificultad == 1 then cantidad = 2 end
	if dificultad == 2 then cantidad = 6 end
	if dificultad == 3 then cantidad = 10 end
	if dificultad == 4 then cantidad = 20 end
	
	
	player:addItem(22721, cantidad)
	player:setStorageValue(rewardC, os.time() + 20 * 3600)
	return player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found "..cantidad.. " gold token.")
end

chestRewardC:uid(64213)
chestRewardC:register()