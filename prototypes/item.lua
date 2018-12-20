data:extend(
{
  {  
    type = "item",
    name = "philosphers-stone",
    icon = "__base__/graphics/icons/stone.png",
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
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "storage",
    order = "a[items]-b[philosophers-strongbox]",
    place_result = "philosophers-strongbox",
    stack_size = 10

  }
}
)
