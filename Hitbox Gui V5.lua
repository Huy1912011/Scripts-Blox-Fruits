

local lp = game:FindService("Players").LocalPlayer

local function gplr(String)
	local Found = {}
	local strl = String:lower()
	if strl == "all" then
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			table.insert(Found,v)
		end
	elseif strl == "others" then
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			if v.Name ~= lp.Name then
				table.insert(Found,v)
			end
		end 
	elseif strl == "me" then
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			if v.Name == lp.Name then
				table.insert(Found,v)
			end
		end 
	else
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			if v.Name:lower():sub(1, #String) == String:lower() then
				table.insert(Found,v)
			end
		end 
	end
	return Found 
end









-- Gui to Lua
-- Version: 3.2

-- Instances:

local Hitboxv5 = Instance.new("ScreenGui")
local Open = Instance.new("TextButton")
local drag = Instance.new("Frame")
local Frame = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local Home = Instance.new("TextButton")
local Hitbox = Instance.new("TextButton")
local Player = Instance.new("TextButton")
local TeamHitbox = Instance.new("TextButton")
local Destroygui = Instance.new("TextButton")
local HO = Instance.new("Frame")
local Rejoin = Instance.new("TextButton")
local Good = Instance.new("TextLabel")
local Name1 = Instance.new("TextLabel")
local CC = Instance.new("TextLabel")
local Hit = Instance.new("Frame")
local Hitb = Instance.new("TextBox")
local SI = Instance.new("TextLabel")
local Trans = Instance.new("TextBox")
local Tran = Instance.new("TextLabel")
local Matt = Instance.new("TextLabel")
local Mat = Instance.new("TextButton")
local ScrollingFrame_2 = Instance.new("ScrollingFrame")
local Brick = Instance.new("TextButton")
local Neon = Instance.new("TextButton")
local Wood = Instance.new("TextButton")
local Red = Instance.new("TextBox")
local R = Instance.new("TextLabel")
local Green = Instance.new("TextBox")
local G = Instance.new("TextLabel")
local Blue = Instance.new("TextBox")
local B = Instance.new("TextLabel")
local ONoff = Instance.new("TextButton")
local Pla = Instance.new("Frame")
local Hitb1 = Instance.new("TextBox")
local SI1 = Instance.new("TextLabel")
local Trans1 = Instance.new("TextBox")
local Tran1 = Instance.new("TextLabel")
local Matt1 = Instance.new("TextLabel")
local Mat1 = Instance.new("TextButton")
local ScrollingFrame_3 = Instance.new("ScrollingFrame")
local Brick_2 = Instance.new("TextButton")
local Neon_2 = Instance.new("TextButton")
local Wood_2 = Instance.new("TextButton")
local red1 = Instance.new("TextBox")
local R1 = Instance.new("TextLabel")
local Green1 = Instance.new("TextBox")
local G1 = Instance.new("TextLabel")
local Blue1 = Instance.new("TextBox")
local B1 = Instance.new("TextLabel")
local ONoff1 = Instance.new("TextButton")
local Target = Instance.new("TextBox")
local Team = Instance.new("Frame")
local Hitb2 = Instance.new("TextBox")
local SI2 = Instance.new("TextLabel")
local Trans2 = Instance.new("TextBox")
local Tran2 = Instance.new("TextLabel")
local Matt2 = Instance.new("TextLabel")
local Mat2 = Instance.new("TextButton")
local ScrollingFrame_4 = Instance.new("ScrollingFrame")
local Brick_3 = Instance.new("TextButton")
local Neon_3 = Instance.new("TextButton")
local Wood_3 = Instance.new("TextButton")
local Red2 = Instance.new("TextBox")
local R2 = Instance.new("TextLabel")
local Green2 = Instance.new("TextBox")
local G2 = Instance.new("TextLabel")
local blue2 = Instance.new("TextBox")
local B2 = Instance.new("TextLabel")
local ONoff2 = Instance.new("TextButton")
local TeamTarget = Instance.new("TextBox")
local Close = Instance.new("TextButton")
local Minimize = Instance.new("TextButton")

--Properties:

Hitboxv5.Name = "Hitbox v5"
Hitboxv5.Parent = game.CoreGui
Hitboxv5.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Open.Name = "Open"
Open.Parent = Hitboxv5
Open.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
Open.BorderColor3 = Color3.fromRGB(26, 41, 52)
Open.Position = UDim2.new(0, 0, 0.440625012, 0)
Open.Size = UDim2.new(0, 53, 0, 37)
Open.Font = Enum.Font.SourceSans
Open.Text = "Open"
Open.TextColor3 = Color3.fromRGB(0, 0, 0)
Open.TextScaled = true
Open.TextSize = 14.000
Open.TextWrapped = true
Open.MouseButton1Click:Connect(function()
	Open.Visible = false
	drag.Visible = true
end)

drag.Name = "drag"
drag.Parent = Hitboxv5
drag.Active = true
drag.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
drag.Position = UDim2.new(0.096753329, 0, 0.0194161441, 0)
drag.Size = UDim2.new(0, 386, 0, 31)
drag.Visible = false
drag.Draggable = true

Frame.Parent = drag
Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 148)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(-0.00300000003, 0, 2.02399993, 0)
Frame.Size = UDim2.new(0, 388, 0, 250)

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Size = UDim2.new(0, 89, 0, 250)
ScrollingFrame.BottomImage = ""
ScrollingFrame.MidImage = ""
ScrollingFrame.TopImage = ""

