-----------------------------------
-- Trust: Lion II
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('lion_ii')

local trustToReplaceName = 'lion_ii'


m:addOverride(string.format('xi.actions.spells.trust.%s.onMobSpawn', trustToReplaceName), function(mob)
    --[[
        Summon: With your courage and valor, Altana's children will live to see a brighter day.
        Summon (Formerly): Let the Royal Family’s blade be seared forever into their memories!
    ]]
    xi.trust.message(mob, xi.trust.messageOffset.SPAWN)
    local master = mob:getMaster()
    local THMod  = master:getCharVar("LionTH")
    mob:addMod(xi.mod.TREASURE_HUNTER, THMod)
    mob:addMod(xi.mod.GILFINDER, THMod)
    mob:addMod(xi.mod.TRIPLE_ATTACK, 20)

    mob:addSimpleGambit(ai.t.SELF, ai.c.NOT_STATUS, xi.effect.COPY_IMAGE, ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.UTSUSEMI)
    mob:setTrustTPSkillSettings(ai.tp.CLOSER_UNTIL_TP, ai.s.HIGHEST, 3000)
end)

return m
