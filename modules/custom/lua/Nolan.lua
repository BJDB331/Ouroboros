local ensureTable = function(str)
    local parts = utils.splitStr(str, '.')
    local table = _G;
    for _, part in ipairs(parts) do
        table[part] = table[part] or {}
        table = table[part]
    end
end
    ensureTable('xi.zones.Norg.npcs.Nolan')

require("modules/module_utils")
require("scripts/globals/npc_util")
local ID = zones[xi.zone.NORG]

local m = Module:new("Nolan")
local tradedCombo = 0

local tradeTablePathA =
{
[  1] = { trade = { 26791,{ 9086, 6}}, base = 26791, aug1 =  79, aug1MAX = 25, aug2 =  39, aug2MAX =  6, aug3 =  54, aug3MAX =  3, aug4 = 78, aug4MAX = 0 }, -- Eschite Helm
[  2] = { trade = { 26947,{ 9086, 6}}, base = 26947, aug1 =  79, aug1MAX = 25, aug2 =  39, aug2MAX =  6, aug3 =  54, aug3MAX =  3, aug4 = 78, aug4MAX = 0 }, -- Eschite Breastplate
[  3] = { trade = { 27097,{ 9086, 6}}, base = 27097, aug1 =  79, aug1MAX = 25, aug2 =  39, aug2MAX =  6, aug3 =  54, aug3MAX =  3, aug4 = 78, aug4MAX = 0 }, -- Eschite Gauntlets
[  4] = { trade = { 27282,{ 9086, 6}}, base = 27282, aug1 =  79, aug1MAX = 25, aug2 =  39, aug2MAX =  6, aug3 =  54, aug3MAX =  3, aug4 = 78, aug4MAX = 0 }, -- Eschite Cuisses
[  5] = { trade = { 27457,{ 9086, 6}}, base = 27457, aug1 =  79, aug1MAX = 25, aug2 =  39, aug2MAX =  6, aug3 =  54, aug3MAX =  3, aug4 = 78, aug4MAX = 0 }, -- Eschite Greaves
[  6] = { trade = { 26792,{ 9086, 6}}, base = 26792, aug1 =  78, aug1MAX = 24, aug2 = 514, aug2MAX =  9, aug3 = 356, aug3MAX =  4, aug4 =  0, aug4MAX = 0 }, -- Despair Helm
[  7] = { trade = { 26948,{ 9086, 6}}, base = 26948, aug1 =  78, aug1MAX = 24, aug2 = 514, aug2MAX =  9, aug3 = 356, aug3MAX =  4, aug4 =  0, aug4MAX = 0 }, -- Despair Mail
[  8] = { trade = { 27098,{ 9086, 6}}, base = 27098, aug1 =  78, aug1MAX = 24, aug2 = 514, aug2MAX =  9, aug3 = 356, aug3MAX =  4, aug4 =  0, aug4MAX = 0 }, -- Despair Finger Gauntlets
[  9] = { trade = { 27283,{ 9086, 6}}, base = 27283, aug1 =  78, aug1MAX = 24, aug2 = 514, aug2MAX =  9, aug3 = 356, aug3MAX =  4, aug4 =  0, aug4MAX = 0 }, -- Despair Cuisses
[ 10] = { trade = { 27458,{ 9086, 6}}, base = 27458, aug1 =  78, aug1MAX = 24, aug2 = 514, aug2MAX =  9, aug3 = 356, aug3MAX =  4, aug4 =  0, aug4MAX = 0 }, -- Despair Greaves
[ 11] = { trade = { 26793,{ 9086, 6}}, base = 26793, aug1 = 512, aug1MAX =  9, aug2 =  23, aug2MAX = 14, aug3 = 195, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Naga Somen
[ 12] = { trade = { 26949,{ 9086, 6}}, base = 26949, aug1 = 512, aug1MAX =  9, aug2 =  23, aug2MAX = 14, aug3 = 195, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Naga Samue
[ 13] = { trade = { 27099,{ 9086, 6}}, base = 27099, aug1 = 512, aug1MAX =  9, aug2 =  23, aug2MAX = 14, aug3 = 195, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Naga Tekko
[ 14] = { trade = { 27284,{ 9086, 6}}, base = 27284, aug1 = 512, aug1MAX =  9, aug2 =  23, aug2MAX = 14, aug3 = 195, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Naga Hakama
[ 15] = { trade = { 27459,{ 9086, 6}}, base = 27459, aug1 = 512, aug1MAX =  9, aug2 =  23, aug2MAX = 14, aug3 = 195, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Naga Kyahan
[ 16] = { trade = { 26794,{ 9086, 6}}, base = 26794, aug1 = 513, aug1MAX =  9, aug2 = 512, aug2MAX =  6, aug3 = 516, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Rawhide Mask
[ 17] = { trade = { 26950,{ 9086, 6}}, base = 26950, aug1 = 513, aug1MAX =  9, aug2 = 512, aug2MAX =  6, aug3 = 516, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Rawhide Vest
[ 18] = { trade = { 27100,{ 9086, 6}}, base = 27100, aug1 = 513, aug1MAX =  9, aug2 = 512, aug2MAX =  6, aug3 = 516, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Rawhide Gloves
[ 19] = { trade = { 27285,{ 9086, 6}}, base = 27285, aug1 = 513, aug1MAX =  9, aug2 = 512, aug2MAX =  6, aug3 = 516, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Rawhide Trousers
[ 20] = { trade = { 27460,{ 9086, 6}}, base = 27460, aug1 = 513, aug1MAX =  9, aug2 = 512, aug2MAX =  6, aug3 = 516, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Rawhide Boots
[ 21] = { trade = { 26795,{ 9086, 6}}, base = 26795, aug1 = 515, aug1MAX =  9, aug2 = 139, aug2MAX =  9, aug3 = 195, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Pursuer's Beret
[ 22] = { trade = { 26951,{ 9086, 6}}, base = 26951, aug1 = 515, aug1MAX =  9, aug2 = 139, aug2MAX =  9, aug3 = 195, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Pursuer's Doublet
[ 23] = { trade = { 27101,{ 9086, 6}}, base = 27101, aug1 = 515, aug1MAX =  9, aug2 = 139, aug2MAX =  9, aug3 = 195, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Pursuer's Cuffs
[ 24] = { trade = { 27286,{ 9086, 6}}, base = 27286, aug1 = 515, aug1MAX =  9, aug2 = 139, aug2MAX =  9, aug3 = 195, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Pursuer's Pants
[ 25] = { trade = { 27461,{ 9086, 6}}, base = 27461, aug1 = 515, aug1MAX =  9, aug2 = 139, aug2MAX =  9, aug3 = 195, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Pursuer's Gaiters
[ 26] = { trade = { 26796,{ 9086, 6}}, base = 26796, aug1 =  83, aug1MAX = 16, aug2 = 516, aug2MAX =  6, aug3 = 141, aug3MAX =  5, aug4 = 82, aug4MAX = 0 }, -- Psycloth Tiara
[ 27] = { trade = { 26952,{ 9086, 6}}, base = 26952, aug1 =  83, aug1MAX = 16, aug2 = 516, aug2MAX =  6, aug3 = 141, aug3MAX =  5, aug4 = 82, aug4MAX = 0 }, -- Psycloth Vest
[ 28] = { trade = { 27102,{ 9086, 6}}, base = 27102, aug1 =  83, aug1MAX = 16, aug2 = 516, aug2MAX =  6, aug3 = 141, aug3MAX =  5, aug4 = 82, aug4MAX = 0 }, -- Psycloth Manillas
[ 29] = { trade = { 27287,{ 9086, 6}}, base = 27287, aug1 =  83, aug1MAX = 16, aug2 = 516, aug2MAX =  6, aug3 = 141, aug3MAX =  5, aug4 = 82, aug4MAX = 0 }, -- Psycloth Lappas
[ 30] = { trade = { 27462,{ 9086, 6}}, base = 27462, aug1 =  83, aug1MAX = 16, aug2 = 516, aug2MAX =  6, aug3 = 141, aug3MAX =  5, aug4 = 82, aug4MAX = 0 }, -- Psycloth Boots
[ 31] = { trade = { 26797,{ 9086, 6}}, base = 26797, aug1 =  83, aug1MAX = 16, aug2 = 329, aug2MAX =  6, aug3 =  40, aug3MAX =  5, aug4 = 82, aug4MAX = 0 }, -- Vanya Hood
[ 32] = { trade = { 26953,{ 9086, 6}}, base = 26953, aug1 =  83, aug1MAX = 16, aug2 = 329, aug2MAX =  6, aug3 =  40, aug3MAX =  5, aug4 = 82, aug4MAX = 0 }, -- Vanya Robe
[ 33] = { trade = { 27103,{ 9086, 6}}, base = 27103, aug1 =  83, aug1MAX = 16, aug2 = 329, aug2MAX =  6, aug3 =  40, aug3MAX =  5, aug4 = 82, aug4MAX = 0 }, -- Vanya Cuffs
[ 34] = { trade = { 27288,{ 9086, 6}}, base = 27288, aug1 =  83, aug1MAX = 16, aug2 = 329, aug2MAX =  6, aug3 =  40, aug3MAX =  5, aug4 = 82, aug4MAX = 0 }, -- Vanya Slops
[ 35] = { trade = { 27463,{ 9086, 6}}, base = 27463, aug1 =  83, aug1MAX = 16, aug2 = 329, aug2MAX =  6, aug3 =  40, aug3MAX =  5, aug4 = 82, aug4MAX = 0 }, -- Vanya Clogs
[ 36] = { trade = { 25613,{ 9086, 6}}, base = 25613, aug1 = 515, aug1MAX = 9,  aug2 = 513, aug2MAX =  9, aug3 =  23, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--adhemar bonnet
[ 37] = { trade = { 25686,{ 9086, 6}}, base = 25686, aug1 = 515, aug1MAX = 9,  aug2 = 513, aug2MAX =  9, aug3 =  23, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--adhemar jacket
[ 38] = { trade = { 27117,{ 9086, 6}}, base = 27117, aug1 = 515, aug1MAX = 9,  aug2 = 513, aug2MAX =  9, aug3 =  23, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--adhemar wristbands
[ 39] = { trade = { 27302,{ 9086, 6}}, base = 27302, aug1 = 515, aug1MAX = 9,  aug2 = 513, aug2MAX =  9, aug3 =  23, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--adhemar kecks
[ 40] = { trade = { 27473,{ 9086, 6}}, base = 27473, aug1 = 515, aug1MAX = 9,  aug2 = 513, aug2MAX =  9, aug3 =  23, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--adhemar gamashes
[ 41] = { trade = { 25615,{ 9086, 6}}, base = 25615, aug1 =  10, aug1MAX = 27, aug2 =  35, aug2MAX = 14, aug3 = 133, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Amalric coif
[ 42] = { trade = { 25688,{ 9086, 6}}, base = 25688, aug1 =  10, aug1MAX = 27, aug2 =  35, aug2MAX = 14, aug3 = 133, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Amalric doublet
[ 43] = { trade = { 27119,{ 9086, 6}}, base = 27119, aug1 =  10, aug1MAX = 27, aug2 =  35, aug2MAX = 14, aug3 = 133, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Amalric gages
[ 44] = { trade = { 27304,{ 9086, 6}}, base = 27304, aug1 =  10, aug1MAX = 27, aug2 =  35, aug2MAX = 14, aug3 = 133, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Amalric slops
[ 45] = { trade = { 27475,{ 9086, 6}}, base = 27475, aug1 =  10, aug1MAX = 27, aug2 =  35, aug2MAX = 14, aug3 = 133, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Amalric nails
[ 46] = { trade = { 26676,{ 9086, 6}}, base = 26676, aug1 =  10, aug1MAX = 27, aug2 = 101, aug2MAX = 29, aug3 = 369, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Apogee crown
[ 47] = { trade = { 26852,{ 9086, 6}}, base = 26852, aug1 =  10, aug1MAX = 27, aug2 = 101, aug2MAX = 29, aug3 = 369, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Apogee dalmatica
[ 48] = { trade = { 27028,{ 9086, 6}}, base = 27028, aug1 =  10, aug1MAX = 27, aug2 = 101, aug2MAX = 29, aug3 = 369, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Apogee mitts
[ 49] = { trade = { 27204,{ 9086, 6}}, base = 27204, aug1 =  10, aug1MAX = 27, aug2 = 101, aug2MAX = 29, aug3 = 369, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Apogee slacks
[ 50] = { trade = { 27380,{ 9086, 6}}, base = 27380, aug1 =  10, aug1MAX = 27, aug2 = 101, aug2MAX = 29, aug3 = 369, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Apogee pumps
[ 51] = { trade = { 26672,{ 9086, 6}}, base = 26672, aug1 = 512, aug1MAX = 9,  aug2 = 513, aug2MAX =  9, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Argosy celata
[ 52] = { trade = { 26848,{ 9086, 6}}, base = 26848, aug1 = 512, aug1MAX = 9,  aug2 = 513, aug2MAX =  9, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Argosy hauberk
[ 53] = { trade = { 27024,{ 9086, 6}}, base = 27024, aug1 = 512, aug1MAX = 9,  aug2 = 513, aug2MAX =  9, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Argosy mufflers
[ 54] = { trade = { 27200,{ 9086, 6}}, base = 27200, aug1 = 512, aug1MAX = 9,  aug2 = 513, aug2MAX =  9, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Argosy breeches
[ 55] = { trade = { 27376,{ 9086, 6}}, base = 27376, aug1 = 512, aug1MAX = 9,  aug2 = 513, aug2MAX =  9, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Argosy sollerets
[ 56] = { trade = { 26678,{ 9086, 6}}, base = 26678, aug1 =   2, aug1MAX = 27, aug2 = 512, aug2MAX =  9, aug3 = 516, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Carmine mask
[ 57] = { trade = { 26854,{ 9086, 6}}, base = 26854, aug1 =   2, aug1MAX = 27, aug2 = 512, aug2MAX =  9, aug3 = 516, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Carmine scale mail
[ 58] = { trade = { 27030,{ 9086, 6}}, base = 27030, aug1 =   2, aug1MAX = 27, aug2 = 512, aug2MAX =  9, aug3 = 516, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Carmine finger gauntlets
[ 59] = { trade = { 27206,{ 9086, 6}}, base = 27206, aug1 =   2, aug1MAX = 27, aug2 = 512, aug2MAX =  9, aug3 = 516, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Carmine cuisses
[ 60] = { trade = { 27382,{ 9086, 6}}, base = 27382, aug1 =   2, aug1MAX = 27, aug2 = 512, aug2MAX =  9, aug3 = 516, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Carmine greaves
[ 61] = { trade = { 25609,{ 9086, 6}}, base = 25609, aug1 =   2, aug1MAX = 17, aug2 = 512, aug2MAX =  9, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Emicho  coronet
[ 62] = { trade = { 25682,{ 9086, 6}}, base = 25682, aug1 =   2, aug1MAX = 17, aug2 = 512, aug2MAX =  9, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Emicho haubert
[ 63] = { trade = { 27113,{ 9086, 6}}, base = 27113, aug1 =   2, aug1MAX = 17, aug2 = 512, aug2MAX =  9, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Emicho gauntlets
[ 64] = { trade = { 27298,{ 9086, 6}}, base = 27298, aug1 =   2, aug1MAX = 17, aug2 = 512, aug2MAX =  9, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Emicho hose
[ 65] = { trade = { 27469,{ 9086, 6}}, base = 27469, aug1 =   2, aug1MAX = 17, aug2 = 512, aug2MAX =  9, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Emicho gambieras
[ 66] = { trade = { 25617,{ 9086, 6}}, base = 25617, aug1 =  10, aug1MAX = 27, aug2 = 517, aug2MAX =  9, aug3 =  35, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Kaykaus mitra
[ 67] = { trade = { 25690,{ 9086, 6}}, base = 25690, aug1 =  10, aug1MAX = 27, aug2 = 517, aug2MAX =  9, aug3 =  35, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Kaykaus bliaut
[ 68] = { trade = { 27121,{ 9086, 6}}, base = 27121, aug1 =  10, aug1MAX = 27, aug2 = 517, aug2MAX =  9, aug3 =  35, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Kaykaus cuffs
[ 69] = { trade = { 27306,{ 9086, 6}}, base = 27306, aug1 =  10, aug1MAX = 27, aug2 = 517, aug2MAX =  9, aug3 =  35, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Kaykaus tights
[ 70] = { trade = { 27477,{ 9086, 6}}, base = 27477, aug1 =  10, aug1MAX = 27, aug2 = 517, aug2MAX =  9, aug3 =  35, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Kaykaus boots
[ 71] = { trade = { 26668,{ 9086, 6}}, base = 26668, aug1 =  25, aug1MAX = 14, aug2 = 512, aug2MAX =  4, aug3 = 143, aug3MAX =  1, aug4 =  0, aug4MAX = 0 },--Lustratio cap
[ 72] = { trade = { 26844,{ 9086, 6}}, base = 26844, aug1 =  25, aug1MAX = 14, aug2 = 512, aug2MAX =  4, aug3 = 143, aug3MAX =  1, aug4 =  0, aug4MAX = 0 },--Lustratio harness
[ 73] = { trade = { 27020,{ 9086, 6}}, base = 27020, aug1 =  25, aug1MAX = 14, aug2 = 512, aug2MAX =  4, aug3 = 143, aug3MAX =  1, aug4 =  0, aug4MAX = 0 },--Lustratio mittens
[ 74] = { trade = { 27196,{ 9086, 6}}, base = 27196, aug1 =  25, aug1MAX = 14, aug2 = 512, aug2MAX =  4, aug3 = 143, aug3MAX =  1, aug4 =  0, aug4MAX = 0 },--Lustratio subligar
[ 75] = { trade = { 27372,{ 9086, 6}}, base = 27372, aug1 =  25, aug1MAX = 14, aug2 = 512, aug2MAX =  4, aug3 = 143, aug3MAX =  1, aug4 =  0, aug4MAX = 0 },--Lustratio leggings
[ 76] = { trade = { 26674,{ 9086, 6}}, base = 26674, aug1 =  23, aug1MAX = 9,  aug2 =  25, aug2MAX =  9, aug3 =  31, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Rao kabuto
[ 77] = { trade = { 26850,{ 9086, 6}}, base = 26850, aug1 =  23, aug1MAX = 9,  aug2 =  25, aug2MAX =  9, aug3 =  31, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Rao togi
[ 78] = { trade = { 27026,{ 9086, 6}}, base = 27026, aug1 =  23, aug1MAX = 9,  aug2 =  25, aug2MAX =  9, aug3 =  31, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Rao kote
[ 79] = { trade = { 27202,{ 9086, 6}}, base = 27202, aug1 =  23, aug1MAX = 9,  aug2 =  25, aug2MAX =  9, aug3 =  31, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Rao haidate
[ 80] = { trade = { 27378,{ 9086, 6}}, base = 27378, aug1 =  23, aug1MAX = 9,  aug2 =  25, aug2MAX =  9, aug3 =  31, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Rao sune-ate
[ 81] = { trade = { 25611,{ 9086, 6}}, base = 25611, aug1 = 512, aug1MAX = 9,  aug2 = 513, aug2MAX =  9, aug3 =  23, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Ryuo somen
[ 82] = { trade = { 25684,{ 9086, 6}}, base = 25684, aug1 = 512, aug1MAX = 9,  aug2 = 513, aug2MAX =  9, aug3 =  23, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Ryuo domaru
[ 83] = { trade = { 27115,{ 9086, 6}}, base = 27115, aug1 = 512, aug1MAX = 9,  aug2 = 513, aug2MAX =  9, aug3 =  23, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Ryuo tekko
[ 84] = { trade = { 27300,{ 9086, 6}}, base = 27300, aug1 = 512, aug1MAX = 9,  aug2 = 513, aug2MAX =  9, aug3 =  23, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Ryuo hakama
[ 85] = { trade = { 27471,{ 9086, 6}}, base = 27471, aug1 = 512, aug1MAX = 9,  aug2 = 513, aug2MAX =  9, aug3 =  23, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Ryuo sune-ate
[ 86] = { trade = { 26670,{ 9086, 6}}, base = 26670, aug1 =  23, aug1MAX = 9,  aug2 =  25, aug2MAX =  9, aug3 =  39, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Souveran schaller
[ 87] = { trade = { 26846,{ 9086, 6}}, base = 26846, aug1 =  23, aug1MAX = 9,  aug2 =  25, aug2MAX =  9, aug3 =  39, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Souveran cuirass
[ 88] = { trade = { 27022,{ 9086, 6}}, base = 27022, aug1 =  23, aug1MAX = 9,  aug2 =  25, aug2MAX =  9, aug3 =  39, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Souveran handschuhs
[ 89] = { trade = { 27198,{ 9086, 6}}, base = 27198, aug1 =  23, aug1MAX = 9,  aug2 =  25, aug2MAX =  9, aug3 =  39, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Souveran diechlings
[ 90] = { trade = { 27374,{ 9086, 6}}, base = 27374, aug1 =  23, aug1MAX = 9,  aug2 =  25, aug2MAX =  9, aug3 =  39, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Souveran schuhs
[ 91] = { trade = { 25614,{ 9086, 6}}, base = 25614, aug1 = 513, aug1MAX = 11, aug2 = 515, aug2MAX = 11, aug3 =  23, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--adhemar bonnet +1
[ 92] = { trade = { 25687,{ 9086, 6}}, base = 25687, aug1 = 513, aug1MAX = 11, aug2 = 515, aug2MAX = 11, aug3 =  23, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--adhemar jacket +1
[ 93] = { trade = { 27118,{ 9086, 6}}, base = 27118, aug1 = 513, aug1MAX = 11, aug2 = 515, aug2MAX = 11, aug3 =  23, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--adhemar wristbands +1
[ 94] = { trade = { 27303,{ 9086, 6}}, base = 27303, aug1 = 513, aug1MAX = 11, aug2 = 515, aug2MAX = 11, aug3 =  23, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--adhemar kecks +1
[ 95] = { trade = { 27474,{ 9086, 6}}, base = 27474, aug1 = 513, aug1MAX = 11, aug2 = 515, aug2MAX = 11, aug3 =  23, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--adhemar gamashes +1
[ 96] = { trade = { 25616,{ 9086, 6}}, base = 25616, aug1 =  11, aug1MAX = 15, aug2 =  35, aug2MAX = 19, aug3 = 133, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Amalric coif +1
[ 97] = { trade = { 25689,{ 9086, 6}}, base = 25689, aug1 =  11, aug1MAX = 15, aug2 =  35, aug2MAX = 19, aug3 = 133, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Amalric doublet +1
[ 98] = { trade = { 27120,{ 9086, 6}}, base = 27120, aug1 =  11, aug1MAX = 15, aug2 =  35, aug2MAX = 19, aug3 = 133, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Amalric gages +1
[ 99] = { trade = { 27305,{ 9086, 6}}, base = 27305, aug1 =  11, aug1MAX = 15, aug2 =  35, aug2MAX = 19, aug3 = 133, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Amalric slops +1
[100] = { trade = { 27476,{ 9086, 6}}, base = 27476, aug1 =  11, aug1MAX = 15, aug2 =  35, aug2MAX = 19, aug3 = 133, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Amalric nails +1
[101] = { trade = { 26677,{ 9086, 6}}, base = 26677, aug1 =  11, aug1MAX = 15, aug2 = 101, aug2MAX = 34, aug3 = 369, aug3MAX =  7, aug4 =  0, aug4MAX = 0 },--Apogee crown +1
[102] = { trade = { 26853,{ 9086, 6}}, base = 26853, aug1 =  11, aug1MAX = 15, aug2 = 101, aug2MAX = 34, aug3 = 369, aug3MAX =  7, aug4 =  0, aug4MAX = 0 },--Apogee dalmatica +1
[103] = { trade = { 27029,{ 9086, 6}}, base = 27029, aug1 =  11, aug1MAX = 15, aug2 = 101, aug2MAX = 34, aug3 = 369, aug3MAX =  7, aug4 =  0, aug4MAX = 0 },--Apogee mitts +1
[104] = { trade = { 27205,{ 9086, 6}}, base = 27205, aug1 =  11, aug1MAX = 15, aug2 = 101, aug2MAX = 34, aug3 = 369, aug3MAX =  7, aug4 =  0, aug4MAX = 0 },--Apogee slacks +1
[105] = { trade = { 27381,{ 9086, 6}}, base = 27381, aug1 =  11, aug1MAX = 15, aug2 = 101, aug2MAX = 34, aug3 = 369, aug3MAX =  7, aug4 =  0, aug4MAX = 0 },--Apogee pumps +1
[106] = { trade = { 26673,{ 9086, 6}}, base = 26673, aug1 = 512, aug1MAX = 11, aug2 = 513, aug2MAX = 11, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Argosy celata +1
[107] = { trade = { 26849,{ 9086, 6}}, base = 26849, aug1 = 512, aug1MAX = 11, aug2 = 513, aug2MAX = 11, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Argosy hauberk +1
[108] = { trade = { 27025,{ 9086, 6}}, base = 27025, aug1 = 512, aug1MAX = 11, aug2 = 513, aug2MAX = 11, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Argosy mufflers +1
[109] = { trade = { 27201,{ 9086, 6}}, base = 27201, aug1 = 512, aug1MAX = 11, aug2 = 513, aug2MAX = 11, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Argosy breeches +1
[110] = { trade = { 27377,{ 9086, 6}}, base = 27377, aug1 = 512, aug1MAX = 11, aug2 = 513, aug2MAX = 11, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Argosy sollerets +1
[111] = { trade = { 26679,{ 9086, 6}}, base = 26679, aug1 =   3, aug1MAX = 15, aug2 = 512, aug2MAX = 11, aug3 = 516, aug3MAX = 11, aug4 =  0, aug4MAX = 0 },--Carmine mask +1
[112] = { trade = { 26855,{ 9086, 6}}, base = 26855, aug1 =   3, aug1MAX = 15, aug2 = 512, aug2MAX = 11, aug3 = 516, aug3MAX = 11, aug4 =  0, aug4MAX = 0 },--Carmine scale mail +1
[113] = { trade = { 27031,{ 9086, 6}}, base = 27031, aug1 =   3, aug1MAX = 15, aug2 = 512, aug2MAX = 11, aug3 = 516, aug3MAX = 11, aug4 =  0, aug4MAX = 0 },--Carmine finger gauntlets +1
[114] = { trade = { 27207,{ 9086, 6}}, base = 27207, aug1 =   3, aug1MAX = 15, aug2 = 512, aug2MAX = 11, aug3 = 516, aug3MAX = 11, aug4 =  0, aug4MAX = 0 },--Carmine cuisses +1
[115] = { trade = { 27383,{ 9086, 6}}, base = 27383, aug1 =   3, aug1MAX = 15, aug2 = 512, aug2MAX = 11, aug3 = 516, aug3MAX = 11, aug4 =  0, aug4MAX = 0 },--Carmine greaves +1
[116] = { trade = { 25610,{ 9086, 6}}, base = 25610, aug1 =   3, aug1MAX = 0,  aug2 = 512, aug2MAX = 11, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Emicho  coronet +1
[117] = { trade = { 25683,{ 9086, 6}}, base = 25683, aug1 =   3, aug1MAX = 0,  aug2 = 512, aug2MAX = 11, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Emicho haubert +1
[118] = { trade = { 27114,{ 9086, 6}}, base = 27114, aug1 =   3, aug1MAX = 0,  aug2 = 512, aug2MAX = 11, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Emicho gauntlets +1
[119] = { trade = { 27299,{ 9086, 6}}, base = 27299, aug1 =   3, aug1MAX = 0,  aug2 = 512, aug2MAX = 11, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Emicho hose +1
[120] = { trade = { 27470,{ 9086, 6}}, base = 27470, aug1 =   3, aug1MAX = 0,  aug2 = 512, aug2MAX = 11, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Emicho gambieras +1
[121] = { trade = { 25618,{ 9086, 6}}, base = 25618, aug1 =  11, aug1MAX = 15, aug2 = 517, aug2MAX = 11, aug3 =  35, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Kaykaus mitra +1
[122] = { trade = { 25691,{ 9086, 6}}, base = 25691, aug1 =  11, aug1MAX = 15, aug2 = 517, aug2MAX = 11, aug3 =  35, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Kaykaus bliaut +1
[123] = { trade = { 27122,{ 9086, 6}}, base = 27122, aug1 =  11, aug1MAX = 15, aug2 = 517, aug2MAX = 11, aug3 =  35, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Kaykaus cuffs +1
[124] = { trade = { 27307,{ 9086, 6}}, base = 27307, aug1 =  11, aug1MAX = 15, aug2 = 517, aug2MAX = 11, aug3 =  35, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Kaykaus tights +1
[125] = { trade = { 27478,{ 9086, 6}}, base = 27478, aug1 =  11, aug1MAX = 15, aug2 = 517, aug2MAX = 11, aug3 =  35, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Kaykaus boots +1
[126] = { trade = { 26669,{ 9086, 6}}, base = 26669, aug1 =  25, aug1MAX = 19, aug2 = 512, aug2MAX =  7, aug3 = 143, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Lustratio cap +1
[127] = { trade = { 26845,{ 9086, 6}}, base = 26845, aug1 =  25, aug1MAX = 19, aug2 = 512, aug2MAX =  7, aug3 = 143, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Lustratio harness +1
[128] = { trade = { 27021,{ 9086, 6}}, base = 27021, aug1 =  25, aug1MAX = 19, aug2 = 512, aug2MAX =  7, aug3 = 143, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Lustratio mittens +1
[129] = { trade = { 27197,{ 9086, 6}}, base = 27197, aug1 =  25, aug1MAX = 19, aug2 = 512, aug2MAX =  7, aug3 = 143, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Lustratio subligar +1
[130] = { trade = { 27373,{ 9086, 6}}, base = 27373, aug1 =  25, aug1MAX = 19, aug2 = 512, aug2MAX =  7, aug3 = 143, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Lustratio leggings +1
[131] = { trade = { 26675,{ 9086, 6}}, base = 26675, aug1 =  23, aug1MAX = 11, aug2 =  25, aug2MAX = 11, aug3 =  31, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Rao kabuto +1
[132] = { trade = { 26851,{ 9086, 6}}, base = 26851, aug1 =  23, aug1MAX = 11, aug2 =  25, aug2MAX = 11, aug3 =  31, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Rao togi +1
[133] = { trade = { 27027,{ 9086, 6}}, base = 27027, aug1 =  23, aug1MAX = 11, aug2 =  25, aug2MAX = 11, aug3 =  31, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Rao kote +1
[134] = { trade = { 27203,{ 9086, 6}}, base = 27203, aug1 =  23, aug1MAX = 11, aug2 =  25, aug2MAX = 11, aug3 =  31, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Rao haidate +1
[135] = { trade = { 27379,{ 9086, 6}}, base = 27379, aug1 =  23, aug1MAX = 11, aug2 =  25, aug2MAX = 11, aug3 =  31, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Rao sune-ate +1
[136] = { trade = { 25612,{ 9086, 6}}, base = 25612, aug1 = 512, aug1MAX = 11, aug2 = 513, aug2MAX = 11, aug3 =  23, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Ryuo somen +1
[137] = { trade = { 25685,{ 9086, 6}}, base = 25685, aug1 = 512, aug1MAX = 11, aug2 = 513, aug2MAX = 11, aug3 =  23, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Ryuo domaru +1
[138] = { trade = { 27116,{ 9086, 6}}, base = 27116, aug1 = 512, aug1MAX = 11, aug2 = 513, aug2MAX = 11, aug3 =  23, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Ryuo tekko +1
[139] = { trade = { 27301,{ 9086, 6}}, base = 27301, aug1 = 512, aug1MAX = 11, aug2 = 513, aug2MAX = 11, aug3 =  23, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Ryuo hakama +1
[140] = { trade = { 27472,{ 9086, 6}}, base = 27472, aug1 = 512, aug1MAX = 11, aug2 = 513, aug2MAX = 11, aug3 =  23, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Ryuo sune-ate +1
[141] = { trade = { 26671,{ 9086, 6}}, base = 26671, aug1 =  23, aug1MAX = 12, aug2 =  25, aug2MAX = 11, aug3 =  39, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Souveran schaller +1
[142] = { trade = { 26847,{ 9086, 6}}, base = 26847, aug1 =  23, aug1MAX = 12, aug2 =  25, aug2MAX = 11, aug3 =  39, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Souveran cuirass +1
[143] = { trade = { 27023,{ 9086, 6}}, base = 27023, aug1 =  23, aug1MAX = 12, aug2 =  25, aug2MAX = 11, aug3 =  39, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Souveran handschuhs +1
[144] = { trade = { 27199,{ 9086, 6}}, base = 27199, aug1 =  23, aug1MAX = 12, aug2 =  25, aug2MAX = 11, aug3 =  39, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Souveran diechlings +1
[145] = { trade = { 27375,{ 9086, 6}}, base = 27375, aug1 =  23, aug1MAX = 12, aug2 =  25, aug2MAX = 11, aug3 =  39, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Souveran schuhs +1
[146] = { trade = { 20983,{ 9086, 6}}, base = 20983, aug1 =  25, aug1MAX = 14, aug2 =  23, aug2MAX = 14, aug3 =  27, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Mijin
[147] = { trade = { 20710,{ 9086, 6}}, base = 20710, aug1 = 513, aug1MAX = 9,  aug2 =  23, aug2MAX = 19, aug3 =  35, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Nibiru Blade
[148] = { trade = { 21216,{ 9086, 6}}, base = 21216, aug1 = 515, aug1MAX = 9,  aug2 =  27, aug2MAX = 24, aug3 =  40, aug3MAX =  5, aug4 =  0, aug4MAX = 0 },--Nibiru Bow
[149] = { trade = { 20848,{ 9086, 6}}, base = 20848, aug1 =   2, aug1MAX = 17, aug2 = 512, aug2MAX =  9, aug3 =  23, aug3MAX = 24, aug4 =  0, aug4MAX = 0 },--Nibiru Chopper
[150] = { trade = { 21092,{ 9086, 6}}, base = 21092, aug1 = 517, aug1MAX = 9,  aug2 =  35, aug2MAX = 14, aug3 = 329, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Nibiru Cudgel
[151] = { trade = { 21699,{ 9086, 6}}, base = 21699, aug1 = 512, aug1MAX = 9,  aug2 =  25, aug2MAX = 24, aug3 =  35, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Nibiru Faussar
[152] = { trade = { 21273,{ 9086, 6}}, base = 21273, aug1 = 512, aug1MAX = 9,  aug2 =  27, aug2MAX = 14, aug3 = 142, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Nibiru Gun
[153] = { trade = { 21399,{ 9086, 6}}, base = 21399, aug1 =  10, aug1MAX = 17, aug2 =  35, aug2MAX =  9, aug3 =  67, aug3MAX =  1, aug4 =  0, aug4MAX = 0 },--Nibiru Harp
[154] = { trade = { 20600,{ 9086, 6}}, base = 20600, aug1 =  23, aug1MAX = 19, aug2 =  25, aug2MAX = 14, aug3 =  31, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Nibiru Knife
[155] = { trade = { 20939,{ 9086, 6}}, base = 20939, aug1 = 110, aug1MAX = 2,  aug2 = 106, aug2MAX = 19, aug3 = 107, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Nibiru Lance
[156] = { trade = { 20524,{ 9086, 6}}, base = 20524, aug1 =  31, aug1MAX = 19, aug2 =  39, aug2MAX =  6, aug3 =  54, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Nibiru Sainti
[157] = { trade = { 27642,{ 9086, 6}}, base = 27642, aug1 = 517, aug1MAX = 14, aug2 = 329, aug2MAX =  4, aug3 = 356, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Nibiru Shield
[158] = { trade = { 20895,{ 9086, 6}}, base = 20895, aug1 =  23, aug1MAX = 19, aug2 =  25, aug2MAX = 14, aug3 = 142, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Nibiru Sickle
[159] = { trade = { 21156,{ 9086, 6}}, base = 21156, aug1 = 110, aug1MAX = 1,  aug2 = 100, aug2MAX = 19, aug3 = 101, aug3MAX = 24, aug4 =  0, aug4MAX = 0 },--Nibiru Staff
[160] = { trade = { 20801,{ 9086, 6}}, base = 20801, aug1 = 107, aug1MAX = 24, aug2 = 101, aug2MAX = 14, aug3 = 104, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Nibiru Tabar
[161] = { trade = { 21031,{ 9086, 6}}, base = 21031, aug1 = 513, aug1MAX = 6,  aug2 =  23, aug2MAX = 19, aug3 = 142, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Sensui
[162] = { trade = { 20979,{ 9086, 6}}, base = 20979, aug1 = 740, aug1MAX = 14, aug2 = 512, aug2MAX = 14, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Aizushintogo
[163] = { trade = { 21150,{ 9086, 6}}, base = 21150, aug1 =  11, aug1MAX = 15, aug2 = 516, aug2MAX = 19, aug3 = 133, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Akademos
[164] = { trade = { 21698,{ 9086, 6}}, base = 21698, aug1 = 740, aug1MAX = 29, aug2 = 512, aug2MAX = 19, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Bidenhander
[165] = { trade = { 21482,{ 9086, 6}}, base = 21482, aug1 = 746, aug1MAX = 14, aug2 = 515, aug2MAX = 14, aug3 =  29, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Compensator
[166] = { trade = { 20892,{ 9086, 6}}, base = 20892, aug1 = 740, aug1MAX = 29, aug2 = 512, aug2MAX = 19, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Deathbane
[167] = { trade = { 20702,{ 9086, 6}}, base = 20702, aug1 = 740, aug1MAX = 14, aug2 = 23,  aug2MAX = 14, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Emissary
[168] = { trade = { 20597,{ 9086, 6}}, base = 20597, aug1 = 740, aug1MAX = 14, aug2 = 512, aug2MAX = 14, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Enchufla
[169] = { trade = { 21149,{ 9086, 6}}, base = 21149, aug1 =  40, aug1MAX = 5,  aug2 = 101, aug2MAX = 29, aug3 = 112, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Espiritus
[170] = { trade = { 20519,{ 9086, 6}}, base = 20519, aug1 = 740, aug1MAX = 14, aug2 = 512, aug2MAX = 19, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Hammerfists
[171] = { trade = { 21027,{ 9086, 6}}, base = 21027, aug1 = 740, aug1MAX = 29, aug2 = 512, aug2MAX = 19, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Ichigohitofuri
[172] = { trade = { 20845,{ 9086, 6}}, base = 20845, aug1 = 740, aug1MAX = 29, aug2 = 512, aug2MAX = 19, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Instigator
[173] = { trade = { 20701,{ 9086, 6}}, base = 20701, aug1 = 740, aug1MAX = 14, aug2 = 512, aug2MAX = 14, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Iris
[174] = { trade = { 20599,{ 9086, 6}}, base = 20599, aug1 = 740, aug1MAX = 14, aug2 = 518, aug2MAX = 14, aug3 =  35, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Kali
[175] = { trade = { 21151,{ 9086, 6}}, base = 21151, aug1 =  11, aug1MAX = 15, aug2 = 516, aug2MAX = 19, aug3 = 133, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Lathi
[176] = { trade = { 20520,{ 9086, 6}}, base = 20520, aug1 = 740, aug1MAX = 14, aug2 = 512, aug2MAX = 19, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Midnights
[177] = { trade = { 20700,{ 9086, 6}}, base = 20700, aug1 = 740, aug1MAX = 14, aug2 = 512, aug2MAX = 14, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Nixxer
[178] = { trade = { 21084,{ 9086, 6}}, base = 21084, aug1 =  11, aug1MAX = 15, aug2 = 329, aug2MAX = 14, aug3 =  40, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Queller Rod
[179] = { trade = { 20937,{ 9086, 6}}, base = 20937, aug1 = 740, aug1MAX = 29, aug2 = 512, aug2MAX = 19, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Rhomphaia
[180] = { trade = { 20598,{ 9086, 6}}, base = 20598, aug1 = 740, aug1MAX = 14, aug2 = 512, aug2MAX = 14, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Shijo
[181] = { trade = { 20797,{ 9086, 6}}, base = 20797, aug1 = 740, aug1MAX = 14, aug2 = 512, aug2MAX = 14, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Skullrender
[182] = { trade = { 21085,{ 9086, 6}}, base = 21085, aug1 =  10, aug1MAX = 27, aug2 = 516, aug2MAX = 14, aug3 = 133, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Solstice
[183] = { trade = { 21215,{ 9086, 6}}, base = 21215, aug1 = 746, aug1MAX = 14, aug2 = 515, aug2MAX = 14, aug3 =  29, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Vijaya Bow
}

local tradeTablePathB =
{
[  1] = { trade = { 26791,{ 9086, 6}}, base = 26791, aug1 =  83, aug1MAX = 24, aug2 =  23, aug2MAX =  9, aug3 =  39, aug3MAX =  6, aug4 =  9, aug4MAX = 4 }, -- Eschite Helm
[  2] = { trade = { 26947,{ 9086, 6}}, base = 26947, aug1 =  83, aug1MAX = 24, aug2 =  23, aug2MAX =  9, aug3 =  39, aug3MAX =  6, aug4 =  9, aug4MAX = 4 }, -- Eschite Breastplate
[  3] = { trade = { 27097,{ 9086, 6}}, base = 27097, aug1 =  83, aug1MAX = 24, aug2 =  23, aug2MAX =  9, aug3 =  39, aug3MAX =  6, aug4 =  9, aug4MAX = 4 }, -- Eschite Gauntlets
[  4] = { trade = { 27282,{ 9086, 6}}, base = 27282, aug1 =  83, aug1MAX = 24, aug2 =  23, aug2MAX =  9, aug3 =  39, aug3MAX =  6, aug4 =  9, aug4MAX = 4 }, -- Eschite Cuisses
[  5] = { trade = { 27457,{ 9086, 6}}, base = 27457, aug1 =  83, aug1MAX = 24, aug2 =  23, aug2MAX =  9, aug3 =  39, aug3MAX =  6, aug4 =  9, aug4MAX = 4 }, -- Eschite Greaves
[  6] = { trade = { 26792,{ 9086, 6}}, base = 26792, aug1 = 512, aug1MAX = 11, aug2 = 514, aug2MAX =  6, aug3 =  49, aug3MAX =  1, aug4 =  0, aug4MAX = 0 }, -- Despair Helm
[  7] = { trade = { 26948,{ 9086, 6}}, base = 26948, aug1 = 512, aug1MAX = 11, aug2 = 514, aug2MAX =  6, aug3 =  49, aug3MAX =  1, aug4 =  0, aug4MAX = 0 }, -- Despair Mail
[  8] = { trade = { 27098,{ 9086, 6}}, base = 27098, aug1 = 512, aug1MAX = 11, aug2 = 514, aug2MAX =  6, aug3 =  49, aug3MAX =  1, aug4 =  0, aug4MAX = 0 }, -- Despair Finger Gauntlets
[  9] = { trade = { 27283,{ 9086, 6}}, base = 27283, aug1 = 512, aug1MAX = 11, aug2 = 514, aug2MAX =  6, aug3 =  49, aug3MAX =  1, aug4 =  0, aug4MAX = 0 }, -- Despair Cuisses
[ 10] = { trade = { 27458,{ 9086, 6}}, base = 27458, aug1 = 512, aug1MAX = 11, aug2 = 514, aug2MAX =  6, aug3 =  49, aug3MAX =  1, aug4 =  0, aug4MAX = 0 }, -- Despair Greaves
[ 11] = { trade = { 26793,{ 9086, 6}}, base = 26793, aug1 =  78, aug1MAX = 24, aug2 = 514, aug2MAX =  9, aug3 =  31, aug3MAX = 19, aug4 =  0, aug4MAX = 0 }, -- Naga Somen
[ 12] = { trade = { 26949,{ 9086, 6}}, base = 26949, aug1 =  78, aug1MAX = 24, aug2 = 514, aug2MAX =  9, aug3 =  31, aug3MAX = 19, aug4 =  0, aug4MAX = 0 }, -- Naga Samue
[ 13] = { trade = { 27099,{ 9086, 6}}, base = 27099, aug1 =  78, aug1MAX = 24, aug2 = 514, aug2MAX =  9, aug3 =  31, aug3MAX = 19, aug4 =  0, aug4MAX = 0 }, -- Naga Tekko
[ 14] = { trade = { 27284,{ 9086, 6}}, base = 27284, aug1 =  78, aug1MAX = 24, aug2 = 514, aug2MAX =  9, aug3 =  31, aug3MAX = 19, aug4 =  0, aug4MAX = 0 }, -- Naga Hakama
[ 15] = { trade = { 27459,{ 9086, 6}}, base = 27459, aug1 =  78, aug1MAX = 24, aug2 = 514, aug2MAX =  9, aug3 =  31, aug3MAX = 19, aug4 =  0, aug4MAX = 0 }, -- Naga Kyahan
[ 16] = { trade = { 26794,{ 9086, 6}}, base = 26794, aug1 =  79, aug1MAX = 16, aug2 =  23, aug2MAX = 14, aug3 =  31, aug3MAX = 19, aug4 = 78, aug4MAX = 0 }, -- Rawhide Mask
[ 17] = { trade = { 26950,{ 9086, 6}}, base = 26950, aug1 =  79, aug1MAX = 16, aug2 =  23, aug2MAX = 14, aug3 =  31, aug3MAX = 19, aug4 = 78, aug4MAX = 0 }, -- Rawhide Vest
[ 18] = { trade = { 27100,{ 9086, 6}}, base = 27100, aug1 =  79, aug1MAX = 16, aug2 =  23, aug2MAX = 14, aug3 =  31, aug3MAX = 19, aug4 = 78, aug4MAX = 0 }, -- Rawhide Gloves
[ 19] = { trade = { 27285,{ 9086, 6}}, base = 27285, aug1 =  79, aug1MAX = 16, aug2 =  23, aug2MAX = 14, aug3 =  31, aug3MAX = 19, aug4 = 78, aug4MAX = 0 }, -- Rawhide Trousers
[ 20] = { trade = { 27460,{ 9086, 6}}, base = 27460, aug1 =  79, aug1MAX = 16, aug2 =  23, aug2MAX = 14, aug3 =  31, aug3MAX = 19, aug4 = 78, aug4MAX = 0 }, -- Rawhide Boots
[ 21] = { trade = { 26795,{ 9086, 6}}, base = 26795, aug1 = 513, aug1MAX =  6, aug2 = 515, aug2MAX =  9, aug3 = 212, aug3MAX = 14, aug4 =  0, aug4MAX = 0 }, -- Pursuer's Beret
[ 22] = { trade = { 26951,{ 9086, 6}}, base = 26951, aug1 = 513, aug1MAX =  6, aug2 = 515, aug2MAX =  9, aug3 = 212, aug3MAX = 14, aug4 =  0, aug4MAX = 0 }, -- Pursuer's Doublet
[ 23] = { trade = { 27101,{ 9086, 6}}, base = 27101, aug1 = 513, aug1MAX =  6, aug2 = 515, aug2MAX =  9, aug3 = 212, aug3MAX = 14, aug4 =  0, aug4MAX = 0 }, -- Pursuer's Cuffs
[ 24] = { trade = { 27286,{ 9086, 6}}, base = 27286, aug1 = 513, aug1MAX =  6, aug2 = 515, aug2MAX =  9, aug3 = 212, aug3MAX = 14, aug4 =  0, aug4MAX = 0 }, -- Pursuer's Pants
[ 25] = { trade = { 27461,{ 9086, 6}}, base = 27461, aug1 = 513, aug1MAX =  6, aug2 = 515, aug2MAX =  9, aug3 = 212, aug3MAX = 14, aug4 =  0, aug4MAX = 0 }, -- Pursuer's Gaiters
[ 26] = { trade = { 26796,{ 9086, 6}}, base = 26796, aug1 =  35, aug1MAX =  9, aug2 =  53, aug2MAX = 14, aug3 = 517, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Psycloth Tiara
[ 27] = { trade = { 26952,{ 9086, 6}}, base = 26952, aug1 =  35, aug1MAX =  9, aug2 =  53, aug2MAX = 14, aug3 = 517, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Psycloth Vest
[ 28] = { trade = { 27102,{ 9086, 6}}, base = 27102, aug1 =  35, aug1MAX =  9, aug2 =  53, aug2MAX = 14, aug3 = 517, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Psycloth Manillas
[ 29] = { trade = { 27287,{ 9086, 6}}, base = 27287, aug1 =  35, aug1MAX =  9, aug2 =  53, aug2MAX = 14, aug3 = 517, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Psycloth Lappas
[ 30] = { trade = { 27462,{ 9086, 6}}, base = 27462, aug1 =  35, aug1MAX =  9, aug2 =  53, aug2MAX = 14, aug3 = 517, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Psycloth Boots
[ 31] = { trade = { 26797,{ 9086, 6}}, base = 26797, aug1 = 289, aug1MAX = 19, aug2 = 323, aug2MAX =  6, aug3 =  55, aug3MAX =  2, aug4 =  0, aug4MAX = 0 }, -- Vanya Hood
[ 32] = { trade = { 26953,{ 9086, 6}}, base = 26953, aug1 = 289, aug1MAX = 19, aug2 = 323, aug2MAX =  6, aug3 =  55, aug3MAX =  2, aug4 =  0, aug4MAX = 0 }, -- Vanya Robe
[ 33] = { trade = { 27103,{ 9086, 6}}, base = 27103, aug1 = 289, aug1MAX = 19, aug2 = 323, aug2MAX =  6, aug3 =  55, aug3MAX =  2, aug4 =  0, aug4MAX = 0 }, -- Vanya Cuffs
[ 34] = { trade = { 27288,{ 9086, 6}}, base = 27288, aug1 = 289, aug1MAX = 19, aug2 = 323, aug2MAX =  6, aug3 =  55, aug3MAX =  2, aug4 =  0, aug4MAX = 0 }, -- Vanya Slops
[ 35] = { trade = { 27463,{ 9086, 6}}, base = 27463, aug1 = 289, aug1MAX = 19, aug2 = 323, aug2MAX =  6, aug3 =  55, aug3MAX =  2, aug4 =  0, aug4MAX = 0 }, -- Vanya Clogs
[ 36] = { trade = { 25613,{ 9086, 6}}, base = 25613, aug1 = 512, aug1MAX =  9, aug2 = 513, aug2MAX =  9, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--adhemar bonnet
[ 37] = { trade = { 25686,{ 9086, 6}}, base = 25686, aug1 = 512, aug1MAX =  9, aug2 = 513, aug2MAX =  9, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--adhemar jacket
[ 38] = { trade = { 27117,{ 9086, 6}}, base = 27117, aug1 = 512, aug1MAX =  9, aug2 = 513, aug2MAX =  9, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--adhemar wristbands
[ 39] = { trade = { 27302,{ 9086, 6}}, base = 27302, aug1 = 512, aug1MAX =  9, aug2 = 513, aug2MAX =  9, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--adhemar kecks
[ 40] = { trade = { 27473,{ 9086, 6}}, base = 27473, aug1 = 512, aug1MAX =  9, aug2 = 513, aug2MAX =  9, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--adhemar gamashes
[ 41] = { trade = { 25615,{ 9086, 6}}, base = 25615, aug1 =  10, aug1MAX = 27, aug2 = 516, aug2MAX =  9, aug3 =  40, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Amalric coif
[ 42] = { trade = { 25688,{ 9086, 6}}, base = 25688, aug1 =  10, aug1MAX = 27, aug2 = 516, aug2MAX =  9, aug3 =  40, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Amalric doublet
[ 43] = { trade = { 27119,{ 9086, 6}}, base = 27119, aug1 =  10, aug1MAX = 27, aug2 = 516, aug2MAX =  9, aug3 =  40, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Amalric gages
[ 44] = { trade = { 27304,{ 9086, 6}}, base = 27304, aug1 =  10, aug1MAX = 27, aug2 = 516, aug2MAX =  9, aug3 =  40, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Amalric slops
[ 45] = { trade = { 27475,{ 9086, 6}}, base = 27475, aug1 =  10, aug1MAX = 27, aug2 = 516, aug2MAX =  9, aug3 =  40, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Amalric nails
[ 46] = { trade = { 26676,{ 9086, 6}}, base = 26676, aug1 =  10, aug1MAX = 27, aug2 = 107, aug2MAX = 29, aug3 = 369, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Apogee crown
[ 47] = { trade = { 26852,{ 9086, 6}}, base = 26852, aug1 =  10, aug1MAX = 27, aug2 = 107, aug2MAX = 29, aug3 = 369, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Apogee dalmatica
[ 48] = { trade = { 27028,{ 9086, 6}}, base = 27028, aug1 =  10, aug1MAX = 27, aug2 = 107, aug2MAX = 29, aug3 = 369, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Apogee mitts
[ 49] = { trade = { 27204,{ 9086, 6}}, base = 27204, aug1 =  10, aug1MAX = 27, aug2 = 107, aug2MAX = 29, aug3 = 369, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Apogee slacks
[ 50] = { trade = { 27380,{ 9086, 6}}, base = 27380, aug1 =  10, aug1MAX = 27, aug2 = 107, aug2MAX = 29, aug3 = 369, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Apogee pumps
[ 51] = { trade = { 26672,{ 9086, 6}}, base = 26672, aug1 =   2, aug1MAX = 17, aug2 =  23, aug2MAX =  9, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Argosy celata
[ 52] = { trade = { 26848,{ 9086, 6}}, base = 26848, aug1 =   2, aug1MAX = 17, aug2 =  23, aug2MAX =  9, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Argosy hauberk
[ 53] = { trade = { 27024,{ 9086, 6}}, base = 27024, aug1 =   2, aug1MAX = 17, aug2 =  23, aug2MAX =  9, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Argosy mufflers
[ 54] = { trade = { 27200,{ 9086, 6}}, base = 27200, aug1 =   2, aug1MAX = 17, aug2 =  23, aug2MAX =  9, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Argosy breeches
[ 55] = { trade = { 27376,{ 9086, 6}}, base = 27376, aug1 =   2, aug1MAX = 17, aug2 =  23, aug2MAX =  9, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Argosy sollerets
[ 56] = { trade = { 26678,{ 9086, 6}}, base = 26678, aug1 =  23, aug1MAX =  9, aug2 = 513, aug2MAX =  9, aug3 = 517, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Carmine mask
[ 57] = { trade = { 26854,{ 9086, 6}}, base = 26854, aug1 =  23, aug1MAX =  9, aug2 = 513, aug2MAX =  9, aug3 = 517, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Carmine scale mail
[ 58] = { trade = { 27030,{ 9086, 6}}, base = 27030, aug1 =  23, aug1MAX =  9, aug2 = 513, aug2MAX =  9, aug3 = 517, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Carmine finger gauntlets
[ 59] = { trade = { 27206,{ 9086, 6}}, base = 27206, aug1 =  23, aug1MAX =  9, aug2 = 513, aug2MAX =  9, aug3 = 517, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Carmine cuisses
[ 60] = { trade = { 27382,{ 9086, 6}}, base = 27382, aug1 =  23, aug1MAX =  9, aug2 = 513, aug2MAX =  9, aug3 = 517, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Carmine greaves
[ 61] = { trade = { 25609,{ 9086, 6}}, base = 25609, aug1 =   2, aug1MAX = 17, aug2 = 513, aug2MAX =  9, aug3 =  23, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Emicho  coronet
[ 62] = { trade = { 25682,{ 9086, 6}}, base = 25682, aug1 =   2, aug1MAX = 17, aug2 = 513, aug2MAX =  9, aug3 =  23, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Emicho haubert
[ 63] = { trade = { 27113,{ 9086, 6}}, base = 27113, aug1 =   2, aug1MAX = 17, aug2 = 513, aug2MAX =  9, aug3 =  23, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Emicho gauntlets
[ 64] = { trade = { 27298,{ 9086, 6}}, base = 27298, aug1 =   2, aug1MAX = 17, aug2 = 513, aug2MAX =  9, aug3 =  23, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Emicho hose
[ 65] = { trade = { 27469,{ 9086, 6}}, base = 27469, aug1 =   2, aug1MAX = 17, aug2 = 513, aug2MAX =  9, aug3 =  23, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Emicho gambieras
[ 66] = { trade = { 25617,{ 9086, 6}}, base = 25617, aug1 =  10, aug1MAX = 27, aug2 = 323, aug2MAX =  4, aug3 =  40, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Kaykaus mitra
[ 67] = { trade = { 25690,{ 9086, 6}}, base = 25690, aug1 =  10, aug1MAX = 27, aug2 = 323, aug2MAX =  4, aug3 =  40, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Kaykaus bliaut
[ 68] = { trade = { 27121,{ 9086, 6}}, base = 27121, aug1 =  10, aug1MAX = 27, aug2 = 323, aug2MAX =  4, aug3 =  40, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Kaykaus cuffs
[ 69] = { trade = { 27306,{ 9086, 6}}, base = 27306, aug1 =  10, aug1MAX = 27, aug2 = 323, aug2MAX =  4, aug3 =  40, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Kaykaus tights
[ 70] = { trade = { 27477,{ 9086, 6}}, base = 27477, aug1 =  10, aug1MAX = 27, aug2 = 323, aug2MAX =  4, aug3 =  40, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Kaykaus boots
[ 71] = { trade = { 26668,{ 9086, 6}}, base = 26668, aug1 =  23, aug1MAX = 14, aug2 = 513, aug2MAX =  4, aug3 =  41, aug3MAX =  1, aug4 =  0, aug4MAX = 0 },--Lustratio cap
[ 72] = { trade = { 26844,{ 9086, 6}}, base = 26844, aug1 =  23, aug1MAX = 14, aug2 = 513, aug2MAX =  4, aug3 =  41, aug3MAX =  1, aug4 =  0, aug4MAX = 0 },--Lustratio harness
[ 73] = { trade = { 27020,{ 9086, 6}}, base = 27020, aug1 =  23, aug1MAX = 14, aug2 = 513, aug2MAX =  4, aug3 =  41, aug3MAX =  1, aug4 =  0, aug4MAX = 0 },--Lustratio mittens
[ 74] = { trade = { 27196,{ 9086, 6}}, base = 27196, aug1 =  23, aug1MAX = 14, aug2 = 513, aug2MAX =  4, aug3 =  41, aug3MAX =  1, aug4 =  0, aug4MAX = 0 },--Lustratio subligar
[ 75] = { trade = { 27372,{ 9086, 6}}, base = 27372, aug1 =  23, aug1MAX = 14, aug2 = 513, aug2MAX =  4, aug3 =  41, aug3MAX =  1, aug4 =  0, aug4MAX = 0 },--Lustratio leggings
[ 76] = { trade = { 26674,{ 9086, 6}}, base = 26674, aug1 = 512, aug1MAX =  9, aug2 = 513, aug2MAX =  9, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Rao kabuto
[ 77] = { trade = { 26850,{ 9086, 6}}, base = 26850, aug1 = 512, aug1MAX =  9, aug2 = 513, aug2MAX =  9, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Rao togi
[ 78] = { trade = { 27026,{ 9086, 6}}, base = 27026, aug1 = 512, aug1MAX =  9, aug2 = 513, aug2MAX =  9, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Rao kote
[ 79] = { trade = { 27202,{ 9086, 6}}, base = 27202, aug1 = 512, aug1MAX =  9, aug2 = 513, aug2MAX =  9, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Rao haidate
[ 80] = { trade = { 27378,{ 9086, 6}}, base = 27378, aug1 = 512, aug1MAX =  9, aug2 = 513, aug2MAX =  9, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Rao sune-ate
[ 81] = { trade = { 25611,{ 9086, 6}}, base = 25611, aug1 =   2, aug1MAX = 17, aug2 =  23, aug2MAX = 14, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Ryuo somen
[ 82] = { trade = { 25684,{ 9086, 6}}, base = 25684, aug1 =   2, aug1MAX = 17, aug2 =  23, aug2MAX = 14, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Ryuo domaru
[ 83] = { trade = { 27115,{ 9086, 6}}, base = 27115, aug1 =   2, aug1MAX = 17, aug2 =  23, aug2MAX = 14, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Ryuo tekko
[ 84] = { trade = { 27300,{ 9086, 6}}, base = 27300, aug1 =   2, aug1MAX = 17, aug2 =  23, aug2MAX = 14, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Ryuo hakama
[ 85] = { trade = { 27471,{ 9086, 6}}, base = 27471, aug1 =   2, aug1MAX = 17, aug2 =  23, aug2MAX = 14, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Ryuo sune-ate
[ 86] = { trade = { 26670,{ 9086, 6}}, base = 26670, aug1 =   2, aug1MAX = 17, aug2 = 512, aug2MAX =  9, aug3 =  23, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Souveran schaller
[ 87] = { trade = { 26846,{ 9086, 6}}, base = 26846, aug1 =   2, aug1MAX = 17, aug2 = 512, aug2MAX =  9, aug3 =  23, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Souveran cuirass
[ 88] = { trade = { 27022,{ 9086, 6}}, base = 27022, aug1 =   2, aug1MAX = 17, aug2 = 512, aug2MAX =  9, aug3 =  23, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Souveran handschuhs
[ 89] = { trade = { 27198,{ 9086, 6}}, base = 27198, aug1 =   2, aug1MAX = 17, aug2 = 512, aug2MAX =  9, aug3 =  23, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Souveran diechlings
[ 90] = { trade = { 27374,{ 9086, 6}}, base = 27374, aug1 =   2, aug1MAX = 17, aug2 = 512, aug2MAX =  9, aug3 =  23, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Souveran schuhs
[ 91] = { trade = { 25614,{ 9086, 6}}, base = 25614, aug1 = 512, aug1MAX = 11, aug2 = 513, aug2MAX = 11, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--adhemar bonnet +1
[ 92] = { trade = { 25687,{ 9086, 6}}, base = 25687, aug1 = 512, aug1MAX = 11, aug2 = 513, aug2MAX = 11, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--adhemar jacket +1
[ 93] = { trade = { 27118,{ 9086, 6}}, base = 27118, aug1 = 512, aug1MAX = 11, aug2 = 513, aug2MAX = 11, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--adhemar wristbands +1
[ 94] = { trade = { 27303,{ 9086, 6}}, base = 27303, aug1 = 512, aug1MAX = 11, aug2 = 513, aug2MAX = 11, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--adhemar kecks +1
[ 95] = { trade = { 27474,{ 9086, 6}}, base = 27474, aug1 = 512, aug1MAX = 11, aug2 = 513, aug2MAX = 11, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--adhemar gamashes +1
[ 96] = { trade = { 25616,{ 9086, 6}}, base = 25616, aug1 =  11, aug1MAX = 15, aug2 = 516, aug2MAX = 11, aug3 =  40, aug3MAX =  5, aug4 =  0, aug4MAX = 0 },--Amalric coif +1
[ 97] = { trade = { 25689,{ 9086, 6}}, base = 25689, aug1 =  11, aug1MAX = 15, aug2 = 516, aug2MAX = 11, aug3 =  40, aug3MAX =  5, aug4 =  0, aug4MAX = 0 },--Amalric doublet +1
[ 98] = { trade = { 27120,{ 9086, 6}}, base = 27120, aug1 =  11, aug1MAX = 15, aug2 = 516, aug2MAX = 11, aug3 =  40, aug3MAX =  5, aug4 =  0, aug4MAX = 0 },--Amalric gages +1
[ 99] = { trade = { 27305,{ 9086, 6}}, base = 27305, aug1 =  11, aug1MAX = 15, aug2 = 516, aug2MAX = 11, aug3 =  40, aug3MAX =  5, aug4 =  0, aug4MAX = 0 },--Amalric slops +1
[100] = { trade = { 27476,{ 9086, 6}}, base = 27476, aug1 =  11, aug1MAX = 15, aug2 = 516, aug2MAX = 11, aug3 =  40, aug3MAX =  5, aug4 =  0, aug4MAX = 0 },--Amalric nails +1
[101] = { trade = { 26677,{ 9086, 6}}, base = 26677, aug1 =  11, aug1MAX = 15, aug2 = 107, aug2MAX = 34, aug3 = 369, aug3MAX =  7, aug4 =  0, aug4MAX = 0 },--Apogee crown +1
[102] = { trade = { 26853,{ 9086, 6}}, base = 26853, aug1 =  11, aug1MAX = 15, aug2 = 107, aug2MAX = 34, aug3 = 369, aug3MAX =  7, aug4 =  0, aug4MAX = 0 },--Apogee dalmatica +1
[103] = { trade = { 27029,{ 9086, 6}}, base = 27029, aug1 =  11, aug1MAX = 15, aug2 = 107, aug2MAX = 34, aug3 = 369, aug3MAX =  7, aug4 =  0, aug4MAX = 0 },--Apogee mitts +1
[104] = { trade = { 27205,{ 9086, 6}}, base = 27205, aug1 =  11, aug1MAX = 15, aug2 = 107, aug2MAX = 34, aug3 = 369, aug3MAX =  7, aug4 =  0, aug4MAX = 0 },--Apogee slacks +1
[105] = { trade = { 27381,{ 9086, 6}}, base = 27381, aug1 =  11, aug1MAX = 15, aug2 = 107, aug2MAX = 34, aug3 = 369, aug3MAX =  7, aug4 =  0, aug4MAX = 0 },--Apogee pumps +1
[106] = { trade = { 26673,{ 9086, 6}}, base = 26673, aug1 =   3, aug1MAX =  0, aug2 =  23, aug2MAX = 12, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Argosy celata +1
[107] = { trade = { 26849,{ 9086, 6}}, base = 26849, aug1 =   3, aug1MAX =  0, aug2 =  23, aug2MAX = 12, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Argosy hauberk +1
[108] = { trade = { 27025,{ 9086, 6}}, base = 27025, aug1 =   3, aug1MAX =  0, aug2 =  23, aug2MAX = 12, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Argosy mufflers +1
[109] = { trade = { 27201,{ 9086, 6}}, base = 27201, aug1 =   3, aug1MAX =  0, aug2 =  23, aug2MAX = 12, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Argosy breeches +1
[110] = { trade = { 27377,{ 9086, 6}}, base = 27377, aug1 =   3, aug1MAX =  0, aug2 =  23, aug2MAX = 12, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Argosy sollerets +1
[111] = { trade = { 26679,{ 9086, 6}}, base = 26679, aug1 =  23, aug1MAX = 11, aug2 = 513, aug2MAX = 11, aug3 = 517, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Carmine mask +1
[112] = { trade = { 26855,{ 9086, 6}}, base = 26855, aug1 =  23, aug1MAX = 11, aug2 = 513, aug2MAX = 11, aug3 = 517, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Carmine scale mail +1
[113] = { trade = { 27031,{ 9086, 6}}, base = 27031, aug1 =  23, aug1MAX = 11, aug2 = 513, aug2MAX = 11, aug3 = 517, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Carmine finger gauntlets +1
[114] = { trade = { 27207,{ 9086, 6}}, base = 27207, aug1 =  23, aug1MAX = 11, aug2 = 513, aug2MAX = 11, aug3 = 517, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Carmine cuisses +1
[115] = { trade = { 27383,{ 9086, 6}}, base = 27383, aug1 =  23, aug1MAX = 11, aug2 = 513, aug2MAX = 11, aug3 = 517, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Carmine greaves +1
[116] = { trade = { 25610,{ 9086, 6}}, base = 25610, aug1 =   3, aug1MAX =  0, aug2 = 513, aug2MAX = 11, aug3 =  23, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Emicho  coronet +1
[117] = { trade = { 25683,{ 9086, 6}}, base = 25683, aug1 =   3, aug1MAX =  0, aug2 = 513, aug2MAX = 11, aug3 =  23, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Emicho haubert +1
[118] = { trade = { 27114,{ 9086, 6}}, base = 27114, aug1 =   3, aug1MAX =  0, aug2 = 513, aug2MAX = 11, aug3 =  23, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Emicho gauntlets +1
[119] = { trade = { 27299,{ 9086, 6}}, base = 27299, aug1 =   3, aug1MAX =  0, aug2 = 513, aug2MAX = 11, aug3 =  23, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Emicho hose +1
[120] = { trade = { 27470,{ 9086, 6}}, base = 27470, aug1 =   3, aug1MAX =  0, aug2 = 513, aug2MAX = 11, aug3 =  23, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Emicho gambieras +1
[121] = { trade = { 25618,{ 9086, 6}}, base = 25618, aug1 =  11, aug1MAX = 15, aug2 = 323, aug2MAX =  6, aug3 =  40, aug3MAX =  5, aug4 =  0, aug4MAX = 0 },--Kaykaus mitra +1
[122] = { trade = { 25691,{ 9086, 6}}, base = 25691, aug1 =  11, aug1MAX = 15, aug2 = 323, aug2MAX =  6, aug3 =  40, aug3MAX =  5, aug4 =  0, aug4MAX = 0 },--Kaykaus bliaut +1
[123] = { trade = { 27122,{ 9086, 6}}, base = 27122, aug1 =  11, aug1MAX = 15, aug2 = 323, aug2MAX =  6, aug3 =  40, aug3MAX =  5, aug4 =  0, aug4MAX = 0 },--Kaykaus cuffs +1
[124] = { trade = { 27307,{ 9086, 6}}, base = 27307, aug1 =  11, aug1MAX = 15, aug2 = 323, aug2MAX =  6, aug3 =  40, aug3MAX =  5, aug4 =  0, aug4MAX = 0 },--Kaykaus tights +1
[125] = { trade = { 27478,{ 9086, 6}}, base = 27478, aug1 =  11, aug1MAX = 15, aug2 = 323, aug2MAX =  6, aug3 =  40, aug3MAX =  5, aug4 =  0, aug4MAX = 0 },--Kaykaus boots +1
[126] = { trade = { 26669,{ 9086, 6}}, base = 26669, aug1 =  23, aug1MAX = 19, aug2 = 513, aug2MAX =  7, aug3 =  41, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Lustratio cap +1
[127] = { trade = { 26845,{ 9086, 6}}, base = 26845, aug1 =  23, aug1MAX = 19, aug2 = 513, aug2MAX =  7, aug3 =  41, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Lustratio harness +1
[128] = { trade = { 27021,{ 9086, 6}}, base = 27021, aug1 =  23, aug1MAX = 19, aug2 = 513, aug2MAX =  7, aug3 =  41, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Lustratio mittens +1
[129] = { trade = { 27197,{ 9086, 6}}, base = 27197, aug1 =  23, aug1MAX = 19, aug2 = 513, aug2MAX =  7, aug3 =  41, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Lustratio subligar +1
[130] = { trade = { 27373,{ 9086, 6}}, base = 27373, aug1 =  23, aug1MAX = 19, aug2 = 513, aug2MAX =  7, aug3 =  41, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Lustratio leggings +1
[131] = { trade = { 26675,{ 9086, 6}}, base = 26675, aug1 = 512, aug1MAX = 11, aug2 = 513, aug2MAX = 11, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Rao kabuto +1
[132] = { trade = { 26851,{ 9086, 6}}, base = 26851, aug1 = 512, aug1MAX = 11, aug2 = 513, aug2MAX = 11, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Rao togi +1
[133] = { trade = { 27027,{ 9086, 6}}, base = 27027, aug1 = 512, aug1MAX = 11, aug2 = 513, aug2MAX = 11, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Rao kote +1
[134] = { trade = { 27203,{ 9086, 6}}, base = 27203, aug1 = 512, aug1MAX = 11, aug2 = 513, aug2MAX = 11, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Rao haidate +1
[135] = { trade = { 27379,{ 9086, 6}}, base = 27379, aug1 = 512, aug1MAX = 11, aug2 = 513, aug2MAX = 11, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Rao sune-ate +1
[136] = { trade = { 25612,{ 9086, 6}}, base = 25612, aug1 =   3, aug1MAX =  0, aug2 =  23, aug2MAX = 19, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Ryuo somen +1
[137] = { trade = { 25685,{ 9086, 6}}, base = 25685, aug1 =   3, aug1MAX =  0, aug2 =  23, aug2MAX = 19, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Ryuo domaru +1
[138] = { trade = { 27116,{ 9086, 6}}, base = 27116, aug1 =   3, aug1MAX =  0, aug2 =  23, aug2MAX = 19, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Ryuo tekko +1
[139] = { trade = { 27301,{ 9086, 6}}, base = 27301, aug1 =   3, aug1MAX =  0, aug2 =  23, aug2MAX = 19, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Ryuo hakama +1
[140] = { trade = { 27472,{ 9086, 6}}, base = 27472, aug1 =   3, aug1MAX =  0, aug2 =  23, aug2MAX = 19, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Ryuo sune-ate +1
[141] = { trade = { 26671,{ 9086, 6}}, base = 26671, aug1 =   3, aug1MAX =  0, aug2 = 512, aug2MAX = 11, aug3 =  23, aug3MAX = 12, aug4 =  0, aug4MAX = 0 },--Souveran schaller +1
[142] = { trade = { 26847,{ 9086, 6}}, base = 26847, aug1 =   3, aug1MAX =  0, aug2 = 512, aug2MAX = 11, aug3 =  23, aug3MAX = 12, aug4 =  0, aug4MAX = 0 },--Souveran cuirass +1
[143] = { trade = { 27023,{ 9086, 6}}, base = 27023, aug1 =   3, aug1MAX =  0, aug2 = 512, aug2MAX = 11, aug3 =  23, aug3MAX = 12, aug4 =  0, aug4MAX = 0 },--Souveran handschuhs +1
[144] = { trade = { 27199,{ 9086, 6}}, base = 27199, aug1 =   3, aug1MAX =  0, aug2 = 512, aug2MAX = 11, aug3 =  23, aug3MAX = 12, aug4 =  0, aug4MAX = 0 },--Souveran diechlings +1
[145] = { trade = { 27375,{ 9086, 6}}, base = 27375, aug1 =   3, aug1MAX =  0, aug2 = 512, aug2MAX = 11, aug3 =  23, aug3MAX = 12, aug4 =  0, aug4MAX = 0 },--Souveran schuhs +1
[146] = { trade = { 20983,{ 9086, 6}}, base = 20983, aug1 =  23, aug1MAX = 14, aug2 =  27, aug2MAX = 14, aug3 = 142, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Mijin
[147] = { trade = { 20710,{ 9086, 6}}, base = 20710, aug1 = 512, aug1MAX =  9, aug2 =  25, aug2MAX = 19, aug3 = 142, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Nibiru Blade
[148] = { trade = { 21216,{ 9086, 6}}, base = 21216, aug1 =   2, aug1MAX = 17, aug2 =  29, aug2MAX = 24, aug3 = 139, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Nibiru Bow
[149] = { trade = { 20848,{ 9086, 6}}, base = 20848, aug1 =  25, aug1MAX = 19, aug2 =  39, aug2MAX =  3, aug3 = 143, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Nibiru Chopper
[150] = { trade = { 21092,{ 9086, 6}}, base = 21092, aug1 =  10, aug1MAX = 17, aug2 = 516, aug2MAX =  9, aug3 = 133, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Nibiru Cudgel
[151] = { trade = { 21699,{ 9086, 6}}, base = 21699, aug1 =  23, aug1MAX =  9, aug2 =  25, aug2MAX = 14, aug3 = 142, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Nibiru Faussar
[152] = { trade = { 21273,{ 9086, 6}}, base = 21273, aug1 =   2, aug1MAX = 17, aug2 = 515, aug2MAX =  9, aug3 =  27, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Nibiru Gun
[153] = { trade = { 21399,{ 9086, 6}}, base = 21399, aug1 =   2, aug1MAX = 17, aug2 = 518, aug2MAX =  9, aug3 =  67, aug3MAX =  1, aug4 =  0, aug4MAX = 0 },--Nibiru Harp
[154] = { trade = { 20600,{ 9086, 6}}, base = 20600, aug1 = 513, aug1MAX =  6, aug2 =  25, aug2MAX = 19, aug3 = 142, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Nibiru Knife
[155] = { trade = { 20939,{ 9086, 6}}, base = 20939, aug1 =   2, aug1MAX = 17, aug2 =  23, aug2MAX = 14, aug3 =  25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Nibiru Lance
[156] = { trade = { 20524,{ 9086, 6}}, base = 20524, aug1 =   2, aug1MAX = 17, aug2 =  25, aug2MAX = 19, aug3 = 142, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Nibiru Sainti
[157] = { trade = { 27642,{ 9086, 6}}, base = 27642, aug1 =   3, aug1MAX = 15, aug2 =  11, aug2MAX = 15, aug3 = 140, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Nibiru Shield
[158] = { trade = { 20895,{ 9086, 6}}, base = 20895, aug1 =  25, aug1MAX = 19, aug2 = 133, aug2MAX = 24, aug3 = 140, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Nibiru Sickle
[159] = { trade = { 21156,{ 9086, 6}}, base = 21156, aug1 =  55, aug1MAX =  2, aug2 = 517, aug2MAX =  9, aug3 =  35, aug3MAX = 24, aug4 =  0, aug4MAX = 0 },--Nibiru Staff
[160] = { trade = { 20801,{ 9086, 6}}, base = 20801, aug1 =  23, aug1MAX = 14, aug2 =  25, aug2MAX = 14, aug3 = 142, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Nibiru Tabar
[161] = { trade = { 21031,{ 9086, 6}}, base = 21031, aug1 =  25, aug1MAX = 14, aug2 = 195, aug2MAX =  6, aug3 = 143, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Sensui
[162] = { trade = { 20979,{ 9086, 6}}, base = 20979, aug1 = 740, aug1MAX = 14, aug2 = 512, aug2MAX = 14, aug3 =  23, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Aizushintogo
[163] = { trade = { 21150,{ 9086, 6}}, base = 21150, aug1 = 517, aug1MAX = 19, aug2 =  35, aug2MAX = 19, aug3 = 329, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Akademos
[164] = { trade = { 21698,{ 9086, 6}}, base = 21698, aug1 = 740, aug1MAX = 29, aug2 =  23, aug2MAX = 19, aug3 =  25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Bidenhander
[165] = { trade = { 21482,{ 9086, 6}}, base = 21482, aug1 = 746, aug1MAX = 14, aug2 = 515, aug2MAX = 14, aug3 =  27, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Compensator
[166] = { trade = { 20892,{ 9086, 6}}, base = 20892, aug1 = 740, aug1MAX = 29, aug2 =  25, aug2MAX = 19, aug3 = 142, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Deathbane
[167] = { trade = { 20702,{ 9086, 6}}, base = 20702, aug1 = 740, aug1MAX = 14, aug2 =  23, aug2MAX = 14, aug3 =  35, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Emissary
[168] = { trade = { 20597,{ 9086, 6}}, base = 20597, aug1 = 740, aug1MAX = 14, aug2 = 512, aug2MAX = 14, aug3 =  23, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Enchufla
[169] = { trade = { 21149,{ 9086, 6}}, base = 21149, aug1 = 294, aug1MAX = 14, aug2 = 100, aug2MAX = 29, aug3 = 112, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Espiritus
[170] = { trade = { 20519,{ 9086, 6}}, base = 20519, aug1 =  40, aug1MAX = 14, aug2 = 512, aug2MAX = 19, aug3 =  23, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Hammerfists
[171] = { trade = { 21027,{ 9086, 6}}, base = 21027, aug1 = 740, aug1MAX = 29, aug2 = 512, aug2MAX = 19, aug3 =  23, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Ichigohitofuri
[172] = { trade = { 20845,{ 9086, 6}}, base = 20845, aug1 = 740, aug1MAX = 29, aug2 = 512, aug2MAX = 19, aug3 =  23, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Instigator
[173] = { trade = { 20701,{ 9086, 6}}, base = 20701, aug1 = 740, aug1MAX = 14, aug2 = 512, aug2MAX = 14, aug3 =  23, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Iris
[174] = { trade = { 20599,{ 9086, 6}}, base = 20599, aug1 = 740, aug1MAX = 14, aug2 = 518, aug2MAX = 14, aug3 =  40, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Kali
[175] = { trade = { 21151,{ 9086, 6}}, base = 21151, aug1 =  11, aug1MAX = 15, aug2 =  35, aug2MAX = 19, aug3 = 140, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Lathi
[176] = { trade = { 20520,{ 9086, 6}}, base = 20520, aug1 = 740, aug1MAX = 14, aug2 = 512, aug2MAX = 19, aug3 =  23, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Midnights
[177] = { trade = { 20700,{ 9086, 6}}, base = 20700, aug1 = 740, aug1MAX = 14, aug2 = 512, aug2MAX = 14, aug3 =  23, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Nixxer
[178] = { trade = { 21084,{ 9086, 6}}, base = 21084, aug1 = 517, aug1MAX = 14, aug2 =  35, aug2MAX = 14, aug3 = 329, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Queller Rod
[179] = { trade = { 20937,{ 9086, 6}}, base = 20937, aug1 = 740, aug1MAX = 29, aug2 = 512, aug2MAX = 19, aug3 =  23, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Rhomphaia
[180] = { trade = { 20598,{ 9086, 6}}, base = 20598, aug1 = 740, aug1MAX = 14, aug2 = 512, aug2MAX = 14, aug3 =  23, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Shijo
[181] = { trade = { 20797,{ 9086, 6}}, base = 20797, aug1 = 740, aug1MAX = 14, aug2 = 512, aug2MAX = 14, aug3 =  23, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Skullrender
[182] = { trade = { 21085,{ 9086, 6}}, base = 21085, aug1 =  10, aug1MAX = 27, aug2 = 516, aug2MAX = 14, aug3 =  35, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Solstice
[183] = { trade = { 21215,{ 9086, 6}}, base = 21215, aug1 = 746, aug1MAX = 14, aug2 = 515, aug2MAX = 14, aug3 =  27, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Vijaya Bow
}

local tradeTablePathC =
{
[  1] = { trade = { 26791,{ 9086, 6}}, base = 26791, aug1 =   37, aug1MAX = 14, aug2 =   53, aug2MAX = 14, aug3 =   39, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Eschite Helm
[  2] = { trade = { 26947,{ 9086, 6}}, base = 26947, aug1 =   37, aug1MAX = 14, aug2 =   53, aug2MAX = 14, aug3 =   39, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Eschite Breastplate
[  3] = { trade = { 27097,{ 9086, 6}}, base = 27097, aug1 =   37, aug1MAX = 14, aug2 =   53, aug2MAX = 14, aug3 =   39, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Eschite Gauntlets
[  4] = { trade = { 27282,{ 9086, 6}}, base = 27282, aug1 =   37, aug1MAX = 14, aug2 =   53, aug2MAX = 14, aug3 =   39, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Eschite Cuisses
[  5] = { trade = { 27457,{ 9086, 6}}, base = 27457, aug1 =   37, aug1MAX = 14, aug2 =   53, aug2MAX = 14, aug3 =   39, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Eschite Greaves
[  6] = { trade = { 26792,{ 9086, 6}}, base = 26792, aug1 =   23, aug1MAX =  9, aug2 = 1794, aug2MAX =  6, aug3 =  112, aug3MAX =  2, aug4 =  0, aug4MAX = 0 }, -- Despair Helm
[  7] = { trade = { 26948,{ 9086, 6}}, base = 26948, aug1 =   23, aug1MAX =  9, aug2 = 1794, aug2MAX =  6, aug3 =  112, aug3MAX =  2, aug4 =  0, aug4MAX = 0 }, -- Despair Mail
[  8] = { trade = { 27098,{ 9086, 6}}, base = 27098, aug1 =   23, aug1MAX =  9, aug2 = 1794, aug2MAX =  6, aug3 =  112, aug3MAX =  2, aug4 =  0, aug4MAX = 0 }, -- Despair Finger Gauntlets
[  9] = { trade = { 27283,{ 9086, 6}}, base = 27283, aug1 =   23, aug1MAX =  9, aug2 = 1794, aug2MAX =  6, aug3 =  112, aug3MAX =  2, aug4 =  0, aug4MAX = 0 }, -- Despair Cuisses
[ 10] = { trade = { 27458,{ 9086, 6}}, base = 27458, aug1 =   23, aug1MAX =  9, aug2 = 1794, aug2MAX =  6, aug3 =  112, aug3MAX =  2, aug4 =  0, aug4MAX = 0 }, -- Despair Greaves
[ 11] = { trade = { 26793,{ 9086, 6}}, base = 26793, aug1 = 1474, aug1MAX = 30, aug2 = 1475, aug2MAX =  3, aug3 = 1476, aug3MAX =  2, aug4 =  0, aug4MAX = 0 }, -- Naga Somen
[ 12] = { trade = { 26949,{ 9086, 6}}, base = 26949, aug1 = 1474, aug1MAX = 30, aug2 = 1475, aug2MAX =  3, aug3 = 1476, aug3MAX =  2, aug4 =  0, aug4MAX = 0 }, -- Naga Samue
[ 13] = { trade = { 27099,{ 9086, 6}}, base = 27099, aug1 = 1474, aug1MAX = 30, aug2 = 1475, aug2MAX =  3, aug3 = 1476, aug3MAX =  2, aug4 =  0, aug4MAX = 0 }, -- Naga Tekko
[ 14] = { trade = { 27284,{ 9086, 6}}, base = 27284, aug1 = 1474, aug1MAX = 30, aug2 = 1475, aug2MAX =  3, aug3 = 1476, aug3MAX =  2, aug4 =  0, aug4MAX = 0 }, -- Naga Hakama
[ 15] = { trade = { 27459,{ 9086, 6}}, base = 27459, aug1 = 1474, aug1MAX = 30, aug2 = 1475, aug2MAX =  3, aug3 = 1446, aug3MAX =  2, aug4 =  0, aug4MAX = 0 }, -- Naga Kyahan
[ 16] = { trade = { 26794,{ 9086, 6}}, base = 26794, aug1 =   23, aug1MAX = 14, aug2 = 1478, aug2MAX = 10, aug3 =  123, aug3MAX =  2, aug4 =  0, aug4MAX = 0 }, -- Rawhide Mask
[ 17] = { trade = { 26950,{ 9086, 6}}, base = 26950, aug1 =   23, aug1MAX = 14, aug2 = 1478, aug2MAX = 10, aug3 =  123, aug3MAX =  2, aug4 =  0, aug4MAX = 0 }, -- Rawhide Vest
[ 18] = { trade = { 27100,{ 9086, 6}}, base = 27100, aug1 =   23, aug1MAX = 14, aug2 = 1478, aug2MAX = 10, aug3 =  123, aug3MAX =  2, aug4 =  0, aug4MAX = 0 }, -- Rawhide Gloves
[ 19] = { trade = { 27285,{ 9086, 6}}, base = 27285, aug1 =   23, aug1MAX = 14, aug2 = 1478, aug2MAX = 10, aug3 =  123, aug3MAX =  2, aug4 =  0, aug4MAX = 0 }, -- Rawhide Trousers
[ 20] = { trade = { 27460,{ 9086, 6}}, base = 27460, aug1 =   23, aug1MAX = 14, aug2 = 1478, aug2MAX = 10, aug3 =  123, aug3MAX =  2, aug4 =  0, aug4MAX = 0 }, -- Rawhide Boots
[ 21] = { trade = { 26795,{ 9086, 6}}, base = 26795, aug1 =   79, aug1MAX = 16, aug2 =   23, aug2MAX = 19, aug3 =   25, aug3MAX = 14, aug4 = 78, aug4MAX = 0 }, -- Pursuer's Beret
[ 22] = { trade = { 26951,{ 9086, 6}}, base = 26951, aug1 =   79, aug1MAX = 16, aug2 =   23, aug2MAX = 19, aug3 =   25, aug3MAX = 14, aug4 = 78, aug4MAX = 0 }, -- Pursuer's Doublet
[ 23] = { trade = { 27101,{ 9086, 6}}, base = 27101, aug1 =   79, aug1MAX = 16, aug2 =   23, aug2MAX = 19, aug3 =   25, aug3MAX = 14, aug4 = 78, aug4MAX = 0 }, -- Pursuer's Cuffs
[ 24] = { trade = { 27286,{ 9086, 6}}, base = 27286, aug1 =   79, aug1MAX = 16, aug2 =   23, aug2MAX = 19, aug3 =   25, aug3MAX = 14, aug4 = 78, aug4MAX = 0 }, -- Pursuer's Pants
[ 25] = { trade = { 27461,{ 9086, 6}}, base = 27461, aug1 =   79, aug1MAX = 16, aug2 =   23, aug2MAX = 19, aug3 =   25, aug3MAX = 14, aug4 = 78, aug4MAX = 0 }, -- Pursuer's Gaiters
[ 26] = { trade = { 26796,{ 9086, 6}}, base = 26796, aug1 = 1479, aug1MAX = 20, aug2 =  101, aug2MAX = 14, aug3 =  104, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Psycloth Tiara
[ 27] = { trade = { 26952,{ 9086, 6}}, base = 26952, aug1 = 1479, aug1MAX = 20, aug2 =  101, aug2MAX = 14, aug3 =  104, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Psycloth Vest
[ 28] = { trade = { 27102,{ 9086, 6}}, base = 27102, aug1 = 1479, aug1MAX = 20, aug2 =  101, aug2MAX = 14, aug3 =  104, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Psycloth Manillas
[ 29] = { trade = { 27287,{ 9086, 6}}, base = 27287, aug1 = 1479, aug1MAX = 20, aug2 =  101, aug2MAX = 14, aug3 =  104, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Psycloth Lappas
[ 30] = { trade = { 27462,{ 9086, 6}}, base = 27462, aug1 = 1479, aug1MAX = 20, aug2 =  101, aug2MAX = 14, aug3 =  104, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Psycloth Boots
[ 31] = { trade = { 26797,{ 9086, 6}}, base = 26797, aug1 =  517, aug1MAX =  9, aug2 =   53, aug2MAX = 14, aug3 =  141, aug3MAX =  5, aug4 =  0, aug4MAX = 0 }, -- Vanya Hood
[ 32] = { trade = { 26953,{ 9086, 6}}, base = 26953, aug1 =  517, aug1MAX =  9, aug2 =   53, aug2MAX = 14, aug3 =  141, aug3MAX =  5, aug4 =  0, aug4MAX = 0 }, -- Vanya Robe
[ 33] = { trade = { 27103,{ 9086, 6}}, base = 27103, aug1 =  517, aug1MAX =  9, aug2 =   53, aug2MAX = 14, aug3 =  141, aug3MAX =  5, aug4 =  0, aug4MAX = 0 }, -- Vanya Cuffs
[ 34] = { trade = { 27288,{ 9086, 6}}, base = 27288, aug1 =  517, aug1MAX =  9, aug2 =   53, aug2MAX = 14, aug3 =  141, aug3MAX =  5, aug4 =  0, aug4MAX = 0 }, -- Vanya Slops
[ 35] = { trade = { 27463,{ 9086, 6}}, base = 27463, aug1 =  517, aug1MAX =  9, aug2 =   53, aug2MAX = 14, aug3 =  141, aug3MAX =  5, aug4 =  0, aug4MAX = 0 }, -- Vanya Clogs
[ 36] = { trade = { 25613,{ 9086, 6}}, base = 25613, aug1 =  515, aug1MAX =  9, aug2 =   27, aug2MAX = 14, aug3 =   29, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--adhemar bonnet
[ 37] = { trade = { 25686,{ 9086, 6}}, base = 25686, aug1 =  515, aug1MAX =  9, aug2 =   27, aug2MAX = 14, aug3 =   29, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--adhemar jacket
[ 38] = { trade = { 27117,{ 9086, 6}}, base = 27117, aug1 =  515, aug1MAX =  9, aug2 =   27, aug2MAX = 14, aug3 =   29, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--adhemar wristbands
[ 39] = { trade = { 27302,{ 9086, 6}}, base = 27302, aug1 =  515, aug1MAX =  9, aug2 =   27, aug2MAX = 14, aug3 =   29, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--adhemar kecks
[ 40] = { trade = { 27473,{ 9086, 6}}, base = 27473, aug1 =  515, aug1MAX =  9, aug2 =   27, aug2MAX = 14, aug3 =   29, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--adhemar gamashes
[ 41] = { trade = { 25615,{ 9086, 6}}, base = 25615, aug1 =  516, aug1MAX =  9, aug2 =  292, aug2MAX = 14, aug3 =  293, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Amalric coif
[ 42] = { trade = { 25688,{ 9086, 6}}, base = 25688, aug1 =  516, aug1MAX =  9, aug2 =  292, aug2MAX = 14, aug3 =  293, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Amalric doublet
[ 43] = { trade = { 27119,{ 9086, 6}}, base = 27119, aug1 =  516, aug1MAX =  9, aug2 =  292, aug2MAX = 14, aug3 =  293, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Amalric gages
[ 44] = { trade = { 27304,{ 9086, 6}}, base = 27304, aug1 =  516, aug1MAX =  9, aug2 =  292, aug2MAX = 14, aug3 =  293, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Amalric slops
[ 45] = { trade = { 27475,{ 9086, 6}}, base = 27475, aug1 =  516, aug1MAX =  9, aug2 =  292, aug2MAX = 14, aug3 =  293, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Amalric nails
[ 46] = { trade = { 26676,{ 9086, 6}}, base = 26676, aug1 =  107, aug1MAX = 19, aug2 =  101, aug2MAX = 19, aug3 =  369, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Apogee crown
[ 47] = { trade = { 26852,{ 9086, 6}}, base = 26852, aug1 =  107, aug1MAX = 19, aug2 =  101, aug2MAX = 19, aug3 =  369, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Apogee dalmatica
[ 48] = { trade = { 27028,{ 9086, 6}}, base = 27028, aug1 =  107, aug1MAX = 19, aug2 =  101, aug2MAX = 19, aug3 =  369, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Apogee mitts
[ 49] = { trade = { 27204,{ 9086, 6}}, base = 27204, aug1 =  107, aug1MAX = 19, aug2 =  101, aug2MAX = 19, aug3 =  369, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Apogee slacks
[ 50] = { trade = { 27380,{ 9086, 6}}, base = 27380, aug1 =  107, aug1MAX = 19, aug2 =  101, aug2MAX = 19, aug3 =  369, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Apogee pumps
[ 51] = { trade = { 26672,{ 9086, 6}}, base = 26672, aug1 =    2, aug1MAX = 17, aug2 =  512, aug2MAX = 11, aug3 =   54, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Argosy celata
[ 52] = { trade = { 26848,{ 9086, 6}}, base = 26848, aug1 =    2, aug1MAX = 17, aug2 =  512, aug2MAX = 11, aug3 =   54, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Argosy hauberk
[ 53] = { trade = { 27024,{ 9086, 6}}, base = 27024, aug1 =    2, aug1MAX = 17, aug2 =  512, aug2MAX = 11, aug3 =   54, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Argosy mufflers
[ 54] = { trade = { 27200,{ 9086, 6}}, base = 27200, aug1 =    2, aug1MAX = 17, aug2 =  512, aug2MAX = 11, aug3 =   54, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Argosy breeches
[ 55] = { trade = { 27376,{ 9086, 6}}, base = 27376, aug1 =    2, aug1MAX = 17, aug2 =  512, aug2MAX = 11, aug3 =   54, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Argosy sollerets
[ 56] = { trade = { 26678,{ 9086, 6}}, base = 26678, aug1 =   10, aug1MAX = 27, aug2 =  516, aug2MAX =  9, aug3 =  517, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Carmine mask
[ 57] = { trade = { 26854,{ 9086, 6}}, base = 26854, aug1 =   10, aug1MAX = 27, aug2 =  516, aug2MAX =  9, aug3 =  517, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Carmine scale mail
[ 58] = { trade = { 27030,{ 9086, 6}}, base = 27030, aug1 =   10, aug1MAX = 27, aug2 =  516, aug2MAX =  9, aug3 =  517, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Carmine finger gauntlets
[ 59] = { trade = { 27206,{ 9086, 6}}, base = 27206, aug1 =   10, aug1MAX = 27, aug2 =  516, aug2MAX =  9, aug3 =  517, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Carmine cuisses
[ 60] = { trade = { 27382,{ 9086, 6}}, base = 27382, aug1 =   10, aug1MAX = 27, aug2 =  516, aug2MAX =  9, aug3 =  517, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Carmine greaves
[ 61] = { trade = { 25609,{ 9086, 6}}, base = 25609, aug1 =  106, aug1MAX = 14, aug2 =  107, aug2MAX = 14, aug3 =  123, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Emicho  coronet
[ 62] = { trade = { 25682,{ 9086, 6}}, base = 25682, aug1 =  106, aug1MAX = 14, aug2 =  107, aug2MAX = 14, aug3 =  123, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Emicho haubert
[ 63] = { trade = { 27113,{ 9086, 6}}, base = 27113, aug1 =  106, aug1MAX = 14, aug2 =  107, aug2MAX = 14, aug3 =  123, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Emicho gauntlets
[ 64] = { trade = { 27298,{ 9086, 6}}, base = 27298, aug1 =  106, aug1MAX = 14, aug2 =  107, aug2MAX = 14, aug3 =  123, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Emicho hose
[ 65] = { trade = { 27469,{ 9086, 6}}, base = 27469, aug1 =  106, aug1MAX = 14, aug2 =  107, aug2MAX = 14, aug3 =  123, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Emicho gambieras
[ 66] = { trade = { 25617,{ 9086, 6}}, base = 25617, aug1 =   10, aug1MAX = 27, aug2 =   53, aug2MAX =  9, aug3 =  323, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Kaykaus mitra
[ 67] = { trade = { 25690,{ 9086, 6}}, base = 25690, aug1 =   10, aug1MAX = 27, aug2 =   53, aug2MAX =  9, aug3 =  323, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Kaykaus bliaut
[ 68] = { trade = { 27121,{ 9086, 6}}, base = 27121, aug1 =   10, aug1MAX = 27, aug2 =   53, aug2MAX =  9, aug3 =  323, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Kaykaus cuffs
[ 69] = { trade = { 27306,{ 9086, 6}}, base = 27306, aug1 =   10, aug1MAX = 27, aug2 =   53, aug2MAX =  9, aug3 =  323, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Kaykaus tights
[ 70] = { trade = { 27477,{ 9086, 6}}, base = 27477, aug1 =   10, aug1MAX = 27, aug2 =   53, aug2MAX =  9, aug3 =  323, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Kaykaus boots
[ 71] = { trade = { 26668,{ 9086, 6}}, base = 26668, aug1 =   23, aug1MAX =  7, aug2 =  142, aug2MAX =  3, aug3 =   25, aug3MAX =  7, aug4 =  0, aug4MAX = 0 },--Lustratio cap
[ 72] = { trade = { 26844,{ 9086, 6}}, base = 26844, aug1 =   23, aug1MAX =  7, aug2 =  142, aug2MAX =  3, aug3 =   25, aug3MAX =  7, aug4 =  0, aug4MAX = 0 },--Lustratio harness
[ 73] = { trade = { 27020,{ 9086, 6}}, base = 27020, aug1 =   23, aug1MAX =  7, aug2 =  142, aug2MAX =  3, aug3 =   25, aug3MAX =  7, aug4 =  0, aug4MAX = 0 },--Lustratio mittens
[ 74] = { trade = { 27196,{ 9086, 6}}, base = 27196, aug1 =   23, aug1MAX =  7, aug2 =  142, aug2MAX =  3, aug3 =   25, aug3MAX =  7, aug4 =  0, aug4MAX = 0 },--Lustratio subligar
[ 75] = { trade = { 27372,{ 9086, 6}}, base = 27372, aug1 =   23, aug1MAX =  7, aug2 =  142, aug2MAX =  3, aug3 =   25, aug3MAX =  7, aug4 =  0, aug4MAX = 0 },--Lustratio leggings
[ 76] = { trade = { 26674,{ 9086, 6}}, base = 26674, aug1 =  110, aug1MAX =  2, aug2 =  106, aug2MAX = 14, aug3 =  112, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Rao kabuto
[ 77] = { trade = { 26850,{ 9086, 6}}, base = 26850, aug1 =  110, aug1MAX =  2, aug2 =  106, aug2MAX = 14, aug3 =  112, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Rao togi
[ 78] = { trade = { 27026,{ 9086, 6}}, base = 27026, aug1 =  110, aug1MAX =  2, aug2 =  106, aug2MAX = 14, aug3 =  112, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Rao kote
[ 79] = { trade = { 27202,{ 9086, 6}}, base = 27202, aug1 =  110, aug1MAX =  2, aug2 =  106, aug2MAX = 14, aug3 =  112, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Rao haidate
[ 80] = { trade = { 27378,{ 9086, 6}}, base = 27378, aug1 =  110, aug1MAX =  2, aug2 =  106, aug2MAX = 14, aug3 =  112, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Rao sune-ate
[ 81] = { trade = { 25611,{ 9086, 6}}, base = 25611, aug1 =    2, aug1MAX = 17, aug2 =  142, aug2MAX =  3, aug3 =  195, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Ryuo somen
[ 82] = { trade = { 25684,{ 9086, 6}}, base = 25684, aug1 =    2, aug1MAX = 17, aug2 =  142, aug2MAX =  3, aug3 =  195, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Ryuo domaru
[ 83] = { trade = { 27115,{ 9086, 6}}, base = 27115, aug1 =    2, aug1MAX = 17, aug2 =  142, aug2MAX =  3, aug3 =  195, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Ryuo tekko
[ 84] = { trade = { 27300,{ 9086, 6}}, base = 27300, aug1 =    2, aug1MAX = 17, aug2 =  142, aug2MAX =  3, aug3 =  195, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Ryuo hakama
[ 85] = { trade = { 27471,{ 9086, 6}}, base = 27471, aug1 =    2, aug1MAX = 17, aug2 =  142, aug2MAX =  3, aug3 =  195, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Ryuo sune-ate
[ 86] = { trade = { 26670,{ 9086, 6}}, base = 26670, aug1 =    3, aug1MAX = 15, aug2 =   39, aug2MAX =  6, aug3 =  356, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Souveran schaller
[ 87] = { trade = { 26846,{ 9086, 6}}, base = 26846, aug1 =    3, aug1MAX = 15, aug2 =   39, aug2MAX =  6, aug3 =  356, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Souveran cuirass
[ 88] = { trade = { 27022,{ 9086, 6}}, base = 27022, aug1 =    3, aug1MAX = 15, aug2 =   39, aug2MAX =  6, aug3 =  356, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Souveran handschuhs
[ 89] = { trade = { 27198,{ 9086, 6}}, base = 27198, aug1 =    3, aug1MAX = 15, aug2 =   39, aug2MAX =  6, aug3 =  356, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Souveran diechlings
[ 90] = { trade = { 27374,{ 9086, 6}}, base = 27374, aug1 =    3, aug1MAX = 15, aug2 =   39, aug2MAX =  6, aug3 =  356, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Souveran schuhs
[ 91] = { trade = { 25614,{ 9086, 6}}, base = 25614, aug1 =  515, aug1MAX = 11, aug2 =   27, aug2MAX = 19, aug3 =   29, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--adhemar bonnet +1
[ 92] = { trade = { 25687,{ 9086, 6}}, base = 25687, aug1 =  515, aug1MAX = 11, aug2 =   27, aug2MAX = 19, aug3 =   29, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--adhemar jacket +1
[ 93] = { trade = { 27118,{ 9086, 6}}, base = 27118, aug1 =  515, aug1MAX = 11, aug2 =   27, aug2MAX = 19, aug3 =   29, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--adhemar wristbands +1
[ 94] = { trade = { 27303,{ 9086, 6}}, base = 27303, aug1 =  515, aug1MAX = 11, aug2 =   27, aug2MAX = 19, aug3 =   29, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--adhemar kecks +1
[ 95] = { trade = { 27474,{ 9086, 6}}, base = 27474, aug1 =  515, aug1MAX = 11, aug2 =   27, aug2MAX = 19, aug3 =   29, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--adhemar gamashes +1
[ 96] = { trade = { 25616,{ 9086, 6}}, base = 25616, aug1 =  516, aug1MAX = 11, aug2 =  292, aug2MAX = 19, aug3 =  293, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Amalric coif +1
[ 97] = { trade = { 25689,{ 9086, 6}}, base = 25689, aug1 =  516, aug1MAX = 11, aug2 =  292, aug2MAX = 19, aug3 =  293, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Amalric doublet +1
[ 98] = { trade = { 27120,{ 9086, 6}}, base = 27120, aug1 =  516, aug1MAX = 11, aug2 =  292, aug2MAX = 19, aug3 =  293, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Amalric gages +1
[ 99] = { trade = { 27305,{ 9086, 6}}, base = 27305, aug1 =  516, aug1MAX = 11, aug2 =  292, aug2MAX = 19, aug3 =  293, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Amalric slops +1
[100] = { trade = { 27476,{ 9086, 6}}, base = 27476, aug1 =  516, aug1MAX = 11, aug2 =  292, aug2MAX = 19, aug3 =  293, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Amalric nails +1
[101] = { trade = { 26677,{ 9086, 6}}, base = 26677, aug1 =  107, aug1MAX = 24, aug2 =  101, aug2MAX = 24, aug3 =  369, aug3MAX =  7, aug4 =  0, aug4MAX = 0 },--Apogee crown +1
[102] = { trade = { 26853,{ 9086, 6}}, base = 26853, aug1 =  107, aug1MAX = 24, aug2 =  101, aug2MAX = 24, aug3 =  369, aug3MAX =  7, aug4 =  0, aug4MAX = 0 },--Apogee dalmatica +1
[103] = { trade = { 27029,{ 9086, 6}}, base = 27029, aug1 =  107, aug1MAX = 24, aug2 =  101, aug2MAX = 24, aug3 =  369, aug3MAX =  7, aug4 =  0, aug4MAX = 0 },--Apogee mitts +1
[104] = { trade = { 27205,{ 9086, 6}}, base = 27205, aug1 =  107, aug1MAX = 24, aug2 =  101, aug2MAX = 24, aug3 =  369, aug3MAX =  7, aug4 =  0, aug4MAX = 0 },--Apogee slacks +1
[105] = { trade = { 27381,{ 9086, 6}}, base = 27381, aug1 =  107, aug1MAX = 24, aug2 =  101, aug2MAX = 24, aug3 =  369, aug3MAX =  7, aug4 =  0, aug4MAX = 0 },--Apogee pumps +1
[106] = { trade = { 26673,{ 9086, 6}}, base = 26673, aug1 =    3, aug1MAX =  0, aug2 =  512, aug2MAX = 14, aug3 =   54, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Argosy celata +1
[107] = { trade = { 26849,{ 9086, 6}}, base = 26849, aug1 =    3, aug1MAX =  0, aug2 =  512, aug2MAX = 14, aug3 =   54, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Argosy hauberk +1
[108] = { trade = { 27025,{ 9086, 6}}, base = 27025, aug1 =    3, aug1MAX =  0, aug2 =  512, aug2MAX = 14, aug3 =   54, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Argosy mufflers +1
[109] = { trade = { 27201,{ 9086, 6}}, base = 27201, aug1 =    3, aug1MAX =  0, aug2 =  512, aug2MAX = 14, aug3 =   54, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Argosy breeches +1
[110] = { trade = { 27377,{ 9086, 6}}, base = 27377, aug1 =    3, aug1MAX =  0, aug2 =  512, aug2MAX = 14, aug3 =   54, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Argosy sollerets +1
[111] = { trade = { 26679,{ 9086, 6}}, base = 26679, aug1 =   11, aug1MAX = 15, aug2 =  516, aug2MAX = 11, aug3 =  517, aug3MAX = 11, aug4 =  0, aug4MAX = 0 },--Carmine mask +1
[112] = { trade = { 26855,{ 9086, 6}}, base = 26855, aug1 =   11, aug1MAX = 15, aug2 =  516, aug2MAX = 11, aug3 =  517, aug3MAX = 11, aug4 =  0, aug4MAX = 0 },--Carmine scale mail +1
[113] = { trade = { 27031,{ 9086, 6}}, base = 27031, aug1 =   11, aug1MAX = 15, aug2 =  516, aug2MAX = 11, aug3 =  517, aug3MAX = 11, aug4 =  0, aug4MAX = 0 },--Carmine finger gauntlets +1
[114] = { trade = { 27207,{ 9086, 6}}, base = 27207, aug1 =   11, aug1MAX = 15, aug2 =  516, aug2MAX = 11, aug3 =  517, aug3MAX = 11, aug4 =  0, aug4MAX = 0 },--Carmine cuisses +1
[115] = { trade = { 27383,{ 9086, 6}}, base = 27383, aug1 =   11, aug1MAX = 15, aug2 =  516, aug2MAX = 11, aug3 =  517, aug3MAX = 11, aug4 =  0, aug4MAX = 0 },--Carmine greaves +1
[116] = { trade = { 25610,{ 9086, 6}}, base = 25610, aug1 =  106, aug1MAX = 19, aug2 =  107, aug2MAX = 19, aug3 =  123, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Emicho  coronet +1
[117] = { trade = { 25683,{ 9086, 6}}, base = 25683, aug1 =  106, aug1MAX = 19, aug2 =  107, aug2MAX = 19, aug3 =  123, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Emicho haubert +1
[118] = { trade = { 27114,{ 9086, 6}}, base = 27114, aug1 =  106, aug1MAX = 19, aug2 =  107, aug2MAX = 19, aug3 =  123, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Emicho gauntlets +1
[119] = { trade = { 27299,{ 9086, 6}}, base = 27299, aug1 =  106, aug1MAX = 19, aug2 =  107, aug2MAX = 19, aug3 =  123, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Emicho hose +1
[120] = { trade = { 27470,{ 9086, 6}}, base = 27470, aug1 =  106, aug1MAX = 19, aug2 =  107, aug2MAX = 19, aug3 =  123, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Emicho gambieras +1
[121] = { trade = { 25618,{ 9086, 6}}, base = 25618, aug1 =   11, aug1MAX = 15, aug2 =   53, aug2MAX = 11, aug3 =  323, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Kaykaus mitra +1
[122] = { trade = { 25691,{ 9086, 6}}, base = 25691, aug1 =   11, aug1MAX = 15, aug2 =   53, aug2MAX = 11, aug3 =  323, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Kaykaus bliaut +1
[123] = { trade = { 27122,{ 9086, 6}}, base = 27122, aug1 =   11, aug1MAX = 15, aug2 =   53, aug2MAX = 11, aug3 =  323, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Kaykaus cuffs +1
[124] = { trade = { 27307,{ 9086, 6}}, base = 27307, aug1 =   11, aug1MAX = 15, aug2 =   53, aug2MAX = 11, aug3 =  323, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Kaykaus tights +1
[125] = { trade = { 27478,{ 9086, 6}}, base = 27478, aug1 =   11, aug1MAX = 15, aug2 =   53, aug2MAX = 11, aug3 =  323, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Kaykaus boots +1
[126] = { trade = { 26669,{ 9086, 6}}, base = 26669, aug1 =   23, aug1MAX =  9, aug2 =  142, aug2MAX =  4, aug3 =   25, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Lustratio cap +1
[127] = { trade = { 26845,{ 9086, 6}}, base = 26845, aug1 =   23, aug1MAX =  9, aug2 =  142, aug2MAX =  4, aug3 =   25, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Lustratio harness +1
[128] = { trade = { 27021,{ 9086, 6}}, base = 27021, aug1 =   23, aug1MAX =  9, aug2 =  142, aug2MAX =  4, aug3 =   25, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Lustratio mittens +1
[129] = { trade = { 27197,{ 9086, 6}}, base = 27197, aug1 =   23, aug1MAX =  9, aug2 =  142, aug2MAX =  4, aug3 =   25, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Lustratio subligar +1
[130] = { trade = { 27373,{ 9086, 6}}, base = 27373, aug1 =   23, aug1MAX =  9, aug2 =  142, aug2MAX =  4, aug3 =   25, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Lustratio leggings +1
[131] = { trade = { 26675,{ 9086, 6}}, base = 26675, aug1 =  110, aug1MAX =  2, aug2 =  106, aug2MAX = 19, aug3 =  112, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Rao kabuto +1
[132] = { trade = { 26851,{ 9086, 6}}, base = 26851, aug1 =  110, aug1MAX =  2, aug2 =  106, aug2MAX = 19, aug3 =  112, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Rao togi +1
[133] = { trade = { 27027,{ 9086, 6}}, base = 27027, aug1 =  110, aug1MAX =  2, aug2 =  106, aug2MAX = 19, aug3 =  112, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Rao kote +1
[134] = { trade = { 27203,{ 9086, 6}}, base = 27203, aug1 =  110, aug1MAX =  2, aug2 =  106, aug2MAX = 19, aug3 =  112, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Rao haidate +1
[135] = { trade = { 27379,{ 9086, 6}}, base = 27379, aug1 =  110, aug1MAX =  2, aug2 =  106, aug2MAX = 19, aug3 =  112, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Rao sune-ate +1
[136] = { trade = { 25612,{ 9086, 6}}, base = 25612, aug1 =    3, aug1MAX =  0, aug2 =  142, aug2MAX =  4, aug3 =  195, aug3MAX =  7, aug4 =  0, aug4MAX = 0 },--Ryuo somen +1
[137] = { trade = { 25685,{ 9086, 6}}, base = 25685, aug1 =    3, aug1MAX =  0, aug2 =  142, aug2MAX =  4, aug3 =  195, aug3MAX =  7, aug4 =  0, aug4MAX = 0 },--Ryuo domaru +1
[138] = { trade = { 27116,{ 9086, 6}}, base = 27116, aug1 =    3, aug1MAX =  0, aug2 =  142, aug2MAX =  4, aug3 =  195, aug3MAX =  7, aug4 =  0, aug4MAX = 0 },--Ryuo tekko +1
[139] = { trade = { 27301,{ 9086, 6}}, base = 27301, aug1 =    3, aug1MAX =  0, aug2 =  142, aug2MAX =  4, aug3 =  195, aug3MAX =  7, aug4 =  0, aug4MAX = 0 },--Ryuo hakama +1
[140] = { trade = { 27472,{ 9086, 6}}, base = 27472, aug1 =    3, aug1MAX =  0, aug2 =  142, aug2MAX =  4, aug3 =  195, aug3MAX =  7, aug4 =  0, aug4MAX = 0 },--Ryuo sune-ate +1
[141] = { trade = { 26671,{ 9086, 6}}, base = 26671, aug1 =    4, aug1MAX =  8, aug2 =   39, aug2MAX =  8, aug3 =  356, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Souveran schaller +1
[142] = { trade = { 26847,{ 9086, 6}}, base = 26847, aug1 =    4, aug1MAX =  8, aug2 =   39, aug2MAX =  8, aug3 =  356, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Souveran cuirass +1
[143] = { trade = { 27023,{ 9086, 6}}, base = 27023, aug1 =    4, aug1MAX =  8, aug2 =   39, aug2MAX =  8, aug3 =  356, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Souveran handschuhs +1
[144] = { trade = { 27199,{ 9086, 6}}, base = 27199, aug1 =    4, aug1MAX =  8, aug2 =   39, aug2MAX =  8, aug3 =  356, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Souveran diechlings +1
[145] = { trade = { 27375,{ 9086, 6}}, base = 27375, aug1 =    4, aug1MAX =  8, aug2 =   39, aug2MAX =  8, aug3 =  356, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Souveran schuhs +1
[146] = { trade = { 20983,{ 9086, 6}}, base = 20983, aug1 =  516, aug1MAX =  6, aug2 =   35, aug2MAX = 14, aug3 =  133, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Mijin
[147] = { trade = { 20710,{ 9086, 6}}, base = 20710, aug1 =   35, aug1MAX = 14, aug2 =  133, aug2MAX = 14, aug3 =   37, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Nibiru Blade
[148] = { trade = { 21216,{ 9086, 6}}, base = 21216, aug1 =  515, aug1MAX =  9, aug2 =   27, aug2MAX = 14, aug3 =   29, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Nibiru Bow
[149] = { trade = { 20848,{ 9086, 6}}, base = 20848, aug1 =  514, aug1MAX =  9, aug2 =   31, aug2MAX = 19, aug3 =  145, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Nibiru Chopper
[150] = { trade = { 21092,{ 9086, 6}}, base = 21092, aug1 =   23, aug1MAX = 14, aug2 =   35, aug2MAX = 14, aug3 =  140, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Nibiru Cudgel
[151] = { trade = { 21699,{ 9086, 6}}, base = 21699, aug1 =   31, aug1MAX = 19, aug2 =   37, aug2MAX = 19, aug3 =  140, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Nibiru Faussar
[152] = { trade = { 21273,{ 9086, 6}}, base = 21273, aug1 =  512, aug1MAX =  9, aug2 =   27, aug2MAX = 14, aug3 =   29, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Nibiru Gun
[153] = { trade = { 21399,{ 9086, 6}}, base = 21399, aug1 =   10, aug1MAX = 17, aug2 =  329, aug2MAX =  4, aug3 =   67, aug3MAX =  1, aug4 =  0, aug4MAX = 0 },--Nibiru Harp
[154] = { trade = { 20600,{ 9086, 6}}, base = 20600, aug1 =  512, aug1MAX = 14, aug2 =  513, aug2MAX =  9, aug3 =  518, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Nibiru Knife
[155] = { trade = { 20939,{ 9086, 6}}, base = 20939, aug1 =   31, aug1MAX = 19, aug2 =  106, aug2MAX = 19, aug3 =  107, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Nibiru Lance
[156] = { trade = { 20524,{ 9086, 6}}, base = 20524, aug1 =  517, aug1MAX = 14, aug2 =   39, aug2MAX =  6, aug3 =   54, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Nibiru Sainti
[157] = { trade = { 27642,{ 9086, 6}}, base = 27642, aug1 =   23, aug1MAX = 19, aug2 =  329, aug2MAX =  4, aug3 =  356, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Nibiru Shield
[158] = { trade = { 20895,{ 9086, 6}}, base = 20895, aug1 =   23, aug1MAX = 19, aug2 =   25, aug2MAX = 14, aug3 =  142, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Nibiru Sickle
[159] = { trade = { 21156,{ 9086, 6}}, base = 21156, aug1 =  107, aug1MAX = 24, aug2 =  100, aug2MAX = 19, aug3 =  101, aug3MAX = 24, aug4 =  0, aug4MAX = 0 },--Nibiru Staff
[160] = { trade = { 20801,{ 9086, 6}}, base = 20801, aug1 =  515, aug1MAX =  9, aug2 =  101, aug2MAX = 14, aug3 =  104, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Nibiru Tabar
[161] = { trade = { 21031,{ 9086, 6}}, base = 21031, aug1 =  515, aug1MAX =  9, aug2 =   27, aug2MAX = 14, aug3 =   29, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Sensui
[162] = { trade = { 20979,{ 9086, 6}}, base = 20979, aug1 =  740, aug1MAX = 14, aug2 =   23, aug2MAX = 14, aug3 =   25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Aizushintogo
[163] = { trade = { 21150,{ 9086, 6}}, base = 21150, aug1 =  516, aug1MAX = 14, aug2 =  133, aug2MAX = 14, aug3 =   35, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Akademos
[164] = { trade = { 21698,{ 9086, 6}}, base = 21698, aug1 =  740, aug1MAX = 29, aug2 =   25, aug2MAX = 19, aug3 =   39, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Bidenhander
[165] = { trade = { 21482,{ 9086, 6}}, base = 21482, aug1 =  746, aug1MAX = 14, aug2 =   27, aug2MAX = 14, aug3 =   29, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Compensator
[166] = { trade = { 20892,{ 9086, 6}}, base = 20892, aug1 =  740, aug1MAX = 29, aug2 =   25, aug2MAX = 19, aug3 =  293, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Deathbane
[167] = { trade = { 20702,{ 9086, 6}}, base = 20702, aug1 =  740, aug1MAX = 14, aug2 =   35, aug2MAX = 14, aug3 =  133, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Emissary
[168] = { trade = { 20597,{ 9086, 6}}, base = 20597, aug1 =  740, aug1MAX = 14, aug2 =  513, aug2MAX = 14, aug3 =  195, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Enchufla
[169] = { trade = { 21149,{ 9086, 6}}, base = 21149, aug1 =   10, aug1MAX = 17, aug2 =  101, aug2MAX = 19, aug3 =  100, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Espiritus
[170] = { trade = { 20519,{ 9086, 6}}, base = 20519, aug1 =  740, aug1MAX = 14, aug2 =   25, aug2MAX = 19, aug3 =   40, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Hammerfists
[171] = { trade = { 21027,{ 9086, 6}}, base = 21027, aug1 =  740, aug1MAX = 29, aug2 =   25, aug2MAX = 19, aug3 =   23, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Ichigohitofuri
[172] = { trade = { 20845,{ 9086, 6}}, base = 20845, aug1 =  740, aug1MAX = 29, aug2 =   25, aug2MAX = 19, aug3 =   23, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Instigator
[173] = { trade = { 20701,{ 9086, 6}}, base = 20701, aug1 =  740, aug1MAX = 14, aug2 =   25, aug2MAX = 14, aug3 =  133, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Iris
[174] = { trade = { 20599,{ 9086, 6}}, base = 20599, aug1 =   10, aug1MAX = 27, aug2 =   35, aug2MAX = 19, aug3 =  138, aug3MAX =  0, aug4 =  0, aug4MAX = 0 },--Kali
[175] = { trade = { 21151,{ 9086, 6}}, base = 21151, aug1 =  516, aug1MAX = 14, aug2 =  133, aug2MAX = 14, aug3 =   35, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Lathi
[176] = { trade = { 20520,{ 9086, 6}}, base = 20520, aug1 =  740, aug1MAX = 14, aug2 =  107, aug2MAX = 24, aug3 =  111, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Midnights
[177] = { trade = { 20700,{ 9086, 6}}, base = 20700, aug1 =  740, aug1MAX = 14, aug2 =   23, aug2MAX = 14, aug3 =   25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Nixxer
[178] = { trade = { 21084,{ 9086, 6}}, base = 21084, aug1 =  133, aug1MAX = 14, aug2 =   35, aug2MAX = 14, aug3 =  329, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Queller Rod
[179] = { trade = { 20937,{ 9086, 6}}, base = 20937, aug1 =  740, aug1MAX = 29, aug2 =  514, aug2MAX = 14, aug3 =   25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Rhomphaia
[180] = { trade = { 20598,{ 9086, 6}}, base = 20598, aug1 =  740, aug1MAX = 14, aug2 =   23, aug2MAX = 14, aug3 =   25, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Shijo
[181] = { trade = { 20797,{ 9086, 6}}, base = 20797, aug1 =  740, aug1MAX = 14, aug2 =  106, aug2MAX = 19, aug3 =  107, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Skullrender
[182] = { trade = { 21085,{ 9086, 6}}, base = 21085, aug1 =  516, aug1MAX = 14, aug2 =  133, aug2MAX =  9, aug3 =  138, aug3MAX =  0, aug4 =  0, aug4MAX = 0 },--Solstice
[183] = { trade = { 21215,{ 9086, 6}}, base = 21215, aug1 =  746, aug1MAX = 14, aug2 =   27, aug2MAX = 14, aug3 =   29, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Vijaya Bow
}

local tradeTablePathD =
{
[  1] = { trade = { 26791,{ 9086, 6}}, base = 26791, aug1 =  512, aug1MAX =  8, aug2 =  514, aug2MAX =  6, aug3 =  329, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Eschite Helm
[  2] = { trade = { 26947,{ 9086, 6}}, base = 26947, aug1 =   25, aug1MAX = 14, aug2 =  514, aug2MAX =  6, aug3 =   71, aug3MAX =  3, aug4 =  0, aug4MAX = 0 }, -- Eschite Breastplate
[  3] = { trade = { 27097,{ 9086, 6}}, base = 27097, aug1 =   23, aug1MAX = 19, aug2 =  143, aug2MAX =  3, aug3 =   39, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Eschite Gauntlets
[  4] = { trade = { 27282,{ 9086, 6}}, base = 27282, aug1 =   37, aug1MAX = 24, aug2 =  141, aug2MAX =  5, aug3 =  140, aug3MAX =  4, aug4 =  0, aug4MAX = 0 }, -- Eschite Cuisses
[  5] = { trade = { 27457,{ 9086, 6}}, base = 27457, aug1 =  512, aug1MAX = 14, aug2 =   78, aug2MAX = 24, aug3 =  142, aug3MAX =  4, aug4 =  0, aug4MAX = 0 }, -- Eschite Greaves
[  6] = { trade = { 26792,{ 9086, 6}}, base = 26792, aug1 =  512, aug1MAX = 15, aug2 =   39, aug2MAX =  6, aug3 =  142, aug3MAX =  2, aug4 =  0, aug4MAX = 0 }, -- Despair Helm
[  7] = { trade = { 26948,{ 9086, 6}}, base = 26948, aug1 =   25, aug1MAX = 24, aug2 =   37, aug2MAX = 19, aug3 =  143, aug3MAX =  2, aug4 =  0, aug4MAX = 0 }, -- Despair Mail
[  8] = { trade = { 27098,{ 9086, 6}}, base = 27098, aug1 =   27, aug1MAX = 24, aug2 =   29, aug2MAX = 19, aug3 =  212, aug3MAX =  9, aug4 =  0, aug4MAX = 0 }, -- Despair Finger Gauntlets
[  9] = { trade = { 27283,{ 9086, 6}}, base = 27283, aug1 =  515, aug1MAX =  9, aug2 =   31, aug2MAX = 19, aug3 =  195, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Despair Cuisses
[ 10] = { trade = { 27458,{ 9086, 6}}, base = 27458, aug1 =  513, aug1MAX =  9, aug2 =  512, aug2MAX =  6, aug3 =   54, aug3MAX =  2, aug4 =  0, aug4MAX = 0 }, -- Despair Greaves
[ 11] = { trade = { 26793,{ 9086, 6}}, base = 26793, aug1 =   23, aug1MAX = 14, aug2 =   27, aug2MAX = 24, aug3 =   40, aug3MAX =  5, aug4 =  0, aug4MAX = 0 }, -- Naga Somen
[ 12] = { trade = { 26949,{ 9086, 6}}, base = 26949, aug1 =   79, aug1MAX = 25, aug2 =  513, aug2MAX =  9, aug3 =   25, aug3MAX = 19, aug4 = 78, aug4MAX = 0 }, -- Naga Samue
[ 13] = { trade = { 27099,{ 9086, 6}}, base = 27099, aug1 = 1474, aug1MAX = 30, aug2 =  101, aug2MAX = 19, aug3 =  100, aug3MAX = 19, aug4 =  0, aug4MAX = 0 }, -- Naga Tekko
[ 14] = { trade = { 27284,{ 9086, 6}}, base = 27284, aug1 =   25, aug1MAX = 19, aug2 =   29, aug2MAX = 24, aug3 =   41, aug3MAX =  3, aug4 =  0, aug4MAX = 0 }, -- Naga Hakama
[ 15] = { trade = { 27459,{ 9086, 6}}, base = 27459, aug1 = 1477, aug1MAX = 50, aug2 = 1478, aug2MAX = 20, aug3 = 1479, aug3MAX = 20, aug4 =  0, aug4MAX = 0 }, -- Naga Kyahan
[ 16] = { trade = { 26794,{ 9086, 6}}, base = 26794, aug1 =   25, aug1MAX = 14, aug2 =  100, aug2MAX = 19, aug3 =  101, aug3MAX = 14, aug4 =  0, aug4MAX = 0 }, -- Rawhide Mask
[ 17] = { trade = { 26950,{ 9086, 6}}, base = 26950, aug1 =   79, aug1MAX = 16, aug2 =  195, aug2MAX =  6, aug3 =  144, aug3MAX =  1, aug4 = 78, aug4MAX = 0 }, -- Rawhide Vest
[ 18] = { trade = { 27100,{ 9086, 6}}, base = 27100, aug1 =   35, aug1MAX = 14, aug2 =  516, aug2MAX =  6, aug3 =  517, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Rawhide Gloves
[ 19] = { trade = { 27285,{ 9086, 6}}, base = 27285, aug1 =   83, aug1MAX = 14, aug2 =  140, aug2MAX =  4, aug3 =  138, aug3MAX =  1, aug4 = 82, aug4MAX = 0 }, -- Rawhide Trousers
[ 20] = { trade = { 27460,{ 9086, 6}}, base = 27460, aug1 =  512, aug1MAX =  9, aug2 =   25, aug2MAX = 14, aug3 =  142, aug3MAX =  4, aug4 =  0, aug4MAX = 0 }, -- Rawhide Boots
[ 21] = { trade = { 26795,{ 9086, 6}}, base = 26795, aug1 =   29, aug1MAX = 14, aug2 =   40, aug2MAX =  5, aug3 =  195, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Pursuer's Beret
[ 22] = { trade = { 26951,{ 9086, 6}}, base = 26951, aug1 =   79, aug1MAX = 15, aug2 =   41, aug2MAX =  3, aug3 =  211, aug3MAX =  5, aug4 = 78, aug4MAX = 0 }, -- Pursuer's Doublet
[ 23] = { trade = { 27101,{ 9086, 6}}, base = 27101, aug1 =   29, aug1MAX = 14, aug2 =  512, aug2MAX =  6, aug3 =   54, aug3MAX =  3, aug4 =  0, aug4MAX = 0 }, -- Pursuer's Cuffs
[ 24] = { trade = { 27286,{ 9086, 6}}, base = 27286, aug1 =  513, aug1MAX =  6, aug2 =  515, aug2MAX =  9, aug3 =  512, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Pursuer's Pants
[ 25] = { trade = { 27461,{ 9086, 6}}, base = 27461, aug1 =   27, aug1MAX =  9, aug2 =  139, aug2MAX =  9, aug3 =  212, aug3MAX = 14, aug4 =  0, aug4MAX = 0 }, -- Pursuer's Gaiters
[ 26] = { trade = { 26796,{ 9086, 6}}, base = 26796, aug1 =   35, aug1MAX = 19, aug2 =  140, aug2MAX =  9, aug3 =  516, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Psycloth Tiara
[ 27] = { trade = { 26952,{ 9086, 6}}, base = 26952, aug1 =  292, aug1MAX = 19, aug2 =  516, aug2MAX =  6, aug3 =   40, aug3MAX =  5, aug4 =  0, aug4MAX = 0 }, -- Psycloth Vest
[ 28] = { trade = { 27102,{ 9086, 6}}, base = 27102, aug1 =   83, aug1MAX = 25, aug2 =  233, aug2MAX =  4, aug3 =  101, aug3MAX = 24, aug4 = 82, aug4MAX = 0 }, -- Psycloth Manillas
[ 29] = { trade = { 27287,{ 9086, 6}}, base = 27287, aug1 =   83, aug1MAX = 25, aug2 =   35, aug2MAX = 14, aug3 =  140, aug3MAX =  6, aug4 = 82, aug4MAX = 0 }, -- Psycloth Lappas
[ 30] = { trade = { 27462,{ 9086, 6}}, base = 27462, aug1 =  100, aug1MAX = 19, aug2 =  101, aug2MAX = 19, aug3 =  104, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Psycloth Boots
[ 31] = { trade = { 26797,{ 9086, 6}}, base = 26797, aug1 =   83, aug1MAX = 16, aug2 =  140, aug2MAX =  9, aug3 =   49, aug3MAX =  1, aug4 = 82, aug4MAX = 0 }, -- Vanya Hood
[ 32] = { trade = { 26953,{ 9086, 6}}, base = 26953, aug1 =   78, aug1MAX = 24, aug2 =   82, aug2MAX = 24, aug3 =  138, aug3MAX =  1, aug4 =  0, aug4MAX = 0 }, -- Vanya Robe
[ 33] = { trade = { 27103,{ 9086, 6}}, base = 27103, aug1 =  518, aug1MAX =  9, aug2 =  297, aug2MAX =  9, aug3 =   35, aug3MAX = 19, aug4 =  0, aug4MAX = 0 }, -- Vanya Cuffs
[ 34] = { trade = { 27288,{ 9086, 6}}, base = 27288, aug1 =   78, aug1MAX = 24, aug2 =   37, aug2MAX = 14, aug3 =   54, aug3MAX =  2, aug4 =  0, aug4MAX = 0 }, -- Vanya Slops
[ 35] = { trade = { 27463,{ 9086, 6}}, base = 27463, aug1 =  329, aug1MAX =  4, aug2 =  323, aug2MAX = 14, aug3 =  141, aug3MAX =  6, aug4 =  0, aug4MAX = 0 }, -- Vanya Clogs
[ 36] = { trade = { 25613,{ 9086, 6}}, base = 25613, aug1 =    3, aug1MAX = 15, aug2 =   25, aug2MAX =  9, aug3 =   54, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--adhemar bonnet
[ 37] = { trade = { 25686,{ 9086, 6}}, base = 25686, aug1 =    3, aug1MAX = 15, aug2 =  140, aug2MAX =  6, aug3 =   55, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--adhemar jacket
[ 38] = { trade = { 27117,{ 9086, 6}}, base = 27117, aug1 =   23, aug1MAX = 14, aug2 =   25, aug2MAX = 14, aug3 =  195, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--adhemar wristbands
[ 39] = { trade = { 27302,{ 9086, 6}}, base = 27302, aug1 =  515, aug1MAX =  9, aug2 =  139, aug2MAX =  9, aug3 =   40, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--adhemar kecks
[ 40] = { trade = { 27473,{ 9086, 6}}, base = 27473, aug1 =    2, aug1MAX = 17, aug2 =  142, aug2MAX =  5, aug3 =  211, aug3MAX =  7, aug4 =  0, aug4MAX = 0 },--adhemar gamashes
[ 41] = { trade = { 25615,{ 9086, 6}}, base = 25615, aug1 =  516, aug1MAX =  9, aug2 =   35, aug2MAX = 19, aug3 =   40, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Amalric coif
[ 42] = { trade = { 25688,{ 9086, 6}}, base = 25688, aug1 =   10, aug1MAX = 27, aug2 =  133, aug2MAX = 19, aug3 =  140, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Amalric doublet
[ 43] = { trade = { 27119,{ 9086, 6}}, base = 27119, aug1 =  516, aug1MAX =  9, aug2 =   35, aug2MAX = 14, aug3 =  133, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Amalric gages
[ 44] = { trade = { 27304,{ 9086, 6}}, base = 27304, aug1 =   10, aug1MAX = 27, aug2 =  133, aug2MAX = 19, aug3 =   40, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Amalric slops
[ 45] = { trade = { 27475,{ 9086, 6}}, base = 27475, aug1 =   35, aug1MAX = 14, aug2 =  133, aug2MAX = 14, aug3 =  141, aug3MAX =  5, aug4 =  0, aug4MAX = 0 },--Amalric nails
[ 46] = { trade = { 26676,{ 9086, 6}}, base = 26676, aug1 =  106, aug1MAX = 19, aug2 =  321, aug2MAX =  4, aug3 =  112, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Apogee crown
[ 47] = { trade = { 26852,{ 9086, 6}}, base = 26852, aug1 =  294, aug1MAX = 14, aug2 =   40, aug2MAX =  4, aug3 =  112, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Apogee dalmatica
[ 48] = { trade = { 27028,{ 9086, 6}}, base = 27028, aug1 =  100, aug1MAX = 19, aug2 =  320, aug2MAX =  4, aug3 =  369, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Apogee mitts
[ 49] = { trade = { 27204,{ 9086, 6}}, base = 27204, aug1 = 1792, aug1MAX = 14, aug2 =  369, aug2MAX = 12, aug3 =  123, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Apogee slacks
[ 50] = { trade = { 27380,{ 9086, 6}}, base = 27380, aug1 =   11, aug1MAX =  5, aug2 =  294, aug2MAX = 14, aug3 =  369, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Apogee pumps
[ 51] = { trade = { 26672,{ 9086, 6}}, base = 26672, aug1 =  513, aug1MAX =  9, aug2 =   23, aug2MAX = 14, aug3 =  143, aug3MAX =  1, aug4 =  0, aug4MAX = 0 },--Argosy celata
[ 52] = { trade = { 26848,{ 9086, 6}}, base = 26848, aug1 =  512, aug1MAX =  9, aug2 =   25, aug2MAX = 14, aug3 =  142, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Argosy hauberk
[ 53] = { trade = { 27024,{ 9086, 6}}, base = 27024, aug1 =  512, aug1MAX = 14, aug2 =  143, aug2MAX =  1, aug3 =   49, aug3MAX =  1, aug4 =  0, aug4MAX = 0 },--Argosy mufflers
[ 54] = { trade = { 27200,{ 9086, 6}}, base = 27200, aug1 =  512, aug1MAX =  9, aug2 =   25, aug2MAX = 19, aug3 =  142, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Argosy breeches
[ 55] = { trade = { 27376,{ 9086, 6}}, base = 27376, aug1 =    2, aug1MAX = 27, aug2 =  143, aug2MAX =  1, aug3 =  142, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Argosy sollerets
[ 56] = { trade = { 26678,{ 9086, 6}}, base = 26678, aug1 =   23, aug1MAX = 14, aug2 =   35, aug2MAX =  9, aug3 =  140, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Carmine mask
[ 57] = { trade = { 26854,{ 9086, 6}}, base = 26854, aug1 =   25, aug1MAX = 14, aug2 =  133, aug2MAX =  9, aug3 =  143, aug3MAX =  1, aug4 =  0, aug4MAX = 0 },--Carmine scale mail
[ 58] = { trade = { 27030,{ 9086, 6}}, base = 27030, aug1 =   29, aug1MAX = 14, aug2 =  133, aug2MAX =  9, aug3 =  142, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Carmine finger gauntlets
[ 59] = { trade = { 27206,{ 9086, 6}}, base = 27206, aug1 =   23, aug1MAX = 14, aug2 =   25, aug2MAX =  9, aug3 =  146, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Carmine cuisses
[ 60] = { trade = { 27382,{ 9086, 6}}, base = 27382, aug1 =    2, aug1MAX = 27, aug2 =   10, aug2MAX = 27, aug3 =   54, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Carmine greaves
[ 61] = { trade = { 25609,{ 9086, 6}}, base = 25609, aug1 =   25, aug1MAX = 19, aug2 =  142, aug2MAX =  5, aug3 = 1792, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Emicho  coronet
[ 62] = { trade = { 25682,{ 9086, 6}}, base = 25682, aug1 =  110, aug1MAX =  2, aug2 = 1796, aug2MAX = 14, aug3 =  110, aug3MAX =  1, aug4 =  0, aug4MAX = 0 },--Emicho haubert
[ 63] = { trade = { 27113,{ 9086, 6}}, base = 27113, aug1 =   23, aug1MAX = 19, aug2 =  146, aug2MAX =  4, aug3 =  106, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Emicho gauntlets
[ 64] = { trade = { 27298,{ 9086, 6}}, base = 27298, aug1 =  512, aug1MAX =  9, aug2 =   23, aug2MAX = 19, aug3 =   25, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Emicho hose
[ 65] = { trade = { 27469,{ 9086, 6}}, base = 27469, aug1 =   25, aug1MAX = 19, aug2 =  195, aug2MAX =  3, aug3 =  107, aug3MAX = 24, aug4 =  0, aug4MAX = 0 },--Emicho gambieras
[ 66] = { trade = { 25617,{ 9086, 6}}, base = 25617, aug1 =  517, aug1MAX =  9, aug2 =   35, aug2MAX = 14, aug3 =  133, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Kaykaus mitra
[ 67] = { trade = { 25690,{ 9086, 6}}, base = 25690, aug1 =   10, aug1MAX = 27, aug2 =  329, aug2MAX =  4, aug3 =  141, aug3MAX =  5, aug4 =  0, aug4MAX = 0 },--Kaykaus bliaut
[ 68] = { trade = { 27121,{ 9086, 6}}, base = 27121, aug1 =   10, aug1MAX = 27, aug2 =  141, aug2MAX =  5, aug3 =  140, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Kaykaus cuffs
[ 69] = { trade = { 27306,{ 9086, 6}}, base = 27306, aug1 =  516, aug1MAX =  9, aug2 =  133, aug2MAX = 14, aug3 =   40, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Kaykaus tights
[ 70] = { trade = { 27477,{ 9086, 6}}, base = 27477, aug1 =   35, aug1MAX = 14, aug2 =  329, aug2MAX =  4, aug3 =  140, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Kaykaus boots
[ 71] = { trade = { 26668,{ 9086, 6}}, base = 26668, aug1 =  516, aug1MAX = 29, aug2 =  512, aug2MAX =  4, aug3 =  513, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Lustratio cap
[ 72] = { trade = { 26844,{ 9086, 6}}, base = 26844, aug1 =   23, aug1MAX =  7, aug2 =   25, aug2MAX =  9, aug3 =  143, aug3MAX =  1, aug4 =  0, aug4MAX = 0 },--Lustratio harness
[ 73] = { trade = { 27020,{ 9086, 6}}, base = 27020, aug1 =   23, aug1MAX = 24, aug2 =  514, aug2MAX =  9, aug3 =  513, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Lustratio mittens
[ 74] = { trade = { 27196,{ 9086, 6}}, base = 27196, aug1 =    2, aug1MAX = 17, aug2 =   25, aug2MAX = 24, aug3 =   40, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Lustratio subligar
[ 75] = { trade = { 27372,{ 9086, 6}}, base = 27372, aug1 =    2, aug1MAX = 17, aug2 =  512, aug2MAX =  9, aug3 =  513, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Lustratio leggings
[ 76] = { trade = { 26674,{ 9086, 6}}, base = 26674, aug1 =  514, aug1MAX =  9, aug2 =   25, aug2MAX = 19, aug3 =  145, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Rao kabuto
[ 77] = { trade = { 26850,{ 9086, 6}}, base = 26850, aug1 =   25, aug1MAX = 14, aug2 =  195, aug2MAX =  6, aug3 =   54, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Rao togi
[ 78] = { trade = { 27026,{ 9086, 6}}, base = 27026, aug1 =  517, aug1MAX =  9, aug2 = 1154, aug2MAX = 14, aug3 =   55, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Rao kote
[ 79] = { trade = { 27202,{ 9086, 6}}, base = 27202, aug1 =   23, aug1MAX = 19, aug2 =  143, aug2MAX =  2, aug3 =  106, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Rao haidate
[ 80] = { trade = { 27378,{ 9086, 6}}, base = 27378, aug1 =    2, aug1MAX = 17, aug2 =   41, aug2MAX =  2, aug3 =  143, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Rao sune-ate
[ 81] = { trade = { 25611,{ 9086, 6}}, base = 25611, aug1 =  295, aug1MAX = 14, aug2 =   35, aug2MAX = 19, aug3 =  133, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Ryuo somen
[ 82] = { trade = { 25684,{ 9086, 6}}, base = 25684, aug1 =    2, aug1MAX = 17, aug2 =  142, aug2MAX =  4, aug3 =  143, aug3MAX =  1, aug4 =  0, aug4MAX = 0 },--Ryuo domaru
[ 83] = { trade = { 27115,{ 9086, 6}}, base = 27115, aug1 =  513, aug1MAX =  9, aug2 =   23, aug2MAX = 19, aug3 =  143, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Ryuo tekko
[ 84] = { trade = { 27300,{ 9086, 6}}, base = 27300, aug1 =   23, aug1MAX = 19, aug2 =  142, aug2MAX =  3, aug3 =   54, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Ryuo hakama
[ 85] = { trade = { 27471,{ 9086, 6}}, base = 27471, aug1 =  512, aug1MAX =  9, aug2 =   25, aug2MAX = 19, aug3 =   41, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Ryuo sune-ate
[ 86] = { trade = { 26670,{ 9086, 6}}, base = 26670, aug1 =    3, aug1MAX = 15, aug2 =  514, aug2MAX =  9, aug3 =   54, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Souveran schaller
[ 87] = { trade = { 26846,{ 9086, 6}}, base = 26846, aug1 =  514, aug1MAX =  9, aug2 =   25, aug2MAX = 19, aug3 =  138, aug3MAX =  1, aug4 =  0, aug4MAX = 0 },--Souveran cuirass
[ 88] = { trade = { 27022,{ 9086, 6}}, base = 27022, aug1 =    2, aug1MAX = 17, aug2 =  286, aug2MAX =  9, aug3 =   54, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Souveran handschuhs
[ 89] = { trade = { 27198,{ 9086, 6}}, base = 27198, aug1 =  512, aug1MAX =  9, aug2 =  514, aug2MAX =  9, aug3 =   23, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Souveran diechlings
[ 90] = { trade = { 27374,{ 9086, 6}}, base = 27374, aug1 =    2, aug1MAX = 17, aug2 =   25, aug2MAX = 19, aug3 =   55, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Souveran schuhs
[ 91] = { trade = { 25614,{ 9086, 6}}, base = 25614, aug1 =    4, aug1MAX =  8, aug2 =   25, aug2MAX = 12, aug3 =   54, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--adhemar bonnet +1
[ 92] = { trade = { 25687,{ 9086, 6}}, base = 25687, aug1 =    4, aug1MAX =  8, aug2 =  140, aug2MAX =  9, aug3 =   55, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--adhemar jacket +1
[ 93] = { trade = { 27118,{ 9086, 6}}, base = 27118, aug1 =   23, aug1MAX = 19, aug2 =   25, aug2MAX = 19, aug3 =  195, aug3MAX =  7, aug4 =  0, aug4MAX = 0 },--adhemar wristbands +1
[ 94] = { trade = { 27303,{ 9086, 6}}, base = 27303, aug1 =  515, aug1MAX = 11, aug2 =  139, aug2MAX = 12, aug3 =   40, aug3MAX =  5, aug4 =  0, aug4MAX = 0 },--adhemar kecks +1
[ 95] = { trade = { 27474,{ 9086, 6}}, base = 27474, aug1 =    3, aug1MAX =  0, aug2 =  142, aug2MAX =  6, aug3 =  211, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--adhemar gamashes +1
[ 96] = { trade = { 25616,{ 9086, 6}}, base = 25616, aug1 =  516, aug1MAX = 11, aug2 =   35, aug2MAX = 24, aug3 =   40, aug3MAX =  5, aug4 =  0, aug4MAX = 0 },--Amalric coif +1
[ 97] = { trade = { 25689,{ 9086, 6}}, base = 25689, aug1 =   11, aug1MAX = 15, aug2 =  133, aug2MAX = 24, aug3 =  140, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Amalric doublet +1
[ 98] = { trade = { 27120,{ 9086, 6}}, base = 27120, aug1 =  516, aug1MAX = 11, aug2 =   35, aug2MAX = 19, aug3 =  133, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Amalric gages +1
[ 99] = { trade = { 27305,{ 9086, 6}}, base = 27305, aug1 =   11, aug1MAX = 15, aug2 =  133, aug2MAX = 24, aug3 =   40, aug3MAX =  5, aug4 =  0, aug4MAX = 0 },--Amalric slops +1
[100] = { trade = { 27476,{ 9086, 6}}, base = 27476, aug1 =   35, aug1MAX = 19, aug2 =  133, aug2MAX = 19, aug3 =  141, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Amalric nails +1
[101] = { trade = { 26677,{ 9086, 6}}, base = 26677, aug1 =  106, aug1MAX = 24, aug2 =  321, aug2MAX =  6, aug3 =  112, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Apogee crown +1
[102] = { trade = { 26853,{ 9086, 6}}, base = 26853, aug1 =  294, aug1MAX = 19, aug2 =   40, aug2MAX =  5, aug3 =  112, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Apogee dalmatica +1
[103] = { trade = { 27029,{ 9086, 6}}, base = 27029, aug1 =  100, aug1MAX = 24, aug2 =  320, aug2MAX =  6, aug3 =  369, aug3MAX =  7, aug4 =  0, aug4MAX = 0 },--Apogee mitts +1
[104] = { trade = { 27205,{ 9086, 6}}, base = 27205, aug1 = 1792, aug1MAX = 19, aug2 =  369, aug2MAX = 13, aug3 =  123, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Apogee slacks +1
[105] = { trade = { 27381,{ 9086, 6}}, base = 27381, aug1 =   11, aug1MAX = 15, aug2 =  294, aug2MAX = 19, aug3 =  369, aug3MAX =  7, aug4 =  0, aug4MAX = 0 },--Apogee pumps +1
[106] = { trade = { 26673,{ 9086, 6}}, base = 26673, aug1 =  513, aug1MAX = 11, aug2 =   23, aug2MAX = 19, aug3 =  143, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Argosy celata +1
[107] = { trade = { 26849,{ 9086, 6}}, base = 26849, aug1 =  512, aug1MAX = 11, aug2 =   25, aug2MAX = 19, aug3 =  142, aug3MAX =  5, aug4 =  0, aug4MAX = 0 },--Argosy hauberk +1
[108] = { trade = { 27025,{ 9086, 6}}, base = 27025, aug1 =  512, aug1MAX = 19, aug2 =  143, aug2MAX =  2, aug3 =   49, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Argosy mufflers +1
[109] = { trade = { 27201,{ 9086, 6}}, base = 27201, aug1 =  512, aug1MAX = 11, aug2 =   25, aug2MAX = 24, aug3 =  142, aug3MAX =  5, aug4 =  0, aug4MAX = 0 },--Argosy breeches +1
[110] = { trade = { 27377,{ 9086, 6}}, base = 27377, aug1 =    3, aug1MAX =  0, aug2 =  143, aug2MAX =  2, aug3 =  142, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Argosy sollerets +1
[111] = { trade = { 26679,{ 9086, 6}}, base = 26679, aug1 =   23, aug1MAX = 19, aug2 =   35, aug2MAX = 11, aug3 =  140, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Carmine mask +1
[112] = { trade = { 26855,{ 9086, 6}}, base = 26855, aug1 =  133, aug1MAX = 11, aug2 =   25, aug2MAX = 19, aug3 =  143, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Carmine scale mail +1
[113] = { trade = { 27031,{ 9086, 6}}, base = 27031, aug1 =   29, aug1MAX = 19, aug2 =  133, aug2MAX = 11, aug3 =  142, aug3MAX =  5, aug4 =  0, aug4MAX = 0 },--Carmine finger gauntlets +1
[114] = { trade = { 27207,{ 9086, 6}}, base = 27207, aug1 =   23, aug1MAX = 19, aug2 =   25, aug2MAX = 11, aug3 =  146, aug3MAX =  5, aug4 =  0, aug4MAX = 0 },--Carmine cuisses +1
[115] = { trade = { 27383,{ 9086, 6}}, base = 27383, aug1 =    3, aug1MAX = 15, aug2 =   11, aug2MAX = 15, aug3 =   54, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Carmine greaves +1
[116] = { trade = { 25610,{ 9086, 6}}, base = 25610, aug1 =   25, aug1MAX = 24, aug2 =  142, aug2MAX =  6, aug3 = 1792, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Emicho  coronet +1
[117] = { trade = { 25683,{ 9086, 6}}, base = 25683, aug1 =  110, aug1MAX =  2, aug2 = 1796, aug2MAX = 19, aug3 =  110, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Emicho haubert +1
[118] = { trade = { 27114,{ 9086, 6}}, base = 27114, aug1 =   23, aug1MAX = 24, aug2 =  146, aug2MAX =  5, aug3 =  106, aug3MAX = 24, aug4 =  0, aug4MAX = 0 },--Emicho gauntlets +1
[119] = { trade = { 27299,{ 9086, 6}}, base = 27299, aug1 =  512, aug1MAX = 11, aug2 =   23, aug2MAX = 24, aug3 =   25, aug3MAX = 24, aug4 =  0, aug4MAX = 0 },--Emicho hose +1
[120] = { trade = { 27470,{ 9086, 6}}, base = 27470, aug1 =   25, aug1MAX = 24, aug2 =  195, aug2MAX =  4, aug3 =  107, aug3MAX = 29, aug4 =  0, aug4MAX = 0 },--Emicho gambieras +1
[121] = { trade = { 25618,{ 9086, 6}}, base = 25618, aug1 =  517, aug1MAX = 11, aug2 =   35, aug2MAX =  1, aug3 =  133, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Kaykaus mitra +1
[122] = { trade = { 25691,{ 9086, 6}}, base = 25691, aug1 =   11, aug1MAX = 15, aug2 =  329, aug2MAX =  5, aug3 =  141, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Kaykaus bliaut +1
[123] = { trade = { 27122,{ 9086, 6}}, base = 27122, aug1 =   11, aug1MAX = 15, aug2 =  141, aug2MAX =  6, aug3 =  140, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Kaykaus cuffs +1
[124] = { trade = { 27307,{ 9086, 6}}, base = 27307, aug1 =  516, aug1MAX = 11, aug2 =  133, aug2MAX = 19, aug3 =   40, aug3MAX =  5, aug4 =  0, aug4MAX = 0 },--Kaykaus tights +1
[125] = { trade = { 27478,{ 9086, 6}}, base = 27478, aug1 =   35, aug1MAX = 19, aug2 =  329, aug2MAX =  5, aug3 =  140, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Kaykaus boots +1
[126] = { trade = { 26669,{ 9086, 6}}, base = 26669, aug1 =  512, aug1MAX =  7, aug2 =  513, aug2MAX =  7, aug3 =  516, aug3MAX = 34, aug4 =  0, aug4MAX = 0 },--Lustratio cap +1
[127] = { trade = { 26845,{ 9086, 6}}, base = 26845, aug1 =   23, aug1MAX =  9, aug2 =   25, aug2MAX = 12, aug3 =  143, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Lustratio harness +1
[128] = { trade = { 27021,{ 9086, 6}}, base = 27021, aug1 =   23, aug1MAX = 29, aug2 =  514, aug2MAX = 12, aug3 =  513, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Lustratio mittens +1
[129] = { trade = { 27197,{ 9086, 6}}, base = 27197, aug1 =    3, aug1MAX =  0, aug2 =   25, aug2MAX = 29, aug3 =   40, aug3MAX =  5, aug4 =  0, aug4MAX = 0 },--Lustratio subligar +1
[130] = { trade = { 27373,{ 9086, 6}}, base = 27373, aug1 =    3, aug1MAX =  0, aug2 =  512, aug2MAX = 14, aug3 =  513, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Lustratio leggings +1
[131] = { trade = { 26675,{ 9086, 6}}, base = 26675, aug1 =  514, aug1MAX = 11, aug2 =   25, aug2MAX = 24, aug3 =  145, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Rao kabuto +1
[132] = { trade = { 26851,{ 9086, 6}}, base = 26851, aug1 =   25, aug1MAX = 19, aug2 =  195, aug2MAX =  7, aug3 =   54, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Rao togi +1
[133] = { trade = { 27027,{ 9086, 6}}, base = 27027, aug1 =  517, aug1MAX = 11, aug2 =   37, aug2MAX = 19, aug3 =   55, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Rao kote +1
[134] = { trade = { 27203,{ 9086, 6}}, base = 27203, aug1 =   23, aug1MAX = 24, aug2 =  143, aug2MAX =  3, aug3 =  106, aug3MAX = 24, aug4 =  0, aug4MAX = 0 },--Rao haidate +1
[135] = { trade = { 27379,{ 9086, 6}}, base = 27379, aug1 =    3, aug1MAX =  0, aug2 =   41, aug2MAX =  3, aug3 =  143, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Rao sune-ate +1
[136] = { trade = { 25612,{ 9086, 6}}, base = 25612, aug1 =  295, aug1MAX = 19, aug2 =   35, aug2MAX = 24, aug3 =  133, aug3MAX = 24, aug4 =  0, aug4MAX = 0 },--Ryuo somen +1
[137] = { trade = { 25685,{ 9086, 6}}, base = 25685, aug1 =    3, aug1MAX =  0, aug2 =  142, aug2MAX =  7, aug3 =  143, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Ryuo domaru +1
[138] = { trade = { 27116,{ 9086, 6}}, base = 27116, aug1 =  513, aug1MAX = 11, aug2 =   23, aug2MAX = 24, aug3 =  143, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Ryuo tekko +1
[139] = { trade = { 27301,{ 9086, 6}}, base = 27301, aug1 =   23, aug1MAX = 24, aug2 =  142, aug2MAX =  4, aug3 =   54, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Ryuo hakama +1
[140] = { trade = { 27472,{ 9086, 6}}, base = 27472, aug1 =  512, aug1MAX = 11, aug2 =   25, aug2MAX = 24, aug3 =   41, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Ryuo sune-ate +1
[141] = { trade = { 26671,{ 9086, 6}}, base = 26671, aug1 =    4, aug1MAX =  8, aug2 =  514, aug2MAX = 11, aug3 =   54, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Souveran schaller +1
[142] = { trade = { 26847,{ 9086, 6}}, base = 26847, aug1 =  514, aug1MAX = 11, aug2 =   25, aug2MAX = 24, aug3 =  138, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Souveran cuirass +1
[143] = { trade = { 27023,{ 9086, 6}}, base = 27023, aug1 =    3, aug1MAX =  0, aug2 =  286, aug2MAX = 14, aug3 =   54, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Souveran handschuhs +1
[144] = { trade = { 27199,{ 9086, 6}}, base = 27199, aug1 =  512, aug1MAX = 11, aug2 =  514, aug2MAX = 11, aug3 =   23, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Souveran diechlings +1
[145] = { trade = { 27375,{ 9086, 6}}, base = 27375, aug1 =    3, aug1MAX =  0, aug2 =   25, aug2MAX = 24, aug3 =   55, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Souveran schuhs +1
[146] = { trade = { 20983,{ 9086, 6}}, base = 20983, aug1 =   31, aug1MAX = 19, aug2 =   37, aug2MAX = 19, aug3 =   39, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Mijin
[147] = { trade = { 20710,{ 9086, 6}}, base = 20710, aug1 =    2, aug1MAX = 17, aug2 =  143, aug2MAX =  2, aug3 =  140, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Nibiru Blade
[148] = { trade = { 21216,{ 9086, 6}}, base = 21216, aug1 =   29, aug1MAX = 19, aug2 =  212, aug2MAX = 14, aug3 =  142, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Nibiru Bow
[149] = { trade = { 20848,{ 9086, 6}}, base = 20848, aug1 =    3, aug1MAX = 15, aug2 =   39, aug2MAX =  6, aug3 =   54, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Nibiru Chopper
[150] = { trade = { 21092,{ 9086, 6}}, base = 21092, aug1 =   10, aug1MAX = 17, aug2 =  112, aug2MAX =  2, aug3 =  110, aug3MAX =  1, aug4 =  0, aug4MAX = 0 },--Nibiru Cudgel
[151] = { trade = { 21699,{ 9086, 6}}, base = 21699, aug1 =  514, aug1MAX =  9, aug2 =   23, aug2MAX = 24, aug3 =   54, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Nibiru Faussar
[152] = { trade = { 21273,{ 9086, 6}}, base = 21273, aug1 =  512, aug1MAX = 14, aug2 =  515, aug2MAX =  6, aug3 =  142, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Nibiru Gun
[153] = { trade = { 21399,{ 9086, 6}}, base = 21399, aug1 =   37, aug1MAX = 19, aug2 =   54, aug2MAX =  2, aug3 =   55, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Nibiru Harp
[154] = { trade = { 20600,{ 9086, 6}}, base = 20600, aug1 =   10, aug1MAX = 17, aug2 =   37, aug2MAX = 19, aug3 =  140, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Nibiru Knife
[155] = { trade = { 20939,{ 9086, 6}}, base = 20939, aug1 =   23, aug1MAX = 19, aug2 =  106, aug2MAX = 19, aug3 =  142, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Nibiru Lance
[156] = { trade = { 20524,{ 9086, 6}}, base = 20524, aug1 =  278, aug1MAX = 19, aug2 =  279, aug2MAX = 19, aug3 =  280, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Nibiru Sainti
[157] = { trade = { 27642,{ 9086, 6}}, base = 27642, aug1 =   23, aug1MAX = 14, aug2 =   25, aug2MAX = 14, aug3 =  142, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Nibiru Shield
[158] = { trade = { 20895,{ 9086, 6}}, base = 20895, aug1 =   35, aug1MAX = 19, aug2 =  133, aug2MAX = 14, aug3 =  138, aug3MAX =  0, aug4 =  0, aug4MAX = 0 },--Nibiru Sickle
[159] = { trade = { 21156,{ 9086, 6}}, base = 21156, aug1 =  106, aug1MAX = 19, aug2 =  107, aug2MAX = 19, aug3 =  123, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Nibiru Staff
[160] = { trade = { 20801,{ 9086, 6}}, base = 20801, aug1 =  518, aug1MAX = 14, aug2 =  111, aug2MAX =  2, aug3 =  123, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Nibiru Tabar
[161] = { trade = { 21031,{ 9086, 6}}, base = 21031, aug1 =   31, aug1MAX = 19, aug2 =   37, aug2MAX = 19, aug3 =   54, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Sensui
[162] = { trade = { 20979,{ 9086, 6}}, base = 20979, aug1 =  740, aug1MAX = 16, aug2 =   23, aug2MAX = 14, aug3 =   35, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Aizushintogo
[163] = { trade = { 21150,{ 9086, 6}}, base = 21150, aug1 =   35, aug1MAX = 19, aug2 =  290, aug2MAX = 14, aug3 =  740, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Akademos
[164] = { trade = { 21698,{ 9086, 6}}, base = 21698, aug1 =  740, aug1MAX = 31, aug2 =  142, aug2MAX =  6, aug3 =  746, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Bidenhander
[165] = { trade = { 21482,{ 9086, 6}}, base = 21482, aug1 =  746, aug1MAX = 14, aug2 =   29, aug2MAX = 14, aug3 =  740, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Compensator
[166] = { trade = { 20892,{ 9086, 6}}, base = 20892, aug1 =  740, aug1MAX = 31, aug2 =   11, aug2MAX = 15, aug3 =   35, aug3MAX = 19, aug4 =  0, aug4MAX = 0 },--Deathbane
[167] = { trade = { 20702,{ 9086, 6}}, base = 20702, aug1 =   35, aug1MAX = 14, aug2 =  133, aug2MAX = 19, aug3 =  740, aug3MAX =  0, aug4 =  0, aug4MAX = 0 },--Emissary
[168] = { trade = { 20597,{ 9086, 6}}, base = 20597, aug1 =  740, aug1MAX = 16, aug2 =   31, aug2MAX = 14, aug3 = 1792, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Enchufla
[169] = { trade = { 21149,{ 9086, 6}}, base = 21149, aug1 = 1792, aug1MAX = 14, aug2 =  107, aug2MAX = 24, aug3 =  740, aug3MAX =  3, aug4 =  0, aug4MAX = 0 },--Espiritus
[170] = { trade = { 20519,{ 9086, 6}}, base = 20519, aug1 =  740, aug1MAX = 16, aug2 =    3, aug2MAX = 15, aug3 =  515, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Hammerfists
[171] = { trade = { 21027,{ 9086, 6}}, base = 21027, aug1 =  515, aug1MAX = 19, aug2 =   27, aug2MAX = 24, aug3 =  740, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Ichigohitofuri
[172] = { trade = { 20845,{ 9086, 6}}, base = 20845, aug1 =  740, aug1MAX = 31, aug2 =  512, aug2MAX = 14, aug3 =  299, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Instigator
[173] = { trade = { 20701,{ 9086, 6}}, base = 20701, aug1 =  299, aug1MAX = 14, aug2 =   35, aug2MAX = 14, aug3 =   35, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Iris
[174] = { trade = { 20599,{ 9086, 6}}, base = 20599, aug1 =   35, aug1MAX = 14, aug2 =  297, aug2MAX =  9, aug3 =   35, aug3MAX =  9, aug4 =  0, aug4MAX = 0 },--Kali
[175] = { trade = { 21151,{ 9086, 6}}, base = 21151, aug1 =   35, aug1MAX = 24, aug2 =  294, aug2MAX = 14, aug3 =  107, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Lathi
[176] = { trade = { 20520,{ 9086, 6}}, base = 20520, aug1 =  107, aug1MAX = 24, aug2 =  106, aug2MAX = 24, aug3 =  740, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Midnights
[177] = { trade = { 20700,{ 9086, 6}}, base = 20700, aug1 =  740, aug1MAX = 16, aug2 =  512, aug2MAX = 14, aug3 =  289, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Nixxer
[178] = { trade = { 21084,{ 9086, 6}}, base = 21084, aug1 =  289, aug1MAX = 14, aug2 =  329, aug2MAX =  9, aug3 =  740, aug3MAX =  6, aug4 =  0, aug4MAX = 0 },--Queller Rod
[179] = { trade = { 20937,{ 9086, 6}}, base = 20937, aug1 =  740, aug1MAX = 31, aug2 =   25, aug2MAX = 19, aug3 =  144, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Rhomphaia
[180] = { trade = { 20598,{ 9086, 6}}, base = 20598, aug1 =  144, aug1MAX =  1, aug2 =  146, aug2MAX =  4, aug3 =  740, aug3MAX = 14, aug4 =  0, aug4MAX = 0 },--Shijo
[181] = { trade = { 20797,{ 9086, 6}}, base = 20797, aug1 =  740, aug1MAX = 14, aug2 =  101, aug2MAX = 14, aug3 =   35, aug3MAX =  1, aug4 =  0, aug4MAX = 0 },--Skullrender
[182] = { trade = { 21085,{ 9086, 6}}, base = 21085, aug1 =   35, aug1MAX = 19, aug2 =  112, aug2MAX =  3, aug3 =  746, aug3MAX =  4, aug4 =  0, aug4MAX = 0 },--Solstice
[183] = { trade = { 21215,{ 9086, 6}}, base = 21215, aug1 =  746, aug1MAX = 14, aug2 =   29, aug2MAX = 14, aug3 =   41, aug3MAX =  2, aug4 =  0, aug4MAX = 0 },--Vijaya Bow
}

local AlixerExch =
{
[ 1] = {trade = {{9084, 10}}, reward = 9085, qty =  1},
[ 2] = {trade = {{9084, 20}}, reward = 9085, qty =  2},
[ 3] = {trade = {{9084, 30}}, reward = 9085, qty =  3},
[ 4] = {trade = {{9084, 40}}, reward = 9085, qty =  4},
[ 5] = {trade = {{9084, 50}}, reward = 9085, qty =  5},
[ 6] = {trade = {{9084, 60}}, reward = 9085, qty =  6},
[ 7] = {trade = {{9084, 70}}, reward = 9085, qty =  7},
[ 8] = {trade = {{9084, 80}}, reward = 9085, qty =  8},
[ 9] = {trade = {{9084, 90}}, reward = 9085, qty =  9},
[10] = {trade = {{9085,  3}}, reward = 9086, qty =  1},
[11] = {trade = {{9085,  6}}, reward = 9086, qty =  2},
[12] = {trade = {{9085,  9}}, reward = 9086, qty =  3},
[13] = {trade = {{9085, 12}}, reward = 9086, qty =  4},
[14] = {trade = {{9085, 15}}, reward = 9086, qty =  5},
[15] = {trade = {{9085, 18}}, reward = 9086, qty =  6},
[16] = {trade = {{9085, 21}}, reward = 9086, qty =  7},
[17] = {trade = {{9085, 24}}, reward = 9086, qty =  8},
[18] = {trade = {{9085, 27}}, reward = 9086, qty =  9},
[19] = {trade = {{9085, 30}}, reward = 9086, qty = 10},
[20] = {trade = {{9085, 33}}, reward = 9086, qty = 11},
[21] = {trade = {{9085, 36}}, reward = 9086, qty = 12},
[22] = {trade = {{9085, 39}}, reward = 9086, qty = 13},
[23] = {trade = {{9085, 42}}, reward = 9086, qty = 14},
[24] = {trade = {{9085, 45}}, reward = 9086, qty = 15},
[25] = {trade = {{9085, 48}}, reward = 9086, qty = 16},
[26] = {trade = {{9085, 51}}, reward = 9086, qty = 17},
[27] = {trade = {{9085, 54}}, reward = 9086, qty = 18},
[28] = {trade = {{9085, 57}}, reward = 9086, qty = 19},
[29] = {trade = {{9085, 60}}, reward = 9086, qty = 20},
[30] = {trade = {{9085, 63}}, reward = 9086, qty = 21},
[31] = {trade = {{9085, 66}}, reward = 9086, qty = 22},
[32] = {trade = {{9085, 69}}, reward = 9086, qty = 23},
[33] = {trade = {{9085, 72}}, reward = 9086, qty = 24},
[34] = {trade = {{9085, 75}}, reward = 9086, qty = 25},
[35] = {trade = {{9085, 78}}, reward = 9086, qty = 26},
[36] = {trade = {{9085, 81}}, reward = 9086, qty = 27},
[37] = {trade = {{9085, 84}}, reward = 9086, qty = 28},
[38] = {trade = {{9085, 87}}, reward = 9086, qty = 29},
[39] = {trade = {{9085, 90}}, reward = 9086, qty = 30},
[40] = {trade = {{9085, 93}}, reward = 9086, qty = 31},
[41] = {trade = {{9085, 96}}, reward = 9086, qty = 32},
}
m:addOverride("xi.zones.Norg.npcs.Nolan.onTrade", function(player, npc, trade)
    local amount = player:getCurrency('escha_silt')
    local tradedAlix = 0
        if tradedAlix == 0 then
			for k, v in pairs(AlixerExch) do
				if npcUtil.tradeHasExactly(trade, v.trade) then
                tradedAlix = k
		        npc:setLocalVar("AlixUpg", AlixerExch[tradedAlix].reward)
                npc:setLocalVar("AlixQty", AlixerExch[tradedAlix].qty)
                   break
                end
            end
        end
        if tradedAlix > 0 then
        local alixreward = npc:getLocalVar("AlixUpg", AlixerExch[tradedAlix].reward)
        local alixqty = npc:getLocalVar("AlixQty", AlixerExch[tradedAlix].qty)
           player:printToPlayer('Thank you for your business, we have upgraded your Eschalixer, Here you go!', 0, 'Nolan')
           player:tradeComplete()
           npcUtil.giveItem(player, {{alixreward, alixqty}})




elseif tradedAlix == 0 and amount <= 2999 then
player:printToPlayer("You are attempting to trade an incorrect amount of Eschalixer to upgrade or you do", 0, 'Nolan')
player:printToPlayer(string.format("not have enough Escha Silt to upgrade your equipment. Your currently have %s Silt!", amount), 0, 'Nolan')
player:printToPlayer("Please review what you are attempting to trade and try again.", 0, 'Nolan')
elseif tradedAlix == 0 and amount >= 3000 then
		local tradeedItem = 0
		if player:getCharVar("[GFZitah]item") == 0 then
			for k, v in pairs(tradeTablePathA) do
				if npcUtil.tradeHasExactly(trade, v.trade) then 
					tradeedItem = k
					break
                end
			end
		end

		if tradeedItem > 0 then
			local rewardItemId = tradeTablePathA[tradeedItem].base
            player:startEvent(9502, rewardItemId)

			player:setCharVar("[GFZitah]item", rewardItemId) 
			npc:setLocalVar("rewardItemId", tradeTablePathA[tradeedItem].base)
			npc:setLocalVar("aug1A", tradeTablePathA[tradeedItem].aug1)
			npc:setLocalVar("aug2A", tradeTablePathA[tradeedItem].aug2)
			npc:setLocalVar("aug3A", tradeTablePathA[tradeedItem].aug3)
			npc:setLocalVar("aug4A", tradeTablePathA[tradeedItem].aug4)
			npc:setLocalVar("aug1MAXA", tradeTablePathA[tradeedItem].aug1MAX)
			npc:setLocalVar("aug2MAXA", tradeTablePathA[tradeedItem].aug2MAX)
			npc:setLocalVar("aug3MAXA", tradeTablePathA[tradeedItem].aug3MAX)
			npc:setLocalVar("aug4MAXA", tradeTablePathA[tradeedItem].aug4MAX)
			
			npc:setLocalVar("aug1B", tradeTablePathB[tradeedItem].aug1)
			npc:setLocalVar("aug2B", tradeTablePathB[tradeedItem].aug2)
			npc:setLocalVar("aug3B", tradeTablePathB[tradeedItem].aug3)
			npc:setLocalVar("aug4B", tradeTablePathB[tradeedItem].aug4)
			npc:setLocalVar("aug1MAXB", tradeTablePathB[tradeedItem].aug1MAX)
			npc:setLocalVar("aug2MAXB", tradeTablePathB[tradeedItem].aug2MAX)
			npc:setLocalVar("aug3MAXB", tradeTablePathB[tradeedItem].aug3MAX)
			npc:setLocalVar("aug4MAXB", tradeTablePathB[tradeedItem].aug4MAX)
			
			npc:setLocalVar("aug1C", tradeTablePathC[tradeedItem].aug1)
			npc:setLocalVar("aug2C", tradeTablePathC[tradeedItem].aug2)
			npc:setLocalVar("aug3C", tradeTablePathC[tradeedItem].aug3)
			npc:setLocalVar("aug4C", tradeTablePathC[tradeedItem].aug4)
			npc:setLocalVar("aug1MAXC", tradeTablePathC[tradeedItem].aug1MAX)
			npc:setLocalVar("aug2MAXC", tradeTablePathC[tradeedItem].aug2MAX)
			npc:setLocalVar("aug3MAXC", tradeTablePathC[tradeedItem].aug3MAX)
			npc:setLocalVar("aug4MAXC", tradeTablePathC[tradeedItem].aug4MAX)
			
			npc:setLocalVar("aug1D", tradeTablePathD[tradeedItem].aug1)
			npc:setLocalVar("aug2D", tradeTablePathD[tradeedItem].aug2)
			npc:setLocalVar("aug3D", tradeTablePathD[tradeedItem].aug3)
			npc:setLocalVar("aug4D", tradeTablePathD[tradeedItem].aug4)
			npc:setLocalVar("aug1MAXD", tradeTablePathD[tradeedItem].aug1MAX)
			npc:setLocalVar("aug2MAXD", tradeTablePathD[tradeedItem].aug2MAX)
			npc:setLocalVar("aug3MAXD", tradeTablePathD[tradeedItem].aug3MAX)
			npc:setLocalVar("aug4MAXD", tradeTablePathD[tradeedItem].aug4MAX)
		end
end
end)

m:addOverride("xi.zones.Norg.npcs.Nolan.onTrigger", function(player, npc)
    if player:getCurrentMission(xi.mission.log_id.ROV) >= xi.mission.id.rov.SET_FREE then
    player:startEvent(9501)
    else
    player:startEvent(9500)
    end
end)

m:addOverride("xi.zones.Norg.npcs.Nolan.onEventUpdate", function(player, csid, option, npc)
            local display = player:getCharVar("[GFZitah]item")
            player:updateEvent(9502, display)
end)

m:addOverride("xi.zones.Norg.npcs.Nolan.onEventFinish", function(player, csid, option, npc)
	if csid == 9502 and
		option == 65542 then -- option A
					player:setCharVar("[Augment]choice", 1)

		elseif option == 131078 then -- option B
					player:setCharVar("[Augment]choice", 2)

		elseif option == 196614 then -- option C
					player:setCharVar("[Augment]choice", 3)

		elseif option == 262150 then -- option D
					player:setCharVar("[Augment]choice", 4)
        elseif option == 1073741824 then
						player:setCharVar("[GFZitah]item", 0)
                        player:setCharVar("[Augment]choice", 0)
	end
					local reward = player:getCharVar("[GFZitah]item")
					local aug1A = npc:getLocalVar("aug1A")
					local aug2A = npc:getLocalVar("aug2A")
					local aug3A = npc:getLocalVar("aug3A")
					local aug4A = npc:getLocalVar("aug4A")
					local aug1MAXA = npc:getLocalVar("aug1MAXA")
					local aug2MAXA = npc:getLocalVar("aug2MAXA")
					local aug3MAXA = npc:getLocalVar("aug3MAXA")
					local aug4MAXA = npc:getLocalVar("aug4MAXA")
					
					local aug1B = npc:getLocalVar("aug1B")
					local aug2B = npc:getLocalVar("aug2B")
					local aug3B = npc:getLocalVar("aug3B")
					local aug4B = npc:getLocalVar("aug4B")
					local aug1MAXB = npc:getLocalVar("aug1MAXB")
					local aug2MAXB = npc:getLocalVar("aug2MAXB")
					local aug3MAXB = npc:getLocalVar("aug3MAXB")
					local aug4MAXB = npc:getLocalVar("aug4MAXB")
					
					local aug1C = npc:getLocalVar("aug1C")
					local aug2C = npc:getLocalVar("aug2C")
					local aug3C = npc:getLocalVar("aug3C")
					local aug4C = npc:getLocalVar("aug4C")
					local aug1MAXC = npc:getLocalVar("aug1MAXC")
					local aug2MAXC = npc:getLocalVar("aug2MAXC")
					local aug3MAXC = npc:getLocalVar("aug3MAXC")
					local aug4MAXC = npc:getLocalVar("aug4MAXC")
					
					local aug1D = npc:getLocalVar("aug1D")
					local aug2D = npc:getLocalVar("aug2D")
					local aug3D = npc:getLocalVar("aug3D")
					local aug4D = npc:getLocalVar("aug4D")
					local aug1MAXD = npc:getLocalVar("aug1MAXD")
					local aug2MAXD = npc:getLocalVar("aug2MAXD")
					local aug3MAXD = npc:getLocalVar("aug3MAXD")
					local aug4MAXD = npc:getLocalVar("aug4MAXD")
					                                        					
					if player:getCharVar("[Augment]choice") == 1 then
                    player:printToPlayer("Here is your augmented reward", 0, 'Nolan')
						player:addItem(reward, 1, aug1A, aug1MAXA, aug2A, aug2MAXA, aug3A, aug3MAXA, aug4A, aug4MAXA)
						player:setCharVar("[GFZitah]item", 0)
                        player:setCharVar("[Augment]choice", 0)
                        player:delCurrency('escha_silt', 3000)
                        player:tradeComplete()
					elseif player:getCharVar("[Augment]choice") == 2 then
                    player:printToPlayer("Here is your augmented reward", 0, 'Nolan')
						player:addItem(reward, 1, aug1B, aug1MAXB, aug2B, aug2MAXB, aug3B, aug3MAXB, aug4B, aug4MAXB)
						player:setCharVar("[GFZitah]item", 0)
                        player:setCharVar("[Augment]choice", 0)
                        player:delCurrency('escha_silt', 3000)
                        player:tradeComplete()
					elseif player:getCharVar("[Augment]choice") == 3 then
                    player:printToPlayer("Here is your augmented reward", 0, 'Nolan')
						player:addItem(reward, 1, aug1C, aug1MAXC, aug2C, aug2MAXC, aug3C, aug3MAXC, aug4C, aug4MAXC)
						player:setCharVar("[GFZitah]item", 0)
                        player:setCharVar("[Augment]choice", 0)
                        player:delCurrency('escha_silt', 3000)
                        player:tradeComplete()
					elseif player:getCharVar("[Augment]choice") == 4 then
                    player:printToPlayer("Here is your augmented reward", 0, 'Nolan')
                    	player:addItem(reward, 1, aug1D, aug1MAXD, aug2D, aug2MAXD, aug3D, aug3MAXD, aug4D, aug4MAXD)
						player:setCharVar("[GFZitah]item", 0)
                        player:setCharVar("[Augment]choice", 0)
                        player:delCurrency('escha_silt', 3000)
                        player:tradeComplete()
					end
				
end)

return m