Home.Name = "Home"
Home.Parent = ScrollingFrame
Home.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
Home.BorderColor3 = Color3.fromRGB(184, 0, 3)
Home.BorderSizePixel = 0
Home.Position = UDim2.new(0.099999994, 0, 0.0120000001, 0)
Home.Size = UDim2.new(0, 64, 0, 27)
Home.Font = Enum.Font.SourceSans
Home.Text = "Home"
Home.TextColor3 = Color3.fromRGB(255, 255, 255)
Home.TextScaled = true
Home.TextSize = 14.000
Home.TextWrapped = true
Home.MouseButton1Click:Connect(function()
	Hit.Visible = false
	Pla.Visible = false
	Team.Visible = false
	HO.Visible = true
end)

Hitbox.Name = "Hitbox"
Hitbox.Parent = ScrollingFrame
Hitbox.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
Hitbox.BorderColor3 = Color3.fromRGB(184, 0, 3)
Hitbox.BorderSizePixel = 0
Hitbox.Position = UDim2.new(0.099999994, 0, 0.0820000023, 0)
Hitbox.Size = UDim2.new(0, 64, 0, 27)
Hitbox.Font = Enum.Font.SourceSans
Hitbox.Text = "Hitbox"
Hitbox.TextColor3 = Color3.fromRGB(255, 255, 255)
Hitbox.TextScaled = true
Hitbox.TextSize = 14.000
Hitbox.TextWrapped = true
Hitbox.MouseButton1Click:Connect(function()
	Hit.Visible = true
	Pla.Visible = false
	Team.Visible = false
	HO.Visible = false
end)

Player.Name = "Player"
Player.Parent = ScrollingFrame
Player.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
Player.BorderColor3 = Color3.fromRGB(184, 0, 3)
Player.BorderSizePixel = 0
Player.Position = UDim2.new(0.099999994, 0, 0.15200001, 0)
Player.Size = UDim2.new(0, 64, 0, 27)
Player.Font = Enum.Font.SourceSans
Player.Text = "Player"
Player.TextColor3 = Color3.fromRGB(255, 255, 255)
Player.TextScaled = true
Player.TextSize = 14.000
Player.TextWrapped = true
Player.MouseButton1Click:Connect(function()
	Hit.Visible = false
	Pla.Visible = true
	Team.Visible = false
	HO.Visible = false
end)

TeamHitbox.Name = "Team Hitbox"
TeamHitbox.Parent = ScrollingFrame
TeamHitbox.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
TeamHitbox.BorderColor3 = Color3.fromRGB(184, 0, 3)
TeamHitbox.BorderSizePixel = 0
TeamHitbox.Position = UDim2.new(0.0887640417, 0, 0.222000003, 0)
TeamHitbox.Size = UDim2.new(0, 64, 0, 27)
TeamHitbox.Font = Enum.Font.SourceSans
TeamHitbox.Text = "Team Hitbox (Coming Soon)"
TeamHitbox.TextColor3 = Color3.fromRGB(255, 255, 255)
TeamHitbox.TextScaled = true
TeamHitbox.TextSize = 14.000
TeamHitbox.TextWrapped = true
TeamHitbox.MouseButton1Click:Connect(function()
	Hit.Visible = false
	Pla.Visible = false
	Team.Visible = true
	HO.Visible = false
end)

Destroygui.Name = "Destroy gui"
Destroygui.Parent = ScrollingFrame
Destroygui.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Destroygui.BorderSizePixel = 0
Destroygui.Position = UDim2.new(0.0898876414, 0, 0.294, 0)
Destroygui.Size = UDim2.new(0, 64, 0, 27)
Destroygui.Font = Enum.Font.SourceSans
Destroygui.Text =  "Remove Gui"
Destroygui.TextColor3 = Color3.fromRGB(0, 0, 0)
Destroygui.TextScaled = true
Destroygui.TextSize = 14.000
Destroygui.TextWrapped = true
Destroygui.MouseButton1Click:Connect(function()
	Hitboxv5:Destroy()
end)

HO.Name = "HO"
HO.Parent = Frame
HO.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
HO.BorderSizePixel = 0
HO.Position = UDim2.new(0.24742268, 0, 0.0520000011, 0)
HO.Size = UDim2.new(0, 280, 0, 223)

Rejoin.Name = "Rejoin"
Rejoin.Parent = HO
Rejoin.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Rejoin.BorderSizePixel = 0
Rejoin.Position = UDim2.new(0, 0, 0.775784731, 0)
Rejoin.Size = UDim2.new(0, 280, 0, 50)
Rejoin.Font = Enum.Font.SourceSans
Rejoin.Text = "Rejoin"
Rejoin.TextColor3 = Color3.fromRGB(255, 255, 255)
Rejoin.TextScaled = true
Rejoin.TextSize = 14.000
Rejoin.TextWrapped = true
Rejoin.MouseButton1Click:Connect(function()
	game:GetService("TeleportService"):Teleport(game.PlaceId)
end)

