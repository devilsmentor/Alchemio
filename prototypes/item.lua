--Philosopher's Stone
local philStone = table.deepcopy(data.raw.item["iron-stick"])

philStone.name = "philosophers-stone"
philStone.icons = {
  {
    icon = philStone.icon,
    tint = {r=248,g=24,b=148,a=150}
  },
}

local philStoneRecipe = table.deepcopy(data.raw.philStoneRecipe["iron-stick"])
philStoneRecipe.enabled = true
philStoneRecipe.name = "Philosopher's Stone"
philStoneRecipe.ingredients = {{"sulfur",1},{"plastic-bar",1}}
philStoneRecipe.result = "philosophers-stone"

data:extend{philStone,philStoneRecipe}

--Philosopher's StrongBox
local philStrongBox = table.deepcopy(data.raw.item["iron-chest"])

philStrongBox.name = "philosophers-strongbox"
philStrongBox.icons = {
  {
    icon = philStrongBox.icon,
    tint = {r=248,g=24,b=148,a=150}
  },  
}
local philBoxRecipe = table.deepcopy(data.raw.philBoxRecipe["iron-chest"])
philBoxRecipe.enabled = true
philBoxRecipe.name = "Philosopher's StrongBox"
philBoxRecipe.ingredients = {{"sulfur",1},{"plastic-bar",1}}
philBoxRecipe.result = "philosophers-strongbox"

data:extend{philStone,philBoxRecipe}