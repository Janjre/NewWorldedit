name="Test module"
description = "The module i use to test things"

importLib("BlockRGB.lua")

function splitSpace(messagee)
    counterr = 0
    arg = {}
    for token in string.gmatch(messagee, "[^%s]+") do
        counterr = counterr + 1
        arg[counterr] = token
    end
    return arg
end

registerCommand("getBlock",function (args)
    arg = splitSpace(args)
    print(arg[1].. " " .. arg[2].." " .. arg[3])
    print(RGBtoBlock(arg[1],arg[2],arg[3]))
    client.execute("execute setblock ~ ~ ~ " .. RGBtoBlock(arg[1],arg[2],arg[3]))
end)

registerCommand("getRGB",function (args)
    if string.sub(args,0,5) == "minec" then else args = "minecraft:" .. args end
    print(args)
    print(blockToRGB(args))
end)

registerCommand("setSkin",function()
    -- player.skin().setSkinCape("testSkin.png","testCape.png")
    
    local selectedSkin = player.selectedEntity().skin()
    local skin = player.skin()

    skin.setSkinCapeGeometry(selectedSkin.texture(), selectedSkin.capeTexture(), selectedSkin.geometry(), selectedSkin.defaultGeometryName(), selectedSkin.geometryName())
    
end)

-- registerCommand("test",function(args)
--     -- curColourBlock = dimension.getBlock(IRLcoordsxIRL[i],IRLcoordsyIRL[i],IRLcoordszIRL[i])
--     -- print(curColourBlock.name)
--     -- curColourR, curColourG, curColourB = blockToRGB(curColourBlock.name)
--     player.skin().save("mySkin.png")
--     yourSkin = gfx2.loadImage("mySkin.png")
--     -- yourSkin:setPixel(IRLcoordsx[i],IRLcoordsy[i],curColourR,curColourG,curColourB)
--     for j = 0, 63 do
--         for n = 0, 63 do
--             yourSkin:setPixel(j,n,255-j,2*j,n)
--         end
--     end
   
--     yourSkin:save("mySkin.png")
--     -- player.skin().setSkin("mySkin.png")
--     print("hi")
-- end)
