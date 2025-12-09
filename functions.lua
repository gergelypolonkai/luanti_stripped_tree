local S = core.get_translator(core.get_current_modname())

-- Function to verify that stripped tree trunk exists
stripped_tree.has_stripped = function(pos)
    local node = core.get_node(pos).name or pos
    local mod_name, node_name = unpack(node:split(":"))
    local has_stripped = core.registered_nodes[mod_name .. ":" .. "stripped_" .. node_name]

    return has_stripped
end

-- Function to swap nodes
--
-- The third parameter is a placeholder for backwards compatibility
stripped_tree.swap_node = function(pos, user, _, tool)
    local old_node = core.get_node(pos).name
    local mod_name, node_name = unpack(old_node:split(":"))
    local stripped = mod_name .. ":" .. "stripped_" .. node_name

    core.swap_node(pos, {name = stripped, param2 = old_node.param2})
    -- itemstack:add_wear(65535 / 299) this is not useful at moment.

    if not core.is_creative_enabled(user:get_player_name()) then
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
function stripped_tree.register_strippable_trunk(trunk_name, plank_name, stripped_tiles)
    local mod_name, trunk_node = unpack(trunk_name:split(":"))
    local stripped_name = ":" .. mod_name .. ":stripped_" .. trunk_node
    local stripped_ingredient_name = stripped_name

    -- The leading colon of the stripped name is only required for node registration. For recipe ingredients it must not
    -- be there.
    if stripped_ingredient_name:sub(1, 1) == ":" then stripped_ingredient_name = stripped_ingredient_name:sub(2) end

    local trunk_def = core.registered_nodes[trunk_name]
    local stripped_def = table.copy(trunk_def)
    stripped_def.description = S("Stripped @1", trunk_def.description)
    stripped_def.groups = table.copy(trunk_def.groups)
    stripped_def.groups.not_in_creative_inventory = 1
    stripped_def.tiles = stripped_tiles or {
        "stripped_" .. mod_name .. "_" .. trunk_node .. "_top.png",
        "stripped_" .. mod_name .. "_" .. trunk_node .. "_top.png",
        "stripped_" .. mod_name .. "_" .. trunk_node .. ".png",
    }

    core.register_node(stripped_name, stripped_def)

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

    if plank_name then core.register_craft({output = plank_name .. " 4", recipe = {{stripped_ingredient_name}}}) end
end

-- Compatibility function from the previous version, able to register multiple stripped tree nodes at once
function stripped_tree.register_trunk(mod_name, trunk_names)
    for _, name in ipairs(trunk_names) do stripped_tree.register_strippable_trunk(mod_name .. ":" .. name) end
end

function stripped_tree.maybe_strip_trunk(pos, player, tool, wear)
    local player_name = player:get_player_name()

    if core.is_protected(pos, player_name) then
        core.record_protection_violation(pos, player_name)

        return
    end

    wear = wear and tonumber(wear)

    if stripped_tree.has_stripped(pos) then
        stripped_tree.swap_node(pos, player, nil, tool)

        if not core.is_creative_enabled(player_name) and wear and wear ~= 0 then tool:add_wear(wear) end
    end
end

-- Function to override axes
function stripped_tree.register_axes(mod_n, axe_types)
    if stripped_tree.axes_strip_trees ~= true then return end

    for _, axe_name in ipairs(axe_types) do
        core.override_item(
            mod_n .. ":" .. axe_name, {
                on_place = function(itemstack, user, pointed_thing)
                    if pointed_thing.type ~= "node" then return end

                    local pos = pointed_thing.under

                    -- TODO: Add wear to the axe, but it should depend on the material maybe?
                    stripped_tree.maybe_strip_trunk(pos, user, itemstack)
                end,
            }
        )
    end
end
