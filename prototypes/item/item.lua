data:extend(
{
  {  
    type = "item",
    name = "philosphers-stone",
    icon = "__base__/graphics/icons/stone.png",
    tint={r=248, g=24, b=148, a=150},
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "intermediate-product",
    order = "b[philosophers-stone]",
    stack_size = 10
  },
  {
    type = "item",
    name = "philosophers-strongbox",
    icon = "__base__/graphics/icons/iron-chest.png",
    tint={r=248, g=24, b=148, a=150},
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "storage",
    order = "a[items]-b[philosophers-strongbox]",
    place_result = "iron-chest",
    stack_size = 10
  },
  {
    type = "tool",
    name = "alchemy-science-pack",
    localised_description = {"item-description.science-pack"},
    icon = "__base__/graphics/icons/science-pack-1.png",
    tint={r=248, g=24, b=148, a=150},
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "science-pack",
    order = "a[alchemy-science-pack]",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  }
}
)
