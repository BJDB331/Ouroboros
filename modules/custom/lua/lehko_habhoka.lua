-----------------------------------
-- Trust: lehko_habhoka
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('lehko_habhoka')

local trustToReplaceName = 'lehko_habhoka'


m:addOverride(string.format('xi.actions.spells.trust.%s.onMobSpawn', trustToReplaceName), function(mob)
    xi.trust.teamworkMessage(mob, {
        [xi.magic.spell.ROMAA_MIHGO] = xi.trust.messageOffset.TEAMWORK_1,
        [xi.magic.spell.ROBEL_AKBEL] = xi.trust.messageOffset.TEAMWORK_2,
    })

    mob:addSimpleGambit(ai.t.TARGET, ai.c.MB_AVAILABLE, 0, ai.r.MA, ai.s.MB_ELEMENT, xi.magic.spellFamily.NONE)

    mob:addSimpleGambit(ai.t.TARGET, ai.c.NOT_SC_AVAILABLE, 0, ai.r.MA, ai.s.BEST_AGAINST_TARGET, 0, 60)

    ---- Uses Ranged Attacks very frequently. Always runs to stay in melee range. [Verification Needed]
    ---- Try and ranged attack every 30s
    mob:addSimpleGambit(ai.t.TARGET, ai.c.ALWAYS, 0, ai.r.RATTACK, 0, 0, 30)

    mob:setTrustTPSkillSettings(ai.tp.ASAP, ai.s.RANDOM)

    mob:addListener('WEAPONSKILL_USE', 'LEHKO_WEAPONSKILL_USE', function(mobArg, target, wsid, tp, action)
        if wsid == 3231 then -- Debonair Rush
            --  Here's betting your bark is worrrse than your bite!
            xi.trust.message(mobArg, xi.trust.messageOffset.SPECIAL_MOVE_1)
        end
    end)

    -- MPP 150 migrated to mob_pool_mods
    -- https://forum.square-enix.com/ffxi/threads/49425-Dec-10-2015-%28JST%29-Version-Update?p=567979&viewfull=1#post567979
    -- The attribute "Enhanced Magic Accuracy" has been added.
  if mob:getMaster():getMainLvl() == 99 then 
  local power = mob:getMainLvl() * 1.1
    mob:addMod(xi.mod.MACC, power)
    mob:addMod(xi.mod.MATT, power)
    mob:addStatusEffect(xi.effect.MAX_MP_BOOST, power, 0, 0)
    mob:addStatusEffect(xi.effect.MAX_HP_BOOST, power, 0, 0)
    mob:setHP(mob:getMaxHP())
    mob:setMP(mob:getMaxMP())
    mob:setMod(xi.mod.DOUBLE_ATTACK, 60)
    mob:setMod(xi.mod.TRIPLE_ATTACK, 25)
    mob:addMod(xi.mod.REGAIN, 5)
    mob:addMod(xi.mod.ATT, power + 400)
    mob:addMod(xi.mod.ACC, power + 700)
    mob:addMod(xi.mod.DEF, power + 200)
    mob:addMod(xi.mod.MAIN_DMG_RATING, 55)
    mob:addMod(xi.mod.SAVETP, 100)
    mob:addMod(xi.mod.STORETP, 150)
    mob:addMod(xi.mod.RATT, power)
    mob:addMod(xi.mod.RACC, power)
    mob:addMod(xi.mod.STR, power)
    mob:addMod(xi.mod.DEX, power)
    mob:addMod(xi.mod.VIT, power)
    mob:addMod(xi.mod.AGI, power)
    mob:addMod(xi.mod.INT, power)
    mob:addMod(xi.mod.MND, power)
    mob:addMod(xi.mod.CHR, power)
	mob:addMod(xi.mod.DEF, power)
   end
end)

return m
