{
    type = "technology",
    name = "basic-alchemy",
    icon_size = 128,
    icon = "__base__/graphics/technology/steel-processing.png",
    effects =
    {
        {
          type = "unlock-recipe",
          recipe = "philosophers-stone"
        },
        {
          type = "unlock-recipe",
          recipe = "steel-chest"
        },
        {
          type = "unlock-recipe",
          recipe = "steel-axe"
        }
    },
    unit =
    {
    count = 100,
    ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
    },
    time = 10
    },
    order = "c-a"
    }
}