Good.Name = "Good"
Good.Parent = HO
Good.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Good.BorderSizePixel = 0
Good.Size = UDim2.new(0, 280, 0, 81)
Good.Font = Enum.Font.SourceSans
Good.Text = "Thanks for using Hitbox V5"
Good.TextColor3 = Color3.fromRGB(255, 255, 255)
Good.TextScaled = true
Good.TextSize = 14.000
Good.TextWrapped = true

Name1.Name = "Name"
Name1.Parent = HO
Name1.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Name1.BorderSizePixel = 0
Name1.Position = UDim2.new(0, 0, 0.363228709, 0)
Name1.Size = UDim2.new(0, 280, 0, 53)
Name1.Font = Enum.Font.SourceSans
Name1.Text = ""
Name1.TextColor3 = Color3.fromRGB(255, 255, 255)
Name1.TextScaled = true
Name1.TextSize = 14.000
Name1.TextWrapped = true
pcall(function()
	Name1.Text = game.Players:GetPlayerFromCharacter(game.Workspace.CurrentCamera.CameraSubject.Parent).Name
end)

CC.Name = "CC"
CC.Parent = Frame
CC.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CC.BorderSizePixel = 0
CC.Position = UDim2.new(0, 0, -0.124000005, 0)
CC.Size = UDim2.new(0, 388, 0, 31)
CC.Font = Enum.Font.SourceSans
CC.Text = "Script Made by WarriorRoberr"
CC.TextColor3 = Color3.fromRGB(0, 0, 0)
CC.TextScaled = true
CC.TextSize = 14.000
CC.TextWrapped = true

Hit.Name = "Hit"
Hit.Parent = Frame
Hit.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Hit.BorderSizePixel = 0
Hit.Position = UDim2.new(0.24742268, 0, 0.0520000011, 0)
Hit.Size = UDim2.new(0, 280, 0, 223)
Hit.Visible = false

Hitb.Name = "Hitb"
Hitb.Parent = Hit
Hitb.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Hitb.Position = UDim2.new(0.0821428597, 0, 0.125560537, 0)
Hitb.Size = UDim2.new(0, 43, 0, 43)
Hitb.Font = Enum.Font.SourceSans
Hitb.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Hitb.PlaceholderText = "Hitbox"
Hitb.Text = ""
Hitb.TextColor3 = Color3.fromRGB(0, 0, 0)
Hitb.TextSize = 14.000

SI.Name = "SI"
SI.Parent = Hit
SI.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
SI.BorderSizePixel = 0
SI.Position = UDim2.new(0.0821428597, 0, 0, 0)
SI.Size = UDim2.new(0, 43, 0, 28)
SI.Font = Enum.Font.SourceSans
SI.Text = "Size:"
SI.TextColor3 = Color3.fromRGB(255, 255, 255)
SI.TextSize = 14.000

Trans.Name = "Trans"
Trans.Parent = Hit
Trans.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Trans.Position = UDim2.new(0.349999994, 0, 0.125560537, 0)
Trans.Size = UDim2.new(0, 43, 0, 43)
Trans.Font = Enum.Font.SourceSans
Trans.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Trans.PlaceholderText = "Trans"
Trans.Text = ""
Trans.TextColor3 = Color3.fromRGB(0, 0, 0)
Trans.TextSize = 14.000

Tran.Name = "Tran"
Tran.Parent = Hit
Tran.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Tran.BorderSizePixel = 0
Tran.Position = UDim2.new(0.349999994, 0, 0, 0)
Tran.Size = UDim2.new(0, 43, 0, 28)
Tran.Font = Enum.Font.SourceSans
Tran.Text = "Transparency:"
Tran.TextColor3 = Color3.fromRGB(255, 255, 255)
Tran.TextSize = 14.000

Matt.Name = "Matt"
Matt.Parent = Hit
Matt.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Matt.BorderSizePixel = 0
Matt.Position = UDim2.new(0.614285707, 0, 0, 0)
Matt.Size = UDim2.new(0, 43, 0, 28)
Matt.Font = Enum.Font.SourceSans
Matt.Text = "Material:"
Matt.TextColor3 = Color3.fromRGB(255, 255, 255)
Matt.TextSize = 14.000

Mat.Name = "Mat"
Mat.Parent = Hit
Mat.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Mat.Position = UDim2.new(0.614285707, 0, 0.121076226, 0)
Mat.Size = UDim2.new(0, 43, 0, 43)
Mat.Font = Enum.Font.SourceSans
Mat.Text = "Material"
Mat.TextColor3 = Color3.fromRGB(0, 0, 0)
Mat.TextSize = 14.000
Mat.MouseButton1Click:Connect(function()
	ScrollingFrame_2.Visible = true
end)

ScrollingFrame_2.Parent = Hit
ScrollingFrame_2.Active = true
ScrollingFrame_2.BackgroundColor3 = Color3.fromRGB(136, 136, 136)
ScrollingFrame_2.Position = UDim2.new(0.870108962, 0, 0.14172487, 0)
ScrollingFrame_2.Size = UDim2.new(0, 94, 0, 131)
ScrollingFrame_2.Visible = false
ScrollingFrame_2.BottomImage = ""
ScrollingFrame_2.MidImage = ""
ScrollingFrame_2.ScrollBarThickness = 0
ScrollingFrame_2.TopImage = ""

