-----------------------------------
-- Trust: ajido-marujido
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('ajido-marujido')

local trustToReplaceName = 'ajido-marujido'


m:addOverride(string.format('xi.actions.spells.trust.%s.onMobSpawn', trustToReplaceName), function(mob)
    --[[
        Summon: With your courage and valor, Altana's children will live to see a brighter day.
        Summon (Formerly): Let the Royal Family’s blade be seared forever into their memories!
    ]]
    xi.trust.message(mob, xi.trust.messageOffset.SPAWN)
    local trustLevel  = mob:getMainLvl()
    local power       = trustLevel / 5
    local spellDamage = trustLevel * math.floor((trustLevel + 1) / 10)

    mob:addStatusEffect(xi.effect.MAX_HP_BOOST, 10, 0, 0)
    mob:addStatusEffect(xi.effect.MAX_MP_BOOST, 100, 0, 0)
    mob:setHP(mob:getMaxHP())
    mob:setMP(mob:getMaxMP())
    mob:addMod(xi.mod.REFRESH, trustLevel / 10)
    mob:addMod(xi.mod.FASTCAST, 50)

    mob:addMod(xi.mod.MATT, power)
    mob:addMod(xi.mod.MACC, power)
    mob:addMod(xi.mod.HASTE_MAGIC, 1000) -- 10% Haste (Magic)
    mob:addMod(xi.mod.MAGIC_DAMAGE, spellDamage)

    mob:addSimpleGambit(ai.t.TARGET, ai.c.NOT_SC_AVAILABLE, 0, ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.NONE, 30)
    mob:addSimpleGambit(ai.t.TARGET, ai.c.NOT_STATUS, xi.effect.BURN, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.BURN)
    mob:addSimpleGambit(ai.t.TARGET, ai.c.NOT_STATUS, xi.effect.CHOKE, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.CHOKE)
    mob:addSimpleGambit(ai.t.TARGET, ai.c.NOT_STATUS, xi.effect.SHOCK, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.SHOCK)
    mob:addSimpleGambit(ai.t.SELF, ai.c.HAS_TOP_ENMITY, 0, ai.r.JA, ai.s.SPECIFIC, xi.ja.ENMITY_DOUSE)
    mob:addSimpleGambit(ai.t.SELF, ai.c.MPP_LT, 25, ai.r.JA, ai.s.SPECIFIC, xi.ja.MANAFONT)
    mob:setMobMod(xi.mobMod.TRUST_DISTANCE, xi.trust.movementType.LONG_RANGE)

    mob:addListener('COMBAT_TICK', 'AJIDO_CTICK', function(mobArg)
        local master = mobArg:getMaster()
        local party  = master:getPartyWithTrusts()
        local mLvl   = mobArg:getMainLvl()
        local cure   = 1

        if mLvl >= 17 and mLvl <= 29 then
            cure = 2
        elseif mLvl >= 30 and mLvl <= 54 then
            cure = 3
        elseif mLvl >= 55 then
            cure = 4
        end

        for i, v in ipairs(party) do
            if v:getHPP() <= 25 then
                mobArg:castSpell(cure, v)
            end
        end

        if mobArg:getMPP() <= 25 then
            mobArg:castSpell(247, target)
        end

        if mobArg:getMPP() <= 30 then
            mobArg:castSpell(248, target)
        end

        if mobArg:getHPP() <= 30 then
            mobArg:castSpell(245, target)
        end
    end)
end)

return m 