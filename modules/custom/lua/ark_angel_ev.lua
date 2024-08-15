-----------------------------------
-- Trust: aaev
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('ark_angel_ev')


m:addOverride("xi.actions.spells.trust.aaev.onSpellCast", function(caster, target, spell)
    local trust = caster:spawnTrust(spell:getID())

    local aaevLevel = trust:getMainLvl()

    -- Increase HP & MP
    trust:setMod(xi.mod.HP, 9 * aaevLevel)
    trust:setMod(xi.mod.HP, 3 * aaevLevel)
    trust:updateHealth()
    trust:addHP(trust:getMaxHP())
    trust:addHP(trust:getMaxMP())
    
    trust:addSimpleGambit(ai.t.TARGET, ai.c.NOT_STATUS, xi.effect.FLASH, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.FLASH)
    trust:addSimpleGambit(ai.t.SELF, ai.c.NOT_STATUS, xi.effect.RAMPART, ai.r.JA, ai.s.SPECIFIC, xi.ja.RAMPART)
    trust:addSimpleGambit(ai.t.SELF, ai.c.NOT_STATUS, xi.effect.PALISADE, ai.r.JA, ai.s.SPECIFIC, xi.ja.PALISADE)
    trust:addSimpleGambit(ai.t.SELF, ai.c.NOT_HAS_TOP_ENMITY, 0, xi.effect.SENTINEL, ai.r.JA, ai.s.SPECIFIC, xi.ja.SENTINEL)
    trust:addSimpleGambit(ai.t.PARTY, ai.c.HPP_LT, 50, ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.CURE)
    trust:addSimpleGambit(ai.t.SELF, ai.c.NOT_STATUS, xi.effect.PHALANX, ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.PHALANX)
    trust:addSimpleGambit(ai.t.SELF, ai.c.NOT_STATUS, xi.effect.ENLIGHT, ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.ENLIGHT)
    
    trust:setTrustTPSkillSettings(ai.tp.ASAP, ai.s.RANDOM)
    
    local power = trust:getMainLvl() * 1.7
    trust:addMod(xi.mod.MATT, power)
    trust:addMod(xi.mod.MACC, power)
    trust:addMod(xi.mod.DEF, power)
    trust:addMod(xi.mod.MDEF, power)
    trust:addMod(xi.mod.ATT, power)
    trust:addMod(xi.mod.ACC, power * 5)
    trust:addMod(xi.mod.REGEN, 1)
    trust:addMod(xi.mod.ABSORB_DMG_TO_MP, 5)
    trust:addMod(xi.mod.FASTCAST, power / 2)
    trust:addMod(xi.mod.CURE_POTENCY, power)
    trust:addMod(xi.mod.ENMITY, power * 111)
end)

return m
