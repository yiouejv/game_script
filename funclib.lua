
--[[
    在触动精灵的函数库上封装了一些函数，方便我们使用
]]

require("TSLib")

function start_app(bid)
    ---启动应用
        --bid: 应用的id
    ---
    closeApp(bid)
    mSleep(1000)
    while (true) do
        status = runApp(bid)
        mSleep(3*1000)  -- 等待3s
        if status == 0 then -- 启动成功，跳出循环
            return true
        end
    end
end


function click(x, y, interval, offset)
    offset = offset or 5
    interval = interval or 20

    touchDown(1, x+offset, y+offset)
    mSleep(interval)
    touchMove(1, x+offset, y+offset)
    mSleep(interval)
    touchUp(1, x+offset, y+offset)
    mSleep(1000)
end


function randint(start, stop)
    -- 随机生成范围内的数
    math.randomseed(getRndNum()) -- 随机种子初始化真随机数
    num = math.random(start, stop)
    return num
end


function deleteText()
    for i=1,30 do
        inputText("\b")
        mSleep(30)
    end
end


function input(string)
    deleteText()
    inputText(string)
end
