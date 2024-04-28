name="Racing Replay"
description="Replays the position of the boat when ice boat racing "


function splitSpace(messagee)
    counterr = 0
    arg = {}
    if messagee ==nil then return nil end
    for token in string.gmatch(messagee, "[^%s]+") do
        counterr = counterr + 1
        arg[counterr] = token
    end
    return arg
end


registerCommand("startReplay",function (args)
    startTime = os.clock()
    raceReplaying = true
    lastRace = {}
    raceFrame = 0
    curFrame = 0
end)

registerCommand("stopReplay", function(args)
    raceReplaying = false
end)


function render(dt)
    if raceReplaying then
        curPosx, curPosy, curPosz = player.pposition()
        curFacingYaw, curFacingPitch = player.rotation()   
        
        lastRace[raceFrame]=curFrame .. " " .. curPosx .. " " .. curPosy .. " " .. curPosz .. " " ..curFacingYaw .. " " .. curFacingPitch .. "\n"
        curFrame = curFrame +1
        raceFrame = raceFrame+1
        print(lastRace[raceFrame])
    end

    if watchingReplay then
        
        curFrameData = lastRace[curReplayingFrame]
        --if curReplayingFrame == nil then watchingReplay = false end



        curFrameData = splitSpace(curFrameData)

        if curFrameData==nil then watchingReplay=false;print("Done") end
        if watchingReplay then
            -- print("doing")
            client.execute("execute tp @e[type=boat,c=1] "..curFrameData[2] .. " " .. curFrameData[3]-1 .." "..curFrameData[4].." "..curFrameData[5].. " " ..curFrameData[6])
            --client.execute("execute tp @e[type=boat,c=1] "..curFrameData[2] .. " " .. curFrameData[3]-1 .." "..curFrameData[4].." "..curFrameData[5])
            curReplayingFrame = curReplayingFrame + 1
        end
        
        
    end
end

registerCommand("watchReplay",function (args)
    if lastRace == {} or lastRace == nil then print("You haven't recorded anything") end
    watchingReplay = true
    curReplayingFrame = 0
end)