Brick.Name = "Brick"
Brick.Parent = ScrollingFrame_2
Brick.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Brick.Position = UDim2.new(0.0701754987, 0, 0.0177102201, 0)
Brick.Size = UDim2.new(0, 80, 0, 27)
Brick.Font = Enum.Font.SourceSans
Brick.Text = "Brick"
Brick.TextColor3 = Color3.fromRGB(255, 255, 255)
Brick.TextScaled = true
Brick.TextSize = 14.000
Brick.TextWrapped = true
Brick.MouseButton1Click:Connect(function()
	ScrollingFrame_2.Visible = false
	Mat.Text = "Brick"
end)

Neon.Name = "Neon"
Neon.Parent = ScrollingFrame_2
Neon.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Neon.Position = UDim2.new(0.0701754987, 0, 0.0939434022, 0)
Neon.Size = UDim2.new(0, 80, 0, 27)
Neon.Font = Enum.Font.SourceSans
Neon.Text = "Neon"
Neon.TextColor3 = Color3.fromRGB(255, 255, 255)
Neon.TextScaled = true
Neon.TextSize = 14.000
Neon.TextWrapped = true
Neon.MouseButton1Click:Connect(function()
	Mat.Text = "Neon"
	ScrollingFrame_2.Visible = false
end)

Wood.Name = "Wood"
Wood.Parent = ScrollingFrame_2
Wood.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Wood.Position = UDim2.new(0.0701754987, 0, 0.170176595, 0)
Wood.Size = UDim2.new(0, 80, 0, 27)
Wood.Font = Enum.Font.SourceSans
Wood.Text = "Wood"
Wood.TextColor3 = Color3.fromRGB(255, 255, 255)
Wood.TextScaled = true
Wood.TextSize = 14.000
Wood.TextWrapped = true
Wood.MouseButton1Click:Connect(function()
	Mat.Text = "Wood"
	ScrollingFrame_2.Visible = false
end)

Red.Name = "Red"
Red.Parent = Hit
Red.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Red.Position = UDim2.new(0.0821428597, 0, 0.461883426, 0)
Red.Size = UDim2.new(0, 43, 0, 43)
Red.Font = Enum.Font.SourceSans
Red.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Red.PlaceholderText = "Number"
Red.Text = ""
Red.TextColor3 = Color3.fromRGB(0, 0, 0)
Red.TextSize = 14.000

R.Name = "R"
R.Parent = Hit
R.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
R.BorderSizePixel = 0
R.Position = UDim2.new(0.0821428597, 0, 0.336322874, 0)
R.Size = UDim2.new(0, 43, 0, 28)
R.Font = Enum.Font.SourceSans
R.Text = "Red"
R.TextColor3 = Color3.fromRGB(255, 0, 0)
R.TextSize = 14.000

Green.Name = "Green"
Green.Parent = Hit
Green.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
Green.Position = UDim2.new(0.349999994, 0, 0.461883426, 0)
Green.Size = UDim2.new(0, 43, 0, 43)
Green.Font = Enum.Font.SourceSans
Green.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Green.PlaceholderText = "Number"
Green.Text = ""
Green.TextColor3 = Color3.fromRGB(0, 0, 0)
Green.TextSize = 14.000

G.Name = "G"
G.Parent = Hit
G.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
G.BorderSizePixel = 0
G.Position = UDim2.new(0.349999994, 0, 0.336322874, 0)
G.Size = UDim2.new(0, 43, 0, 28)
G.Font = Enum.Font.SourceSans
G.Text = "Green"
G.TextColor3 = Color3.fromRGB(0, 255, 0)
G.TextSize = 14.000

Blue.Name = "Blue"
Blue.Parent = Hit
Blue.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
Blue.Position = UDim2.new(0.614285707, 0, 0.461883426, 0)
Blue.Size = UDim2.new(0, 43, 0, 43)
Blue.Font = Enum.Font.SourceSans
Blue.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Blue.PlaceholderText = "Number"
Blue.Text = ""
Blue.TextColor3 = Color3.fromRGB(0, 0, 0)
Blue.TextSize = 14.000

B.Name = "B"
B.Parent = Hit
B.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
B.BorderSizePixel = 0
B.Position = UDim2.new(0.614285707, 0, 0.336322874, 0)
B.Size = UDim2.new(0, 43, 0, 28)
B.Font = Enum.Font.SourceSans
B.Text = "Blue"
B.TextColor3 = Color3.fromRGB(0, 0, 255)
B.TextSize = 14.000

ONoff.Name = "ON/off"
ONoff.Parent = Hit
ONoff.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ONoff.Position = UDim2.new(0.764491737, 0, 0.775784731, 0)
ONoff.Size = UDim2.new(0, 55, 0, 43)
ONoff.Font = Enum.Font.SourceSans
ONoff.Text = "Execute"
ONoff.TextColor3 = Color3.fromRGB(255, 0, 0)
ONoff.TextScaled = true
ONoff.TextSize = 14.000
ONoff.TextWrapped = true
ONoff.MouseButton1Click:Connect(function()
	_G.HeadSize = Hitb.Text
	_G.Disabled = true

	game:GetService('RunService').RenderStepped:connect(function()
		if _G.Disabled then
			for i,v in next, game:GetService('Players'):GetPlayers() do
				if v.Name ~= game:GetService('Players').LocalPlayer.Name then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
						v.Character.HumanoidRootPart.Transparency = Trans.Text
						v.Character.HumanoidRootPart.Color = Color3.new(Red.Text,Green.Text,Blue.Text)
						v.Character.HumanoidRootPart.Material = Mat.Text
						v.Character.HumanoidRootPart.CanCollide = false
					end)
				end
			end
		end
	end)
