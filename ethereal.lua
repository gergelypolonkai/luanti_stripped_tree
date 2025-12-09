-- Register stripped trees
local mod_name = "ethereal"

stripped_tree.register_strippable_trunk("ethereal:banana_trunk")
stripped_tree.register_strippable_trunk("ethereal:birch_trunk")
stripped_tree.register_strippable_trunk("ethereal:scorched_tree")
stripped_tree.register_strippable_trunk("ethereal:yellow_trunk")
stripped_tree.register_strippable_trunk("ethereal:willow_trunk")
stripped_tree.register_strippable_trunk("ethereal:redwood_trunk")
stripped_tree.register_strippable_trunk("ethereal:sakura_trunk")
stripped_tree.register_strippable_trunk("ethereal:frost_tree")
stripped_tree.register_strippable_trunk("ethereal:palm_trunk")

-- Register axes
local axe_types = {"axe_crystal"}
if not stripped_tree.enable_chisel then stripped_tree.register_axes(mod_name, axe_types) end
