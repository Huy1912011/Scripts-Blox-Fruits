local ThunderScreen = Instance.new("ScreenGui")
local ThunderToggleUI = Instance.new("TextButton")
local ThunderCornerUI = Instance.new("UICorner")
local ThunderImageUI = Instance.new("ImageLabel")

        ThunderScreen.Name = "ThunderScreen"
        ThunderScreen.Parent = game.CoreGui
        ThunderScreen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

        ThunderToggleUI.Name = "ThunderToggleUI"
        ThunderToggleUI.Parent = ThunderScreen
        ThunderToggleUI.BackgroundColor3 = Color3.fromRGB(31,31,31)
        ThunderToggleUI.BorderSizePixel = 0
        ThunderToggleUI.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
        ThunderToggleUI.Size = UDim2.new(0, 50, 0, 50)
        ThunderToggleUI.Font = Enum.Font.SourceSans
        ThunderToggleUI.Text = ""
        ThunderToggleUI.TextColor3 = Color3.fromRGB(0, 0, 0)
        ThunderToggleUI.TextSize = 14.000
        ThunderToggleUI.Draggable = true
        ThunderToggleUI.MouseButton1Click:Connect(function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
        game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
        end)

        ThunderCornerUI.Name = "ThunderCornerUI"
        ThunderCornerUI.Parent = ThunderToggleUI

        ThunderImageUI.Name = "MODILEMAGE"
        ThunderImageUI.Parent = ThunderToggleUI
        ThunderImageUI.BackgroundColor3 = Color3.fromRGB(192,192,192)
        ThunderImageUI.BackgroundTransparency = 1.000
        ThunderImageUI.BorderSizePixel = 0
        ThunderImageUI.Position = UDim2.new(0.0, 0, 0.0, 0)
        ThunderImageUI.Size = UDim2.new(0, 50, 0, 50)
        ThunderImageUI.Image = "http://www.roblox.com/asset/?id="

local SOMEXHUB = {}
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local HttpService = game:GetService("HttpService")
local pfp
local user
local tag
local userinfo = {}

_G.Key = ""
_G.Discord = ""

if game.CoreGui:FindFirstChild(_G.Key .."," .. _G.Discord) then
   game.CoreGui:FindFirstChild(_G.Key .."," .. _G.Discord):Destroy()
end

pcall(function()
   userinfo = HttpService:JSONDecode(readfile(""));
end)

pfp = userinfo["pfp"] or "https://www.roblox.com/headshot-thumbnail/image?userId=".. game.Players.LocalPlayer.UserId .."&width=420&height=420&format=png"
user =  userinfo["user"] or game.Players.LocalPlayer.Name
tag = userinfo["tag"] or tostring(math.random(1,10))

local function SaveInfo()
   userinfo["pfp"] = pfp
   userinfo["user"] = user
   userinfo["tag"] = tag
   writefile("", HttpService:JSONEncode(userinfo));
end

local function MakeDraggable(topbarobject, object)
   local Dragging = nil
   local DragInput = nil
   local DragStart = nil
   local StartPosition = nil

   local function Update(input)
      local Delta = input.Position - DragStart
      local pos =
         UDim2.new(StartPosition.X.Scale,StartPosition.X.Offset + Delta.X,StartPosition.Y.Scale,StartPosition.Y.Offset + Delta.Y)
      local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
      Tween:Play()
   end

   topbarobject.InputBegan:Connect(
      function(input)
         if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            Dragging = true
            DragStart = input.Position
            StartPosition = object.Position

            input.Changed:Connect(function()
               if input.UserInputState == Enum.UserInputState.End then
                  Dragging = false
               end
            end)
         end
      end)

   topbarobject.InputChanged:Connect(
      function(input)
         if
            input.UserInputType == Enum.UserInputType.MouseMovement or
               input.UserInputType == Enum.UserInputType.Touch
         then
            DragInput = input
         end
      end)

   UserInputService.InputChanged:Connect(
      function(input)
         if input == DragInput and Dragging then
            Update(input)
         end
      end)
end

local Update = {}
local pfp = "https://www.roblox.com/headshot-thumbnail/image?userId=".. game.Players.LocalPlayer.UserId .."&width=420&height=420&format=png"

function Update:Window(text,logo,keybind)
	local uihide = false
	local abc = false
	local logo = logo or 12511245920
	local currentpage = ""
	local keybind = keybind or Enum.KeyCode.RightControl
	local yoo = string.gsub(tostring(keybind),"Enum.KeyCode.","")
	
	local PADOXHUB = Instance.new("ScreenGui")
	PADOXHUB.Name = "ZEN HUB By King's Hub"
	PADOXHUB.Parent = game.CoreGui
	PADOXHUB.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	local Main = Instance.new("Frame")
	Main.Name = "Main"
	Main.Parent = PADOXHUB
	Main.ClipsDescendants = true
	Main.AnchorPoint = Vector2.new(0.5,0.5)
	Main.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.Size = UDim2.new(0, 0, 0, 0)
	
	Main:TweenSize(UDim2.new(0, 530, 0, 330),"Out","Quad",0.4,true)

	local MCNR = Instance.new("UICorner")
	MCNR.Name = "MCNR"
	MCNR.Parent = Main

	local Top = Instance.new("Frame")
	Top.Name = "Top"
	Top.Parent = Main
	Top.BackgroundColor3 = Color3.fromRGB(20,20,20)
	Top.Size = UDim2.new(0, 530, 0, 63)

	local TCNR = Instance.new("UICorner")
	TCNR.Name = "TCNR"
	TCNR.Parent = Top

	local Logo = Instance.new("ImageLabel")
 Logo.Name = "Logo"
 Logo.Parent = Top
 Logo.BackgroundColor3 = Color3.fromRGB(224,224,224)
 Logo.BackgroundTransparency = 1.000
 Logo.Position = UDim2.new(-0.01, 0,-0.170, 0)
 Logo.Size = UDim2.new(0, 55,0, 45)
Logo.Image = "rbxassetid://"

	local Name = Instance.new("TextLabel")
	Name.Name = "Name"
	Name.Parent = Top
	Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Name.BackgroundTransparency = 1.000
	Name.Position = UDim2.new(0.0909756112, 0, 0, 0)
	Name.Size = UDim2.new(0, 61, 0, 27)
	Name.Font = Enum.Font.GothamSemibold
	Name.Text = text
	Name.TextColor3 = Color3.fromRGB(225, 225, 225)
	Name.TextSize = 17.000
	
	local Hub = Instance.new("TextLabel")
	Hub.Name = "Hub"
	Hub.Parent = Top
	Hub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hub.BackgroundTransparency = 1.000
	Hub.Position = UDim2.new(0, 150, 0, 0)
	Hub.Size = UDim2.new(0, 81, 0, 27)
	Hub.Font = Enum.Font.GothamSemibold
	Hub.Text = " Blox Fruit Update 19"
	Hub.TextColor3 = Color3.fromRGB(255, 0, 0)
	Hub.TextSize = 14.000
	Hub.TextXAlignment = Enum.TextXAlignment.Left

        spawn(function()
            while wait() do
                pcall(function()
                    wait(0.1) 
                    game:GetService('TweenService'):Create(
                        Name,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(255, 255, 255)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        Name,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(224, 224, 224)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        Name,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(192, 192, 192)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        Name,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(160, 160, 160)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        Name,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(128, 128, 128)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        Name,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(96, 96, 96)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        Name,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(64, 64, 64)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        Name,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(32, 32, 32)}
                    ):Play() 
                    wait(.5)
                end)
            end
        end)

	local ver1 = Instance.new("TextLabel")
	ver1.Name = "ver"
	ver1.Parent = Top
	ver1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ver1.BackgroundTransparency = 1.000
	ver1.Position = UDim2.new(0.640, 0, 0, 0)
	ver1.Size = UDim2.new(0, 80, 0, 27)
	ver1.Font = Enum.Font.GothamSemibold
	ver1.Text = "N/A"
	ver1.TextColor3 = Color3.fromRGB(255,0,0)
	ver1.TextSize = 13.000
	ver1.TextXAlignment = Enum.TextXAlignment.Left
    task.spawn(function()
	  while wait() do
	   ver1.Text = "[Time] : "..os.date("%H")..":"..os.date("%M")..":"..os.date("%S")
	end
end)

	local Ping = Instance.new("TextLabel")
	Ping.Name = "Ping"
	Ping.Parent = Top
	Ping.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Ping.BackgroundTransparency = 1.000
	Ping.Position = UDim2.new(0, 350,0, 30)
	Ping.Size = UDim2.new(0, 130, 0.01, 25)
	Ping.Font = Enum.Font.GothamSemibold
	Ping.Text = "N/A"
	Ping.TextColor3 = Color3.fromRGB(255,0,0)
	Ping.TextSize = 13.000
	Ping.TextXAlignment = Enum.TextXAlignment.Left

	local Fps = Instance.new("TextLabel")
	Fps.Name = "Fps"
	Fps.Parent = Top
	Fps.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Fps.BackgroundTransparency = 1.000
	Fps.Position = UDim2.new(0.850, 0,0, 0)
	Fps.Size = UDim2.new(0, 81, 0, 27)
	Fps.Font = Enum.Font.GothamSemibold
	Fps.Text = "N/A"
	Fps.TextColor3 = Color3.fromRGB(255,0,0)
	Fps.TextSize = 13.000
	Fps.TextXAlignment = Enum.TextXAlignment.Left

local Fps = Instance.new('LocalScript', Fps)
local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function(frame)
Fps.Parent.Text = ("[FPS] : "..math.round(1/frame)) 
end)

local Ping = Instance.new('LocalScript', Ping)
local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function(ping) 
Ping.Parent.Text = ("[Ping] : " ..game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(math.round(2/ping)))
end)
    local User = Instance.new("Frame")
    User.Name = "User"
    User.Parent = Top
    User.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    User.BackgroundTransparency = 1.000
    User.Position = UDim2.new(0, 0,0, 25)
    User.Size = UDim2.new(0, 125, 0, 40)
    
    local UserText = Instance.new("TextLabel")
    UserText.Name = "UserText"
    UserText.Parent = User
    UserText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UserText.BackgroundTransparency = 1.000
    UserText.Position = UDim2.new(0.4, 0,0, 10)
	UserText.TextColor3 = Color3.fromRGB(255, 255, 255)
    UserText.Size = UDim2.new(0, 80, 0, 20)
    UserText.Font = Enum.Font.GothamSemibold
    UserText.Text = tostring(game.Players.LocalPlayer.Name)
    UserText.TextScaled = true
    UserText.TextSize = 17.000
    UserText.TextWrapped = true
    UserText.TextXAlignment = Enum.TextXAlignment.Left
    
    local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
    UITextSizeConstraint.Parent = UserText
    UITextSizeConstraint.MaxTextSize = 17
    
    local UserImage = Instance.new("ImageLabel")
    UserImage.Name = "UserImage"
    UserImage.Parent = User
    UserImage.BackgroundTransparency = 0
    UserImage.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
    UserImage.Position = UDim2.new(0, 10, 0, 9)
    UserImage.Size = UDim2.new(0, 25, 0, 25)
    UserImage.Image = "https://www.roblox.com/headshot-thumbnail/image?userId="..game.Players.LocalPlayer.UserId.."&width=420&height=420&format=png"
    local UserImageCorner = Instance.new("UICorner")
   UserImageCorner.CornerRadius = UDim.new(0, 100)
    UserImageCorner.Name = "UserImageCorner"
    UserImageCorner.Parent = UserImage
    
	local timecock = Instance.new("TextButton")
	timecock.Parent = Top
	timecock.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	timecock.BackgroundTransparency = 1
	timecock.BorderSizePixel = 0
	timecock.Position = UDim2.new(0, 240,0, 44)
	timecock.AnchorPoint = Vector2.new(0.5, 0.5)
	timecock.Size = UDim2.new(0, 130, 0.01, 25)
	timecock.Font = Enum.Font.GothamSemibold
	timecock.Text = "N/Q"
	timecock.TextColor3 = Color3.fromRGB(255, 0, 0)
	timecock.TextSize = 13.000

    function setTime()
        local GameTime = math.floor(workspace.DistributedGameTime+0.5)
        local Hour = math.floor(GameTime/(60^2))%24
        local Minute = math.floor(GameTime/(60^1))%60
        local Second = math.floor(GameTime/(60^0))%60
        timecock.Text = ("Hr(s) : "..Hour.." Min(s) : "..Minute.." Sec(s) : "..Second)
    end
    
    spawn(function()
        while task.wait() do
            pcall(function()
                setTime()
            end)
        end
    end)
    
 local Tab = Instance.new("Frame")
 Tab.Name = "Tab"
 Tab.Parent = Main
 Tab.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
 Tab.Position = UDim2.new(0, 5, 0, 60)
 --Tab.CornerRadius = UDim.new(0,5)
 Tab.Size = UDim2.new(0, 0, 0, 0)
 --Tab.Size = UDim2.new(0, 150, 0, 365)
 
 --local TabCorner = Instance.new("UICorner")
 local TabCorner = Instance.new("UIListLayout")
 TabCorner.Name = "TabCorner"
 TabCorner.Parent = Tab
 TabCorner.SortOrder = Enum.SortOrder.LayoutOrder
 TabCorner.Padding = UDim.new(0, 15)
 
 local TCNR = Instance.new("UICorner")
 TCNR.Name = "TCNR"
 TCNR.Parent = Tab
 
 local ScrollTab = Instance.new("ScrollingFrame")
 ScrollTab.Name = "ScrollTab"
 ScrollTab.Parent = Tab
 ScrollTab.Active = true
 ScrollTab.BackgroundColor3 = Color3.fromRGB(224,224,224)
 ScrollTab.BackgroundTransparency = 1.000
 ScrollTab.Size = UDim2.new(0, 133, 0, 250)
 ScrollTab.CanvasSize = UDim2.new(0, 0, 0, 0)
 ScrollTab.ScrollBarThickness = 0
 
 local PLL = Instance.new("UIListLayout")
 PLL.Name = "PLL"
 PLL.Parent = ScrollTab
 PLL.SortOrder = Enum.SortOrder.LayoutOrder
 PLL.Padding = UDim.new(0, 15)
 
 local PPD = Instance.new("UIPadding")
 PPD.Name = "PPD"
 PPD.Parent = ScrollTab
 PPD.PaddingLeft = UDim.new(0, 10)
 PPD.PaddingTop = UDim.new(0, 10)
 
 local Page = Instance.new("Frame")
 Page.Name = "Page"
 Page.Parent = Main
 Page.BackgroundColor3 = Color3.fromRGB(35,35,35)
 Page.Position = UDim2.new(0.26, 0, 0.211050003, 0)
 Page.BackgroundTransparency = 1
 Page.Size = UDim2.new(0, 388, 0, 248)
 
 local PCNR = Instance.new("UICorner")
 PCNR.Name = "PCNR"
 PCNR.Parent = Page
 
 local MainPage = Instance.new("Frame")
 MainPage.Name = "MainPage"
 MainPage.Parent = Page
 MainPage.ClipsDescendants = true
 MainPage.BackgroundColor3 = Color3.fromRGB(224,224,224)
 MainPage.BackgroundTransparency = 1.000
 MainPage.Size = UDim2.new(0, 400, 0, 316)
 
 local PageList = Instance.new("Folder")
 PageList.Name = "PageList"
 PageList.Parent = MainPage
 
 local UIPageLayout = Instance.new("UIPageLayout")
 
 UIPageLayout.Parent = PageList
 UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
 UIPageLayout.EasingDirection = Enum.EasingDirection.InOut
 UIPageLayout.EasingStyle = Enum.EasingStyle.Quad
 UIPageLayout.FillDirection = Enum.FillDirection.Vertical
 UIPageLayout.Padding = UDim.new(0, 15)
 UIPageLayout.TweenTime = 0.400
 UIPageLayout.GamepadInputEnabled = false
 UIPageLayout.ScrollWheelInputEnabled = false
 UIPageLayout.TouchInputEnabled = false
 
 MakeDraggable(Top,Main)
 
 UserInputService.InputBegan:Connect(function(input)
  if input.KeyCode == Enum.KeyCode[yoo] then
  if uihide == false then
  uihide = true
  Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.4,true)
  else
   uihide = false
  Main:TweenSize(UDim2.new(0, 530, 0, 330),"Out","Quad",0.5,true)
  end
  end
  end)
 local uitab = {}
 
 function uitab:Tab(text,icon)
 local TabButton = Instance.new("TextButton")
 local TabImage = Instance.new("ImageLabel")
 TabButton.Parent = ScrollTab
 TabButton.Name = text.."Server"
 TabButton.Text = text
 TabButton.BackgroundColor3 = Color3.fromRGB(224,224,224)
 TabButton.BackgroundTransparency = 1.000
 TabButton.Size = UDim2.new(0, 125, 0, 23)
 TabButton.Font = Enum.Font.GothamSemibold
 TabButton.TextColor3 = Color3.fromRGB(225, 225, 225)
 TabButton.TextSize = 11.000
 TabButton.TextTransparency = 0.100
 
 local TabFrame = Instance.new("Frame")
 local UICornerFrame = Instance.new("UICorner")
 TabFrame.Name = "TabFrame"
 TabFrame.Parent = TabButton
 TabFrame.ClipsDescendants = true
 --TabFrame.Position = UDim2.new(0, 1, 0.1, 2)
 TabFrame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
 TabFrame.BackgroundTransparency = 0.500
 TabFrame.Size = UDim2.new(0, 118, 0.1, 23)
 UICornerFrame.CornerRadius = UDim.new(0,0)
 
