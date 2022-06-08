local effect = CONST_ME_MAGIC_GREEN
local stamina = 2 * 60 * 60 * 1000   -- 2 horas

local staminaPot = Action()

function staminaPot.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	
	player:setStamina(player:getStamina() + stamina)
	player:getPosition():sendMagicEffect(effect)	
	item:remove(1)
	
	return true
end


staminaPot:id(40304)
staminaPot:register()