end)

Pla.Name = "Pla"
Pla.Parent = Frame
Pla.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Pla.BorderSizePixel = 0
Pla.Position = UDim2.new(0.24742268, 0, 0.0520000011, 0)
Pla.Size = UDim2.new(0, 280, 0, 223)
Pla.Visible = false

Hitb1.Name = "Hitb1"
Hitb1.Parent = Pla
Hitb1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Hitb1.Position = UDim2.new(0.0821428597, 0, 0.125560537, 0)
Hitb1.Size = UDim2.new(0, 43, 0, 43)
Hitb1.Font = Enum.Font.SourceSans
Hitb1.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Hitb1.PlaceholderText = "Hitbox"
Hitb1.Text = ""
Hitb1.TextColor3 = Color3.fromRGB(0, 0, 0)
Hitb1.TextSize = 14.000

SI1.Name = "SI1"
SI1.Parent = Pla
SI1.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
SI1.BorderSizePixel = 0
SI1.Position = UDim2.new(0.0821428597, 0, 0, 0)
SI1.Size = UDim2.new(0, 43, 0, 28)
SI1.Font = Enum.Font.SourceSans
SI1.Text = "Size:"
SI1.TextColor3 = Color3.fromRGB(255, 255, 255)
SI1.TextSize = 14.000

Trans1.Name = "Trans1"
Trans1.Parent = Pla
Trans1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Trans1.Position = UDim2.new(0.349999994, 0, 0.125560537, 0)
Trans1.Size = UDim2.new(0, 43, 0, 43)
Trans1.Font = Enum.Font.SourceSans
Trans1.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Trans1.PlaceholderText = "Trans"
Trans1.Text = ""
Trans1.TextColor3 = Color3.fromRGB(0, 0, 0)
Trans1.TextSize = 14.000

Tran1.Name = "Tran1"
Tran1.Parent = Pla
Tran1.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Tran1.BorderSizePixel = 0
Tran1.Position = UDim2.new(0.349999994, 0, 0, 0)
Tran1.Size = UDim2.new(0, 43, 0, 28)
Tran1.Font = Enum.Font.SourceSans
Tran1.Text = "Transparency:"
Tran1.TextColor3 = Color3.fromRGB(255, 255, 255)
Tran1.TextSize = 14.000

Matt1.Name = "Matt1"
Matt1.Parent = Pla
Matt1.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Matt1.BorderSizePixel = 0
Matt1.Position = UDim2.new(0.614285707, 0, 0, 0)
Matt1.Size = UDim2.new(0, 43, 0, 28)
Matt1.Font = Enum.Font.SourceSans
Matt1.Text = "Material:"
Matt1.TextColor3 = Color3.fromRGB(255, 255, 255)
Matt1.TextSize = 14.000

Mat1.Name = "Mat1"
Mat1.Parent = Pla
Mat1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Mat1.Position = UDim2.new(0.614285707, 0, 0.121076226, 0)
Mat1.Size = UDim2.new(0, 43, 0, 43)
Mat1.Font = Enum.Font.SourceSans
Mat1.Text = "Material"
Mat1.TextColor3 = Color3.fromRGB(0, 0, 0)
Mat1.TextSize = 14.000
Mat1.MouseButton1Click:Connect(function()
	ScrollingFrame_3.Visible = true
end)

ScrollingFrame_3.Parent = Pla
ScrollingFrame_3.Active = true
ScrollingFrame_3.BackgroundColor3 = Color3.fromRGB(136, 136, 136)
ScrollingFrame_3.Position = UDim2.new(0.870108962, 0, 0.14172487, 0)
ScrollingFrame_3.Size = UDim2.new(0, 94, 0, 131)
ScrollingFrame_3.Visible = false
ScrollingFrame_3.BottomImage = ""
ScrollingFrame_3.MidImage = ""
ScrollingFrame_3.ScrollBarThickness = 0
ScrollingFrame_3.TopImage = ""

Brick_2.Name = "Brick"
Brick_2.Parent = ScrollingFrame_3
Brick_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Brick_2.Position = UDim2.new(0.0701754987, 0, 0.0177102201, 0)
Brick_2.Size = UDim2.new(0, 80, 0, 27)
Brick_2.Font = Enum.Font.SourceSans
Brick_2.Text = "Brick"
Brick_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Brick_2.TextScaled = true
Brick_2.TextSize = 14.000
Brick_2.TextWrapped = true
Brick_2.MouseButton1Click:Connect(function()
	Mat1.Text = "Brick"
	ScrollingFrame_3.Visible = false
end)

Neon_2.Name = "Neon"
Neon_2.Parent = ScrollingFrame_3
Neon_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Neon_2.Position = UDim2.new(0.0701754987, 0, 0.0939434022, 0)
Neon_2.Size = UDim2.new(0, 80, 0, 27)
Neon_2.Font = Enum.Font.SourceSans
Neon_2.Text = "Neon"
Neon_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Neon_2.TextScaled = true
Neon_2.TextSize = 14.000
Neon_2.TextWrapped = true
Neon_2.MouseButton1Click:Connect(function()
	Mat1.Text = "Neon"
	ScrollingFrame_3.Visible = false
end)

