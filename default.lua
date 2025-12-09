-- Register stripped trees
local mod_name = "default"

stripped_tree.register_strippable_trunk("default:tree", "default:wood")
stripped_tree.register_strippable_trunk("default:jungletree", "default:junglewood")
stripped_tree.register_strippable_trunk("default:aspen_tree", "default:aspen_wood")
stripped_tree.register_strippable_trunk("default:acacia_tree", "default:acacia_wood")
stripped_tree.register_strippable_trunk("default:pine_tree", "default:pine_wood")

-- Register aliases for legacy node names
core.register_alias("default:stripped_tree", "stripped_tree:default_stripped_tree")
core.register_alias("default:stripped_jungletree", "stripped_tree:default_stripped_jungletree")
core.register_alias("default:stripped_aspen_tree", "stripped_tree:default_stripped_aspen_tree")
core.register_alias("default:stripped_acacia_tree", "stripped_tree:default_stripped_acacia_tree")
core.register_alias("default:stripped_pine_tree", "stripped_tree:default_stripped_pine_tree")

-- Register axes
local axe_types = {"axe_wood", "axe_stone", "axe_bronze", "axe_steel", "axe_mese", "axe_diamond"}
stripped_tree.register_axes(mod_name, axe_types)
