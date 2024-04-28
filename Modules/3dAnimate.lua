name = "three D Animate"
description = "lets you make 3d animations"

curFrame = 0

function dothething()
    return("-11 -60 -32 -31 -40 -53")
end
function dotheotherthing ()
    return("-32 -60 -54")
end

registerCommand("setFrame",function (args)
    setFrame(args)
end)

registerCommand("saveFrame",function ()
    
    saveFrame()
end)

registerCommand("play",function (args)
    playAnimation(args)
end)


function playAnimation(args)
    while playingAn do
        if math.floor(os.clock()*10)%5 == 0 then end
        framePlay=framePlay+1
        setFrame(framePlay)
    end
end

function saveFrame ()
    client.execute("execute /structure save "..curFrame.."frame ".. dothething())
end

function buildFrame(args)
    client.execute("execute /structure load "..args .. "frame " .. dotheotherthing())
end


function setFrame (args)
    saveFrame()
    curFrame = args
    client.execute("execute /fill "..dothething().. " air")
    buildFrame (args)
end