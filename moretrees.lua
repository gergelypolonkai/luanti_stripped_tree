-- Register stripped trees
local mod_name = "moretrees"

stripped_tree.register_strippable_trunk("moretrees:beech_trunk")
stripped_tree.register_strippable_trunk("moretrees:apple_tree_trunk")
stripped_tree.register_strippable_trunk("moretrees:oak_trunk")
stripped_tree.register_strippable_trunk("moretrees:sequoia_trunk")
stripped_tree.register_strippable_trunk("moretrees:birch_trunk")
stripped_tree.register_strippable_trunk("moretrees:palm_trunk")
stripped_tree.register_strippable_trunk("moretrees:date_palm_trunk")
stripped_tree.register_strippable_trunk("moretrees:spruce_trunk")
stripped_tree.register_strippable_trunk("moretrees:cedar_trunk")
stripped_tree.register_strippable_trunk("moretrees:poplar_trunk")
stripped_tree.register_strippable_trunk("moretrees:willow_trunk")
stripped_tree.register_strippable_trunk("moretrees:rubber_tree_trunk")
stripped_tree.register_strippable_trunk("moretrees:fir_trunk")
stripped_tree.register_strippable_trunk("moretrees:jungletree_trunk")

-- Register tree variations using the same texture as default moretree trunks
local palm_trunk_tiles = {
    "stripped_" .. mod_name .. "_date_palm_trunk_top.png",
    "stripped_" .. mod_name .. "_date_palm_trunk_top.png",
    "stripped_" .. mod_name .. "_date_palm_trunk.png",
}
stripped_tree.register_strippable_trunk("moretrees:date_palm_mfruit_trunk", palm_trunk_tiles)
stripped_tree.register_strippable_trunk("moretrees:date_palm_ffruit_trunk", palm_trunk_tiles)
stripped_tree.register_strippable_trunk("moretrees:date_palm_fruit_trunk", palm_trunk_tiles)
stripped_tree.register_strippable_trunk(
    "moretrees:rubber_tree_trunk_empty", {
        "stripped_" .. mod_name .. "_rubber_tree_trunk_top.png",
        "stripped_" .. mod_name .. "_rubber_tree_trunk_top.png",
        "stripped_" .. mod_name .. "_rubber_tree_trunk.png",
    }
)
