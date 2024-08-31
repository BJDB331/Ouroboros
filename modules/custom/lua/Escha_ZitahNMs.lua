local mobnames =
{
{'Eschan_Coeurl',        ESCHAN_COEURL_PH},
{'Eschan_Dhalmel',       ESCHAN_DHALMEL_PH},
{'Eschan_Corse',         ESCHAN_CORSE_PH},
{'Eschan_Goobbue',       ESCHAN_GOOBBUE_PH},
{'Eschan_Weapon',        ESCHAN_WEAPON_PH},
{'Eschan_Bugard',        ESCHAN_BUGARD_PH},
{'Eschan_Worm',          ESCHAN_WORM_PH},
{'Eschan_Snapweed',      ESCHAN_SNAPWEED_PH},
{'Eschan_Shadow_Dragon', ESCHAN_SHADOW_DRAGON_PH},
{'Eschan_Vulture',       ESCHAN_VULTURE_PH},
{'Eschan_Crawler',       ESCHAN_CRAWLER_PH},
{'Aglaophotis',          AGLAOPHOTIS_QM},
{'Alpluachra',           ALPLUACHRA_QM},
{'Angrboda',             ANGRBODA_QM},
{'Blazewing',            BLAZEWING_QM},
{'Brittlis',             BRITTLIS_QM},
{'Bucca',                BUCCA_QM},
{'Cunnast',              CUNNAST_QM},
{'Ferrodon',             FERRODON_QM},
{'Fleetstalker',         FLEETSTALKER_QM},
{'Gestalt',              GESTALT_QM},
{'Gulltop',              GULLTOP_QM},
{'Ionos',                IONOS_QM},
{'Kamohoalii',           KAMOHOALII_QM},
{'Lustful_Lydia',        LUSTFUL_LYDIA_QM},
{'Nosoi',                NOSOI_QM},
{'Pazuzu',               PAZUZU_QM},
{'Puca',                 PUCA_QM},
{'Revetaur',             REVETAUR_QM},
{'Sensual_Sandy',        SENSUAL_SANDY_QM},
{'Shockmaw',             SHOCKMAW_QM},
{'Tangata_Manu',         TANGATA_MANU_QM},
{'Umdhlebi',             UMDHLEBI_QM},
{'Urmahlullu',           URMAHLULLU_QM},
{'Vidala',               VIDALA_QM},
{'Vyala',                VYALA_QM},
{'Wepwawet',             WEPWAWET_QM},
{'Wrathare',             WRATHARE_QM},
}
local nmmobname =
{
{'Aglaophotis',          AGLAOPHOTIS_QM},
{'Alpluachra',           ALPLUACHRA_QM},
{'Angrboda',             ANGRBODA_QM},
{'Blazewing',            BLAZEWING_QM},
{'Brittlis',             BRITTLIS_QM},
{'Bucca',                BUCCA_QM},
{'Cunnast',              CUNNAST_QM},
{'Ferrodon',             FERRODON_QM},
{'Fleetstalker',         FLEETSTALKER_QM},
{'Gestalt',              GESTALT_QM},
{'Gulltop',              GULLTOP_QM},
{'Ionos',                IONOS_QM},
{'Kamohoalii',           KAMOHOALII_QM},
{'Lustful_Lydia',        LUSTFUL_LYDIA_QM},
{'Nosoi',                NOSOI_QM},
{'Pazuzu',               PAZUZU_QM},
{'Puca',                 PUCA_QM},
{'Revetaur',             REVETAUR_QM},
{'Sensual_Sandy',        SENSUAL_SANDY_QM},
{'Shockmaw',             SHOCKMAW_QM},
{'Tangata_Manu',         TANGATA_MANU_QM},
{'Umdhlebi',             UMDHLEBI_QM},
{'Urmahlullu',           URMAHLULLU_QM},
{'Vidala',               VIDALA_QM},
{'Vyala',                VYALA_QM},
{'Wepwawet',             WEPWAWET_QM},
{'Wrathare',             WRATHARE_QM},
}


