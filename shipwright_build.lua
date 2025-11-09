local colorscheme = require('lush_theme.calorie')
local lushwright = require('shipwright.transform.lush')
run(colorscheme, lushwright.to_lua, { patchwrite, 'colors/calorie.lua', '-- PATCH_OPEN', '-- PATCH_CLOSE'})
