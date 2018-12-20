local philStone = table.deepcopy(data.raw.demo-item["iron-stick"])

philStone.name = "philosophers-stone"
philStone.icons = {
  {
    icon = philStone.icon,
    tint = {r=248,g=24,b=148,a=150}
  },
}

local recipe = table.deepcopy(data.raw.recipe["iron-stick"])
recipe.enabled = true
recipe.name = "Philosopher's Stone"
recipe.ingredients = {{"sulfur",1},{"plastic-bar",1}}
recipe.result = "philosophers-stone"

data:extend{philStone,recipe}
