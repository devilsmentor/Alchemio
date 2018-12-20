data:extend(
{
    {
        type = "recipe",
        name = "philosophers-stone",
        ingredients = {{"sulfur",1},{"plastic-bar",1}},
        result = "philosophers-stone",
    },
    {
        type = "recipe",
        name = "alchemy-science-pack",
        ingredients = {{"philosophers-stone",3},{"sulfur",2}},
        result = "alchemy-science-pack"
    },
    {
        type = "recipe",
        name = "convert-copper-to-iron",
        icon = "__base__/graphics/icons/iron-plate.png",
        icon-size=32,
        ingredients = {{"copper-plate",10},{"philosophers-stone",1}},
        results = {
            {type="item", name="iron-plate", amount=1},
            {type="item", name="philosophers-stone", amount=1}
        }
    },
    {
        type = "recipe",
        name = "convert-iron-to-copper",
        icon = "__base__/graphics/icons/copper-plate.png",
        icon-size=32,
        ingredients = {{"iron-plate",1},{"philosophers-stone",1}},
        results = {
            {type="item", name="copper-plate", amount=10},
            {type="item", name="philosophers-stone", amount=1}
        }
  },
}
)