local ensureTable = function(str)
    local parts = utils.splitStr(str, '.')
    local table = _G;
    for _, part in ipairs(parts) do
        table[part] = table[part] or {}
        table = table[part]
    end
end

for _, entry in pairs(mobnames) do
ensureTable(string.format("xi.zones.Escha_ZiTah.mobs.%s", entry[1]))
end


ensureTable("xi.zones.Escha_ZiTah.npcs.qm")


-----------------------------------
local ID = zones[xi.zone.ESCHA_ZITAH]
-----------------------------------
require("modules/module_utils")
require("scripts/globals/npc_util")
require("scripts/globals/mobs")
-----------------------------------
-- mob =
ID.mob =
{
PRICKLY_PITRIV =      17957278,
ABYSSDIVER =          17957280,
BEIST =               17957294,
EMPEROR_ARTHRO =      17956870,
ESCHAN_JEWELWEED =    17957296,
HUGEMAW_HAROLD =      17957277,
IMMANIBUGARD =        17957293,
JESTER_MALATRIX =     17957292,
KEEPER_OF_HEILIGTUM = 17957281,
MUUT =                17957282,
SERPOPARD_NINLIL =    17957279,
VOSO =                17957291,
WEPWAWET =            17957299,
LUSTFUL_LYDIA =       17957301,
AGLAOPHOTIS =         17957304,
TANGATA_MANU =        17957308,
VIDALA =              17957310,
GESTALT =             17957313,
ANGRBODA =            17957317,
CUNNAST =             17957319,
REVETAUR =            17957322,
FERRODON =            17957325,
GULLTOP =             17957329,
VYALA =               17957332,
IONOS =               17957352,
SENSUAL_SANDY =       17957355,
NOSOI =               17957358,
BRITTLIS =            17957361,
KAMOHOALII =          17957365,
UMDHLEBI =            17957367,
FLEETSTALKER =        17957370,
SHOCKMAW =            17957373,
URMAHLULLU =          17957376,
ALPLUACHRA =          17957343,
BUCCA =               17957337,
PUCA =                17957385,
BLAZEWING =           17957334,
WRATHARE =            17957349,
PAZUZU =              17957347,

ESCHAN_CRAWLER_PH =
{
[17956912] = 17957278,
[17956927] = 17957278,
[17956900] = 17957278,
[17956937] = 17957278,
[17956938] = 17957278,
[17956939] = 17957278,
[17956910] = 17957278,
[17956903] = 17957278,
[17956899] = 17957278,
[17956902] = 17957278,
[17956935] = 17957278,
[17956901] = 17957278,
[17956911] = 17957278,
[17956936] = 17957278,
[17956926] = 17957278,
[17956914] = 17957278,
[17956924] = 17957278,
[17956923] = 17957278,
[17956928] = 17957278,
[17956913] = 17957278,
[17956922] = 17957278,
[17956916] = 17957278,
[17956929] = 17957278,
[17956915] = 17957278,
[17956933] = 17957278,
[17956934] = 17957278,
[17956925] = 17957278,
},
ESCHAN_VULTURE_PH =
{
[17956988] = 17957280,
[17957025] = 17957280,
[17956990] = 17957280,
[17956987] = 17957280,
[17956991] = 17957280,
[17956989] = 17957280,
[17957028] = 17957280,
[17957027] = 17957280,
[17957024] = 17957280,
[17957018] = 17957280,
[17957017] = 17957280,
[17957015] = 17957280,
[17957026] = 17957280,
[17957016] = 17957280,
},
ESCHAN_SHADOW_DRAGON_PH =
{
[17957157] = 17957294,
[17957127] = 17957294,
[17957156] = 17957294,
[17957158] = 17957294,
[17957126] = 17957294,
[17957142] = 17957294,
[17957144] = 17957294,
[17957136] = 17957294,
[17957135] = 17957294,
[17957134] = 17957294,
[17957150] = 17957294,
[17957133] = 17957294,
[17957151] = 17957294,
[17957143] = 17957294,
},
ESCHAN_SNAPWEED_PH =
{
[17957117] = 17957296,
[17957053] = 17957296,
[17957054] = 17957296,
[17957055] = 17957296,
[17957056] = 17957296,
[17957057] = 17957296,
[17957079] = 17957296,
[17957080] = 17957296,
[17957081] = 17957296,
[17957113] = 17957296,
[17957105] = 17957296,
[17957106] = 17957296,
[17957107] = 17957296,
[17957052] = 17957296,
[17957082] = 17957296,
[17957120] = 17957296,
[17957045] = 17957296,
[17957119] = 17957296,
[17957118] = 17957296,
[17957114] = 17957296,
[17957116] = 17957296,
[17957115] = 17957296,
[17957046] = 17957296,
[17957047] = 17957296,
},
ESCHAN_WORM_PH =
{
[17956921] = 17957277,
[17956881] = 17957277,
[17956873] = 17957277,
[17956883] = 17957277,
[17956874] = 17957277,
[17956875] = 17957277,
[17956889] = 17957277,
[17956917] = 17957277,
[17956872] = 17957277,
[17956871] = 17957277,
[17956918] = 17957277,
[17956919] = 17957277,
[17956920] = 17957277,
[17956931] = 17957277,
[17956930] = 17957277,
[17956890] = 17957277,
[17956888] = 17957277,
[17956907] = 17957277,
[17956904] = 17957277,
[17956905] = 17957277,
[17956906] = 17957277,
[17956896] = 17957277,
[17956897] = 17957277,
[17956898] = 17957277,
[17956932] = 17957277,
[17956908] = 17957277,
[17956909] = 17957277,
[17956895] = 17957277,
[17956882] = 17957277,
},
ESCHAN_BUGARD_PH =
{
[17957206] = 17957293,
[17957185] = 17957293,
[17957179] = 17957293,
[17957178] = 17957293,
[17957186] = 17957293,
[17957198] = 17957293,
[17957203] = 17957293,
[17957199] = 17957293,
[17957173] = 17957293,
[17957172] = 17957293,
[17957207] = 17957293,
[17957205] = 17957293,
[17957204] = 17957293,
},
ESCHAN_WEAPON_PH =
{
[17956949] = 17957292,
[17956969] = 17957292,
[17956957] = 17957292,
[17956968] = 17957292,
[17956967] = 17957292,
[17956966] = 17957292,
[17956959] = 17957292,
[17956942] = 17957292,
[17956943] = 17957292,
[17956958] = 17957292,
[17956940] = 17957292,
[17956948] = 17957292,
[17956956] = 17957292,
[17956955] = 17957292,
[17956965] = 17957292,
[17956950] = 17957292,
[17956941] = 17957292,
[17956951] = 17957292,
},
ESCHAN_GOOBBUE_PH =
{
[17957072] = 17957281,
[17957099] = 17957281,
[17957109] = 17957281,
[17957063] = 17957281,
[17957064] = 17957281,
[17957065] = 17957281,
[17957100] = 17957281,
[17957101] = 17957281,
[17957108] = 17957281,
[17957073] = 17957281,
[17957071] = 17957281,
[17957048] = 17957281,
[17957089] = 17957281,
[17957090] = 17957281,
[17957049] = 17957281,
[17957050] = 17957281,
[17957051] = 17957281,
[17957091] = 17957281,
[17957110] = 17957281,
[17957092] = 17957281,
},
ESCHAN_CORSE_PH =
{
[17957022] = 17957282,
[17957037] = 17957282,
[17957036] = 17957282,
[17957014] = 17957282,
[17957030] = 17957282,
[17957005] = 17957282,
[17957029] = 17957282,
[17957010] = 17957282,
[17957023] = 17957282,
[17957039] = 17957282,
[17957004] = 17957282,
[17956998] = 17957282,
[17956997] = 17957282,
[17957038] = 17957282,
},
ESCHAN_DHALMEL_PH =
{
[17956953] = 17957279,
[17956972] = 17957279,
[17956962] = 17957279,
[17956961] = 17957279,
[17956952] = 17957279,
[17956973] = 17957279,
[17956960] = 17957279,
[17956954] = 17957279,
[17956970] = 17957279,
[17956964] = 17957279,
[17956971] = 17957279,
[17956947] = 17957279,
[17956945] = 17957279,
[17956963] = 17957279,
[17956944] = 17957279,
[17956946] = 17957279,
},
ESCHAN_COEURL_PH =
{
[17956986] = 17957291,
[17956981] = 17957291,
[17956984] = 17957291,
[17956980] = 17957291,
[17956979] = 17957291,
[17956983] = 17957291,
[17956974] = 17957291,
[17956985] = 17957291,
[17956975] = 17957291,
[17956982] = 17957291,
[17956976] = 17957291,
[17956977] = 17957291,
[17956978] = 17957291,
},
}

