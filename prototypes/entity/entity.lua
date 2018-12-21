--https://wiki.factorio.com/Prototype/CraftingMachine#crafting_categories

data:extend(
{
   {
      --Based this loosely off of Oil Refinery
      type = "assembling-machine",
      name = "transmutation-station",
      icon = "__base__\graphics\entity\oil-refinery\oil-refinery.png", --Need icon here
      icon_size = 32,
      flags = {"placeable-neutral", "placeable-player", "player-creation"},
      minable = {hardness = 0.2, mining_time = 0.5, result = "assembling-machine-2"},
      max_health = 350,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      drawing_box = {{-2.5, -2.8}, {2.5, 2.5}},
      module_specification =
      {
         module_slots = 3
      }, --We can change this later, just adding it to have it here
      scale_entity_info_icon = true,
      allowed_effects = {"consumption", "speed", "productivity"},
      crafting_categories = {"chemistry"}, --Maybe we can add an alchemy category?
      crafting_speed = 1,
      has_backer_name = true,
      energy_source = 
      {
         type = "electric",
         usage_priority = "secondary-input",
      },
      energy_usage = "420kW",
      ingredient_count = 3,
      
      
      --Everything after this point was straight-up copied from oil refinery. We'll need to add animations at some point.
      
      
      animation = make_4way_animation_from_spritesheet({ layers =
      {
        {
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery.png",
          width = 337,
          height = 255,
          frame_count = 1,
          shift = {2.515625, 0.484375},
          hr_version =
          {
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery.png",
            width = 386,
            height = 430,
            frame_count = 1,
            shift = util.by_pixel(0, -7.5),
            scale = 0.5
          }
        },
      {
        filename = "__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png",
        width = 337,
        height = 213,
        frame_count = 1,
        shift = util.by_pixel(82.5, 26.5),
        draw_as_shadow = true,
        hr_version =
        {
          filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-shadow.png",
          width = 674,
          height = 426,
          frame_count = 1,
          shift = util.by_pixel(82.5, 26.5),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    }}),
    
    working_visualisations =
    {
      {
        north_position = util.by_pixel(34, -65),
        east_position = util.by_pixel(-52, -61),
        south_position = util.by_pixel(-59, -82),
        west_position = util.by_pixel(57, -58),
        animation =
        {
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
          line_length = 10,
          width = 20,
          height = 40,
          frame_count = 60,
          animation_speed = 0.75,
          shift = util.by_pixel(0, -14),
          hr_version =
          {
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            scale = 0.5,
            shift = util.by_pixel(0, -14.25)
          }
        },
        light = {intensity = 0.4, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5
    },
   }
}
)
