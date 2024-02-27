name="Skin editor"
description = "changes your skin in real time"

importLib("BlockRGB.lua")

--convert block -> rbg without having to place it - make module to go thru all blocks and get it and put it in a table

--find closest block
--rbg to block

--make some kind of orginizy folder thingy (last)



--Press button and the statue becomes your skin 
---> loop thru png and convert png coords to minecraft coords
---> convert the rgb to block
---> set da block

--make it constantly check and change your skin
---> loop tru png and check minecraft skin
---> change the png based on what we see

IRLcoordsx = {}
IRLcoordsy = {}
IRLcoordsxIRL ={}
IRLcoordsyIRL = {}
IRLcoordszIRL = {}

IRLcoordsx[ 0]= 8; IRLcoordsy[ 0]= 8; IRLcoordsxIRL[ 0]=-13; IRLcoordsyIRL[ 0]= 40; IRLcoordszIRL[ 0]= 7
IRLcoordsx[ 1]= 8; IRLcoordsy[ 1]= 9; IRLcoordsxIRL[ 1]=-13; IRLcoordsyIRL[ 1]= 39; IRLcoordszIRL[ 1]= 7
IRLcoordsx[ 2]= 8; IRLcoordsy[ 2]= 10; IRLcoordsxIRL[ 2]=-13; IRLcoordsyIRL[ 2]= 38; IRLcoordszIRL[ 2]= 7
IRLcoordsx[ 3]= 8; IRLcoordsy[ 3]= 11; IRLcoordsxIRL[ 3]=-13; IRLcoordsyIRL[ 3]= 37; IRLcoordszIRL[ 3]= 7
IRLcoordsx[ 4]= 8; IRLcoordsy[ 4]= 12; IRLcoordsxIRL[ 4]=-13; IRLcoordsyIRL[ 4]= 36; IRLcoordszIRL[ 4]= 7
IRLcoordsx[ 5]= 8; IRLcoordsy[ 5]= 13; IRLcoordsxIRL[ 5]=-13; IRLcoordsyIRL[ 5]= 35; IRLcoordszIRL[ 5]= 7
IRLcoordsx[ 6]= 8; IRLcoordsy[ 6]= 14; IRLcoordsxIRL[ 6]=-13; IRLcoordsyIRL[ 6]= 34; IRLcoordszIRL[ 6]= 7
IRLcoordsx[ 7]= 8; IRLcoordsy[ 7]= 15; IRLcoordsxIRL[ 7]=-13; IRLcoordsyIRL[ 7]= 33; IRLcoordszIRL[ 7]= 7
IRLcoordsx[ 8]= 9; IRLcoordsy[ 8]= 8; IRLcoordsxIRL[ 8]=-12; IRLcoordsyIRL[ 8]= 40; IRLcoordszIRL[ 8]= 7
IRLcoordsx[ 9]= 9; IRLcoordsy[ 9]= 9; IRLcoordsxIRL[ 9]=-12; IRLcoordsyIRL[ 9]= 39; IRLcoordszIRL[ 9]= 7
IRLcoordsx[ 10]= 9; IRLcoordsy[ 10]= 10; IRLcoordsxIRL[ 10]=-12; IRLcoordsyIRL[ 10]= 38; IRLcoordszIRL[ 10]= 7
IRLcoordsx[ 11]= 9; IRLcoordsy[ 11]= 11; IRLcoordsxIRL[ 11]=-12; IRLcoordsyIRL[ 11]= 37; IRLcoordszIRL[ 11]= 7
IRLcoordsx[ 12]= 9; IRLcoordsy[ 12]= 12; IRLcoordsxIRL[ 12]=-12; IRLcoordsyIRL[ 12]= 36; IRLcoordszIRL[ 12]= 7
IRLcoordsx[ 13]= 9; IRLcoordsy[ 13]= 13; IRLcoordsxIRL[ 13]=-12; IRLcoordsyIRL[ 13]= 35; IRLcoordszIRL[ 13]= 7
IRLcoordsx[ 14]= 9; IRLcoordsy[ 14]= 14; IRLcoordsxIRL[ 14]=-12; IRLcoordsyIRL[ 14]= 34; IRLcoordszIRL[ 14]= 7
IRLcoordsx[ 15]= 9; IRLcoordsy[ 15]= 15; IRLcoordsxIRL[ 15]=-12; IRLcoordsyIRL[ 15]= 33; IRLcoordszIRL[ 15]= 7
IRLcoordsx[ 16]= 10; IRLcoordsy[ 16]= 8; IRLcoordsxIRL[ 16]=-11; IRLcoordsyIRL[ 16]= 40; IRLcoordszIRL[ 16]= 7
IRLcoordsx[ 17]= 10; IRLcoordsy[ 17]= 9; IRLcoordsxIRL[ 17]=-11; IRLcoordsyIRL[ 17]= 39; IRLcoordszIRL[ 17]= 7
IRLcoordsx[ 18]= 10; IRLcoordsy[ 18]= 10; IRLcoordsxIRL[ 18]=-11; IRLcoordsyIRL[ 18]= 38; IRLcoordszIRL[ 18]= 7
IRLcoordsx[ 19]= 10; IRLcoordsy[ 19]= 11; IRLcoordsxIRL[ 19]=-11; IRLcoordsyIRL[ 19]= 37; IRLcoordszIRL[ 19]= 7
IRLcoordsx[ 20]= 10; IRLcoordsy[ 20]= 12; IRLcoordsxIRL[ 20]=-11; IRLcoordsyIRL[ 20]= 36; IRLcoordszIRL[ 20]= 7
IRLcoordsx[ 21]= 10; IRLcoordsy[ 21]= 13; IRLcoordsxIRL[ 21]=-11; IRLcoordsyIRL[ 21]= 35; IRLcoordszIRL[ 21]= 7
IRLcoordsx[ 22]= 10; IRLcoordsy[ 22]= 14; IRLcoordsxIRL[ 22]=-11; IRLcoordsyIRL[ 22]= 34; IRLcoordszIRL[ 22]= 7
IRLcoordsx[ 23]= 10; IRLcoordsy[ 23]= 15; IRLcoordsxIRL[ 23]=-11; IRLcoordsyIRL[ 23]= 33; IRLcoordszIRL[ 23]= 7
IRLcoordsx[ 24]= 11; IRLcoordsy[ 24]= 8; IRLcoordsxIRL[ 24]=-10; IRLcoordsyIRL[ 24]= 40; IRLcoordszIRL[ 24]= 7
IRLcoordsx[ 25]= 11; IRLcoordsy[ 25]= 9; IRLcoordsxIRL[ 25]=-10; IRLcoordsyIRL[ 25]= 39; IRLcoordszIRL[ 25]= 7
IRLcoordsx[ 26]= 11; IRLcoordsy[ 26]= 10; IRLcoordsxIRL[ 26]=-10; IRLcoordsyIRL[ 26]= 38; IRLcoordszIRL[ 26]= 7
IRLcoordsx[ 27]= 11; IRLcoordsy[ 27]= 11; IRLcoordsxIRL[ 27]=-10; IRLcoordsyIRL[ 27]= 37; IRLcoordszIRL[ 27]= 7
IRLcoordsx[ 28]= 11; IRLcoordsy[ 28]= 12; IRLcoordsxIRL[ 28]=-10; IRLcoordsyIRL[ 28]= 36; IRLcoordszIRL[ 28]= 7
IRLcoordsx[ 29]= 11; IRLcoordsy[ 29]= 13; IRLcoordsxIRL[ 29]=-10; IRLcoordsyIRL[ 29]= 35; IRLcoordszIRL[ 29]= 7
IRLcoordsx[ 30]= 11; IRLcoordsy[ 30]= 14; IRLcoordsxIRL[ 30]=-10; IRLcoordsyIRL[ 30]= 34; IRLcoordszIRL[ 30]= 7
IRLcoordsx[ 31]= 11; IRLcoordsy[ 31]= 15; IRLcoordsxIRL[ 31]=-10; IRLcoordsyIRL[ 31]= 33; IRLcoordszIRL[ 31]= 7
IRLcoordsx[ 32]= 12; IRLcoordsy[ 32]= 8; IRLcoordsxIRL[ 32]=-9; IRLcoordsyIRL[ 32]= 40; IRLcoordszIRL[ 32]= 7
IRLcoordsx[ 33]= 12; IRLcoordsy[ 33]= 9; IRLcoordsxIRL[ 33]=-9; IRLcoordsyIRL[ 33]= 39; IRLcoordszIRL[ 33]= 7
IRLcoordsx[ 34]= 12; IRLcoordsy[ 34]= 10; IRLcoordsxIRL[ 34]=-9; IRLcoordsyIRL[ 34]= 38; IRLcoordszIRL[ 34]= 7
IRLcoordsx[ 35]= 12; IRLcoordsy[ 35]= 11; IRLcoordsxIRL[ 35]=-9; IRLcoordsyIRL[ 35]= 37; IRLcoordszIRL[ 35]= 7
IRLcoordsx[ 36]= 12; IRLcoordsy[ 36]= 12; IRLcoordsxIRL[ 36]=-9; IRLcoordsyIRL[ 36]= 36; IRLcoordszIRL[ 36]= 7
IRLcoordsx[ 37]= 12; IRLcoordsy[ 37]= 13; IRLcoordsxIRL[ 37]=-9; IRLcoordsyIRL[ 37]= 35; IRLcoordszIRL[ 37]= 7
IRLcoordsx[ 38]= 12; IRLcoordsy[ 38]= 14; IRLcoordsxIRL[ 38]=-9; IRLcoordsyIRL[ 38]= 34; IRLcoordszIRL[ 38]= 7
IRLcoordsx[ 39]= 12; IRLcoordsy[ 39]= 15; IRLcoordsxIRL[ 39]=-9; IRLcoordsyIRL[ 39]= 33; IRLcoordszIRL[ 39]= 7
IRLcoordsx[ 40]= 13; IRLcoordsy[ 40]= 8; IRLcoordsxIRL[ 40]=-8; IRLcoordsyIRL[ 40]= 40; IRLcoordszIRL[ 40]= 7
IRLcoordsx[ 41]= 13; IRLcoordsy[ 41]= 9; IRLcoordsxIRL[ 41]=-8; IRLcoordsyIRL[ 41]= 39; IRLcoordszIRL[ 41]= 7
IRLcoordsx[ 42]= 13; IRLcoordsy[ 42]= 10; IRLcoordsxIRL[ 42]=-8; IRLcoordsyIRL[ 42]= 38; IRLcoordszIRL[ 42]= 7
IRLcoordsx[ 43]= 13; IRLcoordsy[ 43]= 11; IRLcoordsxIRL[ 43]=-8; IRLcoordsyIRL[ 43]= 37; IRLcoordszIRL[ 43]= 7
IRLcoordsx[ 44]= 13; IRLcoordsy[ 44]= 12; IRLcoordsxIRL[ 44]=-8; IRLcoordsyIRL[ 44]= 36; IRLcoordszIRL[ 44]= 7
IRLcoordsx[ 45]= 13; IRLcoordsy[ 45]= 13; IRLcoordsxIRL[ 45]=-8; IRLcoordsyIRL[ 45]= 35; IRLcoordszIRL[ 45]= 7
IRLcoordsx[ 46]= 13; IRLcoordsy[ 46]= 14; IRLcoordsxIRL[ 46]=-8; IRLcoordsyIRL[ 46]= 34; IRLcoordszIRL[ 46]= 7
IRLcoordsx[ 47]= 13; IRLcoordsy[ 47]= 15; IRLcoordsxIRL[ 47]=-8; IRLcoordsyIRL[ 47]= 33; IRLcoordszIRL[ 47]= 7
IRLcoordsx[ 48]= 14; IRLcoordsy[ 48]= 8; IRLcoordsxIRL[ 48]=-7; IRLcoordsyIRL[ 48]= 40; IRLcoordszIRL[ 48]= 7
IRLcoordsx[ 49]= 14; IRLcoordsy[ 49]= 9; IRLcoordsxIRL[ 49]=-7; IRLcoordsyIRL[ 49]= 39; IRLcoordszIRL[ 49]= 7
IRLcoordsx[ 50]= 14; IRLcoordsy[ 50]= 10; IRLcoordsxIRL[ 50]=-7; IRLcoordsyIRL[ 50]= 38; IRLcoordszIRL[ 50]= 7
IRLcoordsx[ 51]= 14; IRLcoordsy[ 51]= 11; IRLcoordsxIRL[ 51]=-7; IRLcoordsyIRL[ 51]= 37; IRLcoordszIRL[ 51]= 7
IRLcoordsx[ 52]= 14; IRLcoordsy[ 52]= 12; IRLcoordsxIRL[ 52]=-7; IRLcoordsyIRL[ 52]= 36; IRLcoordszIRL[ 52]= 7
IRLcoordsx[ 53]= 14; IRLcoordsy[ 53]= 13; IRLcoordsxIRL[ 53]=-7; IRLcoordsyIRL[ 53]= 35; IRLcoordszIRL[ 53]= 7
IRLcoordsx[ 54]= 14; IRLcoordsy[ 54]= 14; IRLcoordsxIRL[ 54]=-7; IRLcoordsyIRL[ 54]= 34; IRLcoordszIRL[ 54]= 7
IRLcoordsx[ 55]= 14; IRLcoordsy[ 55]= 15; IRLcoordsxIRL[ 55]=-7; IRLcoordsyIRL[ 55]= 33; IRLcoordszIRL[ 55]= 7
IRLcoordsx[ 56]= 15; IRLcoordsy[ 56]= 8; IRLcoordsxIRL[ 56]=-6; IRLcoordsyIRL[ 56]= 40; IRLcoordszIRL[ 56]= 7
IRLcoordsx[ 57]= 15; IRLcoordsy[ 57]= 9; IRLcoordsxIRL[ 57]=-6; IRLcoordsyIRL[ 57]= 39; IRLcoordszIRL[ 57]= 7
IRLcoordsx[ 58]= 15; IRLcoordsy[ 58]= 10; IRLcoordsxIRL[ 58]=-6; IRLcoordsyIRL[ 58]= 38; IRLcoordszIRL[ 58]= 7
IRLcoordsx[ 59]= 15; IRLcoordsy[ 59]= 11; IRLcoordsxIRL[ 59]=-6; IRLcoordsyIRL[ 59]= 37; IRLcoordszIRL[ 59]= 7
IRLcoordsx[ 60]= 15; IRLcoordsy[ 60]= 12; IRLcoordsxIRL[ 60]=-6; IRLcoordsyIRL[ 60]= 36; IRLcoordszIRL[ 60]= 7
IRLcoordsx[ 61]= 15; IRLcoordsy[ 61]= 13; IRLcoordsxIRL[ 61]=-6; IRLcoordsyIRL[ 61]= 35; IRLcoordszIRL[ 61]= 7
IRLcoordsx[ 62]= 15; IRLcoordsy[ 62]= 14; IRLcoordsxIRL[ 62]=-6; IRLcoordsyIRL[ 62]= 34; IRLcoordszIRL[ 62]= 7
IRLcoordsx[ 63]= 15; IRLcoordsy[ 63]= 15; IRLcoordsxIRL[ 63]=-6; IRLcoordsyIRL[ 63]= 33; IRLcoordszIRL[ 63]= 7



