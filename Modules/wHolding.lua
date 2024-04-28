name="W holder"
description = "holds down the W key"

importLib("key-codes.lua")

event.listen("KeyboardInput", function(key, down)
    if key == KeyCodes.KeyW and down == false then
        return true
    end
    if key == KeyCodes.Ctrl and down == false then
         return true
    end
    if key == KeyCodes.KeyW or key == KeyCodes.Ctrl then else
        return true
    end
   
end)