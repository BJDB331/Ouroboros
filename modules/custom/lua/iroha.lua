-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local mobskillz =
{
{'amatsu_fuga'},
{'amatsu_kyori'},
{'amatsu_hanadoki'},
{'amatsu_choun'},
{'amatsu_gachirin'},
{'amatsu_suien'},
}

local ensureTable = function(str)
    local parts = utils.splitStr(str, '.')
    local table = _G;
    for _, part in ipairs(parts) do
        table[part] = table[part] or {}
        table = table[part]
    end
end
for _, entry in pairs(mobskillz) do
ensureTable(string.format("xi.actions.mobskills.%s", entry[1]))
end
ensureTable("xi.actions.mobskills.rise_from_ashes")

local m = Module:new('iroha')
-----------------------------------------------
-- Iroha Weapon Skills - need to adjust based on individual WS
-----------------------------------------------
for _, entry in pairs(mobskillz) do
m:addOverride(string.format('xi.actions.mobskills.%s.onMobSkillCheck', entry[1]), function(target, mob, skill)
    if
        mob:getObjType() == xi.objType.TRUST or
        mob:getAnimationSub() == 0
    then
        return 0
    else
        return 1
    end
end)

m:addOverride(string.format('xi.actions.mobskills.%s.onMobWeaponSkill', entry[1]), function(target, mob, skill)
    local numhits = 1
    local accmod  = 3
    local dmgmod  = 6.5
    local info    = xi.mobskills.mobPhysicalMove(mob, target, skill, numhits, accmod, dmgmod, xi.mobskills.physicalTpBonus.DMG_VARIES, 1, 1.50, 2)
    local dmg     = xi.mobskills.mobFinalAdjustments(info.dmg, mob, skill, target, xi.attackType.PHYSICAL, xi.damageType.PIERCING, info.hitslanded)

    target:takeDamage(dmg, mob, xi.attackType.PHYSICAL, xi.damageType.PIERCING)

    return dmg
end)
end
-----------------------------------------------
-- Ride from the ashes - mobskill
-----------------------------------------------

m:addOverride('xi.actions.mobskills.rise_from_ashes.onMobSkillCheck', function(target, mob, skill)
    if
        mob:getObjType() == xi.objType.TRUST or
        mob:getAnimationSub() == 0
    then
        return 0
    else
        return 1
    end
end)
m:addOverride('xi.actions.mobskills.rise_from_ashes.onMobWeaponSkill', function(target, mob, skill)
                if target:addStatusEffect(xi.effect.STONESKIN, 500, 0, 300, 0, 0, 4) then
                   target:messageBasic(xi.msg.basic.GAINS_EFFECT_OF_STATUS, xi.effect.STONESKIN)
                else
                   target:messageBasic(xi.msg.basic.NO_EFFECT)
                end
                   target:addHP(target:getMaxHP() * 0.25)
                   target:addMP(target:getMaxMP() * 0.25)
                   target:wakeUp()
                   target:messageBasic(xi.msg.basic.RECOVERS_HP_AND_MP)
                   skill:setMsg(xi.msg.basic.NONE)
end)
-----------------------------------------------
-- Trust - Iroha
-----------------------------------------------
m:addOverride('xi.actions.spells.trust.iroha.onMobSpawn', function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.SPAWN)
    local heal = mob:getMaxHP()
    local Bonus = mob:getMainLvl() * 2
    mob:setLocalVar('IrohaRaise', 1)
    mob:setUnkillable(true)
    mob:addMod(xi.mod.REGAIN, 15)
    mob:addMod(xi.mod.ATT, Bonus)
    mob:addMod(xi.mod.ACC, Bonus + 200)
    mob:addMod(xi.mod.DEF, Bonus)
    mob:setMod(xi.mod.MAIN_DMG_RATING, 33)
    mob:setMod(xi.mod.DOUBLE_ATTACK, 25)
    mob:setMod(xi.mod.SAVETP, 400)
    mob:setMod(xi.mod.STORETP, 300)
    mob:addStatusEffect(xi.effect.MAX_MP_BOOST, 100, 0, 0)
    mob:setMP(mob:getMaxMP())
     
    mob:addSimpleGambit(ai.t.SELF, ai.c.NOT_STATUS, xi.effect.HASSO, ai.r.JA, ai.s.SPECIFIC, xi.ja.HASSO)
    mob:addSimpleGambit(ai.t.SELF, ai.c.HAS_TOP_ENMITY, 0, ai.r.JA, ai.s.SPECIFIC, xi.ja.THIRD_EYE)
    mob:addSimpleGambit(ai.t.SELF, ai.c.TP_GTE, 2000, ai.r.JA, ai.s.SPECIFIC, xi.ja.HAGAKURE)
    mob:addSimpleGambit(ai.t.SELF, ai.c.TP_GTE, 2000, ai.r.JA, ai.s.SPECIFIC, xi.ja.SEKKANOKI)
    mob:setTrustTPSkillSettings(ai.tp.CLOSER_UNTIL_TP, ai.s.HIGHEST, 2500)
    mob:addSimpleGambit(ai.t.TARGET, ai.c.MB_AVAILABLE, 0, ai.r.MA, ai.s.MB_ELEMENT, xi.magic.spellFamily.NONE)
         mob:addListener('COMBAT_TICK', 'IROHA_CTICK', function(mobArg)
            if mob:hasStatusEffect(xi.effect.SEKKANOKI) and mob:getTP() >= 2000 then
               mob:useMobAbility(3733)
                    mob:timer(2, function(mobArg)
                    mobArg:useJobAbility(xi.ja.MEDITATE)
                    end)
                    mob:timer(8, function(mobArg)
                    mobArg:useMobAbility(3734)
                    end)
                    mob:timer(8, function(mobArg)
                    mobArg:useMobAbility(3737)
                    end)
                    mob:timer(8, function(mobArg)
                    mobArg:useMobAbility(3736)
                    end)
            end
             if mobArg:getHP() == 1 and mob:getLocalVar('IrohaRaise') == 1 then
                 xi.trust.message(mob,2)
                 mob:entityAnimationPacket("pop1")
                 mob:setHP(heal)
                 mob:setLocalVar('IrohaRaise', 2)
                 mob:setUnkillable(false)
             end
         end)
