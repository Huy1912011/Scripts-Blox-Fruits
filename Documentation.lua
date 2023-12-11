if game.PlaceId == 2753915549 then

_G.AUTOHAKI = true

function autohaki()
while _G.AUTOHAKI == true do
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
	Default = true,
	Callback = function(Value)
		_G.AUTOHAKI = Value
		autohaki()
	end    
})

	end
OrionLib:Init()