local postog = Instance.new("UIStroke")
 
 postog.Name = "postog"
 postog.Parent = TabFrame
 postog.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 postog.Color = Color3.fromRGB(255,255,255)
 postog.LineJoinMode = Enum.LineJoinMode.Round
 postog.Thickness = 1
 postog.Transparency = 0.8
 postog.Enabled = true
 postog.Archivable = true
 
 UICornerFrame.Parent = TabFrame
 
 TabImage.Name = text or "TabImage"
 TabImage.Parent = TabFrame
 TabImage.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
 TabImage.BackgroundTransparency = 1.000
 TabImage.Position = UDim2.new(0, 0, 0, 0)
 TabImage.Size = UDim2.new(0, 20, 0, 20)
 TabImage.Image = "rbxassetid://"..tostring(icon)
 TabImage.ImageColor3 = Color3.fromRGB(225, 225, 225)
 
 local MainFramePage = Instance.new("ScrollingFrame")
 MainFramePage.Name = text.."_Page"
 MainFramePage.Parent = PageList
 MainFramePage.Active = true
 MainFramePage.BackgroundColor3 = Color3.fromRGB(224,224,224)
 MainFramePage.BackgroundTransparency = 1.000
 MainFramePage.BorderSizePixel = 0
 MainFramePage.Size = UDim2.new(0, 400, 0, 245)
 MainFramePage.CanvasSize = UDim2.new(0, 0, 0, 0)
 MainFramePage.ScrollBarThickness = 4
 
 local UIPadding = Instance.new("UIPadding")
 local UIListLayout = Instance.new("UIListLayout")
 
 UIPadding.Parent = MainFramePage
 UIPadding.PaddingLeft = UDim.new(0, 10)
 UIPadding.PaddingTop = UDim.new(0, 10)
 
 UIListLayout.Padding = UDim.new(0,15)
 UIListLayout.Parent = MainFramePage
 UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
 
  spawn(function()

        while wait() do

            pcall(function()

                wait(0.1) 

                game:GetService('TweenService'):Create(

                    postog,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),

                    {Color = Color3.fromRGB(255, 0, 0)}

                ):Play() 

                wait(.5)            

                game:GetService('TweenService'):Create(

                    postog,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),

                    {Color = Color3.fromRGB(255, 155, 0)}

                ):Play() 

                wait(.5)            

                game:GetService('TweenService'):Create(

                    postog,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),

                    {Color = Color3.fromRGB(255, 255, 0)}

                ):Play() 

                wait(.5)            

                game:GetService('TweenService'):Create(

                    postog,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),

                    {Color = Color3.fromRGB(0, 255, 0)}

                ):Play() 

                wait(.5)            

                game:GetService('TweenService'):Create(

                    postog,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),

                    {Color = Color3.fromRGB(0, 255, 255)}

                ):Play() 

                wait(.5)            

                game:GetService('TweenService'):Create(

                    postog,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),

                    {Color = Color3.fromRGB(0, 155, 255)}

                ):Play() 

                wait(.5)            

                game:GetService('TweenService'):Create(

                    postog,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),

                    {Color = Color3.fromRGB(255, 0, 255)}

                ):Play() 

                wait(.5)            

                game:GetService('TweenService'):Create(

                    postog,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),

                    {Color = Color3.fromRGB(255, 0, 155)}

                ):Play() 

                wait(.5)
                
            end)

        end

    end)
 
 TabButton.MouseButton1Click:Connect(function()
  for i,v in next, ScrollTab:GetChildren() do
  if v:IsA("TextButton") then
  TweenService:Create(
   v,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    TextTransparency = 0.5
   }
  ):Play()
  end
  TweenService:Create(
   TabButton,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    TextTransparency = 0
   }
  ):Play()
  end
  for i,v in next, PageList:GetChildren() do
  currentpage = string.gsub(TabButton.Name,"Server","").."_Page"
  if v.Name == currentpage then
  UIPageLayout:JumpTo(v)
  end
  end
  end)
 
 if abc == false then
 for i,v in next, ScrollTab:GetChildren() do
 if v:IsA("TextButton") then
 TweenService:Create(
  v,
  TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
  {
   TextTransparency = 0.5
  }
 ):Play()
 end
 TweenService:Create(
  TabButton,
  TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
  {
   TextTransparency = 0
  }
 ):Play()
 end
 UIPageLayout:JumpToIndex(1)
 abc = true
 end
 
 game:GetService("RunService").Stepped:Connect(function()
  pcall(function()
   MainFramePage.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 20)
   ScrollTab.CanvasSize = UDim2.new(0,0,0,PLL.AbsoluteContentSize.Y + 20)
   end)
 end)

local main = {}
 function main:Button(text,callback)
 local Button = Instance.new("Frame")
 local UICorner = Instance.new("UICorner")
 local TextBtn = Instance.new("TextButton")
 local UICorner_2 = Instance.new("UICorner")
 local Black = Instance.new("Frame")
 local UICorner_3 = Instance.new("UICorner")
 
 Button.Name = "Button"
 Button.Parent = MainFramePage
 Button.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
 Button.BackgroundTransparency = 1
 Button.Size = UDim2.new(0, 370, 0, 31)
 
 UICorner.CornerRadius = UDim.new(0, 5)
 UICorner.Parent = Button
 
 TextBtn.Name = "TextBtn"
 TextBtn.Parent = Button
 TextBtn.BackgroundColor3 = Color3.fromRGB(244,244,244)
 TextBtn.BackgroundTransparency = 0.500
 TextBtn.Position = UDim2.new(0, 1, 0, 1)
 TextBtn.Size = UDim2.new(0, 368, 0, 29)
 TextBtn.AutoButtonColor = false
 TextBtn.Font = Enum.Font.GothamSemibold
 TextBtn.Text = text
 TextBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
 TextBtn.TextSize = 12.000
 
 UICorner_2.CornerRadius = UDim.new(0, 5)
 UICorner_2.Parent = TextBtn
 
 Black.Name = "Black"
 Black.Parent = Button
 Black.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
 Black.BackgroundTransparency = 1.000
 Black.BorderSizePixel = 0
 Black.Position = UDim2.new(0, 1, 0, 1)
 Black.Size = UDim2.new(0, 370, 0, 29)
 
 UICorner_3.CornerRadius = UDim.new(0, 5)
 UICorner_3.Parent = Black
 
 
 
 TextBtn.MouseEnter:Connect(function()
  TweenService:Create(
   Black,
   TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    BackgroundTransparency = 0.7
   }
  ):Play()
  end)
 TextBtn.MouseLeave:Connect(function()
  TweenService:Create(
   Black,
   TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    BackgroundTransparency = 1
   }
  ):Play()
  end)
 TextBtn.MouseButton1Click:Connect(function()
  TextBtn.TextSize = 0
  TweenService:Create(
   TextBtn,
   TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    TextSize = 12
   }
  ):Play()
  callback()
  end)
 end
 function main:Toggle(TogInfo,default,callback)
 local toggle = false
 local CheckFrame = Instance.new("Frame")
 local CheckFrame2 = Instance.new("Frame")
 local UIListLayout = Instance.new("UIListLayout")
 local UICorner = Instance.new("UICorner")
 local ImageLabel = Instance.new("ImageLabel")
 local Space = Instance.new("TextLabel")
 local Title = Instance.new("TextLabel")
 local ImageButton = Instance.new("ImageButton")
 
 -- Prop --
 CheckFrame.Name = TogInfo or "CheckFrame"
 CheckFrame.Parent = MainFramePage
 CheckFrame.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
 CheckFrame.BackgroundTransparency = 1.000
 CheckFrame.BorderSizePixel = 0
 CheckFrame.Size = UDim2.new(0, 38, 0, 30)
 
 CheckFrame2.Name = "CheckFrame2"
 CheckFrame2.Parent = CheckFrame
 CheckFrame2.BackgroundColor3 = Color3.fromRGB(30,30,30)
 CheckFrame2.BackgroundTransparency = 1
 CheckFrame2.BorderSizePixel = 0
 CheckFrame2.Position = UDim2.new(0, 3, 0, 0)
 CheckFrame2.Size = UDim2.new(0, 370, 0, 30)

local postog12 = Instance.new("UIStroke")
 
 postog12.Name = "UIStroke"
 postog12.Parent = CheckFrame2
 postog12.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 postog12.Color = Color3.fromRGB(255,255,255)
 postog12.LineJoinMode = Enum.LineJoinMode.Round
 postog12.Thickness = 1
 postog12.Transparency = 0.8
 postog12.Enabled = true
 postog12.Archivable = true
 
 
 UICorner.Parent = CheckFrame2
 UICorner.CornerRadius = UDim.new(0, 0)
 
 ImageLabel.Name = "ImageLabel"
 ImageLabel.Parent = CheckFrame2
 ImageLabel.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
 ImageLabel.BackgroundTransparency = 1.000
 ImageLabel.BorderSizePixel = 0
 ImageLabel.Position = UDim2.new(-0.018, 0,-0.252, 0)
 ImageLabel.Size = UDim2.new(0, 45,0, 45)
 ImageLabel.Image = "rbxassetid://"
 ImageLabel.ImageColor3 = Color3.fromRGB(224,224,224)
 
 Space.Name = "Space"
 Space.Parent = CheckFrame2
 Space.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
 Space.BackgroundTransparency = 1.000
 Space.Position = UDim2.new(0, 30, 0, 0)
 Space.Size = UDim2.new(0, 15, 0, 30)
 Space.Font = Enum.Font.GothamSemibold
 Space.Text = "|"
 Space.TextSize = 12.000
 Space.TextColor3 = Color3.fromRGB(255,225,225)
 Space.TextXAlignment = Enum.TextXAlignment.Center
 
 Title.Name = "Title"
 Title.Parent = CheckFrame2
 Title.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
 Title.BackgroundTransparency = 1.000
 Title.Position = UDim2.new(0, 50, 0, 0)
 Title.Size = UDim2.new(0, 280, 0, 30)
 Title.Font = Enum.Font.GothamSemibold
 Title.Text = TogInfo or "checkBox Title"
 Title.TextColor3 = Color3.fromRGB(224,224,224)
 Title.TextSize = 12.000
 Title.TextXAlignment = Enum.TextXAlignment.Left
 
 ImageButton.Name = "ImageButton"
 ImageButton.Parent = CheckFrame2
 ImageButton.BackgroundColor3 = Color3.fromRGB(224,224,224)
 ImageButton.BackgroundTransparency = 1.000
 ImageButton.Position = UDim2.new(0, 340, 0, 4)
 ImageButton.Size = UDim2.new(0, 23, 0, 23)
 ImageButton.ZIndex = 2
 ImageButton.Image = "rbxassetid://3926311105"
 ImageButton.ImageColor3 = Color3.fromRGB(224,224,224)
 ImageButton.ImageRectOffset = Vector2.new(940, 784)
 ImageButton.ImageRectSize = Vector2.new(48, 48)
 
 -- Toggle Script --
 
 if default == true then
 ImageButton.ImageRectOffset = Vector2.new(4, 836)
 game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
  {
   ImageColor3 = Color3.fromRGB(255,225,225)}
 ):Play()
 toggle = not toggle
 pcall(callback, toggle)
 end
 
 ImageButton.MouseButton1Click:Connect(function()
  if toggle == false then
  game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
   {
    ImageColor3 = Color3.fromRGB(255,225,225)}
  ):Play()
  ImageButton.ImageRectOffset = Vector2.new(4, 836)
  else
   game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
   {
    ImageColor3 = Color3.fromRGB(224,224,224)}
  ):Play()
  ImageButton.ImageRectOffset = Vector2.new(940, 784)
  end
  toggle = not toggle
  pcall(callback, toggle)
  end)
 end

 
