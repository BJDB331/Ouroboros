-----------------------------------
-- Trust: Adelheid
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('adelheid')

local trustToReplaceName = 'adelheid'


m:addOverride(string.format('xi.actions.spells.trust.%s.onMobSpawn', trustToReplaceName), function(mob)
    --[[
        Summon: With your courage and valor, Altana's children will live to see a brighter day.
        Summon (Formerly): Let the Royal Family’s blade be seared forever into their memories!
    ]]
    xi.trust.message(mob, xi.trust.messageOffset.SPAWN)
    local sublimationBonus = mob:getMainLvl() / 11

    mob:addMod(xi.mod.SUBLIMATION_BONUS, sublimationBonus)
    mob:addMod(xi.mod.ENH_MAGIC_DURATION, 50)
    mob:addMod(xi.mod.HELIX_DURATION, mob:getMainLvl())

    mob:addSimpleGambit(ai.t.SELF, ai.c.NOT_STATUS, xi.effect.ADDENDUM_BLACK, ai.r.JA, ai.s.SPECIFIC, xi.ja.DARK_ARTS)
    mob:addSimpleGambit(ai.t.SELF, ai.c.NOT_STATUS, xi.effect.ADDENDUM_BLACK, ai.r.JA, ai.s.SPECIFIC, xi.ja.ADDENDUM_BLACK)

    mob:addSimpleGambit(ai.t.TARGET, ai.c.READYING_WS, 0, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.STUN)
    mob:addSimpleGambit(ai.t.TARGET, ai.c.READYING_MS, 0, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.STUN)
    mob:addSimpleGambit(ai.t.TARGET, ai.c.READYING_JA, 0, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.STUN)
    mob:addSimpleGambit(ai.t.TARGET, ai.c.CASTING_MA, 0, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.STUN)

    mob:addSimpleGambit(ai.t.SELF, ai.c.NO_STORM, 0, ai.r.MA, ai.s.STORM_DAY, 0, 0)

    mob:addSimpleGambit(ai.t.TARGET, ai.c.NOT_STATUS, xi.effect.HELIX, ai.r.MA, ai.s.HELIX_DAY, 0, 0)

    mob:addSimpleGambit(ai.t.TANK, ai.c.HPP_LT, 50, ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.CURE)
    mob:addSimpleGambit(ai.t.PARTY, ai.c.HPP_LT, 33, ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.CURE)

    mob:addSimpleGambit(ai.t.TARGET, ai.c.NOT_SC_AVAILABLE, 0, ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.NONE, 30)

    mob:addListener('WEAPONSKILL_USE', 'ADELHEID_WEAPONSKILL_USE', function(mobArg, target, wsid, tp, action)
        if wsid == 3469 then -- Twirling Dervish
        -- You may want to cover your ears!
            if math.random(1, 100) <= 33 then
                xi.trust.message(mobArg, xi.trust.messageOffset.SPECIAL_MOVE_1)
            end
        end
    end)

    mob:addListener('COMBAT_TICK', 'ADELHEID_CTICK', function(mobArg)
        if
            mobArg:getHPP() > 50 and
            mobArg:getMPP() < 100 and
            not mobArg:hasStatusEffect(xi.effect.SUBLIMATION_ACTIVATED) and
            not mobArg:hasStatusEffect(xi.effect.SUBLIMATION_COMPLETE)
        then
            mobArg:useJobAbility(233, mobArg)
        end

        if
            mobArg:getMPP() < 25 and
            mobArg:hasStatusEffect(xi.effect.SUBLIMATION_COMPLETE)
        then
            mobArg:useJobAbility(233, mobArg)
        end

        if
            not mobArg:hasStatusEffect(xi.effect.REGEN) and
            mobArg:getHPP() <= 75
        then
            local regen = xi.magic.spell.REGEN_V

            if mobArg:getMainLvl() < 99 then
                regen = xi.magic.spell.REGEN_IV
            elseif mobArg:getMainLvl() < 79 then
                regen = xi.magic.spell.REGEN_III
            elseif mobArg:getMainLvl() < 59 then
                regen = xi.magic.spell.REGEN_II
            elseif mobArg:getMainLvl() < 37 then
                regen = xi.magic.spell.REGEN
            end

            mobArg:castSpell(regen, mobArg)
        end
    end)
end)

return m