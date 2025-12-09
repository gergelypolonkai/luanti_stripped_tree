-- Register stripped trees
local mod_name = "ethereal"

stripped_tree.register_strippable_trunk("ethereal:banana_trunk", "ethereal:banana_wood")
stripped_tree.register_strippable_trunk("ethereal:birch_trunk", "ethereal:birch_wood")
stripped_tree.register_strippable_trunk("ethereal:scorched_tree", "ethereal:scorched_wood")
stripped_tree.register_strippable_trunk("ethereal:yellow_trunk", "ethereal:yellow_wood")
stripped_tree.register_strippable_trunk("ethereal:willow_trunk", "ethereal:willow_wood")
stripped_tree.register_strippable_trunk("ethereal:redwood_trunk", "ethereal:redwood_wood")
stripped_tree.register_strippable_trunk("ethereal:sakura_trunk", "ethereal:sakura_wood")
stripped_tree.register_strippable_trunk("ethereal:frost_tree", "ethereal:frost_wood")
stripped_tree.register_strippable_trunk("ethereal:palm_trunk", "ethereal:palm_wood")

-- Register axes
local axe_types = {"axe_crystal"}
if not stripped_tree.enable_chisel then stripped_tree.register_axes(mod_name, axe_types) end