Wood_2.Name = "Wood"
Wood_2.Parent = ScrollingFrame_3
Wood_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Wood_2.Position = UDim2.new(0.0701754987, 0, 0.170176595, 0)
Wood_2.Size = UDim2.new(0, 80, 0, 27)
Wood_2.Font = Enum.Font.SourceSans
Wood_2.Text = "Wood"
Wood_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Wood_2.TextScaled = true
Wood_2.TextSize = 14.000
Wood_2.TextWrapped = true
Wood_2.MouseButton1Click:Connect(function()
	Mat1.Text = "Wood"
	ScrollingFrame_3.Visible = false
end)

red1.Name = "red1"
red1.Parent = Pla
red1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
red1.Position = UDim2.new(0.0821428597, 0, 0.461883426, 0)
red1.Size = UDim2.new(0, 43, 0, 43)
red1.Font = Enum.Font.SourceSans
red1.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
red1.PlaceholderText = "Number"
red1.Text = ""
red1.TextColor3 = Color3.fromRGB(0, 0, 0)
red1.TextSize = 14.000

R1.Name = "R1"
R1.Parent = Pla
R1.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
R1.BorderSizePixel = 0
R1.Position = UDim2.new(0.0821428597, 0, 0.336322874, 0)
R1.Size = UDim2.new(0, 43, 0, 28)
R1.Font = Enum.Font.SourceSans
R1.Text = "Red"
R1.TextColor3 = Color3.fromRGB(255, 0, 0)
R1.TextSize = 14.000

Green1.Name = "Green1"
Green1.Parent = Pla
Green1.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
Green1.Position = UDim2.new(0.349999994, 0, 0.461883426, 0)
Green1.Size = UDim2.new(0, 43, 0, 43)
Green1.Font = Enum.Font.SourceSans
Green1.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Green1.PlaceholderText = "Number"
Green1.Text = ""
Green1.TextColor3 = Color3.fromRGB(0, 0, 0)
Green1.TextSize = 14.000

G1.Name = "G1"
G1.Parent = Pla
G1.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
G1.BorderSizePixel = 0
G1.Position = UDim2.new(0.349999994, 0, 0.336322874, 0)
G1.Size = UDim2.new(0, 43, 0, 28)
G1.Font = Enum.Font.SourceSans
G1.Text = "Green"
G1.TextColor3 = Color3.fromRGB(0, 255, 0)
G1.TextSize = 14.000

Blue1.Name = "Blue1"
Blue1.Parent = Pla
Blue1.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
Blue1.Position = UDim2.new(0.614285707, 0, 0.461883426, 0)
Blue1.Size = UDim2.new(0, 43, 0, 43)
Blue1.Font = Enum.Font.SourceSans
Blue1.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Blue1.PlaceholderText = "Number"
Blue1.Text = ""
Blue1.TextColor3 = Color3.fromRGB(0, 0, 0)
Blue1.TextSize = 14.000

B1.Name = "B1"
B1.Parent = Pla
B1.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
B1.BorderSizePixel = 0
B1.Position = UDim2.new(0.614285707, 0, 0.336322874, 0)
B1.Size = UDim2.new(0, 43, 0, 28)
B1.Font = Enum.Font.SourceSans
B1.Text = "Blue"
B1.TextColor3 = Color3.fromRGB(0, 0, 255)
B1.TextSize = 14.000

ONoff1.Name = "ON/off1"
ONoff1.Parent = Pla
ONoff1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ONoff1.Position = UDim2.new(0.764491737, 0, 0.775784731, 0)
ONoff1.Size = UDim2.new(0, 55, 0, 43)
ONoff1.Font = Enum.Font.SourceSans
ONoff1.Text = "Execute"
ONoff1.TextColor3 = Color3.fromRGB(255, 0, 0)
ONoff1.TextScaled = true
ONoff1.TextSize = 14.000
ONoff1.TextWrapped = true
ONoff1.MouseButton1Click:Connect(function()
	local Target1 = gplr(Target.Text)
	if Target1[1] then
		Target1 = Target1[1]
		_G.HeadSize1 = Hitb1.Text
		_G.Disabled1 = true

		game:GetService('RunService').RenderStepped:connect(function()
			if _G.Disabled1 then
				pcall(function()
					Target1.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize1,_G.HeadSize1,_G.HeadSize1)
					Target1.Character.HumanoidRootPart.Transparency = Trans1.Text
					Target1.Character.HumanoidRootPart.Color = Color3.new(red1.Text,Green1.Text,Blue1.Text)
					Target1.Character.HumanoidRootPart.Material = Mat1.Text
					Target1.Character.HumanoidRootPart.CanCollide = false
				end)
			end
		end)
	end
end)

Target.Name = "Target"
Target.Parent = Pla
Target.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Target.Position = UDim2.new(0.134787098, 0, 0.775784731, 0)
Target.Size = UDim2.new(0, 160, 0, 43)
Target.Font = Enum.Font.SourceSans
Target.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Target.PlaceholderText = "Player name here"
Target.Text = ""
Target.TextColor3 = Color3.fromRGB(0, 0, 0)
Target.TextScaled = true
Target.TextSize = 14.000
Target.TextWrapped = true