function main:Dropdown(text,option,callback)
 local isdropping = false
 local Dropdown = Instance.new("Frame")
 local UICorner = Instance.new("UICorner")
 local DropTitle = Instance.new("TextLabel")
 local DropScroll = Instance.new("ScrollingFrame")
 local UIListLayout = Instance.new("UIListLayout")
 local UIPadding = Instance.new("UIPadding")
 local DropButton = Instance.new("TextButton")
 local DropImage = Instance.new("ImageLabel")
 local posto1 = Instance.new("UIStroke")
 
 Dropdown.Name = "Dropdown"
 Dropdown.Parent = MainFramePage
 Dropdown.BackgroundColor3 = Color3.fromRGB(28,28,28)
 Dropdown.BackgroundTransparency = 1
 Dropdown.ClipsDescendants = true
 Dropdown.Size = UDim2.new(0, 370, 0, 31)
 
 posto1.Name = "posto"
 posto1.Parent = Dropdown
 posto1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 posto1.Color = Color3.fromRGB(255,255,255)
 posto1.LineJoinMode = Enum.LineJoinMode.Round
 posto1.Thickness = 1
 posto1.Transparency = 0.8
 posto1.Enabled = true
 posto1.Archivable = true
 
 UICorner.CornerRadius = UDim.new(0, 0)
 UICorner.Parent = Dropdown
 
 DropTitle.Name = "DropTitle"
 DropTitle.Parent = Dropdown
 DropTitle.BackgroundColor3 = Color3.fromRGB(224,224,224)
 DropTitle.BackgroundTransparency = 1.000
 DropTitle.Size = UDim2.new(0, 370, 0, 31)
 DropTitle.Font = Enum.Font.GothamSemibold
 DropTitle.Text = text.. " : "
 DropTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
 DropTitle.TextSize = 12.000
 
 DropScroll.Name = "DropScroll"
 DropScroll.Parent = DropTitle
 DropScroll.Active = true
 DropScroll.BackgroundColor3 = Color3.fromRGB(224,224,224)
 DropScroll.BackgroundTransparency = 1.000
 DropScroll.BorderSizePixel = 0
 DropScroll.Position = UDim2.new(0, 0, 0, 31)
 DropScroll.Size = UDim2.new(0, 370, 0, 100)
 DropScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
 DropScroll.ScrollBarThickness = 3
 
 UIListLayout.Parent = DropScroll
 UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
 UIListLayout.Padding = UDim.new(0, 5)
 
 UIPadding.Parent = DropScroll
 UIPadding.PaddingLeft = UDim.new(0, 5)
 UIPadding.PaddingTop = UDim.new(0, 5)
 
 DropImage.Name = "DropImage"
 DropImage.Parent = Dropdown
 DropImage.BackgroundColor3 = Color3.fromRGB(224,224,224)
 DropImage.BackgroundTransparency = 1.000
 DropImage.Position = UDim2.new(0, 320, 0, 6)
 DropImage.Rotation = 180.000
 DropImage.Size = UDim2.new(0, 20, 0, 20)
 DropImage.Image = "rbxassetid://6031090990"
 
 DropButton.Name = "DropButton"
 DropButton.Parent = Dropdown
 DropButton.BackgroundColor3 = Color3.fromRGB(224,224,224)
 DropButton.BackgroundTransparency = 1.000
 DropButton.Size = UDim2.new(0, 370, 0, 31)
 DropButton.Font = Enum.Font.SourceSans
 DropButton.Text = ""
 DropButton.TextColor3 = Color3.fromRGB(0, 0, 0)
 DropButton.TextSize = 14.000
 
 for i,v in next,option do
 local Item = Instance.new("TextButton")
 
 Item.Name = "Item"
 Item.Parent = DropScroll
 Item.BackgroundColor3 = Color3.fromRGB(224,224,224)
 Item.BackgroundTransparency = 1.000
 Item.Size = UDim2.new(0, 370, 0, 26)
 Item.Font = Enum.Font.GothamSemibold
 Item.Text = tostring(v)
 Item.TextColor3 = Color3.fromRGB(225, 225, 225)
 Item.TextSize = 13.000
 Item.TextTransparency = 0.500
 
 Item.MouseEnter:Connect(function()
  TweenService:Create(
   Item,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    TextTransparency = 0
   }
  ):Play()
  end)
 
 Item.MouseLeave:Connect(function()
  TweenService:Create(
   Item,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    TextTransparency = 0.5
   }
  ):Play()
  end)
 
 Item.MouseButton1Click:Connect(function()
  isdropping = false
  Dropdown:TweenSize(UDim2.new(0,370,0,31),"Out","Quad",0.3,true)
  TweenService:Create(
   DropImage,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    Rotation = 180
   }
  ):Play()
  callback(Item.Text)
  DropTitle.Text = text.." : "..Item.Text
  end)
 end
 
 DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)
 
 DropButton.MouseButton1Click:Connect(function()
  if isdropping == false then
  isdropping = true
  Dropdown:TweenSize(UDim2.new(0,370,0,131),"Out","Quad",0.3,true)
  TweenService:Create(
   DropImage,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    Rotation = 0
   }
  ):Play()
  else
   isdropping = false
  Dropdown:TweenSize(UDim2.new(0,370,0,31),"Out","Quad",0.3,true)
  TweenService:Create(
   DropImage,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    Rotation = 180
   }
  ):Play()
  end
  end)
 
 local dropfunc = {}
 function dropfunc:Add(t)
 local Item = Instance.new("TextButton")
 Item.Name = "Item"
 Item.Parent = DropScroll
 Item.BackgroundColor3 = Color3.fromRGB(224,224,224)
 Item.BackgroundTransparency = 1.000
 Item.Size = UDim2.new(0, 370, 0, 26)
 Item.Font = Enum.Font.GothamSemibold
 Item.Text = tostring(t)
 Item.TextColor3 = Color3.fromRGB(225, 225, 225)
 Item.TextSize = 13.000
 Item.TextTransparency = 0.500
 
 Item.MouseEnter:Connect(function()
  TweenService:Create(
   Item,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    TextTransparency = 0
   }
  ):Play()
  end)
 
 Item.MouseLeave:Connect(function()
  TweenService:Create(
   Item,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    TextTransparency = 0.5
   }
  ):Play()
  end)
 
 Item.MouseButton1Click:Connect(function()
  isdropping = false
  Dropdown:TweenSize(UDim2.new(0,370,0,31),"Out","Quad",0.3,true)
  TweenService:Create(
   DropImage,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    Rotation = 180
   }
  ):Play()
  callback(Item.Text)
  DropTitle.Text = text.." : "..Item.Text
  end)
 end
 function dropfunc:Clear()
 DropTitle.Text = tostring(text).." : "
 isdropping = false
 Dropdown:TweenSize(UDim2.new(0,370,0,31),"Out","Quad",0.3,true)
 TweenService:Create(
  DropImage,
  TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
  {
   Rotation = 180
  }
 ):Play()
 for i,v in next, DropScroll:GetChildren() do
 if v:IsA("TextButton") then
 v:Destroy()
 end
 end
 end
 return dropfunc
 end
 
function main:Slider1(slidertitle, min, max, start, callback)
local slider1func = {}
local SliderFrame = Instance.new("Frame")
local SliderFrame_2 = Instance.new("Frame")
local UIStroke = Instance.new("UIStroke")
local UICorner = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local Space = Instance.new("TextLabel")
local Title = Instance.new("TextLabel")
local SliderInput = Instance.new("Frame")
local SliderButton = Instance.new("Frame")
local SliderCount = Instance.new("Frame")
local SliderCorner = Instance.new("UICorner")
local SliderCorner2 = Instance.new("UICorner")
local BoxFrame = Instance.new("Frame")
local SliderBox = Instance.new("TextBox")
local SliderStroke = Instance.new("UIStroke")
local Title_2 = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local UICorner_3 = Instance.new("UICorner")

-- Prop --
SliderFrame.Name = slidertitle or "SliderFrame"
SliderFrame.Parent = MainFramePage
SliderFrame.BackgroundColor3 = Color3.fromRGB(28,28,28)
SliderFrame.BackgroundTransparency = 1.000
SliderFrame.BorderSizePixel = 0
SliderFrame.Size = UDim2.new(0, 355, 0, 55)

SliderFrame_2.Name = "SliderFrame_2"
SliderFrame_2.Parent = SliderFrame
SliderFrame_2.BackgroundColor3 = Color3.fromRGB(28,28,28)
SliderFrame_2.BackgroundTransparency = 1
SliderFrame_2.BorderSizePixel = 0
SliderFrame_2.Position = UDim2.new(0, 3, 0, 0)
SliderFrame_2.Size = UDim2.new(0, 370, 0, 55)

UIStroke.Name = "UIStroke"
UIStroke.Parent = SliderFrame_2
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Color = Color3.fromRGB(255,255,255)
UIStroke.LineJoinMode = Enum.LineJoinMode.Round
UIStroke.Thickness = 1
UIStroke.Transparency = 0.8
UIStroke.Enabled = true
UIStroke.Archivable = true

UICorner.Parent = SliderFrame_2
UICorner.CornerRadius = UDim.new(0, 0)

ImageLabel.Name = "ImageLabel"
ImageLabel.Parent = SliderFrame_2
ImageLabel.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0, -5, 0, -5)
ImageLabel.Size = UDim2.new(0, 45, 0, 45)
ImageLabel.Image = "rbxassetid://"
ImageLabel.ImageColor3 = Color3.fromRGB(224,224,224)

Space.Name = "Space"
Space.Parent = SliderFrame_2
Space.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
Space.BackgroundTransparency = 1.000
Space.Position = UDim2.new(0, 30, 0, 0)
Space.Size = UDim2.new(0, 15, 0, 30)
Space.Font = Enum.Font.GothamSemibold
Space.Text = "|"
Space.TextSize = 15.000
Space.TextColor3 = Color3.fromRGB(224,224,224)
Space.TextXAlignment = Enum.TextXAlignment.Center

Title.Name = "Title"
Title.Parent = SliderFrame_2
Title.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0, 50, 0, 0)
Title.Size = UDim2.new(0, 280, 0, 30)
Title.Font = Enum.Font.GothamSemibold
Title.Text = slidertitle or "Slider Title"
Title.TextColor3 = Color3.fromRGB(224,224,224)
Title.TextSize = 12.000
Title.TextXAlignment = Enum.TextXAlignment.Left

SliderInput.Name = "SliderInput"
SliderInput.Parent = SliderFrame_2
SliderInput.BackgroundColor3 = Color3.fromRGB(224,224,224)
SliderInput.BackgroundTransparency = 0.7
SliderInput.BorderSizePixel = 0
SliderInput.Position = UDim2.new(0, 8, 0, 37)
SliderInput.Size = UDim2.new(0, 355, 0, 4)

SliderCorner2.CornerRadius = UDim.new(0, 100000)
SliderCorner2.Parent = SliderInput

SliderButton.Name = "SliderButton"
SliderButton.Parent = SliderInput
SliderButton.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
SliderButton.BackgroundTransparency = 1.000
SliderButton.BorderSizePixel = 0
SliderButton.Position = UDim2.new(0, 0, 0, -7)
SliderButton.Size = UDim2.new(0, 355, 0, 25)

SliderCount.Name = "SliderCount"
SliderCount.Parent = SliderButton
SliderCount.BackgroundColor3 = Color3.fromRGB(224,224,224)
SliderCount.BackgroundTransparency = 0.3
SliderCount.BorderSizePixel = 0
SliderCount.Position = UDim2.new(0,start,0,0)
SliderCount.Size = UDim2.new(0, 18, 0, 18)

Title_2.Name = "Title_2"
Title_2.Parent = SliderButton
Title_2.AnchorPoint = Vector2.new(0, 0)
Title_2.BackgroundColor3 = Color3.fromRGB(224,224,224)
Title_2.AutoButtonColor = false
Title_2.BackgroundTransparency = 1.000
Title_2.Position = UDim2.new(0,start,0,0)
Title_2.Size = UDim2.new(0, 18, 0, 18)
Title_2.Font = Enum.Font.GothamSemibold
Title_2.Text = tostring(start and math.floor((start / max) * (max - min) + min) or 0)
Title_2.TextColor3 = Color3.fromRGB(224,224,224)
Title_2.TextSize = 8.000
Title_2.TextXAlignment = Enum.TextXAlignment.Center

UICorner_2.Parent = Title_2
UICorner_2.CornerRadius = UDim.new(0, 100000)

SliderCorner.CornerRadius = UDim.new(0, 100000)
SliderCorner.Parent = SliderCount

SliderStroke.Name = "SliderStroke"
SliderStroke.Parent = BoxFrame
SliderStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
SliderStroke.Color = Color3.fromRGB(255,255,255)
SliderStroke.LineJoinMode = Enum.LineJoinMode.Round
SliderStroke.Thickness = 1
SliderStroke.Transparency = 0.8
SliderStroke.Enabled = true
SliderStroke.Archivable = true

BoxFrame.Name = "BoxFrame"
BoxFrame.Parent = SliderFrame_2
BoxFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
BoxFrame.BackgroundTransparency = 1.000
BoxFrame.Size = UDim2.new(0, 50, 0, 15)
BoxFrame.Position = UDim2.new(0, 300, 0, 8)

