-----------------------------------
-- Trust: Nanaa Mihgo
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('nanaa_mihgo')

local trustToReplaceName = 'nanaa_mihgo'


m:addOverride(string.format('xi.actions.spells.trust.%s.onMobSpawn', trustToReplaceName), function(mob)
    --[[
        Summon: With your courage and valor, Altana's children will live to see a brighter day.
        Summon (Formerly): Let the Royal Family’s blade be seared forever into their memories!
    ]]
    xi.trust.message(mob, xi.trust.messageOffset.SPAWN)

    mob:addSimpleGambit(ai.t.TARGET, ai.c.NOT_STATUS, xi.effect.DOUBT, ai.r.JA, ai.s.SPECIFIC, xi.ja.BULLY)
    mob:addSimpleGambit(ai.t.TARGET, ai.c.STATUS, xi.effect.DOUBT, ai.r.JA, ai.s.SPECIFIC, xi.ja.SNEAK_ATTACK)
    mob:addSimpleGambit(ai.t.SELF, ai.c.TP_LT, 1000, ai.r.JA, ai.s.SPECIFIC, xi.ja.ASSASSINS_CHARGE)
    mob:addSimpleGambit(ai.t.SELF, ai.c.STATUS, xi.effect.HIDE, ai.r.JA, ai.s.SPECIFIC, xi.ja.SNEAK_ATTACK)
    mob:addSimpleGambit(ai.t.TARGET, ai.c.STATUS_FLAG, xi.effectFlag.DISPELABLE, ai.r.JA, ai.s.SPECIFIC, xi.ja.LARCENY)
    mob:addSimpleGambit(ai.t.TARGET, ai.c.STATUS_FLAG, xi.effectFlag.DISPELABLE, ai.r.JA, ai.s.SPECIFIC, xi.ja.DESPOIL)
    mob:addSimpleGambit(ai.t.SELF, ai.c.ALWAYS, 0, ai.r.JA, ai.s.SPECIFIC, xi.ja.FEINT)
    mob:addSimpleGambit(ai.t.MASTER, ai.c.HAS_TOP_ENMITY, 0, ai.r.JA, ai.s.SPECIFIC, xi.ja.ACCOMPLICE)
    mob:addSimpleGambit(ai.t.SELF, ai.c.HAS_TOP_ENMITY, 0, ai.r.JA, ai.s.SPECIFIC, xi.ja.HIDE)

    mob:setTrustTPSkillSettings(ai.tp.OPENER, ai.s.HIGHEST)
end)

return m