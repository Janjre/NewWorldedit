name = "three D Animate"
description = "lets you make 3d animations"

curFrame = 0
framePlay = 1

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
    startTimeAn = os.clock()
    playingAn = true
    framePlay = 1
    
    
end)

registerCommand("stop",function ()
    playingAn = false
end)


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

function render(dt)
    -- if playingAn then
    --     if math.floor(os.clock()*10)%5 == 0 then
    if playingAn then
        timeRunningAn = os.clock() - startTimeAn
        if timeRunningAn > framePlay*0.1 then
            framePlay=framePlay+1
            buildFrame(framePlay)
            if framePlay > 10 then framePlay = 0 end
        end
    end
            
        --     if framePlay > 10 then framePlay = 0 end
        -- end
    -- end
    
end