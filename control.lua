--[[
~~ References:
https://lua-api.factorio.com/latest/LuaForce.html#LuaForce.get_entity_count
https://lua-api.factorio.com/latest/LuaGameScript.html#LuaGameScript.get_entity_by_tag

]]--

script.on_event({defines.events.on_tick},
    function (e)
        --if LuaForce.get_entity_count("cosmic-strongbox") == 0 then return false end --back out early if there are no strongboxes to update
        
        game.print(game.get_entity_by_tag("cosmic-strongbox"))
        
        if game.get_entity_by_tag("cosmic-strongbox")==nil then return false end
        for index, entity in pairs(game.get_entity_by_tag("cosmic-strongbox")) do
            game.print("Entity found!")
        end

    end
)
