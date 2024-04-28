name = "Selected coords"
description = "shows you ur Selected coords"
renderEverywhere = true

function render (dt)
    local x, y, z = player.selectedPos()
    gfx.text(0,0,x.. " "..y.." "..z)
end