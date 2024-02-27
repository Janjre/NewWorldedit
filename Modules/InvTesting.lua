name="My inv test"
description = "me test inventorry things"



event.listen("InventoryTick", function()
    modInv = player.inventory().modify()
    bX,bY,bZ = modInv.blockpos()
    if dimension.getBlock(bX,bY,bZ).name=="chest" then
        for slot = 1, 27 do
            modInv.autoPlace("container_items",slot,1)
        end
    end
end)

