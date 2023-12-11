local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Title of the library", HidePremium = false, IntroEnabled = false, IntroText = "Vip", SaveConfig = true, ConfigFolder = "OrionTest"})

_G.AUTOHAKI = true

function autohaki()
while wait(.1) do
        if _G.AUTOHAKI then 
            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                local args = {
                    [1] = "Buso"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
	end

local newTab = Window:MakeTab({
	Name = "Hắc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
newTab:AddToggle({
	Name = "???",
	Default = false,
	Callback = function(Value)
		_G.AUTOHAKI = Value
		autohaki()
	end    
})
OrionLib:Init()
