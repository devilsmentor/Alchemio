--[[
~~ References:
https://lua-api.factorio.com/latest/LuaForce.html#LuaForce.get_entity_count
https://lua-api.factorio.com/latest/LuaGameScript.html#LuaGameScript.get_entity_by_tag

]]--

script.on_event({defines.events.on_tick},
    function (e)
        --if LuaForce.get_entity_count("cosmic-strongbox") == 0 then return end --back out early if there are no strongboxes to update
        for index, entity in pairs(game.get_entity_by_tag("cosmic-strongbox")) do
            print("Entity found!")
        end
    end
)