SliderBox.Name = "SliderBox"
SliderBox.Parent = BoxFrame
SliderBox.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
SliderBox.BackgroundTransparency = 1.000
SliderBox.Position = UDim2.new(0, 0, 0, 1.65)
SliderBox.Size = UDim2.new(0, 50, 0, 15)
SliderBox.ClearTextOnFocus = false
SliderBox.Font = Enum.Font.GothamSemibold
SliderBox.Text = tostring(start and math.floor((start / max) * (max - min) + min) or 0)
SliderBox.TextColor3 = Color3.fromRGB(224,224,224)
SliderBox.TextSize = 9.000
SliderBox.TextTransparency = 0
SliderBox.TextXAlignment = Enum.TextXAlignment.Center
SliderBox.TextEditable = true

UICorner_3.Parent = BoxFrame
UICorner_3.CornerRadius = UDim.new(0, 2)

-- Slider Script --
local dragging
local SliderButtonStart
local SliderButtonInput
local slide = SliderButton

local function slide(input)
local slidein = UDim2.new(math.clamp((input.Position.X - SliderButton.AbsolutePosition.X) / SliderButton.AbsoluteSize.X, 0, 1), 0, 0, 0)
SliderCount:TweenPosition(slidein, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.08, true)
Title_2:TweenPosition(slidein, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.12, true)
local Value = math.floor(((slidein.X.Scale * max) / max) * (max - min) + min)
SliderBox.Text = tostring(Value)
Title_2.Text = tostring(Value)
pcall(callback, Value, slidein)
end

SliderButton.InputBegan:Connect(function(input)
 if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
 dragging = true
 SliderButtonInput = input
 SliderButtonStart = input.Position.X
 slidein = SliderButton.AbsolutePosition.X
 game.TweenService:Create(SliderCount, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
  BackgroundTransparency = 0, Size = UDim2.new(0, 14, 0, 14)}):Play()
 game.TweenService:Create(Title_2, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
  AnchorPoint = Vector2.new(0.22, 0.8), TextSize = 13.000, BackgroundTransparency = 0, Size = UDim2.new(0, 25, 0, 25)}):Play()
 game.TweenService:Create(SliderBox, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
  TextTransparency = 0
 }):Play()
 game.TweenService:Create(SliderInput, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
  BackgroundTransparency = 0.5
 }):Play()
 game.TweenService:Create(SliderStroke, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
  Transparency = 0
 }):Play()
 end
 input.Changed:Connect(function(input)
  if input.UserInputType == Enum.UserInputState.End then
  dragging = false

  end
  end)
 end)
SliderButton.InputEnded:Connect(function(input)
 if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
 dragging = false
 SliderButtonInput = input
 game.TweenService:Create(SliderCount, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
  BackgroundTransparency = 0.3, Size = UDim2.new(0, 18, 0, 18)}):Play()
 game.TweenService:Create(Title_2, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
  AnchorPoint = Vector2.new(0, 0), TextSize = 8.000, BackgroundTransparency = 1.000, Size = UDim2.new(0, 18, 0, 18)}):Play()
 game.TweenService:Create(SliderBox, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
  TextTransparency = 0.5
 }):Play()
 game.TweenService:Create(SliderInput, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
  BackgroundTransparency = 0.7
 }):Play()
 game.TweenService:Create(SliderStroke, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
  Transparency = 0.5
 }):Play()
 end
 end)
UserInputService.InputChanged:Connect(function(input)
 if input == SliderButtonInput and dragging then
 slide(input)
 end
 end)

function set(property)
if property == "Text" then
if tonumber(SliderBox.Text) then
if tonumber(SliderBox.Text) <= max then
Value = SliderBox.Text
Title_2.Text = SliderBox.Text
SliderCount:TweenPosition(UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
Title_2:TweenPosition(UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
pcall(function()
 callback(Value)
 end)
end
if tonumber(SliderBox.Text) > max then
SliderBox.Text = max
Title_2.Text = max
Value = max
SliderCount:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
Title_2:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
pcall(function()
 callback(Value)
 end)
end
if tonumber(SliderBox.Text) >= min then
Value = SliderBox.Text
Title_2.Text = SliderBox.Text
SliderCount:TweenPosition(UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
Title_2:TweenPosition(UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
pcall(function()
 callback(Value)
 end)
end
if tonumber(SliderBox.Text) < min then
Value = min
Title_2 = min
SliderCount.Position = UDim2.new(((min or min) - min) / (max - min), 0, 0, 0)
Title_2.Position = UDim2.new(((min or min) - min) / (max - min), 0, 0, 0)
pcall(function()
 callback(Value)
 end)
end
else
 SliderBox.Text = "" or Value
Title_2.Text = Value
end
end
end

SliderBox.Focused:Connect(function()
 SliderBox.Changed:Connect(set)
 end)

SliderBox.FocusLost:Connect(function(enterP)
 if not enterP then
 if SliderBox.Text == "" then
 SliderBox.Text = min
 Title_2.Text = min
 Value = min
 SliderCount:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
 Title_2:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
 pcall(function()
  callback(Value)
  end)
 end
 if tonumber(SliderBox.Text) > tonumber(max) then
 Value = max
 SliderBox.Text = max
 Title_2.Text = max
 SliderCount:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
 Title_2:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
 pcall(function()
  callback(Value)
  end)
 else
  Value = tonumber(SliderBox.Text)
 end
 if tonumber(SliderBox.Text) < min then
 SliderBox.Text = min
 Title_2.Text = min
 Value = min
 SliderCount:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
 Title_2:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
 pcall(function()
  callback(Value)
  end)
 else
  Value = tonumber(SliderBox.Text)
 end
 end
 if tonumber(SliderBox.Text) > max then
 SliderBox.Text = max
 Title_2.Text = max
 Value = max
 SliderCount:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
 Title_2:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
 pcall(function()
  callback(Value)
  end)
 else
  Value = tonumber(SliderBox.Text)
 end
 if tonumber(SliderBox.Text) < min then
 SliderBox.Text = min
 Title_2.Text = min
 Value = min
 SliderCount.Position = UDim2.new(((min) - min) / (max - min), 0, 0, 0)
 Title_2.Position = UDim2.new(((min) - min) / (max - min), 0, 0, 0)
 pcall(function()
  callback(Value)
  end)
 else
  Value = tonumber(SliderBox.Text)
 end
 if SliderBox.Text == "" then
 SliderBox.Text = min
 Title_2.Text = min
 Value = min
 SliderCount:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
 Title_2:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
 pcall(function()
  callback(Value)
  end)
 end
 end)
return sliderfunc
end

 _G.BGColor_1 = Color3.fromRGB(30,30,30)
 _G.BGColor_2 = Color3.fromRGB(20, 20, 20)
 _G.WindowBackgroundColor = Color3.fromRGB(12,12,12)
 _G.BackgroundItemColor = Color3.fromRGB(20, 20, 20)
 _G.TabWindowColor = Color3.fromRGB(30, 30, 30)
 _G.ContainerColor = Color3.fromRGB(30, 30, 30)
 _G.TitleTextColor = Color3.fromRGB(150, 150, 150)
 _G.ImageColor = Color3.fromRGB(150, 150, 150)
 _G.LineThemeColor = Color3.fromRGB(150, 150, 150)
 _G.TabTextColor = Color3.fromRGB(150, 150, 150)
 _G.TabImageColor = Color3.fromRGB(150, 150, 150)
 _G.TabThemeColor = Color3.fromRGB(250, 0, 0)
 _G.SectionColor = Color3.fromRGB(150, 150, 150)
 _G.SectionImageColor = Color3.fromRGB(150, 150, 150)
 _G.SectionTextColor = Color3.fromRGB(150, 150, 150)
 _G.SectionOn = Color3.fromRGB(0, 250, 0)
 
 function main:Slider(text,min,max,set,callback)
 local Slider = Instance.new("Frame")
 local slidercorner = Instance.new("UICorner")
 local sliderr = Instance.new("Frame")
 local sliderrcorner = Instance.new("UICorner")
 local SliderLabel = Instance.new("TextLabel")
 local HAHA = Instance.new("Frame")
 local AHEHE = Instance.new("TextButton")
 local bar = Instance.new("Frame")
 local bar1 = Instance.new("Frame")
 local bar1corner = Instance.new("UICorner")
 local barcorner = Instance.new("UICorner")
 local circlebar = Instance.new("Frame")
 local UICorner = Instance.new("UICorner")
 local slidervalue = Instance.new("Frame")
 local valuecorner = Instance.new("UICorner")
 local TextBox = Instance.new("TextBox")
 local UICorner_2 = Instance.new("UICorner")
 local posto = Instance.new("UIStroke")
 
 Slider.Name = "Slider"
 Slider.Parent = MainFramePage
 Slider.BackgroundColor3 = Color3.fromRGB(255,255,255)
 Slider.BackgroundTransparency = 0.8
 Slider.Size = UDim2.new(0, 370, 0, 51)
 
 slidercorner.CornerRadius = UDim.new(0, 5)
 slidercorner.Name = "slidercorner"
 slidercorner.Parent = Slider
 
 sliderr.Name = "sliderr"
 sliderr.Parent = Slider
 sliderr.BackgroundTransparency = 0
 sliderr.BackgroundColor3 = Color3.fromRGB(30,30,30)
 sliderr.Position = UDim2.new(0, 1, 0, 1)
 sliderr.Size = UDim2.new(0, 368, 0, 49)
 
 sliderrcorner.CornerRadius = UDim.new(0, 5)
 sliderrcorner.Name = "sliderrcorner"
 sliderrcorner.Parent = sliderr
 
 SliderLabel.Name = "SliderLabel"
 SliderLabel.Parent = sliderr
 SliderLabel.BackgroundColor3 = Color3.fromRGB(224,224,224)
 SliderLabel.BackgroundTransparency = 1.000
 SliderLabel.Position = UDim2.new(0, 15, 0, 0)
 SliderLabel.Size = UDim2.new(0, 180, 0, 26)
 SliderLabel.Font = Enum.Font.GothamSemibold
 SliderLabel.Text = text
 SliderLabel.TextColor3 = Color3.fromRGB(224,224,224)
 SliderLabel.TextSize = 12.000
 SliderLabel.TextTransparency = 0
 SliderLabel.TextXAlignment = Enum.TextXAlignment.Left
 
 HAHA.Name = "HAHA"
 HAHA.Parent = sliderr
 HAHA.BackgroundColor3 = Color3.fromRGB(224,224,224)
 HAHA.BackgroundTransparency = 1.000
 HAHA.Size = UDim2.new(0, 355, 0, 29)
 
 AHEHE.Name = "AHEHE"
 AHEHE.Parent = sliderr
 AHEHE.BackgroundColor3 = Color3.fromRGB(224,224,224)
 AHEHE.BackgroundTransparency = 1.000
 AHEHE.Position = UDim2.new(0, 10, 0, 35)
 AHEHE.Size = UDim2.new(0, 355, 0, 5)
 AHEHE.Font = Enum.Font.SourceSans
 AHEHE.Text = ""
 AHEHE.TextColor3 = Color3.fromRGB(0, 0, 0)
 AHEHE.TextSize = 14.000
 
 bar.Name = "bar"
 bar.Parent = AHEHE
 bar.BackgroundColor3 = _G.BGColor_2
 bar.Size = UDim2.new(0, 355, 0, 5)
 
 bar1.Name = "bar1"
 bar1.Parent = bar
 bar1.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
 bar1.BackgroundTransparency = 0
 bar1.Size = UDim2.new(set/max, 0, 0, 5)
 
 bar1corner.CornerRadius = UDim.new(0, 5)
 bar1corner.Name = "bar1corner"
 bar1corner.Parent = bar1
 
 barcorner.CornerRadius = UDim.new(0, 5)
 barcorner.Name = "barcorner"
 barcorner.Parent = bar
 
 circlebar.Name = "circlebar"
 circlebar.Parent = bar1
 circlebar.BackgroundColor3 = Color3.fromRGB(224,224,224)
 circlebar.Position = UDim2.new(1, -2, 0, -3)
 circlebar.Size = UDim2.new(0, 10, 0, 10)
 
 UICorner.CornerRadius = UDim.new(0, 100)
 UICorner.Parent = circlebar
 
 slidervalue.Name = "slidervalue"
 slidervalue.Parent = sliderr
 slidervalue.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
 slidervalue.BackgroundTransparency = 1
 slidervalue.Position = UDim2.new(0, 300, 0, 5)
 slidervalue.Size = UDim2.new(0, 65, 0, 18)
 
 valuecorner.CornerRadius = UDim.new(0, 5)
 valuecorner.Name = "valuecorner"
 valuecorner.Parent = slidervalue
 
 TextBox.Parent = slidervalue
 TextBox.BackgroundColor3 = _G.BGColor_2
 TextBox.Position = UDim2.new(0, 0, 0, 0)
 TextBox.Size = UDim2.new(0, 60, 0, 20)
 TextBox.Font = Enum.Font.GothamSemibold
 TextBox.TextColor3 = Color3.fromRGB(224,224,224)
 TextBox.TextSize = 9.000
 TextBox.Text = set
 TextBox.TextTransparency = 0
 
 posto.Name = "posto"
 posto.Parent = TextBox
 posto.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 posto.Color = Color3.fromRGB(224,224,224)
 posto.LineJoinMode = Enum.LineJoinMode.Round
 posto.Thickness = 1
 posto.Transparency = 0
 posto.Enabled = true
 posto.Archivable = true
 
 UICorner_2.CornerRadius = UDim.new(0, 5)
 UICorner_2.Parent = TextBox
 
 local mouse = game.Players.LocalPlayer:GetMouse()
 local uis = game:GetService("UserInputService")
 
 if Value == nil then
 Value = set
 pcall(function()
  callback(Value)
  end)
 end
 
 AHEHE.MouseButton1Down:Connect(function()
  Value = math.floor((((tonumber(max) - tonumber(min)) / 320) * bar1.AbsoluteSize.X) + tonumber(min)) or 0
  pcall(function()
   callback(Value)
   end)
  bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 320), 0, 5)
  circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 355), 0, -3)
  moveconnection = mouse.Move:Connect(function()
   TextBox.Text = Value
   Value = math.floor((((tonumber(max) - tonumber(min)) / 320) * bar1.AbsoluteSize.X) + tonumber(min))
   pcall(function()
    callback(Value)
    end)
   bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 320), 0, 5)
   circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 355), 0, -3)
   end)
  releaseconnection = uis.InputEnded:Connect(function(Mouse)
   if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
   Value = math.floor((((tonumber(max) - tonumber(min)) / 320) * bar1.AbsoluteSize.X) + tonumber(min))
   pcall(function()
    callback(Value)
    end)
   bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 320), 0, 5)
   circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 355), 0, -3)
   moveconnection:Disconnect()
   releaseconnection:Disconnect()
   end
   end)
  end)
 releaseconnection = uis.InputEnded:Connect(function(Mouse)
  if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
  Value = math.floor((((tonumber(max) - tonumber(min)) / 320) * bar1.AbsoluteSize.X) + tonumber(min))
  TextBox.Text = Value
  end
  end)
 
 TextBox.FocusLost:Connect(function()
  if tonumber(TextBox.Text) > max then
  TextBox.Text = max
  end
  bar1.Size = UDim2.new((TextBox.Text or 0) / max, 0, 0, 5)
  circlebar.Position = UDim2.new(1, -2, 0, -3)
  TextBox.Text = tostring(TextBox.Text and math.floor((TextBox.Text / max) * (max - min) + min))
  pcall(callback, TextBox.Text)
  end)
 end
 function main:Textbox(text,disappear,callback)
 local Textbox = Instance.new("Frame")
 local TextboxCorner = Instance.new("UICorner")
 local Textboxx = Instance.new("Frame")
 local TextboxxCorner = Instance.new("UICorner")
 local TextboxLabel = Instance.new("TextLabel")
 local txtbtn = Instance.new("TextButton")
 local RealTextbox = Instance.new("TextBox")
 local UICorner = Instance.new("UICorner")
 
 Textbox.Name = "Textbox"
 Textbox.Parent = MainFramePage
 Textbox.BackgroundColor3 = Color3.fromRGB(255,255,255)
 Textbox.BackgroundTransparency = 0.8
 Textbox.Size = UDim2.new(0, 370, 0, 31)
 
 TextboxCorner.CornerRadius = UDim.new(0, 0)
 TextboxCorner.Name = "TextboxCorner"
 TextboxCorner.Parent = Textbox
 
 Textboxx.Name = "Textboxx"
 Textboxx.Parent = Textbox
 Textboxx.BackgroundColor3 = Color3.fromRGB(30,30,30)
 Textboxx.Position = UDim2.new(0, 1, 0, 1)
 Textboxx.Size = UDim2.new(0, 368, 0, 29)
 
 TextboxxCorner.CornerRadius = UDim.new(0, 5)
 TextboxxCorner.Name = "TextboxxCorner"
 TextboxxCorner.Parent = Textboxx
 
 TextboxLabel.Name = "TextboxLabel"
 TextboxLabel.Parent = Textbox
 TextboxLabel.BackgroundColor3 = Color3.fromRGB(224,224,224)
 TextboxLabel.BackgroundTransparency = 1.000
 TextboxLabel.Position = UDim2.new(0, 15, 0, 0)
 TextboxLabel.Text = text
 TextboxLabel.Size = UDim2.new(0, 145, 0, 31)
 TextboxLabel.Font = Enum.Font.GothamSemibold
 TextboxLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
 TextboxLabel.TextSize = 16.000
 TextboxLabel.TextTransparency = 0
 TextboxLabel.TextXAlignment = Enum.TextXAlignment.Left
 
 txtbtn.Name = "txtbtn"
 txtbtn.Parent = Textbox
 txtbtn.BackgroundColor3 = Color3.fromRGB(224,224,224)
 txtbtn.BackgroundTransparency = 1.000
 txtbtn.Position = UDim2.new(0, 1, 0, 1)
 txtbtn.Size = UDim2.new(0, 370, 0, 29)
 txtbtn.Font = Enum.Font.SourceSans
 txtbtn.Text = ""
 txtbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
 txtbtn.TextSize = 14.000
 
 RealTextbox.Name = "RealTextbox"
 RealTextbox.Parent = Textbox
 RealTextbox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
 RealTextbox.BackgroundTransparency = 0
 RealTextbox.Position = UDim2.new(0, 260, 0, 4)
 RealTextbox.Size = UDim2.new(0, 100, 0, 24)
 RealTextbox.Font = Enum.Font.GothamSemibold
 RealTextbox.Text = ""
 RealTextbox.TextColor3 = Color3.fromRGB(225, 225, 225)
 RealTextbox.TextSize = 11.000
 RealTextbox.TextTransparency = 0
 
 RealTextbox.FocusLost:Connect(function()
  callback(RealTextbox.Text)
  if disappear then
  RealTextbox.Text = ""
  end
  end)
 
 UICorner.CornerRadius = UDim.new(0, 5)
 UICorner.Parent = RealTextbox
 end
 function main:Label(text)
 local Label = Instance.new("TextLabel")
 local PaddingLabel = Instance.new("UIPadding")
 local labelfunc = {}
 
 Label.Name = "Label"
 Label.Parent = MainFramePage
 Label.BackgroundColor3 = Color3.fromRGB(224,224,224)
 Label.BackgroundTransparency = 1.000
 Label.Size = UDim2.new(0, 325, 0, 20)
 Label.Font = Enum.Font.GothamSemibold
 Label.TextColor3 = Color3.fromRGB(225, 225, 225)
 Label.TextSize = 12.000
 Label.Text = text
 Label.TextXAlignment = Enum.TextXAlignment.Left
 
 PaddingLabel.PaddingLeft = UDim.new(0,15)
 PaddingLabel.Parent = Label
 PaddingLabel.Name = "PaddingLabel"
 
 function labelfunc:Set(newtext)
 Label.Text = newtext
 end
 return labelfunc
 end
 
 function main:Label1(text)
 local Label1 = Instance.new("TextLabel")
 local PaddingLabel1 = Instance.new("UIPadding")
 local Label1func = {}
 
 Label1.Name = "Label1"
 Label1.Parent = MainFramePage
 Label1.BackgroundColor3 = Color3.fromRGB(224,224,224)
 Label1.BackgroundTransparency = 1.000
 Label1.Size = UDim2.new(0, 325, 0, 20)
 Label1.Font = Enum.Font.GothamSemibold
 Label1.TextColor3 = Color3.fromRGB(225, 225, 225)
 Label1.TextSize = 12.000
 Label1.Text = text
 Label1.TextXAlignment = Enum.TextXAlignment.Left
 
 PaddingLabel1.PaddingLeft = UDim.new(0,15)
 PaddingLabel1.Parent = Label1
 PaddingLabel1.Name = "PaddingLabel1"
 function Label1func:Refresh(tochange)
 Label1.Text = tochange
 end
 
 return Label1func
 end
 
