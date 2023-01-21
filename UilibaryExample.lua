loadstring(game:HttpGet("https://raw.githubusercontent.com/Blukezz/Randomshit/main/UiLibary.lua"))()

local Windoww = LunarFeLib:CreateGui()
local Tab = Windoww:CreateTab("Text",6026568198) -- icon
local category = Tab:CreateCategory("Text")
local button = Tab:CreateButton("Text", function()
	print("hi")
end)

local toggle Tab:CreateToggle("Text", function(Value)
	print(Value)
end)

local label = Tab:CreateLabel("Text")
