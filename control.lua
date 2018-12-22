--[[
~~ References:
https://lua-api.factorio.com/latest/LuaForce.html#LuaForce.get_entity_count
https://lua-api.factorio.com/latest/LuaGameScript.html#LuaGameScript.get_entity_by_tag
https://wiki.factorio.com/Tutorial:Modding_FAQ#How_do_I_store_information_with_an_entity.2C_like_integers_or_booleans.3F
]]--

local exchange_rates = {    
    
    ["stone"]                   = 2,    
    ["stone-brick"]             = 2,
    
    ["raw-wood"]                = 8,    
    ["wood"]                    = 4,
    
    ["copper-plate"]            = 8,
    ["copper-cable"]            = 4,
    
    ["iron-plate"]              = 16,
    ["steel-plate"]             = 80,
    
    ["coal"]                    = 8,
    ["water"]                   = 4,
    ["steam"]                   = 4,
    ["oil"]                     = 16
    
}
if global["condensers"]==nil then --initialize condensers if it doesnt exist yet
    
    global["condensers"] = {}
    global["condenser_count"] = 0

end
local condensers = global["condensers"]
local condenser_count = global["condenser_count"]

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

function cosmicCondenserDestroyed(condenser)
    
    table.remove(condensers, condenser) --apparently, this might cause slowdowns, so this needs testing
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
            
            if items.get_item_count() ~= items.get_item_count("emc") then --Don't iterate through if all the items are emc anyway!
            
                for item_name, amount in pairs(items) do --Iterate through each item
                    if (exchange_rates[item_name]~=nil) then --If item has value...
                        inv.remove({name=item_name,count=amount}) --Remove that item
                        inv.insert({name="emc",count=amount*exchange_rates[item_name]}) --Replace it with the proper number of EMC
                    end
                end
                
            end
            --todo: add electricity need?

        end

    end
)