function main:Seperator(text)
 local Seperator = Instance.new("Frame")
 local Sep1 = Instance.new("Frame")
 local Sep2 = Instance.new("TextLabel")
 local Sep3 = Instance.new("Frame")
 
 Seperator.Name = "Seperator"
 Seperator.Parent = MainFramePage
 Seperator.BackgroundColor3 = Color3.fromRGB(224,224,224)
 Seperator.BackgroundTransparency = 1.000
 Seperator.Size = UDim2.new(0, 320, 0, 20)
 
 Sep1.Name = "Sep1"
 Sep1.Parent = Seperator
 Sep1.BackgroundColor3 = Color3.fromRGB(255,255,255)
 Sep1.BorderSizePixel = 0
 Sep1.Position = UDim2.new(0, 0, 0, 10)
 Sep1.Size = UDim2.new(0, 120, 0, 1)
 
 Sep2.Name = "Sep2"
 Sep2.Parent = Seperator
 Sep2.BackgroundColor3 = Color3.fromRGB(224,224,224)
 Sep2.BackgroundTransparency = 1.000
 Sep2.Position = UDim2.new(0, 130, 0, 0)
 Sep2.Size = UDim2.new(0, 100, 0, 20)
 Sep2.Font = Enum.Font.GothamSemibold
 Sep2.Text = text
 Sep2.TextColor3 = Color3.fromRGB(224,224,224)
 Sep2.TextSize = 10.000
 
 Sep3.Name = "Sep3"
 Sep3.Parent = Seperator
 Sep3.BackgroundColor3 = Color3.fromRGB(255,255,255)
 Sep3.BorderSizePixel = 0
 Sep3.Position = UDim2.new(0, 240, 0, 10)
 Sep3.Size = UDim2.new(0, 120, 0, 1)
 end
 
 
 function main:Line()
 local Linee = Instance.new("Frame")
 local Line = Instance.new("Frame")
 
 Linee.Name = "Linee"
 Linee.Parent = MainFramePage
 Linee.BackgroundColor3 = Color3.fromRGB(224,224,224)
 Linee.BackgroundTransparency = 1.000
 Linee.Position = UDim2.new(0, 0, 0.119999997, 0)
 Linee.Size = UDim2.new(0, 530, 0, 20)
 
 Line.Name = "Line"
 Line.Parent = Linee
 Line.BackgroundColor3 = Color3.fromRGB(255,255,255)
 Line.BorderSizePixel = 0
 Line.Position = UDim2.new(0, 0, 0, 10)
 Line.Size = UDim2.new(0, 530, 0, 1)
 end
 return main
 end
 return uitab
end

if game.PlaceId == 2753915549 then
	World1 = true
elseif game.PlaceId == 4442272183 then
	World2 = true
elseif game.PlaceId == 7449423635 then
	World3 = true
end
 
function AutoHaki()
	if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
	end
end
 
function EquipWeapon(ToolSe)
	if not _G.NotAutoEquip then
		if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
			Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
			wait(.1)
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
		end
	end
end

 function topos(Pos)
        Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
        pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/210, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
        tween:Play()
        if Distance <= 250 then
            tween:Cancel()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
        end
        if _G.StopTween == true then
            tween:Cancel()
            _G.Clip = false
        end
    end
    
    function GetDistance(target)
        return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
    end


function StopTween(target)
	if not target then
		_G.StopTween = true
		wait()
		topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
		wait()
		if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
		end
		_G.StopTween = false
		_G.Clip = false
	end
end

function UseCode(Text)
	game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
end

function hop()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                -- delfile("NotSameServers.json")
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(4)
                end
            end
        end
    end
    function Teleport()
        while wait() do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end
    Teleport()
end

	local PlaceID = game.PlaceId
	local AllIDs = {}
	local foundAnything = ""
	local actualHour = os.date("!*t").hour
	local Deleted = false
	local File = pcall(function()
		AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
	end)
	if not File then
		table.insert(AllIDs, actualHour)
		writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
	end
	function TPReturner()
		local Site;
		if foundAnything == "" then
			Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
		else
			Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
		end
		local ID = ""
		if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
			foundAnything = Site.nextPageCursor
		end
		local num = 0;
		for i,v in pairs(Site.data) do
			local Possible = true
			ID = t
				SaveSetting()ostring(v.id)
			if tonumber(v.maxPlayers) > tonumber(v.playing) then
				for _,Existing in pairs(AllIDs) do
					if num ~= 0 then
						if ID == tostring(Existing) then
							Possible = false
						end
					else
						if tonumber(actualHour) ~= tonumber(Existing) then
							local delFile = pcall(function()
								delfile("NotSameServers.json")
								AllIDs = {}
								table.insert(AllIDs, actualHour)
							end)
						end
					end
					num = num + 1
				end
				if Possible == true then
					table.insert(AllIDs, ID)
					wait()
					pcall(function()
						writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
						wait()
						game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
					end)
					wait(1)
				end
			end
		end
	end

	function Teleport()
		while wait() do
			pcall(function()
				TPReturner()
				if foundAnything ~= "" then
					TPReturner()
				end
			end)
		end
	end

local Library = Update:Window("HOLE HUB ","")
local Main = Library:Tab("Main","rbxassetid://11446825283")
local Setting = Library:Tab("Settings","rbxassetid://11446835336")
local Weapon = Library:Tab("Weapons","rbxassetid://11446859498")
local Race = Library:Tab("Race V4","rbxassetid://11446900930")
local Stats = Library:Tab("Stats","rbxassetid://11447069304")
local P = Library:Tab("Player","rbxassetid://11446900930")
local Teleport = Library:Tab("Teleport","rbxassetid://11446920523")
local Dungeon = Library:Tab("Dungeon","rbxassetid://11446957539")
local DevilFruit = Library:Tab("Fruit+Esp","rbxassetid://11446965348")
local Shop = Library:Tab("Shop","rbxassetid://6031265976")
local Misc = Library:Tab("Misc","rbxassetid://11447063791")
local Op = Library:Tab("Status", "rbxassetid://7040410130")
--------------------------------------------------------------------

Setting:Label("Join My Discord For More Info!")

Setting:Line()

Setting:Seperator(" Setting ")
Setting:Toggle("Auto Set Spawn Points",true,function(value)
 _G.AutoSetSpawn = value
 end)

spawn(function()
 pcall(function()
  while wait() do
  if _G.AutoSetSpawn then
  if game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 then
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
  end
  end
  end
  end)
 end)

Setting:Toggle("Anti AFK",true,function(value)
 _G.AFK = value
 end)

if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
	game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
end
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
	game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
end

Setting:Toggle("Auto Ken Haki",_G.Auto_Ken,function(vu)
	_G.Auto_Ken = vu
end)
spawn(function()
	while wait(2) do
		pcall(function()
			if _G.Auto_Ken then
				game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
				wait(7)
			end
		end)
	end
end)

Setting:Toggle("Auto Click",false,function(value)
 _G.click = value
end)

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.click then
             pcall(function()
                game:GetService'VirtualUser':CaptureController()
			    game:GetService'VirtualUser':Button1Down(Vector2.new(0,1,0,1))
            end)
        end
    end)
end)

Main:Seperator(" Server ")

Time = Main:Label("Executer Time")

function UpdateTime()
local GameTime = math.floor(workspace.DistributedGameTime+0.5)
local Hour = math.floor(GameTime/(60^2))%24
local Minute = math.floor(GameTime/(60^1))%60
local Second = math.floor(GameTime/(60^0))%60
Time:Set("[GameTime] : Hours : "..Hour.." Minutes : "..Minute.." Seconds : "..Second)
end

