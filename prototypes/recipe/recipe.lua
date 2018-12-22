data:extend(
{
    {
        type = "recipe",
        name = "philosophers-stone",
        enabled = true,
        category="advanced-crafting",
        ingredients = {{"sulfur",1},{"stone",1}},
        result = "philosophers-stone",
    },
    {
        type = "recipe",
        name = "cosmic-condenser",
        enabled = true,
        ingredients = {{"philosophers-stone",1},{"steel-chest",1}},
        result = "cosmic-condenser",
    },
    {
        type = "recipe",
        name = "alchemy-science-pack",
        enabled = true,
        ingredients = {{"philosophers-stone",3},{"sulfur",2}},
        result = "alchemy-science-pack"
    },
    {
        type = "recipe",
        name = "convert-copper-to-iron",
        enabled = true,
        icon = "__base__/graphics/icons/iron-plate.png",
        icon_size=32,
        ingredients = {{"copper-plate",10},{"philosophers-stone",1}},
        results = {
            {type="item", name="iron-plate", amount=1},
            {type="item", name="philosophers-stone", amount=1}
        },
        subgroup="intermediate-product"
    },
    {
        type = "recipe",
        name = "convert-iron-to-copper",
        enabled = true,
        icon = "__base__/graphics/icons/copper-plate.png",
        icon_size=32,
        ingredients = {{"iron-plate",1},{"philosophers-stone",1}},
        results = {
            {type="item", name="copper-plate", amount=10},
            {type="item", name="philosophers-stone", amount=1}
        },
        subgroup="intermediate-product"
  },
}
)
