--[[
~~ References:
https://lua-api.factorio.com/latest/LuaForce.html#LuaForce.get_entity_count
https://lua-api.factorio.com/latest/LuaGameScript.html#LuaGameScript.get_entity_by_tag
https://wiki.factorio.com/Tutorial:Modding_FAQ#How_do_I_store_information_with_an_entity.2C_like_integers_or_booleans.3F
]]--

local exchange_rates = {["iron-plate"] = 1, ["copper-plate"] = 10} --todo: store in a .json and read on load, then balance the json accordingly
local condensers = {}
local condenser_count = 0

----

function cosmicCondenserCreated(condenser)
    condensers[condenser_count+1] = condenser
    condenser_count = condenser_count+1
end

script.on_event({defines.events.on_built_entity}, 
    function (e)
        if e.created_entity.name=="cosmic-condenser" then
            cosmicCondenserCreated(e.created_entity)
        end
    end
)

script.on_event({defines.events.on_robot_built_entity}, 
    function (e)
        if e.created_entity.name=="cosmic-condenser" then
            cosmicCondenserCreated(e.created_entity)
        end
    end
)
        
----

function cosmicCondenserDestroyed(condenser_to_remove)
    
    table.remove(condenser) --apparently, this might cause slowdowns, so this needs testing
    condenser_count = condenser_count-1
end

script.on_event({defines.events.on_player_mined_entity}, 
    function (e)
        if e.entity.name=="cosmic-condenser" then
            cosmicCondenserDestroyed(e.entity)
        end
    end
)

script.on_event({defines.events.on_robot_mined_entity}, 
    function (e)
        if e.entity.name=="cosmic-condenser" then
            cosmicCondenserDestroyed(e.entity)
        end
    end
)

script.on_event({defines.events.on_tick}, 
    function (e)
        
        if condenser_count == 0 then return true end --No need to continue if there are no condensers
        
        for _, condenser in pairs(condensers) do
            
            local inv = condenser.get_inventory(defines.inventory.chest) --Pulls the chest's inventory. We can modify this variable and the game will reflect whatever changes are made. 
            local items = inv.get_contents() --Converts the inventory to a dictionary. This dict is in format {name, count}. 
            
            for item_name, amount in pairs(items) do --iterate through each item
                if (exchange_rates[item_name]~=nil) then --if item has value...
                    inv.remove({name=item_name,count=amount}) --remove that item
                    inv.insert({name="emc",count=amount*exchange_rates[item_name]}) --replace it with the proper number of EMC
                end
            end
            --todo: add electricity need?

        end

    end
)
