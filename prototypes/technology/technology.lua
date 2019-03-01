data:extend(
{
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
            --{
            --  type = "unlock-recipe",
            --  recipe = "alchemy-science-pack"
            --},
            {
              type = "unlock-recipe",
              recipe = "convert-copper-to-iron"
            },
            {
              type = "unlock-recipe",
              recipe = "convert-iron-to-copper"
            }
        },
        prerequisites = {"sulfur-processing"},
        unit =
        {
            count = 100,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1}
            },
            time = 10,
            order = "d-d"
        }
    }
}
)
