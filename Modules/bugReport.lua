name = "bug report"
description = "dimesion.getBlockEntity doesn't work, you have to do ctr+middleclick \nto get the nbt data then replace the block for it to update"

function render(dt)
    local xL, yL, zL = player.selectedPos()
    -- print(zL)
    chestNBT = dimension.getBlockEntity(xL,yL,zL)
    gfx.text(1,1,chestNBT.strf,0.5)  
end