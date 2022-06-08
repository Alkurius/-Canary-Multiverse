local config = {
	heal = true,
	save = true,
	skillMana = true,
	skill = true,
	effect = false
}

MasterVoc = {
	[0] = {Name = 'None',       		factor = 99, 	limit = 10, 	team = '' 			},
	[1] = {Name = 'Sorcerer',   		factor = 2, 	limit = 200, 	team = ''			},
	[2] = {Name = 'Druid',      		factor = 2, 	limit = 200, 	team = ''			},
	[3] = {Name = 'Paladin',    		factor = 3, 	limit = 80, 	team = 'Paladin' 	},
	[4] = {Name = 'Knight',     		factor = 4, 	limit = 45, 	team = 'Knight' 	},
	[5] = {Name = 'Master Sorcerer', 	factor = 2, 	limit = 200, 	team = '' 			},
	[6] = {Name = 'Elder Druid',     	factor = 2, 	limit = 200, 	team = '' 			},
	[7] = {Name = 'Royal Paladin',   	factor = 3, 	limit = 80, 	team = 'Paladin' 	},
	[8] = {Name = 'Elite Knight',    	factor = 4, 	limit = 45, 	team = 'Knight'		}
}


local vocID = 0
local levelA
local manaSpend
local factor

local advanceSave = CreatureEvent("AdvanceSave")
function advanceSave.onAdvance(player, skill, oldLevel, newLevel)
	if skill ~= SKILL_LEVEL or newLevel <= oldLevel then
		return true
	end

	if config.effect then
		player:getPosition():sendMagicEffect(math.random(CONST_ME_FIREWORK_YELLOW, CONST_ME_FIREWORK_BLUE))
		player:say('LEVEL UP!', TALKTYPE_MONSTER_SAY)
	end

	if config.heal then
		player:addHealth(player:getMaxHealth())
	end

	
	if config.skillMana then
		vocID = player:getVocation():getBase():getId()		
		if newLevel > MasterVoc[vocID].limit then
			newLevel = MasterVoc[vocID].limit
		end
		levelA = math.floor(newLevel/MasterVoc[vocID].factor)		
		manaSpend = math.floor((player:getVocation():getRequiredManaSpent(levelA + 2) - player:getVocation():getRequiredManaSpent(levelA))/2)
		player:addManaSpent(manaSpend)
	end
	
	
	if config.skill then
		vocID = player:getVocation():getBase():getId()		
		
		if MasterVoc[vocID].team == "Knight" then			
			if newLevel > 100 then
				newLevel = 100
			end
			factor = 1			
			if newLevel < 20 then factor = 0.5				
			elseif  newLevel < 50 then factor = 0.7
			elseif  newLevel < 80 then factor = 1
			else factor = 2
			end
			
			levelA = math.floor(newLevel/factor)
			player:addSkillTries(SKILL_CLUB, player:getVocation():getRequiredSkillTries(SKILL_CLUB, levelA + 2) - player:getVocation():getRequiredSkillTries(SKILL_CLUB, levelA))
			player:addSkillTries(SKILL_SWORD, player:getVocation():getRequiredSkillTries(SKILL_SWORD, levelA + 2) - player:getVocation():getRequiredSkillTries(SKILL_SWORD, levelA))
			player:addSkillTries(SKILL_AXE, player:getVocation():getRequiredSkillTries(SKILL_AXE, levelA + 2) - player:getVocation():getRequiredSkillTries(SKILL_AXE, levelA))
			player:addSkillTries(SKILL_SHIELD, player:getVocation():getRequiredSkillTries(SKILL_SHIELD, levelA + 2) - player:getVocation():getRequiredSkillTries(SKILL_SHIELD, levelA))
		end
		
		if MasterVoc[vocID].team == "Paladin" then
			if newLevel > 110 then
				newLevel = 110
			end
			
			factor = 1			
			if newLevel < 20 then factor = 0.5				
			elseif  newLevel < 50 then factor = 0.7
			elseif  newLevel < 80 then factor = 1
			else factor = 2
			end
			levelA = math.floor(newLevel/factor)
			player:addSkillTries(SKILL_DISTANCE, player:getVocation():getRequiredSkillTries(SKILL_DISTANCE, levelA + 2) - player:getVocation():getRequiredSkillTries(SKILL_DISTANCE, levelA))			
			if newLevel > 90 then
				newLevel = 90
			end
			factor = 1			
			if newLevel < 20 then factor = 0.5				
			elseif  newLevel < 50 then factor = 0.7
			elseif  newLevel < 80 then factor = 1
			else factor = 2
			end
			levelA = math.floor(newLevel/factor)
			player:addSkillTries(SKILL_SHIELD, player:getVocation():getRequiredSkillTries(SKILL_SHIELD, levelA + 2) - player:getVocation():getRequiredSkillTries(SKILL_SHIELD, levelA))					
		end
		
	end
	
	
	if config.save then
		player:save()
	end
	return true
end
advanceSave:register()