local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Huy1912011/Scripts-Blox-Fruits/main/source.lua')))()
local Window = OrionLib:MakeWindow({Name = "Vip", HidePremium = false, IntroEnabled = false, SaveConfig = true, ConfigFolder = "OrionTest"})

if game.PlaceId == 2753915549 then
        World1 = true
    elseif game.PlaceId == 4442272183 then
        World2 = true
    elseif game.PlaceId == 7449423635 then
        World3 = true
end

local Main = Window:MakeTab({
	Name = "Main Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Settings = Window:MakeTab({
	Name = "Settings",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Quests = Window:MakeTab({
	Name = "Auto Quest",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Stats = Window:MakeTab({
	Name = "Stats",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Race = Window:MakeTab({
	Name = "Race V4",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Player = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Raid = Window:MakeTab({
	Name = "Raid",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tele = Window:MakeTab({
	Name = "Teleport",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Shop = Window:MakeTab({
	Name = "Shop",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local DF = Window:MakeTab({
	Name = "Devil Fruit",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Misc = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Settings:AddToggle({
	NAddToggle("Auto Haki",true,function(value)
_G.AUTOHAKI = value
end)
spawn(function()
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

local plyserv = P:AddLabel("Players")

    

    spawn(function()
        while wait() do
            pcall(function()
                for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                    if i == 12 then
                        plyserv:Set("Players :".." "..i.." ".."/".." ".."12".." ".."(Max)")
                    elseif i == 1 then
                        plyserv:Set("Player :".." "..i.." ".."/".." ".."12")
                    else
                        plyserv:Set("Players :".." "..i.." ".."/".." ".."12")
                    end
                end
            end)
        end
    end)
    
    Playerslist = {}
    
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        table.insert(Playerslist,v.Name)
end

Tele:AddButton({
	Name = "Teleport To Old World",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
  	end    
})

Tele:AddButton({
	Name = "Teleport To Second Sea",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
  	end    
})

Tele:AddButton({
	Name = "Teleport To Third Sea",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
  	end    
})
