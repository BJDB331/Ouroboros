-----------------------------------
-- Basic Shop Module for Lower Jeuno (zone 245)
-----------------------------------
require('modules/module_utils')
require('scripts/zones/Lower_Jeuno/Zone')
local ID = require('scripts/zones/Lower_Jeuno/IDs')
-----------------------------------
local m = Module:new('Dream_item_shop')

-- Shop stock definition
local stock = {
    21523, 10000000, -- sagitta,
    21526, 10000000, -- xiucoatl,
    21575, 10000000, -- gandring,
    21578, 10000000, -- barfawc,
    21581, 10000000, -- rostam,
    21584, 10000000, -- setan_kober,
    21627, 10000000, -- crocea_mors,
    21630, 10000000, -- moralltach,
    21633, 10000000, -- zomorrodnegar,
    21669, 10000000, -- morgelai,
    21717, 10000000, -- pangu,
    21774, 10000000, -- labraunda,
    21825, 10000000, -- father_time,
    21878, 10000000, -- aram,
    21917, 10000000, -- fudo_masamune,
    21970, 10000000, -- fusenaikyo,
    22035, 10000000, -- asclepius,
    22038, 10000000, -- bhima,
    22093, 10000000, -- kaumodaki,
    22096, 10000000, -- draumstafir,
    22099, 10000000, -- musa,
    22149, 10000000, -- sharanga,
    22287, 10000000, -- scouts_bolt
	20525, 5000000, -- blurred_claws,
    20526, 5000000, -- blurred_claws_+1,
    20601, 5000000, -- blurred_knife,
    20602, 5000000, -- blurred_knife_+1,
    20711, 5000000, -- blurred_sword,
    20712, 5000000, -- blurred_sword_+1,
    20754, 5000000, -- malfeasance,
    20755, 5000000, -- malfeasance_+1,
    20802, 5000000, -- blurred_axe,
    20803, 5000000, -- blurred_axe_+1,
    20849, 5000000, -- blurred_cleaver,
    20850, 5000000, -- blurred_cleaver_+1,
    20896, 5000000, -- blurred_scythe,
    20897, 5000000, -- blurred_scythe_+1,
    20940, 5000000, -- blurred_lance,
    20941, 5000000, -- blurred_lance_+1,
    20984, 5000000, -- kujaku,
    20985, 5000000, -- kujaku_+1,
    21032, 5000000, -- kunitsuna,
    21033, 5000000, -- kunitsuna_+1,
    21093, 5000000, -- blurred_rod,
    21094, 5000000, -- blurred_rod_+1,
    21157, 5000000, -- blurred_staff,
    21158, 5000000, -- blurred_staff_+1,
    21217, 5000000, -- blurred_bow,
    21218, 5000000, -- blurred_bow_+1,
    21295, 5000000, -- beryllium_arrow,
    21300, 5000000, -- divine_arrow,
    21310, 5000000, -- raetic_arrow,
    21312, 5000000, -- divine_bolt,
    21328, 5000000, -- divine_bullet,
    21392, 5000000, -- animator_z,
    21393, 5000000, -- arasy_sachet,
    21394, 5000000, -- sancus_sachet,
    21395, 5000000, -- sancus_sachet_+1,
    21400, 5000000, -- blurred_harp,
    21401, 5000000, -- blurred_harp_+1,
    21456, 5000000, -- animator_p,
    21457, 5000000, -- animator_p_+1,
    21458, 5000000, -- animator_p_ii,
    21459, 5000000, -- animator_p_ii_+1,
    21480, 5000000, -- blurred_crossbow,
    21481, 5000000, -- blurred_cross._+1,
    21504, 5000000, -- arasy_sainti,
    21505, 5000000, -- arasy_sainti_+1,
    21506, 5000000, -- jolt_counter,
    21507, 5000000, -- jolt_counter_+1,
    21511, 5000000, -- hep._baghnakhs,
    21512, 5000000, -- hep._baghnakhs_+1,
    21513, 5000000, -- raetic_baghnakhs,
    21514, 5000000, -- rae._baghnakhs_+1,
    21521, 5000000, -- melee_fists,
    21522, 5000000, -- hes._fists,
    21524, 5000000, -- pantin_fists,
    21525, 5000000, -- pitre_fists,
    21554, 5000000, -- arasy_knife,
    21555, 5000000, -- arasy_knife_+1,
}

-- NPC Interaction
local function onTrigger(player, npc)
    player:showText(npc, ID.text.ORTHONS_GARMENT_SHOP_DIALOG) -- Custom text ID
    xi.shop.general(player, stock)
end

-- Insert NPC into the zone
m:addOverride('xi.zones.Lower_Jeuno.Zone.onInitialize', function(zone)
    -- Call the zone's original function for onInitialize
    super(zone)

    -- Basic Shop NPC
    zone:insertDynamicEntity({
        objtype   = xi.objType.NPC,
        name      = 'SU Shop1',
        look      = 2290, -- Replace with the appropriate NPC model ID
        x         = -2.277,
        y         = 0.000,
        z         = -9.2,
        rotation  = 0,
        widescan  = 1,
        onTrigger  = onTrigger,
    })
end)

return m