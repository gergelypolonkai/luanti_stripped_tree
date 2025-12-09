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

-- Register aliases for legacy node names
core.register_alias("ethereal:stripped_banana_trunk", "stripped_tree:ethereal_stripped_banana_trunk")
core.register_alias("ethereal:stripped_birch_trunk", "stripped_tree:ethereal_stripped_birch_trunk")
core.register_alias("ethereal:stripped_scorched_tree", "stripped_tree:ethereal_stripped_scorched_tree")
core.register_alias("ethereal:stripped_yellow_trunk", "stripped_tree:ethereal_stripped_yellow_trunk")
core.register_alias("ethereal:stripped_willow_trunk", "stripped_tree:ethereal_stripped_willow_trunk")
core.register_alias("ethereal:stripped_redwood_trunk", "stripped_tree:ethereal_stripped_redwood_trunk")
core.register_alias("ethereal:stripped_sakura_trunk", "stripped_tree:ethereal_stripped_sakura_trunk")
core.register_alias("ethereal:stripped_frost_tree", "stripped_tree:ethereal_stripped_frost_tree")
core.register_alias("ethereal:stripped_palm_trunk", "stripped_tree:ethereal_stripped_palm_trunk")

-- Register axes
local axe_types = {"axe_crystal"}
stripped_tree.register_axes(mod_name, axe_types)