spawn(function()
 while task.wait() do
 pcall(function()
  UpdateTime()
  end)
 end
 end)

Client = Main:Label1("Client")

function UpdateClient()
local Fps = workspace:GetRealPhysicsFPS()
Client:Refresh("[Fps] : "..Fps)
end

spawn(function()
 while true do wait(.1)
 UpdateClient()
 end
 end)

Client1 = Main:Label1("Client")

function UpdateClient1()
local Ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
Client1:Refresh("[Ping] : "..Ping)
end

spawn(function()
 while true do wait(.1)
 UpdateClient1()
 end
 end)


Main:Line()

Main:Seperator(" Main ")

Main:Seperator(" Other ")

Main:Seperator(" Bones ")

Main:Toggle("Auto Trade Bone",_G.Auto_Trade_Bone,function(value)
 _G.Auto_Trade_Bone = value
 end)

spawn(function()
 while wait(.1) do
 if _G.Auto_Trade_Bone then
 local args = {
  [1] = "Bones",
  [2] = "Buy",
  [3] = 1,
  [4] = 1
 }

 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
 end
 end
 end)

Main:Button("Check Bone", function()
 game.StarterGui:SetCore("SendNotification", {
  Title = "Checking Bone",
  Text = ("Your Bone : "..(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check")))
 })
 wait(1)
end)
end

Main:Seperator(" Fake Race V4 ")


Main:Button("Mink Fake Transform",function()
 require(game:GetService("ReplicatedStorage").Notification).new("Mink V4!"):Display();
 wait()
 setthreadcontext(5)

 local ReplicatedStorage = game:GetService("ReplicatedStorage")

 local Player = game:GetService("Players").LocalPlayer

 local ArgsTransform = {
  Character = game.Players.LocalPlayer.Character,
  CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
  Color1 = Color3.fromRGB(102, 255, 153),
  Color2 = Color3.fromRGB(102, 255, 153),
  Color3 = Color3.fromRGB(102, 255, 153),
 }

 Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()

 delay(1, function()
  pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
  end)

 end)
Main:Button("Fishman Fake Transform",function()
 require(game:GetService("ReplicatedStorage").Notification).new("Fishman V4!"):Display();
 wait()
 setthreadcontext(5)

 local ReplicatedStorage = game:GetService("ReplicatedStorage")

 local Player = game:GetService("Players").LocalPlayer

 local ArgsTransform = {
  Character = game.Players.LocalPlayer.Character,
  CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
  Color1 = Color3.fromRGB(5, 115, 166),
  Color2 = Color3.fromRGB(5, 115, 166),
  Color3 = Color3.fromRGB(5, 115, 166),
 }

 Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()

 delay(1, function()
  pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
  end)

 end)
Main:Button("Skypeian Fake Transform",function()
 require(game:GetService("ReplicatedStorage").Notification).new("Skypeian V4!"):Display();
 wait()
 setthreadcontext(5)

 local ReplicatedStorage = game:GetService("ReplicatedStorage")

 local Player = game:GetService("Players").LocalPlayer

 local ArgsTransform = {
  Character = game.Players.LocalPlayer.Character,
  CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
  Color1 = Color3.fromRGB(222, 222, 0),
  Color2 = Color3.fromRGB(222, 222, 0),
  Color3 = Color3.fromRGB(222, 222, 0),
 }

 Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()

 delay(1, function()
  pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
  end)

 end)
Main:Button("Ghoul Fake Transform",function()
 require(game:GetService("ReplicatedStorage").Notification).new("Ghoul V4!"):Display();
 wait()
 setthreadcontext(5)

 local ReplicatedStorage = game:GetService("ReplicatedStorage")

 local Player = game:GetService("Players").LocalPlayer

 local ArgsTransform = {
  Character = game.Players.LocalPlayer.Character,
  CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
  Color1 = Color3.fromRGB(155, 155, 155),
  Color2 = Color3.fromRGB(0, 0, 0),
  Color3 = Color3.fromRGB(155, 155, 155),
 }

 Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()

 delay(1, function()
  pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
  end)


 end)
Main:Button("Cyborg Fake Transform",function()
 require(game:GetService("ReplicatedStorage").Notification).new("Cyborg V4!"):Display();
 wait()
 setthreadcontext(5)

 local ReplicatedStorage = game:GetService("ReplicatedStorage")

 local Player = game:GetService("Players").LocalPlayer

 local ArgsTransform = {
  Character = game.Players.LocalPlayer.Character,
  CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
  Color1 = Color3.fromRGB(166, 0, 111),
  Color2 = Color3.fromRGB(166, 0, 111),
  Color3 = Color3.fromRGB(166, 0, 111),
 }

 Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()

 delay(1, function()
  pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
  end)

 end)
Main:Button("Human Fake Transform",function()
 require(game:GetService("ReplicatedStorage").Notification).new("Human V4!"):Display();
 wait()
 setthreadcontext(5)

 local ReplicatedStorage = game:GetService("ReplicatedStorage")

 local Player = game:GetService("Players").LocalPlayer

 local ArgsTransform = {
  Character = game.Players.LocalPlayer.Character,
  CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
  Color1 = Color3.fromRGB(166, 0, 0),
  Color2 = Color3.fromRGB(166, 0, 0),
  Color3 = Color3.fromRGB(166, 0, 0),
 }

 Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()

 delay(1, function()
  pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
  end)

 end)

Main:Button("Fake Mink Dash Animation",function()
 local ReplicatedStorage = game:GetService("ReplicatedStorage")

 local Player = game:GetService("Players").LocalPlayer

 local ArgsDash = {
  Character = Player.Character,
  Duration = .25,
  CFrame = Player.Character.HumanoidRootPart.CFrame,
 }

 local old; old = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
  if self.Name == "CommE" then
  local args = {
   ...
  }

  if args[1] == "Dodge" then
  coroutine.wrap(function() require(ReplicatedStorage.Effect.Container.Shared.Lightningtopos)(ArgsDash) end)()
  end
  end

  return old(self, ...)
  end))
end)
 

Weapon:Seperator(" Item & Quest ")

local Total_Elite_Hunter = Weapon:Label("Elite Hunter")

