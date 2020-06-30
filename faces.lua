--[[
	该模块是专门填写界面特征的
]]

local options = require("options")


local faces = {
	[1] = {
		name = '御魂关卡选择界面',
		features = {
			{  525,  556, 0x1c1c30},
			{  520,  605, 0x272748},
			{   68, 1138, 0xfe7d34},
		},
		options = {
			click_challenge = options.click_challenge
		},
	},
	[2] = {
		name = '等待准备页面',
		features = {
			{  122, 1178, 0xffff9e},
			{  196, 1168, 0xd9ba91},
			{   44,  142, 0x272420},
		},
		options = {
			click_ready = options.click_ready
		},
	},
	[3] = {
		name = '结算奖励页面',
		features = {
			{  185,  632, 0x2f2019},
			{  226,  596, 0x3c8ace},
			{  262,  666, 0xc5b097},
			{  277,  644, 0xb3303d},
		},
		options = {
			click = options.click_face
		},
	},
}


return faces