Team.Name = "Team"
Team.Parent = Frame
Team.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Team.BorderSizePixel = 0
Team.Position = UDim2.new(0.24742268, 0, 0.0520000011, 0)
Team.Size = UDim2.new(0, 280, 0, 223)
Team.Visible = false

Hitb2.Name = "Hitb2"
Hitb2.Parent = Team
Hitb2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Hitb2.Position = UDim2.new(0.0821428597, 0, 0.125560537, 0)
Hitb2.Size = UDim2.new(0, 43, 0, 43)
Hitb2.Font = Enum.Font.SourceSans
Hitb2.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Hitb2.PlaceholderText = "Hitbox"
Hitb2.Text = ""
Hitb2.TextColor3 = Color3.fromRGB(0, 0, 0)
Hitb2.TextSize = 14.000

SI2.Name = "SI2"
SI2.Parent = Team
SI2.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
SI2.BorderSizePixel = 0
SI2.Position = UDim2.new(0.0821428597, 0, 0, 0)
SI2.Size = UDim2.new(0, 43, 0, 28)
SI2.Font = Enum.Font.SourceSans
SI2.Text = "Size:"
SI2.TextColor3 = Color3.fromRGB(255, 255, 255)
SI2.TextSize = 14.000

Trans2.Name = "Trans2"
Trans2.Parent = Team
Trans2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Trans2.Position = UDim2.new(0.349999994, 0, 0.125560537, 0)
Trans2.Size = UDim2.new(0, 43, 0, 43)
Trans2.Font = Enum.Font.SourceSans
Trans2.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Trans2.PlaceholderText = "Trans"
Trans2.Text = ""
Trans2.TextColor3 = Color3.fromRGB(0, 0, 0)
Trans2.TextSize = 14.000

Tran2.Name = "Tran2"
Tran2.Parent = Team
Tran2.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Tran2.BorderSizePixel = 0
Tran2.Position = UDim2.new(0.349999994, 0, 0, 0)
Tran2.Size = UDim2.new(0, 43, 0, 28)
Tran2.Font = Enum.Font.SourceSans
Tran2.Text = "Transparency:"
Tran2.TextColor3 = Color3.fromRGB(255, 255, 255)
Tran2.TextSize = 14.000

Matt2.Name = "Matt2"
Matt2.Parent = Team
Matt2.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Matt2.BorderSizePixel = 0
Matt2.Position = UDim2.new(0.614285707, 0, 0, 0)
Matt2.Size = UDim2.new(0, 43, 0, 28)
Matt2.Font = Enum.Font.SourceSans
Matt2.Text = "Material:"
Matt2.TextColor3 = Color3.fromRGB(255, 255, 255)
Matt2.TextSize = 14.000

Mat2.Name = "Mat2"
Mat2.Parent = Team
Mat2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Mat2.Position = UDim2.new(0.614285707, 0, 0.121076226, 0)
Mat2.Size = UDim2.new(0, 43, 0, 43)
Mat2.Font = Enum.Font.SourceSans
Mat2.Text = "Material"
Mat2.TextColor3 = Color3.fromRGB(0, 0, 0)
Mat2.TextSize = 14.000
Mat2.MouseButton1Click:Connect(function()
	ScrollingFrame_4.Visible = true
end)


ScrollingFrame_4.Parent = Team
ScrollingFrame_4.Active = true
ScrollingFrame_4.BackgroundColor3 = Color3.fromRGB(136, 136, 136)
ScrollingFrame_4.Position = UDim2.new(0.870108962, 0, 0.14172487, 0)
ScrollingFrame_4.Size = UDim2.new(0, 94, 0, 131)
ScrollingFrame_4.Visible = false
ScrollingFrame_4.BottomImage = ""
ScrollingFrame_4.MidImage = ""
ScrollingFrame_4.ScrollBarThickness = 0
ScrollingFrame_4.TopImage = ""

Brick_3.Name = "Brick"
Brick_3.Parent = ScrollingFrame_4
Brick_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Brick_3.Position = UDim2.new(0.0701754987, 0, 0.0177102201, 0)
Brick_3.Size = UDim2.new(0, 80, 0, 27)
Brick_3.Font = Enum.Font.SourceSans
Brick_3.Text = "Brick"
Brick_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Brick_3.TextScaled = true
Brick_3.TextSize = 14.000
Brick_3.TextWrapped = true
Brick_3.MouseButton1Click:Connect(function()
	Mat2.Text = "Brick"
	ScrollingFrame_4.Visible = false
end)

Neon_3.Name = "Neon"
Neon_3.Parent = ScrollingFrame_4
Neon_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Neon_3.Position = UDim2.new(0.0701754987, 0, 0.0939434022, 0)
Neon_3.Size = UDim2.new(0, 80, 0, 27)
Neon_3.Font = Enum.Font.SourceSans
Neon_3.Text = "Neon"
Neon_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Neon_3.TextScaled = true
Neon_3.TextSize = 14.000
Neon_3.TextWrapped = true
Neon_3.MouseButton1Click:Connect(function()
	Mat2.Text = "Neon"
	ScrollingFrame_4.Visible = false
end)