ID.npc =
{
WEPWAWET_QM =            17957439,
LUSTFUL_LYDIA_QM =       17957447,
AGLAOPHOTIS_QM =         17957442,
TANGATA_MANU_QM =        17957445,
VIDALA_QM =              17957446,
GESTALT_QM =             17957448,
ANGRBODA_QM =            17957441,
CUNNAST_QM =             17957437,
REVETAUR_QM =            17957440,
FERRODON_QM =            17957438,
GULLTOP_QM =             17957443,
VYALA_QM =               17957444,
IONOS_QM =               17957440,
SENSUAL_SANDY_QM =       17957447,
NOSOI_QM =               17957438,
BRITTLIS_QM =            17957442,
KAMOHOALII_QM =          17957445,
UMDHLEBI_QM =            17957446,
FLEETSTALKER_QM =        17957443,
SHOCKMAW_QM =            17957444,
URMAHLULLU_QM =          17957439,
ALPLUACHRA_QM =          17957448,
BUCCA_QM =               17957448,
PUCA_QM =                17957448,
BLAZEWING_QM =           17957441,
WRATHARE_QM =            17957437,
PAZUZU_QM =              17957440,

}

local m = Module:new("Escha_ZitahNMs")
for _, entry in pairs(mobnames) do
local notmon = entry[2]
m:addOverride(string.format('xi.zones.Escha_ZiTah.mobs.%s.onMobDespawn', entry[1]), function(mob)
      xi.mob.phOnDespawn(mob, ID.mob.ESCHAN_COEURL_PH, 30, 4800)
      xi.mob.phOnDespawn(mob, ID.mob.ESCHAN_DHALMEL_PH, 30, 4800)
      xi.mob.phOnDespawn(mob, ID.mob.ESCHAN_CORSE_PH, 30, 4800)
      xi.mob.phOnDespawn(mob, ID.mob.ESCHAN_GOOBBUE_PH, 30, 4800)
      xi.mob.phOnDespawn(mob, ID.mob.ESCHAN_WEAPON_PH, 30, 4800)
      xi.mob.phOnDespawn(mob, ID.mob.ESCHAN_BUGARD_PH, 30, 4800)
      xi.mob.phOnDespawn(mob, ID.mob.ESCHAN_WORM_PH, 30, 4800)
      xi.mob.phOnDespawn(mob, ID.mob.ESCHAN_SNAPWEED_PH, 30, 4800)
      xi.mob.phOnDespawn(mob, ID.mob.ESCHAN_SHADOW_DRAGON_PH, 30, 4800)
      xi.mob.phOnDespawn(mob, ID.mob.ESCHAN_VULTURE_PH, 30, 4800)
      xi.mob.phOnDespawn(mob, ID.mob.ESCHAN_CRAWLER_PH, 30, 4800)
      GetNPCByID(ID.npc.WEPWAWET_QM):updateNPCHideTime(15, xi.settings.main.FORCE_SPAWN_QM_RESET_TIME)
      GetNPCByID(ID.npc.LUSTFUL_LYDIA_QM):updateNPCHideTime(15, xi.settings.main.FORCE_SPAWN_QM_RESET_TIME)
      GetNPCByID(ID.npc.AGLAOPHOTIS_QM):updateNPCHideTime(15, xi.settings.main.FORCE_SPAWN_QM_RESET_TIME)
      GetNPCByID(ID.npc.TANGATA_MANU_QM):updateNPCHideTime(15, xi.settings.main.FORCE_SPAWN_QM_RESET_TIME)
      GetNPCByID(ID.npc.VIDALA_QM):updateNPCHideTime(15, xi.settings.main.FORCE_SPAWN_QM_RESET_TIME)
      GetNPCByID(ID.npc.GESTALT_QM):updateNPCHideTime(15, xi.settings.main.FORCE_SPAWN_QM_RESET_TIME)
      GetNPCByID(ID.npc.ANGRBODA_QM):updateNPCHideTime(15, xi.settings.main.FORCE_SPAWN_QM_RESET_TIME)
      GetNPCByID(ID.npc.CUNNAST_QM):updateNPCHideTime(15, xi.settings.main.FORCE_SPAWN_QM_RESET_TIME)
      GetNPCByID(ID.npc.REVETAUR_QM):updateNPCHideTime(15, xi.settings.main.FORCE_SPAWN_QM_RESET_TIME)
      GetNPCByID(ID.npc.FERRODON_QM):updateNPCHideTime(15, xi.settings.main.FORCE_SPAWN_QM_RESET_TIME)
      GetNPCByID(ID.npc.GULLTOP_QM):updateNPCHideTime(15, xi.settings.main.FORCE_SPAWN_QM_RESET_TIME)
      GetNPCByID(ID.npc.VYALA_QM):updateNPCHideTime(15, xi.settings.main.FORCE_SPAWN_QM_RESET_TIME)
      GetNPCByID(ID.npc.IONOS_QM):updateNPCHideTime(15, xi.settings.main.FORCE_SPAWN_QM_RESET_TIME)
      GetNPCByID(ID.npc.SENSUAL_SANDY_QM):updateNPCHideTime(15, xi.settings.main.FORCE_SPAWN_QM_RESET_TIME)
      GetNPCByID(ID.npc.NOSOI_QM):updateNPCHideTime(15, xi.settings.main.FORCE_SPAWN_QM_RESET_TIME)
      GetNPCByID(ID.npc.KAMOHOALII_QM):updateNPCHideTime(15, xi.settings.main.FORCE_SPAWN_QM_RESET_TIME)
      GetNPCByID(ID.npc.FLEETSTALKER_QM):updateNPCHideTime(15, xi.settings.main.FORCE_SPAWN_QM_RESET_TIME)
      GetNPCByID(ID.npc.URMAHLULLU_QM):updateNPCHideTime(15, xi.settings.main.FORCE_SPAWN_QM_RESET_TIME)
      GetNPCByID(ID.npc.ALPLUACHRA_QM):updateNPCHideTime(15, xi.settings.main.FORCE_SPAWN_QM_RESET_TIME)
      GetNPCByID(ID.npc.BLAZEWING_QM):updateNPCHideTime(15, xi.settings.main.FORCE_SPAWN_QM_RESET_TIME)
      GetNPCByID(ID.npc.WRATHARE_QM):updateNPCHideTime(15, xi.settings.main.FORCE_SPAWN_QM_RESET_TIME)
      GetNPCByID(ID.npc.PAZUZU_QM):updateNPCHideTime(15, xi.settings.main.FORCE_SPAWN_QM_RESET_TIME)
      GetNPCByID(ID.npc.BRITTLIS_QM):updateNPCHideTime(15, xi.settings.main.FORCE_SPAWN_QM_RESET_TIME)
      GetNPCByID(ID.npc.UMDHLEBI_QM):updateNPCHideTime(15, xi.settings.main.FORCE_SPAWN_QM_RESET_TIME)
      GetNPCByID(ID.npc.SHOCKMAW_QM):updateNPCHideTime(15, xi.settings.main.FORCE_SPAWN_QM_RESET_TIME)
end)
end
for _, entry in pairs(nmmobname) do 
m:addOverride(string.format("xi.zones.Escha_ZiTah.mobs.%s.onMobSpawn", entry[1]), function(mob)
        mob:setMobMod(xi.mobMod.IDLE_DESPAWN, 180)

    if mob:getMainLvl() > 119 and mob:getMainLvl() <= 125 then
        mob:addMod(xi.mod.ATT, 1400)
        mob:addMod(xi.mod.DEF, 250)
        mob:addMod(xi.mod.ACC, 700)
        mob:addMod(xi.mod.EVA, 200)
        mob:addMod(xi.mod.MATT, 100)
        mob:addMod(xi.mod.MDEF, 250)
        mob:addMod(xi.mod.MACC, 700)
        mob:addMod(xi.mod.MEVA, 200)
        mob:addMod(xi.mod.HASTE_MAGIC, 15)
        mob:addMod(xi.mod.REGEN, 25)
        mob:addMod(xi.mod.REFRESH, 25)
    end
end)
end

