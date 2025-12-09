-- Register stripped trees
stripped_tree.register_strippable_trunk("moretrees:beech_trunk", "moretrees:beech_planks")
stripped_tree.register_strippable_trunk("moretrees:apple_tree_trunk", "moretrees:apple_tree_planks")
stripped_tree.register_strippable_trunk("moretrees:oak_trunk", "moretrees:oak_planks")
stripped_tree.register_strippable_trunk("moretrees:sequoia_trunk", "moretrees:sequoia_planks")
stripped_tree.register_strippable_trunk("moretrees:birch_trunk", "moretrees:birch_planks")
stripped_tree.register_strippable_trunk("moretrees:palm_trunk", "moretrees:palm_planks")
stripped_tree.register_strippable_trunk("moretrees:date_palm_trunk", "moretrees:date_palm_planks")
stripped_tree.register_strippable_trunk("moretrees:spruce_trunk", "moretrees:spruce_planks")
stripped_tree.register_strippable_trunk("moretrees:cedar_trunk", "moretrees:cedar_planks")
stripped_tree.register_strippable_trunk("moretrees:poplar_trunk", "moretrees:poplar_planks")
stripped_tree.register_strippable_trunk("moretrees:willow_trunk", "moretrees:willow_planks")
stripped_tree.register_strippable_trunk("moretrees:rubber_tree_trunk", "moretrees:rubber_tree_planks")
stripped_tree.register_strippable_trunk("moretrees:fir_trunk", "moretrees:fir_planks")
stripped_tree.register_strippable_trunk("moretrees:jungletree_trunk", "default:junglewood")

-- Register tree variations using the same texture as default moretree trunks
local date_palm_trunk_tiles = {
    "stripped_moretrees_date_palm_trunk_top.png",
    "stripped_moretrees_date_palm_trunk_top.png",
    "stripped_moretrees_date_palm_trunk.png",
}
stripped_tree.register_strippable_trunk(
    "moretrees:date_palm_mfruit_trunk", "moretrees:date_palm_planks", date_palm_trunk_tiles
)
stripped_tree.register_strippable_trunk(
    "moretrees:date_palm_ffruit_trunk", "moretrees:date_palm_planks", date_palm_trunk_tiles
)
stripped_tree.register_strippable_trunk(
    "moretrees:date_palm_fruit_trunk", "moretrees:date_palm_planks", date_palm_trunk_tiles
)
stripped_tree.register_strippable_trunk(
    "moretrees:rubber_tree_trunk_empty", "moretrees:rubber_tree_planks", {
        "stripped_moretrees_rubber_tree_trunk_top.png",
        "stripped_moretrees_rubber_tree_trunk_top.png",
        "stripped_moretrees_rubber_tree_trunk.png",
    }
)

-- Register aliases for legacy node names
core.register_alias("moretrees:stripped_beech_trunk", "stripped_tree:moretrees_stripped_beech_trunk")
core.register_alias("moretrees:stripped_apple_tree_trunk", "stripped_tree:moretrees_stripped_apple_tree_trunk")
core.register_alias("moretrees:stripped_oak_trunk", "stripped_tree:moretrees_stripped_oak_trunk")
core.register_alias("moretrees:stripped_sequoia_trunk", "stripped_tree:moretrees_stripped_sequoia_trunk")
core.register_alias("moretrees:stripped_birch_trunk", "stripped_tree:moretrees_stripped_birch_trunk")
core.register_alias("moretrees:stripped_palm_trunk", "stripped_tree:moretrees_stripped_palm_trunk")
core.register_alias("moretrees:stripped_date_palm_trunk", "stripped_tree:moretrees_stripped_date_palm_trunk")
core.register_alias("moretrees:stripped_spruce_trunk", "stripped_tree:moretrees_stripped_spruce_trunk")
core.register_alias("moretrees:stripped_cedar_trunk", "stripped_tree:moretrees_stripped_cedar_trunk")
core.register_alias("moretrees:stripped_poplar_trunk", "stripped_tree:moretrees_stripped_poplar_trunk")
core.register_alias("moretrees:stripped_willow_trunk", "stripped_tree:moretrees_stripped_willow_trunk")
core.register_alias("moretrees:stripped_rubber_tree_trunk", "stripped_tree:moretrees_stripped_rubber_tree_trunk")
core.register_alias("moretrees:stripped_fir_trunk", "stripped_tree:moretrees_stripped_fir_trunk")
core.register_alias("moretrees:stripped_jungletree_trunk", "stripped_tree:moretrees_stripped_jungletree_trunk")
core.register_alias("moretrees:stripped_date_palm_mfruit_trunk", "stripped_tree:moretrees_stripped_date_palm_mfruit_trunk")
core.register_alias("moretrees:stripped_date_palm_ffruit_trunk", "stripped_tree:moretrees_stripped_date_palm_ffruit_trunk")
core.register_alias("moretrees:stripped_date_palm_fruit_trunk", "stripped_tree:moretrees_stripped_date_palm_fruit_trunk")
core.register_alias("moretrees:stripped_rubber_tree_trunk_empty", "stripped_tree:moretrees_stripped_rubber_tree_trunk_empty")