end)
-----------------------------------------------
-- Trust - Iroha II
-----------------------------------------------
m:addOverride('xi.actions.spells.trust.iroha_ii.onMobSpawn', function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.SPAWN)
 if mob:getMaster():getMainLvl() == 99 then
    local Bonus = mob:getMainLvl() * 2.5
 else
    local Bonus = mob:getMainLvl() * 1
 end
    mob:addMod(xi.mod.REGAIN, 25)
    mob:addMod(xi.mod.ATT, Bonus)
    mob:addMod(xi.mod.ACC, Bonus + 200)
    mob:addMod(xi.mod.DEF, Bonus)
    mob:setMod(xi.mod.MAIN_DMG_RATING, 33)
    mob:setMod(xi.mod.DOUBLE_ATTACK, 25)
    mob:setMod(xi.mod.SAVETP, Bonus)
    mob:setMod(xi.mod.STORETP, Bonus)
    mob:setMod(xi.mod.FASTCAST, 80)
    mob:addStatusEffect(xi.effect.MAX_MP_BOOST, Bonus, 0, 0)
    mob:setMP(mob:getMaxMP())
    mob:addSimpleGambit(ai.t.SELF, ai.c.NOT_STATUS, xi.effect.HASSO, ai.r.JA, ai.s.SPECIFIC, xi.ja.HASSO)
    mob:addSimpleGambit(ai.t.SELF, ai.c.HAS_TOP_ENMITY, 0, ai.r.JA, ai.s.SPECIFIC, xi.ja.THIRD_EYE)
    mob:addSimpleGambit(ai.t.SELF, ai.c.TP_GTE, 2000, ai.r.JA, ai.s.SPECIFIC, xi.ja.SEKKANOKI)
    mob:addSimpleGambit(ai.t.SELF, ai.c.TP_GTE, 2000, ai.r.JA, ai.s.SPECIFIC, xi.ja.HAGAKURE)
    mob:setTrustTPSkillSettings(ai.tp.CLOSER_UNTIL_TP, ai.s.RANDOM, 2500)
    mob:addSimpleGambit(ai.t.TARGET, ai.c.MB_AVAILABLE, 0, ai.r.MA, ai.s.MB_ELEMENT, xi.magic.spellFamily.NONE)

         mob:addListener('COMBAT_TICK', 'IROHA_II_CTICK', function(mobArg)
            if mob:hasStatusEffect(xi.effect.SEKKANOKI) and mob:getTP() >= 2000 then
               mob:useMobAbility(3733)
                    mob:timer(2, function(mobArg)
                    mobArg:useJobAbility(xi.ja.MEDITATE, mob)
                    end)
                    mob:timer(8, function(mobArg)
                    mobArg:useMobAbility(3734)
                    end)
                    mob:timer(8, function(mobArg)
                    mobArg:useMobAbility(3737)
                    end)
                    mob:timer(8, function(mobArg)
                    mobArg:useMobAbility(3736)
                    end)
            end
     local ptyslp = mob:getLocalVar('IrohaSlp')
     local RoAT   = mob:getLocalVar('IrohaRoAT')
        for _, partyMember in ipairs(mob:getMaster():getPartyWithTrusts()) do
            if  partyMember:hasStatusEffect(xi.effect.SLEEP_I) or
                partyMember:hasStatusEffect(xi.effect.SLEEP_II) or
                partyMember:hasStatusEffect(xi.effect.LULLABY) then
                ptyslp = ptyslp + 1
            end
        end

        if mob:getLocalVar('IrohaSlp') >= 3 and
           mob:getTP() > 1000 and
           RoAT <= os.time() then
                        mob:useMobAbility(3738)
                        mob:setLocalVar('IrohaSlp', 0)
                        mob:setLocalVar('IrohaRoAT', os.time() + 300)
        end



            local hpdown = mob:getLocalVar('IrohaRoA')
            local party = mob:getMaster():getPartyWithTrusts()
                for _, partyMember in ipairs(party) do
                    if partyMember:getHPP() <= 75 then
                       hpdown = hpdown +1
                    end
                end
            if hpdown >= 3 and
               mob:getTP() >= 1000 and
               RoAT <= os.time() then
               mob:useMobAbility(3738)
               mob:setLocalVar('IrohaRoA', 0)
               mob:setLocalVar('IrohaRoAT', os.time() + 300)
            end
         end)
end)
return m
