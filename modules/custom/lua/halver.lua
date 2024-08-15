-----------------------------------
-- Trust: Halver
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('halver')

local trustToReplaceName = 'halver'


m:addOverride(string.format('xi.actions.spells.trust.%s.onMobSpawn', trustToReplaceName), function(mob)
    --[[
        Summon: With your courage and valor, Altana's children will live to see a brighter day.
        Summon (Formerly): Let the Royal Family’s blade be seared forever into their memories!
    ]]
    xi.trust.message(mob, xi.trust.messageOffset.SPAWN)

    local defBonus = mob:getMainLvl() * 1.1
    mob:addStatusEffect(xi.effect.MAX_MP_BOOST, 30, 0, 0)
    mob:setMP(mob:getMaxMP())
    mob:addMod(xi.mod.CURE_POTENCY, 50)
	mob:addMod(xi.mod.SPELLINTERRUPT, 35)
	mob:addMod(xi.mod.REFRESH, 2)
	mob:addMod(xi.mod.DEF, defBonus)

    mob:addSimpleGambit(ai.t.SELF, ai.c.NOT_HAS_TOP_ENMITY, 0, ai.r.JA, ai.s.SPECIFIC, xi.ja.PROVOKE)
    mob:addSimpleGambit(ai.t.TARGET, ai.c.NOT_STATUS, xi.effect.FLASH, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.FLASH)
    mob:addSimpleGambit(ai.t.SELF, ai.c.NOT_STATUS, xi.effect.SENTINEL, ai.r.JA, ai.s.SPECIFIC, xi.ja.SENTINEL)
    mob:addSimpleGambit(ai.t.SELF, ai.c.NOT_STATUS, xi.effect.BERSERK, ai.r.JA, ai.s.SPECIFIC, xi.ja.BERSERK)
    mob:addSimpleGambit(ai.t.PARTY, ai.c.HPP_LT, 40, ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.CURE)
    
    -- Special counters
    mob:addSimpleGambit(ai.t.TARGET, ai.c.STATUS, xi.effect.CHAINSPELL, ai.r.JA, ai.s.SPECIFIC, xi.ja.RAMPART)
    mob:addSimpleGambit(ai.t.TARGET, ai.c.STATUS, xi.effect.MANAFONT, ai.r.JA, ai.s.SPECIFIC, xi.ja.RAMPART)
    mob:addSimpleGambit(ai.t.TARGET, ai.c.STATUS, xi.effect.ASTRAL_FLOW, ai.r.JA, ai.s.SPECIFIC, xi.ja.RAMPART)

    -- Enmity control
    mob:addSimpleGambit(ai.t.SELF, ai.c.NOT_HAS_TOP_ENMITY, 0, ai.r.JA, ai.s.SPECIFIC, xi.ja.PROVOKE)
    mob:addSimpleGambit(ai.t.TARGET, ai.c.NOT_STATUS, xi.effect.FLASH, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.FLASH)

    -- Healing / Sleep counter
    mob:addSimpleGambit(ai.t.PARTY, ai.c.STATUS, xi.effect.SLEEP_I, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.CURE)         -- wakes up sleepers
    mob:addSimpleGambit(ai.t.PARTY, ai.c.STATUS, xi.effect.SLEEP_II, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.CURE)        -- wakes up sleepers
    
    mob:setTrustTPSkillSettings(ai.tp.OPENER, ai.s.RANDOM)
end)

return m
