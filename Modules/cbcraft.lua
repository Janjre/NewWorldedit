name="Cube craft teseting"
description="tests thigns on cubecraft"

checkingDistance = 0
importLib("renderthreeD")

importLib("key-codes.lua")

event.listen("MouseInput", function(button, down)
    if button == 1 and down then
        checkingDistance = checkingDistance +1

    elseif button == 2 and down then
        checkingDistance = checkingDistance -1
    end
end)

event.listen("KeyboardInput", function(key, down)
    if key == KeyCodes.Home then
        homeDone = down
    end
end)

function render3d(dt)
    blockLookX, blockLookY, blockLookZ = player.forwardPosition(checkingDistance)
    cube(math.floor(blockLookX),math.floor(blockLookY),math.floor(blockLookZ),1)
end

function render(dt)
    if blockLookNBT == nil then else
        gfx.text(50,0,blockLookNBT.strf)
    end
end

event.listen("LocalServerUpdate", function()
    
    -- Cube(math.floor(blockLookX),math.floor(blockLookY),math.floor(blockLookZ),1)
    blockLookNBT = dimension.getBlockEntity(math.floor(blockLookX),math.floor(blockLookY),math.floor(blockLookZ),true)
end)