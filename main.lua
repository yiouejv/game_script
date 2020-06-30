require("TSLib")
local faces = require("faces")

function get_face()
    -- 遍历界面
    local i = 0
    while i < 5 do
        i = i + 1
        mSleep(1*1000)
        for k, v in ipairs(faces) do
            -- 传入界面特征，判断是否是界面组里的界面
            if multiColor(v.features, 85) then
                return v
            end
        end
    end
end


function main()
	while true do
		local face = get_face()
		-- 代码执行到get_face() 就会判断当前界面处在哪个界面，只要特征满足我们之前抓取的特征，就会返回
		-- 如果if为真，则取到了当前界面face，face.options则又包含了该界面的一些列操作。 我们可以.去执行。
		if face then
			dialog(face.name, 1)
			-- 判断具体处在什么界面，再执行具体的操作。
			if face.name == '御魂关卡选择界面' then
				face.options.click_challenge()

			elseif face.name == '等待准备页面' then
				face.options.click_ready()

			elseif face.name == '结算奖励页面' then
				face.options.click()
			end
		else
			-- 为假则没有处在我们预先设置的界面，该增加预设界面还是做其他的处理看我们的需求啦
			mSleep(1000)
		end
	end
end


main()