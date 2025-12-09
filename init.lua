-- Our own mod namespace
stripped_tree = {axes_strip_trees = core.settings:get_bool("stripped_tree_strip_with_axe")}

-- Get our own path
local mpath = core.get_modpath("stripped_tree")

-- Load functions
dofile(mpath .. "/functions.lua")

-- Load our own recipes
dofile(mpath .. "/recipes.lua")

-- Load default (AKA the Minetest game)
dofile(mpath .. "/default.lua")
dofile(mpath .. "/chiseling_machine.lua")

-- Load optional dependencies
if core.get_modpath("moretrees") then dofile(mpath .. "/moretrees.lua") end
if core.get_modpath("ethereal") then dofile(mpath .. "/ethereal.lua") end
if core.get_modpath("moreores") then dofile(mpath .. "/moreores.lua") end