m:addOverride("xi.zones.Escha_ZiTah.npcs.qm.onTrigger", function(player, npc)
--if npc == npcUtil.popFromQM(player, npc, ID.npc.WEPWAWET_QM) then
local npc = npc:getID()
if npc == ID.npc.WEPWAWET_QM then
player:startEvent(9203, 16777217, 0, 0, 0, 0)
elseif npc == ID.npc.REVETAUR_QM then
player:startEvent(9204, 82176, 0, 0, 0, 0)
elseif npc == ID.npc.FERRODON_QM then
player:startEvent(9202, 262656, 0, 0, 0, 0)
elseif npc == ID.npc.CUNNAST_QM then
player:startEvent(9201, 32896, 0, 0, 0, 0)
elseif npc == ID.npc.ANGRBODA_QM then
player:startEvent(9205, 4160, 0, 0, 0, 0)
elseif npc == ID.npc.BRITTLIS_QM then
player:startEvent(9206, 524292, 0, 0, 0, 0)
elseif npc == ID.npc.FLEETSTALKER_QM then
player:startEvent(9207, 4195328, 0, 0, 0, 0)
elseif npc == ID.npc.VYALA_QM then
player:startEvent(9208, 8390656, 0, 0, 0, 0)
elseif npc == ID.npc.TANGATA_MANU_QM then
player:startEvent(9209, 1048584, 0, 0, 0, 0)
elseif npc == ID.npc.UMDHLEBI_QM then
player:startEvent(9210, 2097168, 0, 0, 0, 0)
elseif npc == ID.npc.SENSUAL_SANDY_QM then
player:startEvent(9211, 131074, 0, 0, 0, 0)
elseif npc == ID.npc.ALPLUACHRA_QM then
player:startEvent(9200, 8224, 0, 0, 0, 0)
end
end)

