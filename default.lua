-- Register stripped trees
local mod_name = "default"
local trunk_names = {"tree", "jungletree", "aspen_tree", "acacia_tree", "pine_tree"}

stripped_tree.register_trunk(mod_name, trunk_names)

-- Register axes
local axe_types = {"axe_wood", "axe_stone", "axe_bronze", "axe_steel", "axe_mese", "axe_diamond"}
if not stripped_tree.enable_chisel then stripped_tree.register_axes(mod_name, axe_types) end
