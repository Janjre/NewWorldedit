name = "Skywars help"
description = "offers borderline cheats for Skywars"

positionX = 50
positionY= 0
sizeX = 1
sizeY=1



importLib("renderthreeD.lua")




function render3d(dt)
    -- if lastCheck > os.clock()+5 or lastCheck == nil then
        -- lastCheck = os.clock()
        -- local x,y,z = player.position()
        -- if (math.sqrt((x-lastCheckX)^2  + (y-lastCheckY)^2 + (z-lastCheckZ)^2)) > 10 or lastCheckX == nil then
            -- local lastCheckX, lastCheckY, lastCheckZ = player.position()
    chestPos = dimension.findBlock("chest")
            
        -- end
    -- print(chestPos[1][1])
    -- end
    -- print(#chestPos)
    for n = 1, #chestPos do
        -- if chestPos[n][1] == nil then break end
        gfx.color(255,255,255)
        cubeframe(chestPos[n][1],chestPos[n][2],chestPos[n][3],1,0.1)

        local xL, yL, zL = player.selectedPos()
        -- print(zL)
        chestNBT = dimension.getBlockEntity(xL,yL,zL)
        
        -- gfx.text(1,1,dump(chestNBT))  

        -- print(chestNBT)
        -- print(chestNBT)

        -- chestPos[1]
    end
    
end


event.listen("InventoryTick", function()
    
end)


registerCommand("findNBT",function ()
    
end)

function render(dt)
    local font = gui.font()
    sizeX = font.width(chestNBT.strf,1)

    sizeY = font.height*3      

   
    if chestNBT == nil or chestNBT.Items == nil then else
        gfx.text(50,0,chestNBT.strf,0.5)  
        countThing = chestNBT.Items
        swordDamages = {}
        for items = 1, #countThing do
            -- gfx.text(0,0,chestNBT.Items[1].Name)
            -- gfx.text(positionX,positionY,chestNBT.strf,0.5)
            curItem = chestNBT.Items[items]
            -- print(chestNBT.Items[items].Name )
            if chestNBT.Items[items].Name == "minecraft:wooden_sword" then
                maxSwordDamage = 4
                -- print(maxSwordDamage)
            end
            if chestNBT.Items[items].Name == "minecraft:stone_sword" then
                maxSwordDamage = 5
                -- print(maxSwordDamage)
            end
            if chestNBT.Items[items].Name == "minecraft:golden_sword" then
                maxSwordDamage = 6
                -- print(maxSwordDamage)
            end
            if chestNBT.Items[items].Name == "minecraft:iron_sword" then
                maxSwordDamage = 7
                -- print(maxSwordDamage)
            end
            if chestNBT.Items[items].Name == "minecraft:diamond_sword" then
                maxSwordDamage = 8
                -- print(maxSwordDamage)
            end
            if chestNBT.Items[items].Name == "minecraft:netherite_sword" then
                maxSwordDamage = 9
                -- print(maxSwordDamage)
            end
            
            -- print( curItem.tag.ench[1].id)
            -- print(curItem.tag.strf)
            
                
            
            if curItem.tag == nil then else
                enchants = curItem.tag.ench 
                if curItem.tag ==nil then else if enchants == nil then else
                    -- print("got here 1")
                    
                    for enchantsLoop = 1, #enchants do
                        -- print("got here 2 "..curItem.tag.ench[enchantsLoop].id)
                        -- print(enchantsLoop)
                        if curItem.tag.ench[enchantsLoop].id == 9 then
                            -- print("got here 3")
                            maxSwordDamage = maxSwordDamage + string.sub(curItem.tag.ench[enchantsLoop].lvl,0,1)
                            -- if curItem.tag.ench[enchantsLoop].lvl > 3 then maxSwordDamage = maxSwordDamage +1 end
                            
                        end
                    end 
                end; end
            end
            



            -- print(maxSwordDamage)
            swordDamages[items] = maxSwordDamage
            if swordDamages == 0 then swordDamages[items] = "no" end

                
            
           
            -- print(maxSwordDamage)
            
            
            
        end
        lastLarge = 0
        -- print(maxSwordDamage)
        prevBig = 0
        for findBig = 1, #swordDamages do
            if type(swordDamages[findBig]) == "number" then
                if swordDamages[findBig] > prevBig then
                    prevBig = swordDamages[findBig]
                    foundBig = findBig
                    print(foundBig)
                end
            else
                -- print("not a number")z
            end
        end
        gfx.text(0,0,foundBig .. " " .. prevBig)
        
    end
    
       
end