if game.PlaceId == 2753915549 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Vip", HidePremium = false, IntroEnabled = false, SaveConfig = true, ConfigFolder = "OrionTest"})

_G.AUTOHAKI = true

function autohaki()
while _G.AUTOHAKI == true do
            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                local args = {
                    [1] = "Buso"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		wait(.1)
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

	end
OrionLib:Init()