registerCommand("myFace",function()
    mySkin = player.skin().texture()
    --gfx2.loadImage("MySkin.png")
    for i = 0, 63 do
        curColour = mySkin:getPixel(IRLcoordsx[i]+1,IRLcoordsy[i]+1)
        print(curColour)
        curColourBlock = RGBtoBlock(curColour.r,curColour.g,curColour.b)
        client.execute("execute setblock "..IRLcoordsxIRL[i] .. " " .. IRLcoordsyIRL[i] .. " " .. IRLcoordszIRL[i] .. " " .. curColourBlock)
    end
end)
hit = 0

registerCommand("updateFace",function()
    
    yourSkin2 = gfx2.loadImage("mySkin2.png")
    for i = 0, 63 do
        curColourBlock = dimension.getBlock(IRLcoordsxIRL[i],IRLcoordsyIRL[i],IRLcoordszIRL[i])
        --print(curColourBlock.name)
        curColourR, curColourG, curColourB = blockToRGB("minecraft:" .. curColourBlock.name)
        --print(curColourR,curColourG,curColourB)
        player.skin().save("mySkin2.png")
       
        yourSkin2:setPixel(IRLcoordsx[i],IRLcoordsy[i],curColourR,curColourG,curColourB)

       
        -- player.skin().setSkin("mySkin.png")
        --print("hi")
    end
    yourSkin2:save("mySkin2.png") 
end)
    

