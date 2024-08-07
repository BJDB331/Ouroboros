-----------------------------------
-- Basic Shop Module for Lower Jeuno (zone 245)
-----------------------------------
require('modules/module_utils')
require('scripts/zones/Lower_Jeuno/Zone')
local ID = require('scripts/zones/Lower_Jeuno/IDs')
-----------------------------------
local m = Module:new('Dream_item_shop2')

-- Shop stock definition
local stock = {
21556, 5000000, -- beryllium_kris
26723, 5000000, -- wildheitschaller
26882, 5000000, -- wildheitbrust
27988, 5000000, -- wildheithentzes
27225, 5000000, -- wildheitdiechlings
27397, 5000000, -- wildheitschuhs
26727, 5000000, -- revealers_crown_+1
26886, 5000000, -- revealers_tunic_+1
27992, 5000000, -- revealers_mitts_+1
27229, 5000000, -- revealers_pants_+1
27401, 5000000, -- revealers_pumps_+1
26725, 5000000, -- sombra_tiara_+1
26884, 5000000, -- sombra_harness_+1
27990, 5000000, -- sombra_mittens_+1
27227, 5000000, -- sombra_tights_+1
27399, 5000000, -- sombra_leggings_+1
25557, 5000000, -- arke_zuchetto
26533, 5000000, -- arke_corazza
25984, 5000000, -- arke_manopolas
25897, 5000000, -- arke_cosciales
25964, 5000000, -- arke_gambieras
25565, 5000000, -- baayami_hat
26541, 5000000, -- baayami_robe
25992, 5000000, -- baayami_cuffs
25905, 5000000, -- baayami_slops
25972, 5000000, -- baayami_sabots
25553, 5000000, -- ea_hat
26529, 5000000, -- ea_houppelande
25980, 5000000, -- ea_cuffs
25893, 5000000, -- ea_slops
25960, 5000000, -- ea_pigaches
25563, 5000000, -- heyoka_cap
26539, 5000000, -- heyoka_harness
25990, 5000000, -- heyoka_mittens
25903, 5000000, -- heyoka_subligar
25970, 5000000, -- heyoka_leggings
25551, 5000000, -- kendatsuba_jinpachi
26527, 5000000, -- kendatsuba_samue
25978, 5000000, -- kendatsuba_tekko
25891, 5000000, -- kendatsuba_hakama
25958, 5000000, -- kendatsuba_sune-ate
25561, 5000000, -- mousai_turban
26537, 5000000, -- mousai_manteel
25988, 5000000, -- mousai_gages
25901, 5000000, -- mousai_seraweels
25968, 5000000, -- mousai_crackows
25549, 5000000, -- oshosi_mask
26525, 5000000, -- oshosi_vest
25976, 5000000, -- oshosi_gloves
25889, 5000000, -- oshosi_trousers
25956, 5000000, -- oshosi_leggings
25559, 5000000, -- pinga_crown
26535, 5000000, -- pinga_tunic
25986, 5000000, -- pinga_mittens
25899, 5000000, -- pinga_pants
25966, 5000000, -- pinga_pumps
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
        name      = 'SU Shop2',
        look      = 2290, -- Replace with the appropriate NPC model ID
        x         = -1.192,
        y         = 0.000,
        z         = -7.835,
        rotation  = 0,
        widescan  = 1,
        onTrigger  = onTrigger,
    })
end)

return m