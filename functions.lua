stripped_tree = {}

-- Select between chisel tool or axes.
stripped_tree.enable_chisel = core.settings:get_bool("stripped_tree_enable_chisel")

-- Check if we are running on a creative server
local creative_mode = core.settings:get_bool("creative_mode")

-- Function to verify that stripped tree trunk exists
stripped_tree.has_stripped = function(pos)
    local node = core.get_node(pos).name or pos
    local mod_name, node_name = unpack(node:split(":"))
    local has_stripped = core.registered_nodes[mod_name .. ":" .. "stripped_" .. node_name]

    return has_stripped
end

-- Function to swap nodes
stripped_tree.swap_node = function(pos, user, in_creative_mode, tool)
    local old_node = core.get_node(pos).name
    local mod_name, node_name = unpack(old_node:split(":"))
    local stripped = mod_name .. ":" .. "stripped_" .. node_name

    core.swap_node(pos, {name = stripped, param2 = old_node.param2})
    -- itemstack:add_wear(65535 / 299) this is not useful at moment.

    if not in_creative_mode then
        local inv = user:get_inventory()

        -- If the player has room in their inventory for a bark, give them one; otherwise, drop the bark to the ground.
        if inv:room_for_item("main", "default:tree_bark") then
            inv:add_item("main", {name = "default:tree_bark"})
        else
            core.add_item(pos, "default:tree_bark")
        end
    end

    return tool
end

-- Function to register a single strippable trunk
function stripped_tree.register_strippable_trunk(trunk_name, stripped_tiles)
    local mod_name, trunk_node = unpack(trunk_name:split(":"))
    local stripped_name = ":" .. mod_name .. ":stripped_" .. trunk_node
    stripped_tiles = stripped_tiles or {
        "stripped_" .. mod_name .. "_" .. trunk_node .. "_top.png",
        "stripped_" .. mod_name .. "_" .. trunk_node .. "_top.png",
        "stripped_" .. mod_name .. "_" .. trunk_node .. ".png",
    }

    core.register_node(
        stripped_name, {
            description = "Stripped " .. trunk_node,
            tiles = stripped_tiles,
            groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2, not_in_creative_inventory = 1},
            sounds = default.node_sound_wood_defaults(),
            paramtype2 = "facedir",
            on_place = core.rotate_node,
        }
    )

    core.register_craft(
        {
            output = trunk_name,
            recipe = {
                {"", "default:tree_bark", ""},
                {"default:tree_bark", stripped_name, "default:tree_bark"},
                {"", "default:tree_bark", ""},
            },
        }
    )
end

-- Compatibility function from the previous version, able to register multiple stripped tree nodes at once
function stripped_tree.register_trunk(mod_name, trunk_names)
    for _, name in ipairs(trunk_names) do stripped_tree.register_strippable_trunk(mod_name .. ":" .. name) end
end

-- Function to override axes
if stripped_tree.enable_chisel ~= true then
    function stripped_tree.register_axes(mod_n, axe_types)
        for _, axe_name in ipairs(axe_types) do
            core.override_item(
                mod_n .. ":" .. axe_name, {
                    on_place = function(itemstack, user, pointed_thing)
                        if pointed_thing.type ~= "node" then return end

                        local pos = pointed_thing.under
                        local pname = user:get_player_name()

                        if core.is_protected(pos, pname) then
                            core.record_protection_violation(pos, pname)
                            return
                        end

                        if stripped_tree.has_stripped(pos) then
                            stripped_tree.swap_node(pos, user, creative_mode, itemstack)
                        end
                    end,
                }
            )
        end
    end
end
