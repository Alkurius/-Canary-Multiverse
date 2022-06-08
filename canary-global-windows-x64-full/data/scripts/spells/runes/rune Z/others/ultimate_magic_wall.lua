local combat = Combat()
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)

function onCreateMagicWall(creature, tile)
	local item = Game.createItem(Game.getWorldType() == WORLD_TYPE_NO_PVP and ITEM_MAGICWALL_SAFE or ITEM_MAGICWALL, 1, tile)
	item:setAttribute(ITEM_ATTRIBUTE_DURATION, math.random(24000, 30000))
end

combat:setCallback(CALLBACK_PARAM_TARGETTILE, "onCreateMagicWall")

local spell = Spell("rune")
function spell.onCastSpell(creature, variant, isHotkey)
    return combat:execute(creature, variant)
end


spell:name("ultimate magic wall rune")
spell:group("attack")
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:level(100)
spell:magicLevel(10)
spell:runeId(40322)
spell:charges(3)
spell:isBlocking(true, true)
spell:allowFarUse(true)
spell:register()
