--[[
~~ References:
https://lua-api.factorio.com/latest/LuaForce.html#LuaForce.get_entity_count
https://lua-api.factorio.com/latest/LuaGameScript.html#LuaGameScript.get_entity_by_tag
https://wiki.factorio.com/Tutorial:Modding_FAQ#How_do_I_store_information_with_an_entity.2C_like_integers_or_booleans.3F
]]--

script.on_event({defines.events.on_tick},
    function (e)
        local exchange_rates = {["iron-plate"] = 10, ["copper"] = 1} --todo: store in a .json and read on load, then balance the json accordingly

        for chunk in game.surfaces[1].get_chunks() do --For each chunk in the game, this might be slow. Look for other methods of getting entities in an array
            local entities = game.surfaces[1].find_entities_filtered{name="cosmic-strongbox", area={{chunk.x*32, chunk.y*32}, {(chunk.x+1)*32, (chunk.y+1)*32}}} 
            for _, entity in pairs(entities) do

                local inv = entity.get_inventory(defines.inventory.chest)
                local dict_items = inv.get_contents()
                    
                for item_name, amount_found in pairs(dict_items) do --assuming pairs will give string name then int count
                    if (exchange_rates[item_name]~=nil) then --if item has value...
                        inv.remove({name=item_name,count=amount_found}) --remove that item
                        inv.add({name="emc",count=amount_found*exchange_rates[item_name]}) --replace it with the proper number of EMC
                            
                        --Note: with this method, we cannot have fractions of emc, which might be bad or good, but it probably won't matter in the long run. 
                            
                    end
                end
                --todo proofread, add electricity need

            end
        end

    end
)
