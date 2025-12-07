-- Register stripped trees
local mod_name = "default"

stripped_tree.register_strippable_trunk("default:tree")
stripped_tree.register_strippable_trunk("default:jungletree")
stripped_tree.register_strippable_trunk("default:aspen_tree")
stripped_tree.register_strippable_trunk("default:acacia_tree")
stripped_tree.register_strippable_trunk("default:pine_tree")

-- Register axes
local axe_types = {"axe_wood", "axe_stone", "axe_bronze", "axe_steel", "axe_mese", "axe_diamond"}
if not stripped_tree.enable_chisel then stripped_tree.register_axes(mod_name, axe_types) end
