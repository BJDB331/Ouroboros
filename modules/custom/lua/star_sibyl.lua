-----------------------------------
-- Trust: Adelheid
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('star_sibyl')

local trustToReplaceName = 'star_sibyl'


m:addOverride(string.format('xi.actions.spells.trust.%s.onMobSpawn', trustToReplaceName), function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.SPAWN)
    local mlvl = mob:getMainLvl()
    local boost_Amount
    local tick_amount
    if mlvl == 99 then
        tick_amount = 19
        boost_Amount = 19
    elseif mlvl < 99 then
        tick_amount = 13
        boost_Amount = 13
    elseif mlvl <= 87 then
        tick_amount = 11
        boost_Amount = 11
    elseif mlvl <= 73 then
        tick_amount = 9
        boost_Amount = 9
    elseif mlvl <= 51 then
        tick_amount = 5
        boost_Amount = 5
    else
        tick_amount = 1
        boost_Amount = 1
    end

    mob:addStatusEffectEx(xi.effect.COLURE_ACTIVE, xi.effect.COLURE_ACTIVE, 6, 3, 0, xi.effect.GEO_MAGIC_ATK_BOOST, tick_amount, xi.auraTarget.ALLIES, xi.effectFlag.AURA)
    mob:addStatusEffectEx(xi.effect.GEO_MAGIC_ACC_BOOST, xi.effect.GEO_MAGIC_ACC_BOOST, 6, 3, 0, xi.effect.GEO_MAGIC_ACC_BOOST, boostAmount, xi.auraTarget.ALLIES, xi.effectFlag.AURA)
    
end)

return m