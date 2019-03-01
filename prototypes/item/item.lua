data:extend(
{
  {  
    type = "item",
    name = "philosophers-stone",
    icon = "__Alchemio__/graphics/philosophers-stone.png",
    icon_size = 32,
    flags = {},
    subgroup = "intermediate-product",
    order = "b[philosophers-stone]",
    stack_size = 10
  },
  {
    type = "item",
    name = "transmutation-table",
    icon = "__base__/graphics/icons/assembling-machine-3.png",
    icon_size = 32,
    flags = {},
    subgroup = "storage",
    order = "a[transmutation-table]",
    place_result = "transmutation-table",
    stack_size = 100
  },
  {
    type = "item",
    name = "cosmic-condenser",
    icon = "__Alchemio__/graphics/cosmic-condenser.png",
    icon_size = 32,
    flags = {},
    subgroup = "storage",
    order = "a[cosmic-condenser]", --This might be fucked, I'll read up on it to see what's going on
    place_result = "cosmic-condenser", --place result refers to the entity created when this object is used, so in this case, when you click, a cosmic chest is made
    stack_size = 100
  },
  {
    type = "item", --later we might wanna make emc a fluid and the condenser outputs to a pump or something. For now emc is an item so its easier to move around. 
    name = "emc",
    icon = "__Alchemio__/graphics/emc.png",
    icon_size = 32,
    flags = {},
    subgroup = "intermediate-product",
    order = "b[emc]",
    stack_size = 5000
  },
  {
    type = "tool",
    name = "alchemy-science-pack",
    localised_description = {"item-description.science-pack"},
    icon = "__Alchemio__/graphics/alchemy-science-pack.png",
    icon_size = 32,
    flags = {},
    subgroup = "science-pack",
    order = "a[alchemy-science-pack]",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  }
}
)