local Elite_Hunter_Status = Weapon:Label("Status")


	spawn(function()
		while wait() do
			pcall(function()
				if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
					Elite_Hunter_Status:Set("Status : Elite Spawn!")	
				else
					Elite_Hunter_Status:Set("Status : Elite Not Spawn")	
				end
			end)
		end
	end)

	spawn(function()
		while wait() do
			Total_Elite_Hunter:Set("Total Elite Hunter : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))
		end
	end)
	
	Weapon:Seperator(" Dough Boss ")

local Mob_Kill_Cake_Prince = Weapon:Label("Total")

	spawn(function()
		while wait() do
			pcall(function()
				if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
					Mob_Kill_Cake_Prince:Set("Killed : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41).." : Kill More")
				elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
					Mob_Kill_Cake_Prince:Set("Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40).." : Kill More")
				elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
					Mob_Kill_Cake_Prince:Set("Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39).." : More")
				else
					Mob_Kill_Cake_Prince:Set("Boss Is Spawned")
				end
			end)
		end
	end)

Weapon:Seperator("Sea 1 Không Có")

Weapon:Seperator(" Legendary Sword ")

Weapon:Toggle("Auto Buy Legendary Sword",_G.AutoBuyLegendarySword,function(Value)
			_G.AutoBuyLegendarySword = Value
		end)
		spawn(function()
            while wait() do
                if _G.AutoBuyLegendarySword then
                    pcall(function()
                        local args = {
                            [1] = "LegendarySwordDealer",
                            [2] = "1"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        local args = {
                            [1] = "LegendarySwordDealer",
                            [2] = "2"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        local args = {
                            [1] = "LegendarySwordDealer",
                            [2] = "3"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        if _G.AutoBuyLegendarySword_Hop and _G.AutoBuyLegendarySword and World2 then
                            wait(10)
                            Hop()
                        end
                    end)
                end 
            end
		end)

		Weapon:Toggle("Auto Buy Legendary Sword Hop",_G.AutoBuySwordHop,function(Value)
			_G.AutoBuyLegendarySword_Hop = Value
		end)
		spawn(function()
			while _G.AutoBuyLegendarySword_Hop do wait()
				if _G.AutoBuyLegendarySword_Hop then
					hop()
				end 
			end
		end)

	spawn(function()
		while wait(7) do
			if _G.AutoBuySwordHop or _G.HakiColorHop then
				local PlaceID = game.PlaceId
				local AllIDs = {}
				local foundAnything = ""
				local actualHour = os.date("!*t").hour
				local Deleted = false
				function TPReturner()
					local Site;
					if foundAnything == "" then
						Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
					else
						Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
					end
					local ID = ""
					if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
						foundAnything = Site.nextPageCursor
					end
					local num = 0;
					for i,v in pairs(Site.data) do
						local Possible = true
						ID = tostring(v.id)
						if tonumber(v.maxPlayers) > tonumber(v.playing) then
							for _,Existing in pairs(AllIDs) do
								if num ~= 0 then
									if ID == tostring(Existing) then
										Possible = false
									end
								else
									if tonumber(actualHour) ~= tonumber(Existing) then
										local delFile = pcall(function()
											-- delfile("NotSameServers.json")
											AllIDs = {}
											table.insert(AllIDs, actualHour)
										end)
									end
								end
								num = num + 1
							end
							if Possible == true then
								table.insert(AllIDs, ID)
								wait()
								pcall(function()
									-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
									wait()
									game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
								end)
								wait(4)
							end
						end
					end
				end
				function Teleport() 
					while wait() do
						pcall(function()
							TPReturner()
							if foundAnything ~= "" then
								TPReturner()
							end
						end)
					end
				end
				Teleport()
			end
		end
	end)
		Weapon:Seperator(" Yama ")
	
	Weapon:Toggle("Auto Yama",_G.Auto_Yama,function(value)
	 _G.Auto_Yama = value
 	StopTween(_G.Auto_Yama)
end)


	spawn(function()
		while wait() do
			if _G.Auto_Yama then
				pcall(function()
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
						fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
					end
				end)
			end
		end
	end)
	
if World1 or World2 then
    Race:Label("Only Available At Sea 3")
end

if World3 then
Race:Seperator("Race V4")
    
Stats:Seperator(" Auto Stats ")

Stats:Toggle("Auto Stats Melee",_G.Auto_Stats_Melee,function(value)
 _G.Auto_Stats_Melee = value
end)


spawn(function()
	while wait() do
		if _G.Auto_Stats_Melee then
			local args = {
				[1] = "AddPoint",
				[2] = "Melee",
				[3] = _G.Point
			}
						
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)

Stats:Toggle("Auto Stats Defense",_G.Auto_Stats_Defense,function(value)
 _G.Auto_Stats_Defense = value
end)


spawn(function()
	while wait() do
		if _G.Auto_Stats_Defense then
			local args = {
				[1] = "AddPoint",
				[2] = "Defense",
				[3] = _G.Point
			}
						
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)

Stats:Toggle("Auto Stats Sword",_G.Auto_Stats_Sword,function(value)
 _G.Auto_Stats_Sword = value
end)


spawn(function()
	while wait() do
		if _G.Auto_Stats_Sword then
			local args = {
				[1] = "AddPoint",
				[2] = "Sword",
				[3] = _G.Point
			}
						
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)

Stats:Toggle("Auto Stats Gun",_G.Auto_Stats_Gun,function(value)
 _G.Auto_Stats_Gun = value
end)

spawn(function()
	while wait() do
		if _G.Auto_Stats_Gun then
			local args = {
				[1] = "AddPoint",
				[2] = "Gun",
				[3] = _G.Point
			}
						
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)

Stats:Toggle("Auto Stats Devil Fruit",_G.Auto_Stats_Devil_Fruit,function(value)
 _G.Auto_Stats_Devil_Fruit = value
end)


spawn(function()
	while wait() do
		if _G.Auto_Stats_Devil_Fruit then
			local args = {
				[1] = "AddPoint",
				[2] = "Demon Fruit",
				[3] = _G.Point
			}
						
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)

Stats:Button("Stat Refund",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,2)
  end)

Stats:Slider("Select Point",1,100,1,function(value)
_G.Point = value
return "Point : " .. tostring(value)
end)

Teleport:Seperator(" WORLD ")
 
 Teleport:Button("Teleport To Old World",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
  end)
 
 Teleport:Button("Teleport To Second Sea",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
 end)

 
 Teleport:Button("Teleport To Third Sea",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
  end)
 
 Teleport:Seperator(" Island ")
 
if World1 then
    Dungeon:Label("Dungeon Raid Only Available At Sea 2 and 3")
end

if World2 or World3 then
Dungeon:Seperator("Use in Dungeon Only!")

Dungeon:Toggle("Kill Aura",_G.Kill_Aura,function(value)
 _G.Kill_Aura = value  
end)

spawn(function()
    while wait() do
        if _G.Kill_Aura then
            for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                    pcall(function()
                        repeat wait(.1)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                        until not _G.Kill_Aura  or not v.Parent or v.Humanoid.Health <= 0
                    end)
                end
            end
        end
    end
end)

 DevilFruit:Seperator(" Sniper ")
 
 FruitList = {
  "Bomb-Bomb",
  "Spike-Spike",
  "Chop-Chop",
  "Spring-Spring",
  "Kilo-Kilo",
  "Spin-Spin",
  "Bird: Falcon",
  "Smoke-Smoke",
  "Flame-Flame",
  "Ice-Ice",
  "Sand-Sand",
  "Dark-Dark",
  "Revive-Revive",
  "Diamond-Diamond",
  "Light-Light",
  "Love-Love",
  "Rubber-Rubber",
  "Barrier-Barrier",
  "Magma-Magma",
  "Door-Door",
  "Quake-Quake",
  "Human-Human: Buddha",
  "String-String",
  "Bird-Bird: Phoenix",
  "Rumble-Rumble",
  "Paw-Paw",
  "Gravity-Gravity",
  "Dough-Dough",
  "Venom-Venom",
  "Shadow-Shadow",
  "Control-Control",
  "Soul-Soul",
  "Dragon-Dragon"
 }
 
 _G.SelectFruit = ""
 DevilFruit:Dropdown("Select Fruits Sniper",FruitList,function(value)
  _G.SelectFruit = value
  end)
 
 DevilFruit:Toggle("Auto Buy Fruit Sniper",_G.AutoBuyFruitSniper,function(value)
  _G.AutoBuyFruitSniper = value
  end)
 
 DevilFruit:Seperator(" Others ")
 
 DevilFruit:Dropdown("Select Fruits Eat",FruitList,function(value)
  _G.SelectFruitEat = value
  end)
 
 DevilFruit:Toggle("Auto Eat Fruit",_G.AutoEatFruit,function(value)
  _G.AutoEatFruit = value
  end)
 
 spawn(function()
  pcall(function()
   while wait(.1) do
   if _G.AutoEatFruit then
   game:GetService("Players").LocalPlayer.Character:FindFirstChild(_G.SelectFruitEat).EatRemote:InvokeServer()
   end
   end
   end)
 end)

 
 spawn(function()
  pcall(function()
   while wait(.1) do
   if _G.AutoBuyFruitSniper then
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit",_G.SelectFruit)
   end
   end
   end)
  end)
 
 DevilFruit:Toggle("Auto Random Fruit",_G.Random_Auto,function(value)
  _G.Random_Auto = value
  end)
 
 spawn(function()
  pcall(function()
   while wait(.1) do
   if _G.Random_Auto then
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
   end
   end
   end)
  end)
 
 DevilFruit:Button("Random Fruit",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
  end)
 
 
 DevilFruit:Toggle("Auto Drop Fruit",_G.DropFruit,function(value)
  _G.DropFruit = value
  end)
 
 spawn(function()
  while wait() do
  if _G.DropFruit then
  pcall(function()
   for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
   if string.find(v.Name, "Fruit") then
   EquipWeapon(v.Name)
   wait(.1)
   if game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible == true then
   game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible = false
   end
   EquipWeapon(v.Name)
   game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectFruit).EatRemote:InvokeServer("Drop")
   end
   end
   for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
   if string.find(v.Name, "Fruit") then
   EquipWeapon(v.Name)
   wait(.1)
   if game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible == true then
   game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible = false
   end
   EquipWeapon(v.Name)
   game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectFruit).EatRemote:InvokeServer("Drop")
   end
   end
   end)
  end
  end
  end)
 
 DevilFruit:Toggle("Auto Store Fruit",_G.AutoStoreFruit,function(value)
  _G.AutoStoreFruit = value
  end)
 
 		spawn(function()
			while task.wait() do
				if _G.AutoStoreFruit then
					pcall(function()
						for i,v in pairs(Fruit) do
						for x,y in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
							if string.find(y.Name,"Fruit") then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",v,game.Players.LocalPlayer.Backpack[y.Name])
							end
						end
						end
					end)
				end
			end
		end)
 
 
 DevilFruit:Toggle("Dịch chuyển nhặt trái(Không nên dùng)",false,function(value)
 _G.Grabfruit = value
end)

spawn(function()
			while wait(.1) do
				if _G.Grabfruit then
					for i,v in pairs(game.Workspace:GetChildren()) do
						if string.find(v.Name, "Fruit") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
						end
					end
				end
end
end)
 function isnil(thing)
 return (thing == nil)
 end
 local function round(n)
 return math.floor(tonumber(n) + 0.5)
 end
 Number = math.random(1, 1000000)
 function UpdateEspPlayer()
 for i,v in pairs(game:GetService'Players':GetChildren()) do
 pcall(function()
  if not isnil(v.Character) then
  if ESPPlayer then
  if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
  local bill = Instance.new('BillboardGui',v.Character.Head)
  bill.Name = 'NameEsp'..Number
  bill.ExtentsOffset = Vector3.new(0, 1, 0)
  bill.Size = UDim2.new(1,200,1,30)
  bill.Adornee = v.Character.Head
  bill.AlwaysOnTop = true
  local name = Instance.new('TextLabel',bill)
  name.Font = "Code"
  name.FontSize = "Size14"
  name.TextWrapped = true
  name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
  name.Size = UDim2.new(1,0,1,0)
  name.TextYAlignment = 'Top'
  name.BackgroundTransparency = 1
  name.TextStrokeTransparency = 0.5
  if v.Team == game.Players.LocalPlayer.Team then
  name.TextColor3 = Color3.new(0,255,0)
  else
   name.TextColor3 = Color3.new(255,0,0)
  end
  else
   v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..'  '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
  end
  else
   if v.Character.Head:FindFirstChild('NameEsp'..Number) then
  v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
  end
  end
  end
  end)
 end
 end

function UpdateIslandESP()
 for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
 pcall(function()
  if IslandESP then
  if v.Name ~= "Sea" then
  if not v:FindFirstChild('NameEsp') then
  local bill = Instance.new('BillboardGui',v)
  bill.Name = 'NameEsp'
  bill.ExtentsOffset = Vector3.new(0, 1, 0)
  bill.Size = UDim2.new(1,200,1,30)
  bill.Adornee = v
  bill.AlwaysOnTop = true
  local name = Instance.new('TextLabel',bill)
  name.Font = "Code"
  name.FontSize = "Size14"
  name.TextWrapped = true
  name.Size = UDim2.new(1,0,1,0)
  name.TextYAlignment = 'Top'
  name.BackgroundTransparency = 1
  name.TextStrokeTransparency = 0.5
  name.TextColor3 = Color3.fromRGB(80, 245, 245)
  else
   v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
  end
  end
  else
   if v:FindFirstChild('NameEsp') then
  v:FindFirstChild('NameEsp'):Destroy()
  end
  end
  end)
 end
 end
 
 function UpdateChestEsp()
 for i,v in pairs(game.Workspace:GetChildren()) do
 pcall(function()
  if v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3" then
  if ChestESP then
  if (v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3") and (v.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 60000 then
  if not v:FindFirstChild("ChestESP"..Number) then
  local Bb = Instance.new("BillboardGui", v)
  Bb.Name = "ChestESP"..Number
  Bb.ExtentsOffset = Vector3.new(0, 1, 0)
  Bb.Size = UDim2.new(1, 200, 1, 30)
  Bb.Adornee = v
  Bb.AlwaysOnTop = true
  local Textlb = Instance.new("TextLabel", Bb)
  Textlb.Font = "Code"
  Textlb.FontSize = "Size14"
  Textlb.Size = UDim2.new(1,0,1,0)
  Textlb.BackgroundTransparency = 1
  Textlb.TextStrokeTransparency = 0.5
  if v.Name == "Chest1" then
  Textlb.TextColor3 = Color3.fromRGB(174, 123, 47)
  Textlb.Text = "Bronze Chest".."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
  end
  if v.Name == "Chest2" then
  Textlb.TextColor3 = Color3.fromRGB(255, 255, 127)
  Textlb.Text = "Gold Chest".."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
  end
  if v.Name == "Chest3" then
  Textlb.Text = "Diamond Chest".."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
  Textlb.TextColor3 = Color3.fromRGB(5, 243, 255)
  end
  else
   v["ChestESP"..Number].TextLabel.Text = v.Name.."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
  end
  end
  else
   if v:FindFirstChild("ChestESP"..Number) then
  v:FindFirstChild("ChestESP"..Number):Destroy()
  end
  end
  end
  end)
 end
 end
 
 function UpdateBfEsp()
 for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
 pcall(function()
  if DevilFruitESP then
  if string.find(v.Name, "Fruit") then
  if not v.Handle:FindFirstChild('NameEsp'..Number) then
  local bill = Instance.new('BillboardGui',v.Handle)
  bill.Name = 'NameEsp'..Number
  bill.ExtentsOffset = Vector3.new(0, 1, 0)
  bill.Size = UDim2.new(1,200,1,30)
  bill.Adornee = v.Handle
  bill.AlwaysOnTop = true
  local name = Instance.new('TextLabel',bill)
  name.Font = "Code"
  name.FontSize = "Size14"
  name.TextWrapped = true
  name.Size = UDim2.new(1,0,1,0)
  name.TextYAlignment = 'Top'
  name.BackgroundTransparency = 1
  name.TextStrokeTransparency = 0.5
  name.TextColor3 = Color3.fromRGB(255, 0, 0)
  name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
  else
   v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
  end
  end
  else
   if v.Handle:FindFirstChild('NameEsp'..Number) then
  v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
  end
  end
  end)
 end
 end
 
 function UpdateFlowerEsp()
 for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
 pcall(function()
  if v.Name == "Flower2" or v.Name == "Flower1" then
  if FlowerESP then
  if not v:FindFirstChild('NameEsp'..Number) then
  local bill = Instance.new('BillboardGui',v)
  bill.Name = 'NameEsp'..Number
  bill.ExtentsOffset = Vector3.new(0, 1, 0)
  bill.Size = UDim2.new(1,200,1,30)
  bill.Adornee = v
  bill.AlwaysOnTop = true
  local name = Instance.new('TextLabel',bill)
  name.Font = "Code"
  name.FontSize = "Size14"
  name.TextWrapped = true
  name.Size = UDim2.new(1,0,1,0)
  name.TextYAlignment = 'Top'
  name.BackgroundTransparency = 1
  name.TextStrokeTransparency = 0.5
  name.TextColor3 = Color3.fromRGB(255, 0, 0)
  if v.Name == "Flower1" then
  name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
  name.TextColor3 = Color3.fromRGB(255, 0, 0)
  end
  if v.Name == "Flower2" then
  name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
  name.TextColor3 = Color3.fromRGB(255, 0, 0)
  end
  else
   v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
  end
  else
   if v:FindFirstChild('NameEsp'..Number) then
  v:FindFirstChild('NameEsp'..Number):Destroy()
  end
  end
  end
  end)
 end
 end
 
 DevilFruit:Seperator(" ESP ")
  
	function isnil(thing)
		return (thing == nil)
	end
	local function round(n)
		return math.floor(tonumber(n) + 0.5)
	end
	Number = math.random(1, 1000000)
	function UpdatePlayerChams()
		for i,v in pairs(game:GetService'Players':GetChildren()) do
			pcall(function()
				if not isnil(v.Character) then
					if ESPPlayer then
						if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v.Character.Head)
							bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v.Character.Head
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = "GothamBold"
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							if v.Team == game.Players.LocalPlayer.Team then
								name.TextColor3 = Color3.new(0,255,0)
							else
								name.TextColor3 = Color3.new(255,0,0)
							end
						else
							v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
						end
					else
						if v.Character.Head:FindFirstChild('NameEsp'..Number) then
							v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
						end
					end
				end
			end)
		end
	end
	function UpdateChestChams() 
		for i,v in pairs(game.Workspace:GetChildren()) do
			pcall(function()
				if string.find(v.Name,"Chest") then
					if ChestESP then
						if string.find(v.Name,"Chest") then
							if not v:FindFirstChild('NameEsp'..Number) then
								local bill = Instance.new('BillboardGui',v)
								bill.Name = 'NameEsp'..Number
								bill.ExtentsOffset = Vector3.new(0, 1, 0)
								bill.Size = UDim2.new(1,200,1,30)
								bill.Adornee = v
								bill.AlwaysOnTop = true
								local name = Instance.new('TextLabel',bill)
								name.Font = "GothamBold"
								name.FontSize = "Size14"
								name.TextWrapped = true
								name.Size = UDim2.new(1,0,1,0)
								name.TextYAlignment = 'Top'
								name.BackgroundTransparency = 1
								name.TextStrokeTransparency = 0.5
								if v.Name == "Chest1" then
									name.TextColor3 = Color3.fromRGB(10, 224, 153)
									name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
								end
								if v.Name == "Chest2" then
									name.TextColor3 = Color3.fromRGB(10, 224, 153)
									name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
								end
								if v.Name == "Chest3" then
									name.TextColor3 = Color3.fromRGB(10, 224, 153)
									name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
								end
							else
								v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
							end
						end
					else
						if v:FindFirstChild('NameEsp'..Number) then
							v:FindFirstChild('NameEsp'..Number):Destroy()
						end
					end
				end
			end)
		end
	end
	function UpdateDevilChams() 
		for i,v in pairs(game.Workspace:GetChildren()) do
			pcall(function()
				if DevilFruitESP then
					if string.find(v.Name, "Fruit") then   
						if not v.Handle:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v.Handle)
							bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v.Handle
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = "GothamBold"
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							name.TextColor3 = Color3.fromRGB(10, 224, 153)
							name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
						else
							v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
						end
					end
				else
					if v.Handle:FindFirstChild('NameEsp'..Number) then
						v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end)
		end
	end
	function UpdateFlowerChams() 
		for i,v in pairs(game.Workspace:GetChildren()) do
			pcall(function()
				if v.Name == "Flower2" or v.Name == "Flower1" then
					if FlowerESP then 
						if not v:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v)
							bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = "GothamBold"
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							name.TextColor3 = Color3.fromRGB(10, 224, 153)
							if v.Name == "Flower1" then 
								name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
								name.TextColor3 = Color3.fromRGB(10, 224, 153)
							end
							if v.Name == "Flower2" then
								name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
								name.TextColor3 = Color3.fromRGB(10, 224, 153)
							end
						else
							v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
						end
					else
						if v:FindFirstChild('NameEsp'..Number) then
							v:FindFirstChild('NameEsp'..Number):Destroy()
						end
					end
				end   
			end)
		end
	end
	DevilFruit:Toggle("ESP Player",false,function(a)
		ESPPlayer = a
		while ESPPlayer do wait()
			UpdatePlayerChams()
		end
	end)
	DevilFruit:Toggle("ESP Chest",false,function(a)
		ChestESP = a
		while ChestESP do wait()
			UpdateChestChams() 
		end
	end)
	DevilFruit:Toggle("ESP Devil Fruit",true,function(a)
		DevilFruitESP = a
		while DevilFruitESP do wait()
			UpdateDevilChams() 
		end
	end)
	DevilFruit:Toggle("ESP Flower",false,function(a)
		FlowerESP = a
		while FlowerESP do wait()
			UpdateFlowerChams() 
		end
	end)
	
 
 Shop:Seperator(" Abilities ")
 
 Shop:Button("Buy Geppo",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
  end)
 
 Shop:Button("Buy Buso Haki",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
  end)
 
 Shop:Button("Buy Soru",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
  end)
 
 Shop:Button("Buy Observation(Ken) Haki",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
  end)
 
 Shop:Seperator(" Fighting Style ")
 
 Shop:Button("Buy Black Leg",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
  end)
 
 Shop:Button("Buy Electro",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
  end)
 
 Shop:Button("Buy Fishman Karate",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
  end)
 
 Shop:Button("Buy Dragon Claw",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
  end)
 
 Shop:Button("Buy Superhuman",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
  end)
 
 Shop:Button("Buy Death Step",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
  end)
 
 Shop:Button("Buy Sharkman Karate",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
  end)
 
 Shop:Button("Buy Electric Claw",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
  end)
 
 Shop:Button("Buy Dragon Talon",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
  end)
 Shop:Button("Buy GodHuman",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
  end)
 -----Shop----------------
 Shop:Seperator(" Accessory ")
 
 Shop:Button("Tomoe Ring",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
  end)
 
 Shop:Button("Black Cape",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
  end)
 
 Shop:Button("Swordsman Hat",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Swordsman Hat")
  end)
 
 Shop:Seperator(" Sword ")
 
 Shop:Button("Cutlass",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
  end)
 
 Shop:Button("Katana",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
  end)
 
 Shop:Button("Iron Mace",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
  end)
 
 Shop:Button("Duel Katana",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
  end)
 
 Shop:Button("Triple Katana", function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
  end)
 
 Shop:Button("Pipe",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
  end)
 
 Shop:Button("Dual Headed Blade",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
  end)
 
 Shop:Button("Bisento",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
  end)
 
 Shop:Button("Soul Cane",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
  end)
 
 Shop:Seperator(" Gun ")
 
 Shop:Button("Slingshot",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
  end)
 
 Shop:Button("Musket",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
  end)
 
 Shop:Button("Flintlock",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
  end)
 
 Shop:Button("Refined Flintlock",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
  end)
 
 Shop:Button("Cannon",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
  end)
 
 Shop:Button("Kabucha",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
 end)
 
 Shop:Button("Race Reroll",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,3)
 end)
 
 Misc:Seperator(" Joins ")
 
 Misc:Button("Join Pirates Team",function()
 		local args = {
			[1] = "SetTeam",
			[2] = "Pirates"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
		local args = {
			[1] = "BartiloQuestProgress"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
 

Misc:Button("Join Marines Team",function()
 local args = {
			[1] = "SetTeam",
			[2] = "Marines"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		local args = {
			[1] = "BartiloQuestProgress"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)


Misc:Button("Rejoin",function()
 local ts = game:GetService("TeleportService")
		local p = game:GetService("Players").LocalPlayer
		ts:Teleport(game.PlaceId, p)
end)

Misc:Button("Sever Hop",function()
 hop()
end)
    Misc:Button("Hop To Lower Player",function()
        local maxplayers, gamelink, goodserver, data_table = math.huge, "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
		if not _G.FailedServerID then _G.FailedServerID = {} end

		local function serversearch()
			data_table = game:GetService"HttpService":JSONDecode(game:HttpGetAsync(gamelink))
			for _, v in pairs(data_table.data) do
				pcall(function()
					if type(v) == "table" and v.id and v.playing and tonumber(maxplayers) > tonumber(v.playing) and not table.find(_G.FailedServerID, v.id) then
						maxplayers = v.playing
						goodserver = v.id
					end
				end)
			end
		end

		function getservers()
			pcall(serversearch)
			for i, v in pairs(data_table) do
				if i == "nextPageCursor" then
					if gamelink:find"&cursor=" then
						local a = gamelink:find"&cursor="
						local b = gamelink:sub(a)
						gamelink = gamelink:gsub(b, "")
					end
					gamelink = gamelink .. "&cursor=" .. v
					pcall(getservers)
				end
			end
		end

		pcall(getservers)
		wait()
		if goodserver == game.JobId or maxplayers == #game:GetService"Players":GetChildren() - 1 then
		end
		table.insert(_G.FailedServerID, goodserver)
		game:GetService"TeleportService":TeleportToPlaceInstance(game.PlaceId, goodserver)
    end)

Misc:Seperator(" Open Menu ")

Misc:Button("Inventory",function()
 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")
		game.Players.localPlayer.PlayerGui.Main.Inventory.Visible = true
end)

Misc:Button("Devil Fruit Shop",function()
 local args = {
			[1] = "GetFruits"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		game.Players.localPlayer.PlayerGui.Main.FruitShop.Visible = true
end)


Misc:Button("Title Name",function()
 local args = {
			[1] = "getTitles"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
end)


Misc:Button("Color Haki",function()
 game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
end)

Misc:Seperator(" Codes ")
    
    
local x2Code = {
 "EXP_5B",
 "CONTROL",
 "UPDATE11",
 "XMASEXP",
 "1BILLION",
 "ShutDownFix2",
 "UPD14",
 "STRAWHATMAINE",
 "TantaiGaming",
 "Colosseum",
 "Axiore",
 "Sub2Daigrock",
 "Sky Island 3",
 "Sub2OfficialNoobie",
 "SUB2NOOBMASTER123",
 "THEGREATACE",
 "Fountain City",
 "BIGNEWS",
 "FUDD10",
 "SUB2GAMERROBOT_EXP1",
 "UPD15",
 "2BILLION",
 "UPD16",
 "3BVISITS",
 "fudd10_v2",
 "Starcodeheo",
 "Magicbus",
 "JCWK",
 "Bluxxy",
 "Sub2Fer999",
 "Enyu_is_Pro"
}
    
    Misc:Button("Redeem All Codes",function()
        function RedeemCode(value)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
        end
        for i,v in pairs(x2Code) do
            RedeemCode(v)
        end
    end)
    
    Misc:Dropdown("Selected Codes",{"1MLIKES_RESET","THIRDSEA","SUB2GAMERROBOT_RESET1","SUB2UNCLEKIZARU"},function(value)
        _G.CodeSelect = value
    end)
    
    Misc:Button("Redeem Code",function()
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(_G.CodeSelect)
    end)


Misc:Seperator(" Player Misc ")
    
    
    Misc:Dropdown("Select Haki State",{"State 0","State 1","State 2","State 3","State 4","State 5"},function(value)
        _G.SelectStateHaki = value
    end)
    
    Misc:Button("Change Buso Haki State",function()
        if _G.SelectStateHaki == "State 0" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",0)
        elseif _G.SelectStateHaki == "State 1" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",1)
        elseif _G.SelectStateHaki == "State 2" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",2)
        elseif _G.SelectStateHaki == "State 3" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",3)
        elseif _G.SelectStateHaki == "State 4" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",4)
        elseif _G.SelectStateHaki == "State 5" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",5)
        end
    end)

    Misc:Toggle("Walk on Water",true,function(value)
        _G.WalkWater = value
    end)

		Misc:Button("Remove Lava",function()
			for i,v in pairs(game.Workspace:GetDescendants()) do
				if v.Name == "Lava" then   
					v:Destroy()
				end
			end
			for i,v in pairs(game.ReplicatedStorage:GetDescendants()) do
				if v.Name == "Lava" then   
					v:Destroy()
				end
			end
		end)
		end
    
spawn(function()
			while task.wait() do
				pcall(function()
					if _G.WalkWater then
						game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
					else
						game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
					end
				end)
			end
		end)
    Misc:Button("Unlock FPS",function()
        setfpscap(100)
    end)
Misc:Button("Invisible",function()
        game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
    end)


Op:Label("Name : "..game.Players.LocalPlayer.Name)



if W then
Op:Label("World : 1")
end

if W2 then
Op:Label("World : 2")
end

if W3 then
Op:Label("World : 3")
end

Op:Label("Race : "..game:GetService("Players").LocalPlayer.Data.Race.Value)

Op:Label("Fruit : "..game.Players.LocalPlayer.Data.DevilFruit.Value)

Op:Label("Level : "..game.Players.localPlayer.Data.Level.Value)

Op:Label("Bounty : "..game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value)

Op:Seperator("\\\\\  Sword  //")

local Saber = Op:Label("❌: Saber")
local Rengoku = Op:Label("❌: Rengoku")
local Midnight_Blade = Op:Label("❌: Midnight Blade")
local Dragon_Trident = Op:Label("❌: Dragon Trident")
local Yama = Op:Label("❌: Yama")
local Buddy_Sword = Op:Label("❌: Buddy Sword")
local Canvander = Op:Label("❌: Canvander")
local Twin_Hooks = Op:Label("❌: Twin Hooks")
local Spikey_Trident = Op:Label("❌: Spikey Trident")
local Hallow_Scythe = Op:Label("❌: Hallow Scythe")
local Dark_Dagger = Op:Label("❌: Dark Dagger")
local Tushita = Op:Label("❌: Tushita")

spawn(function()
    while task.wait() do
        pcall(function()
            for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
                if v.Name == "Saber" then
                    Saber:Set("✅: Saber")
                end
                if v.Name == "Rengoku" then
                    Rengoku:Set("✅: Rengoku")
                end
                if v.Name == "Midnight Blade" then
                    Midnight_Blade:Set("✅: Midnight Blade")
                end
                if v.Name == "Dragon Trident" then
                    Dragon_Trident:Set("✅: Dragon Trident")
                end
                if v.Name == "Yama" then
                    Yama:Set("✅: Yama")
                end
                if v.Name == "Buddy Sword" then
                    Buddy_Sword:Set("✅: Buddy Sword")
                end
                if v.Name == "Canvander" then
                    Canvander:Set("✅: Canvander")
                end
                if v.Name == "Twin Hooks" then
                    Twin_Hooks:Set("✅: Twin Hooks")
                end
                if v.Name == "Spikey Trident" then
                    Spikey_Trident:Set("✅: Spikey Trident")
                end
                if v.Name == "Hallow Scythe" then
                    Hallow_Scythe:Set("✅: Hallow Scythe")
                end
                if v.Name == "Dark Dagger" then
                    Dark_Dagger:Set("✅: Dark Dagger")
                end
                if v.Name == "Tushita" then
                    Tushita:Set("✅: Tushita")
                 end
            end
        end)
    end
end)

Op:Seperator("\\\\\  Quest  //")

local Bartilo_Quest = Op:Label("❌: Bartilo Quest")
local Don_Swan_Quest = Op:Label("❌: Don Swan Quest")
local Kill_Don_Swan = Op:Label("❌: Kill Don Swan")

spawn(function()
    while task.wait() do
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
            Bartilo_Quest:Set("✅: Bartilo Quest")
        end

        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
            --Nothing
        else
            Don_Swan_Quest:Set("✅: Don Swan Quest")
        end

        if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1 then
            Kill_Don_Swan:Set("✅: Kill Don Swan")
        end
    end
end)

Op:Seperator("\\\\\  Sword Legendary  //")

local Shisui = Op:Label("❌: Shisui")
local Saddi = Op:Label("❌: Saddi")
local Wando = Op:Label("❌: Wando")
local True_Triple_Katana = Op:Label("❌: True Triple Katana")

spawn(function()
    while task.wait() do
        pcall(function()
            for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
                if v.Name == "Shisui" then
                    Shisui:Set("✅: Shisui")
                end
                if v.Name == "Saddi" then
                    Saddi:Set("✅: Saddi")
                end
                if v.Name == "Wando" then
                    Wando:Set("✅: Wando")
                end
                if v.Name == "True Triple Katana" then
                    True_Triple_Katana:Set("✅: True Triple Katana")
                end
            end
        end)
    end
end)

Op:Seperator("\\\\\  Melee  //")

local Superhuman = Op:Label("❌: Superhuman")
local Death_Step = Op:Label("❌: Death Step")
local Sharkman_Karate = Op:Label("❌: Sharkman Karate")
local Electric_Claw = Op:Label("❌: Electric Claw")
local Dragon_Talon = Op:Label("❌: Dragon Talon")
local God_Human = Op:Label("❌: God Human")

spawn(function()
    while task.wait() do
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true) == 1 then
            Superhuman:Set("✅: Superhuman")
        end
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true) == 1 then
            Death_Step:Set("✅: Death Step")
        end
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == 1 then
            Sharkman_Karate:Set("✅: Sharkman Karate")
        end
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true) == 1 then
            Electric_Claw:Set("✅: Electric Claw")
        end
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true) == 1 then
            Dragon_Talon:Set("✅: Dragon Talon")
        end
    end
end)

Op:Seperator("\\\\\  Gun  //")

local Kabu_cha = Op:Label("❌: Kabucha")
local Acidum_Rifle = Op:Label("❌: Acidum Rifle")
local Bizarre_Rifle = Op:Label("❌: Bizarre Rifle")

spawn(function()
    while task.wait() do
        pcall(function()
            for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
                if v.Name == "Kabucha" then
                    Kabu_cha:Set("✅: Kabucha")
                end
                if v.Name == "Acidum Rifle" then
                    Acidum_Rifle:Set("✅: Acidum Rifle")
                end
                if v.Name == "Bizarre Rifle" then
                    Bizarre_Rifle:Set("✅: Bizarre Rifle")
                end
            end
        end)
    end
end)



Op:Seperator("\\\\\  Accessory  //")

local Dark_Coat = Op:Label("❌: Dark Coat")
local Ghoul_Mask = Op:Label("❌: Ghoul Mask")
local Swan_Glass = Op:Label("❌: Swan Glass")
local Pale_Scarf = Op:Label("❌: Pale Scarf")
local Valkyrie_Helm = Op:Label("❌: Valkyrie Helm")


spawn(function()
    while task.wait() do
        pcall(function()
            for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
                if v.Name == "Saber" then
                    Dark_Coat:Set("✅: Dark Coat")
                end
                if v.Name == "Ghoul Mask" then
                    Ghoul_Mask:Set("✅: Ghoul Mask")
                end
                if v.Name == "Swan Glasses" then
                    Swan_Glass:Set("✅: Swan Glass")
                end
                if v.Name == "Pale Scarf" then
                    Pale_Scarf:Set("✅: Pale Scarf")
                end
                if v.Name == "Valkyrie Helmet" then
                    Valkyrie_Helm:Set("✅: Valkyrie Helmet")
                end
            end
        end)
    end
end)