if game.PlaceId == 2753915549 then

_G.AUTOHAKI = true

function autohaki()
while wait(.1) do
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

	end
OrionLib:Init()
