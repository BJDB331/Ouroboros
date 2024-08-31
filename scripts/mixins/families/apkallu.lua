require('scripts/globals/apkallu')
require('scripts/globals/mixins')

g_mixins = g_mixins or {}
g_mixins.families = g_mixins.families or {}

g_mixins.families.apkallu = function(apkalluMob)
    xi.apkallu.track(apkalluMob)
end


return g_mixins.families.apkallu
