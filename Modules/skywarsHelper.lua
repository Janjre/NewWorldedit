name = "Skywars Helper"
description = "Helps with Skywars"




event.listen("InventoryTick", function(inv)
    
    
    nowtime = os.clock()
    
    doit = false
    if previoustime == nil then doit = true
    elseif (nowtime - previoustime > 0.5) then doit = true end
    if (doit == true) then 
        
        previoustime = nowtime
        


    
        attackDamages = {}
        modInv = player.inventory().modify()
        if dimension.getBlock(modInv.blockpos()).name == "chest" then
            for itemsInv = 1, 27 do
                curItem = modInv.at("container_items",itemsInv)
                curItemNBT = getItemNbt(curItem.location)
                if curItem==nil then attackDamages[itemsInv] = 0 else

                    if curItem.name == "wooden_sword" then
                        attackDamage = 4
                    
                    elseif curItem.name == "stone_sword" then
                        attackDamage = 5
                    
                    elseif curItem.name== "iron_sword" then
                        attackDamage = 6
                    
                    elseif curItem.name == "gold_sword" then
                        attackDamage = 4
                    
                    elseif curItem.name == "diamond_sword" then
                        attackDamage = 7
                    
                    elseif curItem.name == "netherite_sword" then
                        attackDamage = 8
                    elseif curItem.name == "trident" then
                        attackDamage = 8
                    end -- find attackDamage
                    -- print("hi"..attackDamage)
                    
                    -- if curItemNBT.ench == nil then --[[print("hi"); print(curItem.name .. "hi")]] else
                    --     print("not nil" .. curItemNBT.enhc[1].iron_sword)
                    --     if (curItemNBT.ench[0] == nil) then 
                    --         print("enchant[0] is nil") 
                    --     else 
                    --         print("name of 0th enchant = " .. curItemNBT.ench[0].id)
                    --     end
                    --     if (curItemNBT.ench[1] == nil) then print("enchant[1] is nil") end
                        
                    --     for enchants = 1, #curItemNBT.ench do
                    --         curEnch = curItemNBT.ench[enchants]
                            
                    --         if curEnch.id==9 then

                    --             attackDamage = attackDamage + curEnch.level
                    --         end
                    --         if curEnch.id == 13 then 
                    --             attackDamage = attackDamage + 3
                    --         end
                    --     end
                    --     if attackDamage == nil then
                    --         attackDamage = 0 
                    --     end
                        
                        
                    -- end -- if curitem nil



                    attackDamages[itemsInv] = attackDamage
                end

                
                
                for helppp = 1, 27 do
                    -- print(attackDamages[helppp])
                end
                slotLarge = 0
                curLarge = 0
                -- print(attackDamages.strf)
                for findLarge = 1, #attackDamages do
                    if curLarge == nil then curLarge = 1 end
                    if attackDamages[findLarge] >= curLarge then
                        curLarge = attackDamages[findLarge]
                        slotLarge = findLarge
                        -- print("found large")
                    end
                end
            end-- for items in chest


            attackDamages2 = {}
            attackDamage2 = 0
            for itemsInv = 1, 36 do 
                curItem = player.inventory().at(itemsInv)
                
                if curItem==nil then attackDamages2[itemsInv] = 0 else

                    if curItem.name == "wooden_sword" then
                        attackDamage2 = 4
                    
                    elseif curItem.name == "stone_sword" then
                        attackDamage2 = 5
                    
                    elseif curItem.name== "iron_sword" then
                        attackDamage2 = 6
                    
                    elseif curItem.name == "gold_sword" then
                        attackDamage2 = 4
                    
                    elseif curItem.name == "diamond_sword" then
                        attackDamage2 = 7
                    
                    elseif curItem.name == "netherite_sword" then
                        attackDamage2 = 8
                    elseif curItem.name == "trident" then
                        attackDamage2 = 8
                    end
                --     if curItem.enchant == nil then else
                --         for enchants = 1, #curItem.enchant do
                --             curEnch = curItem.enchant[enchants]
                --             if curEnch.name=="sharpness" then
                --                 attackDamage2 = attackDamage2 + curEnch.level
                --             end
                --             if curEnch.name == "fire_aspect" then 
                --                 attackDamage2 = attackDamage2 + 3
                --             end
                --         end
                --         if attackDamage2 == nil then
                --             attackDamage2 = 0 
                --         end
                --     end -- enchants
                --     attackDamages2[itemsInv] = attackDamage2
                end --  if not nil

                
                
                
                slotLarge2 = 0
                curLarge2 = 0
                
                for findLarge = 1, #attackDamages2 do
                    if curLarge2 == nil then curLarge2 = 1 end
                    if attackDamages2[findLarge] >= curLarge2 then
                        curLarge2 = attackDamages2[findLarge]
                        slotLarge2 = findLarge
                        -- print("found large")
                    end
                end

            end -- loop thru player inv
    


            if curLarge > curLarge2 then
                if curLarge == 0 then else
                    modInv.autoPlace("container_items",slotLarge)
                    print(curLarge .. " "..curLarge2 .. " " .. slotLarge .. " " .. slotLarge2)
                end
            end
        
            
        end -- if your in a chest
    end -- if its been a second
-- fix ends!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
end) -- end of inventory tick function

renderEverywhere = true

function render (dt)
    if curLarge == nil or curLarge2 == nil then else
        
    
        gfx.text(0,0,curLarge .. "    " .. curLarge2)
    end
    
end
