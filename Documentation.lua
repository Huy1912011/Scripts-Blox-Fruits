if game.PlaceId == 623823800 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Title of the library", HidePremium = false, IntroEnabled = false, IntroText = "Vip", SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "Tab 1",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
HắcTab:AddToggle({
	Name = "???",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})
end
OrionLib:Init()
