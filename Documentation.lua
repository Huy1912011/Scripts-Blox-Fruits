local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Vip", HidePremium = false, IntroEnabled = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local new1 = Window:MakeTab({
	Name = "New",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

new1:AddToggle({
	Name = "Test",
	Default = false,
	Callback = function(Value)
		_G.AUTOHAKI = Value
	end    
})

spawn(function(Value)
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
end)