Wood_3.Name = "Wood"
Wood_3.Parent = ScrollingFrame_4
Wood_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Wood_3.Position = UDim2.new(0.0701754987, 0, 0.170176595, 0)
Wood_3.Size = UDim2.new(0, 80, 0, 27)
Wood_3.Font = Enum.Font.SourceSans
Wood_3.Text = "Wood"
Wood_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Wood_3.TextScaled = true
Wood_3.TextSize = 14.000
Wood_3.TextWrapped = true
Wood_3.MouseButton1Click:Connect(function()
	Mat2.Text = "Wood"
	ScrollingFrame_4.Visible = false
end)

Red2.Name = "Red2"
Red2.Parent = Team
Red2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Red2.Position = UDim2.new(0.0821428597, 0, 0.461883426, 0)
Red2.Size = UDim2.new(0, 43, 0, 43)
Red2.Font = Enum.Font.SourceSans
Red2.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Red2.PlaceholderText = "Number"
Red2.Text = ""
Red2.TextColor3 = Color3.fromRGB(0, 0, 0)
Red2.TextSize = 14.000

R2.Name = "R2"
R2.Parent = Team
R2.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
R2.BorderSizePixel = 0
R2.Position = UDim2.new(0.0821428597, 0, 0.336322874, 0)
R2.Size = UDim2.new(0, 43, 0, 28)
R2.Font = Enum.Font.SourceSans
R2.Text = "Red"
R2.TextColor3 = Color3.fromRGB(255, 0, 0)
R2.TextSize = 14.000

Green2.Name = "Green2"
Green2.Parent = Team
Green2.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
Green2.Position = UDim2.new(0.349999994, 0, 0.461883426, 0)
Green2.Size = UDim2.new(0, 43, 0, 43)
Green2.Font = Enum.Font.SourceSans
Green2.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Green2.PlaceholderText = "Number"
Green2.Text = ""
Green2.TextColor3 = Color3.fromRGB(0, 0, 0)
Green2.TextSize = 14.000

G2.Name = "G2"
G2.Parent = Team
G2.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
G2.BorderSizePixel = 0
G2.Position = UDim2.new(0.349999994, 0, 0.336322874, 0)
G2.Size = UDim2.new(0, 43, 0, 28)
G2.Font = Enum.Font.SourceSans
G2.Text = "Green"
G2.TextColor3 = Color3.fromRGB(0, 255, 0)
G2.TextSize = 14.000

blue2.Name = "blue2"
blue2.Parent = Team
blue2.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
blue2.Position = UDim2.new(0.614285707, 0, 0.461883426, 0)
blue2.Size = UDim2.new(0, 43, 0, 43)
blue2.Font = Enum.Font.SourceSans
blue2.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
blue2.PlaceholderText = "Number"
blue2.Text = ""
blue2.TextColor3 = Color3.fromRGB(0, 0, 0)
blue2.TextSize = 14.000

B2.Name = "B2"
B2.Parent = Team
B2.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
B2.BorderSizePixel = 0
B2.Position = UDim2.new(0.614285707, 0, 0.336322874, 0)
B2.Size = UDim2.new(0, 43, 0, 28)
B2.Font = Enum.Font.SourceSans
B2.Text = "Blue"
B2.TextColor3 = Color3.fromRGB(0, 0, 255)
B2.TextSize = 14.000

ONoff2.Name = "ON/off2"
ONoff2.Parent = Team
ONoff2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ONoff2.Position = UDim2.new(0.764491737, 0, 0.775784731, 0)
ONoff2.Size = UDim2.new(0, 55, 0, 43)
ONoff2.Font = Enum.Font.SourceSans
ONoff2.Text = "Execute"
ONoff2.TextColor3 = Color3.fromRGB(255, 0, 0)
ONoff2.TextScaled = true
ONoff2.TextSize = 14.000
ONoff2.TextWrapped = true

TeamTarget.Name = "Team Target"
TeamTarget.Parent = Team
TeamTarget.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TeamTarget.Position = UDim2.new(0.134787098, 0, 0.775784731, 0)
TeamTarget.Size = UDim2.new(0, 160, 0, 43)
TeamTarget.Font = Enum.Font.SourceSans
TeamTarget.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
TeamTarget.PlaceholderText = "Team name here"
TeamTarget.Text = ""
TeamTarget.TextColor3 = Color3.fromRGB(0, 0, 0)
TeamTarget.TextScaled = true
TeamTarget.TextSize = 14.000
TeamTarget.TextWrapped = true

Close.Name = "Close"
Close.Parent = drag
Close.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.917525709, 0, -0.0221935511, 0)
Close.Size = UDim2.new(0, 31, 0, 31)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextWrapped = true
Close.MouseButton1Click:Connect(function()
	drag.Visible = false
	Open.Visible = true
end)

Minimize.Name = "Mini mize"
Minimize.Parent = drag
Minimize.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Minimize.BorderSizePixel = 0
Minimize.Position = UDim2.new(0.836787581, 0, -0.0322580636, 0)
Minimize.Size = UDim2.new(0, 31, 0, 31)
Minimize.Font = Enum.Font.SourceSans
Minimize.Text = "-"
Minimize.TextColor3 = Color3.fromRGB(255, 255, 255)
Minimize.TextScaled = true
Minimize.TextSize = 14.000
Minimize.TextWrapped = true
function Mini()
	if Minimize.Text == "-" then
		Minimize.Text = "+"
		Frame.Visible = false
	elseif Minimize.Text == "+" then
		Minimize.Text = "-"
		Frame.Visible = true
	end
end
Minimize.MouseButton1Click:Connect(Mini)