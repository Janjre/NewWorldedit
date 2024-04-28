name = "Storage manager"
description = "Helps you manage your storage"

function setupStorage ()
    chestsInStorage = {}
    print("Right click on all the chests in your storage system! When you are done press enter!")
    alertClicks = true
end


client.settings.addFunction("Setup Storage", "setupStorage","Start")

event.listen("MouseInput", function(button,down)
    if button == 2 and alertClicks == true then
        if dimension.getBlock(player.lookingPos()).name == "chest" then
            chestsInStorage[#chestsInStorage+1] =  player.lookingPos()
            print("Chest accepted")
            scanChest = true

        end
    end
end)