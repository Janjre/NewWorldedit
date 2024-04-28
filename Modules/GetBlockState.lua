name="Get Block state"
description = "blah"

importLib("auxToState.lua")

registerCommand("getState",function (args)
    selPosX,selPosY,selPosZ = player.selectedPos()
    SelBlock = dimension.getBlock(selPosX,selPosY,selPosZ)
    selBlockData = SelBlock.data
    selBlockName = SelBlock.name
    selBlockState = convertAux(selBlockName,selBlockData)
    print(selBlockState)
    setClipboard(tostring(selBlockState))
    
end)