m:addOverride("xi.zones.Escha_ZiTah.npcs.qm.onEventFinish", function(player, csid, option, npc, trade)
--player:PrintToPlayer('You do not possess the Key Item to spawn this NM.')

if csid == 9200 and option == 119 and
player:hasKeyItem(2900) then
npcUtil.popFromQM(player, npc, ID.mob.GESTALT)
player:delKeyItem(2900)
elseif csid == 9200 and option == 119 then
player:printToPlayer('You do not possess the Key Item to spawn this NM.')
elseif csid == 9200 and option == 135 and
player:hasKeyItem(2908) then
npcUtil.popFromQM(player, npc, ID.mob.ALPLUACHRA)
npcUtil.popFromQM(player, npc, ID.mob.BUCCA)
npcUtil.popFromQM(player, npc, ID.mob.PUCA)
player:delKeyItem(2908)
elseif csid == 9200 and option == 135 then
player:printToPlayer('You do not possess the Key Item to spawn this NM.')
end

if csid == 9201 and option == 119 and
player:hasKeyItem(2902) then
npcUtil.popFromQM(player, npc, ID.mob.CUNNAST)
player:delKeyItem(2902)
elseif csid == 9201 and option == 119 then
player:printToPlayer('You do not possess the Key Item to spawn this NM.')
elseif csid == 9201 and option == 135 and
player:hasKeyItem(2910) then
npcUtil.popFromQM(player, npc, ID.mob.WRATHARE)
player:delKeyItem(2910)
elseif csid == 9201 and option == 135 then
player:printToPlayer('You do not possess the Key Item to spawn this NM.')
end

if csid == 9202 and option == 119 and
player:hasKeyItem(2904) then
npcUtil.popFromQM(player, npc, ID.mob.FERRODON)
player:delKeyItem(2904)
elseif csid == 9202 and option == 119 then
player:printToPlayer('You do not possess the Key Item to spawn this NM.')
elseif csid == 9202 and option == 125 and
player:hasKeyItem(2913) then
npcUtil.popFromQM(player, npc, ID.mob.NOSOI)
player:delKeyItem(2913)
elseif csid == 9202 and option == 125 then
player:printToPlayer('You do not possess the Key Item to spawn this NM.')
end

if csid == 9203 and option == 119 and
player:hasKeyItem(2895) then
npcUtil.popFromQM(player, npc, ID.mob.WEPWAWET)
player:delKeyItem(2895)
elseif csid == 9203 and option == 119 then
player:printToPlayer('You do not possess the Key Item to spawn this NM.')
elseif csid == 9203 and option == 135 and
player:hasKeyItem(2919) then
npcUtil.popFromQM(player, npc, ID.mob.URMAHLULLU)
player:delKeyItem(2919)
elseif csid == 9203 and option == 135 then
player:printToPlayer('You do not possess the Key Item to spawn this NM.')
end

if csid == 9204 and option == 119 and
player:hasKeyItem(2903) then
npcUtil.popFromQM(player, npc, ID.mob.REVETAUR)
player:delKeyItem(2903)
elseif csid == 9204 and option == 119 then
player:printToPlayer('You do not possess the Key Item to spawn this NM.')
elseif csid == 9204 and option == 125 and
player:hasKeyItem(2911) then
npcUtil.popFromQM(player, npc, ID.mob.IONOS)
player:delKeyItem(2911)
elseif csid == 9204 and option == 125 then
player:printToPlayer('You do not possess the Key Item to spawn this NM.')
elseif csid == 9204 and option == 135 and
player:hasKeyItem(2909) then
npcUtil.popFromQM(player, npc, ID.mob.PAZUZU)
player:delKeyItem(2909)
elseif csid == 9203 and option == 135 then
player:printToPlayer('You do not possess the Key Item to spawn this NM.')
end

if csid == 9205 and option == 119 and
player:hasKeyItem(2901) then
npcUtil.popFromQM(player, npc, ID.mob.ANGRBODA)
player:delKeyItem(2901)
elseif csid == 9205 and option == 119 then
player:printToPlayer('You do not possess the Key Item to spawn this NM.')
elseif csid == 9205 and option == 135 and
player:hasKeyItem(2907) then
npcUtil.popFromQM(player, npc, ID.mob.BLAZEWING)
player:delKeyItem(2907)
elseif csid == 9205 and option == 135 then
player:printToPlayer('You do not possess the Key Item to spawn this NM.')
end

if csid == 9206 and option == 119 and
player:hasKeyItem(2897) then
npcUtil.popFromQM(player, npc, ID.mob.AGLAOPHOTIS)
player:delKeyItem(2897)
elseif csid == 9206 and option == 119 then
player:printToPlayer('You do not possess the Key Item to spawn this NM.')
elseif csid == 9206 and option == 125 and
player:hasKeyItem(2914) then
npcUtil.popFromQM(player, npc, ID.mob.BRITTLIS)
player:delKeyItem(2914)
elseif csid == 9206 and option == 125 then
player:printToPlayer('You do not possess the Key Item to spawn this NM.')
end

if csid == 9207 and option == 119 and
player:hasKeyItem(2905) then
npcUtil.popFromQM(player, npc, ID.mob.GULLTOP)
player:delKeyItem(2905)
elseif csid == 9207 and option == 119 then
player:printToPlayer('You do not possess the Key Item to spawn this NM.')
elseif csid == 9207 and option == 135 and
player:hasKeyItem(2917) then
npcUtil.popFromQM(player, npc, ID.mob.FLEETSTALKER)
player:delKeyItem(2917)
elseif csid == 9207 and option == 135 then
player:printToPlayer('You do not possess the Key Item to spawn this NM.')
end

if csid == 9208 and option == 119 and
player:hasKeyItem(2906) then
npcUtil.popFromQM(player, npc, ID.mob.VYALA)
player:delKeyItem(2906)
elseif csid == 9208 and option == 119 then
player:printToPlayer('You do not possess the Key Item to spawn this NM.')
elseif csid == 9208 and option == 135 and
player:hasKeyItem(2918) then
npcUtil.popFromQM(player, npc, ID.mob.SHOCKMAW)
player:delKeyItem(2918)
elseif csid == 9208 and option == 135 then
player:printToPlayer('You do not possess the Key Item to spawn this NM.')
end

if csid == 9209 and option == 119 and
player:hasKeyItem(2898) then
npcUtil.popFromQM(player, npc, ID.mob.TANGATA_MANU)
player:delKeyItem(2898)
elseif csid == 9209 and option == 119 then
player:printToPlayer('You do not possess the Key Item to spawn this NM.')
elseif csid == 9209 and option == 125 and
player:hasKeyItem(2915) then
npcUtil.popFromQM(player, npc, ID.mob.KAMOHOALII)
player:delKeyItem(2915)
elseif csid == 9209 and option == 125 then
player:printToPlayer('You do not possess the Key Item to spawn this NM.')
end

if csid == 9210 and option == 119 and
player:hasKeyItem(2899) then
npcUtil.popFromQM(player, npc, ID.mob.VIDALA)
player:delKeyItem(2899)
elseif csid == 9210 and option == 119 then
player:printToPlayer('You do not possess the Key Item to spawn this NM.')
elseif csid == 9210 and option == 125 and
player:hasKeyItem(2916) then
npcUtil.popFromQM(player, npc, ID.mob.UMDHLEBI)
player:delKeyItem(2916)
elseif csid == 9210 and option == 125 then
player:printToPlayer('You do not possess the Key Item to spawn this NM.')
end

if csid == 9211 and option == 119 and
player:hasKeyItem(2896) then
npcUtil.popFromQM(player, npc, ID.mob.LUSTFUL_LYDIA)
player:delKeyItem(2896)
elseif csid == 9211 and option == 119 then
player:printToPlayer('You do not possess the Key Item to spawn this NM.')
elseif csid == 9211 and option == 125 and
player:hasKeyItem(2912) then
npcUtil.popFromQM(player, npc, ID.mob.SENSUAL_SANDY)
player:delKeyItem(2912)
elseif csid == 9211 and option == 125 then
player:printToPlayer('You do not possess the Key Item to spawn this NM.')
end


end)

return m

