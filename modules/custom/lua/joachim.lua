-----------------------------------
-- Trust: Joachim
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('joachim')

local trustToReplaceName = 'joachim'


m:addOverride(string.format('xi.actions.spells.trust.%s.onMobSpawn', trustToReplaceName), function(mob)
    --[[
        Summon: With your courage and valor, Altana's children will live to see a brighter day.
        Summon (Formerly): Let the Royal Family’s blade be seared forever into their memories!
    ]]
    xi.trust.message(mob, xi.trust.messageOffset.SPAWN)

    mob:addMod(xi.mod.SONG_SPELLCASTING_TIME, 100)
    mob:addMod(xi.mod.SONG_RECAST_DELAY, 120)
    mob:addMod(xi.mod.REFRESH, 2)
    mob:addMod(xi.mod.ALL_SONGS_EFFECT, 2)
    mob:setAutoAttackEnabled(false)

    mob:addSimpleGambit(ai.t.PARTY, ai.c.HPP_LT, 50, ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.CURE)

    -- Try and ranged attack every 60s
    mob:addSimpleGambit(ai.t.TARGET, ai.c.ALWAYS, 0, ai.r.RATTACK, 0, 0, 0)

    mob:addSimpleGambit(ai.t.PARTY, ai.c.STATUS, xi.effect.POISON, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.POISONA)
    mob:addSimpleGambit(ai.t.PARTY, ai.c.STATUS, xi.effect.PARALYSIS, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.PARALYNA)
    mob:addSimpleGambit(ai.t.PARTY, ai.c.STATUS, xi.effect.BLINDNESS, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.BLINDNA)
    mob:addSimpleGambit(ai.t.PARTY, ai.c.STATUS, xi.effect.SILENCE, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.SILENA)
    mob:addSimpleGambit(ai.t.PARTY, ai.c.STATUS, xi.effect.PETRIFICATION, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.STONA)
    mob:addSimpleGambit(ai.t.PARTY, ai.c.STATUS, xi.effect.DISEASE, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.VIRUNA)
    mob:addSimpleGambit(ai.t.PARTY, ai.c.STATUS, xi.effect.CURSE_I, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.CURSNA)
    mob:addSimpleGambit(ai.t.TARGET, ai.c.NOT_STATUS, xi.effect.ELEGY, ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.ELEGY)

    mob:addListener('COMBAT_TICK', 'JOACHIM_CTICK', function(mobArg)
        local melee   = {xi.job.WAR, xi.job.MNK, xi.job.THF, xi.job.BST, xi.job.DRK, xi.job.DRG, xi.job.SAM, xi.job.BLU, xi.job.COR, xi.job.PUP, xi.job.DNC}
        local tank1   = {xi.job.PLD}
        local tank2   = {xi.job.RUN, xi.job.NIN}
        local casters = {xi.job.BLM, xi.job.RDM, xi.job.SCH, xi.job.WHM, xi.job.SMN, xi.job.GEO, xi.job.BRD}
        local ranged  = {xi.job.RNG}
        local isBusy   = false
        local act      = mobArg:getCurrentAction()

        if
            act == xi.act.MOBABILITY_START or
            act == xi.act.MOBABILITY_USING or
            act == xi.act.MOBABILITY_FINISH or
            act == xi.act.MAGIC_START or
            act == xi.act.MAGIC_CASTING or
            act == xi.act.MAGIC_START
        then
            isBusy = true
        end

        if
            isBusy == false
        then
            local master = mobArg:getMaster()
            local lvl    = master:getMainLvl()

            -- Uses double PAEON if Joachim or the players HP drops below 50%
            -- Takes priority over BALLAD
            if
                mobArg:getHPP() <= 75 and
                not mobArg:hasStatusEffect(xi.effect.PAEON)
            then
                if lvl > 78 then
                    mobArg:castSpell(383, mobArg) -- PAEON VI
                    mobArg:timer(10000, function(mobArg2)
                        mobArg2:castSpell(382, mobArg2) -- PAEON V
                    end)
                elseif
                    lvl > 65 and
                    lvl < 78
                then
                    mobArg:castSpell(382, mobArg) -- PAEON V
                    mobArg:timer(10000, function(mobArg2)
                        mobArg2:castSpell(381, mobArg2) -- PAEON IV
                    end)
                elseif
                    lvl > 45 and
                    lvl < 65
                then
                    mobArg:castSpell(381, mobArg) -- PAEON IV
                    mobArg:timer(10000, function(mobArg2)
                        mobArg2:castSpell(380, mobArg2) -- PAEON III
                    end)
                elseif
                    lvl > 35 and
                    lvl < 45
                then
                    mobArg:castSpell(380, mobArg) -- PAEON III
                    mobArg:timer(10000, function(mobArg2)
                        mobArg2:castSpell(379, mobArg2) -- PAEON II
                    end)
                elseif
                    lvl > 15 and
                    lvl < 35
                then
                    mobArg:castSpell(379, mobArg) -- PAEON II
                    mobArg:timer(10000, function(mobArg2)
                        mobArg2:castSpell(378, mobArg2) -- PAEON
                    end)
                elseif
                    lvl > 1 and
                    lvl < 15
                then
                    mobArg:castSpell(378, mobArg) -- PAEON
                end

            -- Uses BALLAD if Joachim's MP drops below 25%
            -- Uses only if PAEON isnt active.
            elseif
                mobArg:getMPP() <= 25 and
                not mobArg:hasStatusEffect(xi.effect.PAEON) and
                not mobArg:hasStatusEffect(xi.effect.BALLAD)
            then
                if lvl > 85 then
                    mobArg:castSpell(388, mobArg) -- BALLAD III
                    mobArg:timer(10000, function(mobArg2)
                        mobArg2:castSpell(387, mobArg2) -- BALLAD II
                    end)
                elseif
                    lvl > 55 and
                    lvl < 85
                then
                    mobArg:castSpell(387, mobArg) -- BALLAD II
                    mobArg:timer(10000, function(mobArg2)
                        mobArg2:castSpell(386, mobArg2) -- BALLAD I
                    end)
                elseif
                    lvl > 1 and
                    lvl < 55
                then
                    mobArg:castSpell(386, mobArg) -- BALLAD I
                end
            -- If Joachim and the Player's HP are above 90% will switch to MARCH.
            elseif
                mobArg:getHPP() >= 75 and
                not mobArg:hasStatusEffect(xi.effect.MARCH) and
                not mobArg:hasStatusEffect(xi.effect.BALLAD)
            then
                if lvl > 60 then
                    mobArg:castSpell(420, mobArg) -- VICTORY MARCH
                elseif
                    lvl > 1 and
                    lvl < 60
                then
                    mobArg:castSpell(419, mobArg) -- ADVANCING MARCH
                end
            elseif
            -- If Joachim's MP is above 90% will switch to MADRIGAL
                mobArg:getMPP() >= 90 and
                not mobArg:hasStatusEffect(xi.effect.MADRIGAL) and
                not mobArg:hasStatusEffect(xi.effect.PAEON)
            then
                if lvl > 51 then
                    mobArg:castSpell(400, mobArg) -- BLADE MADRIGAL
                elseif
                    lvl > 1 and
                    lvl < 51
                then
                    mobArg:castSpell(399, mobArg) -- SWORD MADRIGAL
                end
            end
        end
    end)
end)

return m