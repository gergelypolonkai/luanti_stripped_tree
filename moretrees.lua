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
