-- Register tree bark
core.register_craftitem(":default:tree_bark", {description = "Tree bark", inventory_image = "tree_bark.png"})

-- Register bark as fuel
core.register_craft({type = "fuel", recipe = "default:tree_bark", burntime = 15})

-- Register craft for paper
core.register_craft(
    {
        output = "default:paper 8",
        recipe = {
            {"default:tree_bark", "default:tree_bark", "default:tree_bark"},
            {"default:tree_bark", "bucket:bucket_water", "default:tree_bark"},
            {"default:tree_bark", "default:tree_bark", "default:tree_bark"},
        },
    }
)

-- Register the chisel tool if it’s enabled in the config
if stripped_tree.enable_chisel then
    core.register_tool(
        "stripped_tree:chisel", {
            description = "Chisel for tree trunks",
            inventory_image = "chisel.png",
            wield_image = "chisel.png",
            sound = {breaks = "default_tool_breaks"},
            stack_max = 1,
            on_use = function(itemstack, user, pointed_thing)
                if pointed_thing.type ~= "node" then return end

                local pos = pointed_thing.under
                local pname = user:get_player_name()

                if core.is_protected(pos, pname) then
                    core.record_protection_violation(pos, pname)
                    return
                end

                if stripped_tree.has_stripped(pos) then
                    stripped_tree.swap_node(pos, user, nil, itemstack)

                    if not core.is_creative_enabled(pname) then
                        itemstack:add_wear(65535 / 299) -- 300 uses
                    end

                    return itemstack
                end
            end,
        }
    )

    core.register_craft(
        {output = "stripped_tree:chisel", recipe = {{"default:steel_ingot"}, {"screwdriver:screwdriver"}}}
    )
end

-- Recipes if the farming mod is loaded

-- Register craft for string
if core.get_modpath("farming") then
    core.register_craft(
        {
            output = "farming:string 4",
            recipe = {
                {"default:tree_bark", "default:tree_bark", "default:tree_bark"},
                {"default:tree_bark", "default:tree_bark", "default:tree_bark"},
                {"default:tree_bark", "default:tree_bark", "default:tree_bark"},
            },
        }
    )
end

-- Recipes if the bonemeal mod is loaded

-- Register craft for mulch
if core.get_modpath("bonemeal") then
    core.register_craft(
        {
            output = "bonemeal:mulch 4",
            recipe = {
                {"default:tree_bark", "default:tree_bark", "default:tree_bark"},
                {"default:tree_bark", "default:tree_bark", "default:tree_bark"},
            },
        }
    )
end
