-- bypass

repeat wait() until game:IsLoaded()
local uis = game:GetService('UserInputService')
local txt = uis:GetFocusedTextBox()

local old
old = hookmetamethod(uis, "__namecall", function(...)
	if getnamecallmethod() == "GetFocusedTextBox" then
		return
	end
	
	return old(...)
end)

local old2
old2 = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
	if getnamecallmethod() == "Destroy" and self.Name == "CharacterHandler" then
		return
	end
	return old2(self,...)
end));

if game.CoreGui:FindFirstChild("ScreenGui") then
	game.CoreGui:FindFirstChild("ScreenGui"):Destroy()
end

do
	coroutine.wrap(function()
		repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LeaderboardGui")
		game:GetService("Players").LocalPlayer.PlayerGui.LeaderboardGui:Destroy()
	end)()
	
	coroutine.wrap(function()
		repeat task.wait(0.1) until game:GetService("Players").LocalPla
	end)()
	
	local event = Instance.new("BindableEvent")
	local CurrentPlayerSelected
	local currentplayerspectating
	local connection1
	local connection2
	local hungerconnection
	local runesconnection
	local livesconnection
	local daysconnection
	local charaddconnection
	local charremoveconnection
	local playerremovingconnection
	
	-- inne
	
	local ScreenGui = Instance.new("ScreenGui")
	local MainFrame = Instance.new("ImageLabel")
	local ScrollingFrame = Instance.new("ScrollingFrame")
	local PlayerName = Instance.new("TextLabel")
	local Overlay = Instance.new("ImageLabel")
	local Class = Instance.new("TextLabel")
	local Overlay_2 = Instance.new("ImageLabel")
	local PlayersHP = Instance.new("TextLabel")
	local Overlay_3 = Instance.new("ImageLabel")
	local HealthBar = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Race = Instance.new("TextLabel")
	local Overlay_4 = Instance.new("ImageLabel")
	local Lives = Instance.new("TextLabel")
	local Overlay_5 = Instance.new("ImageLabel")
	local Days = Instance.new("TextLabel")
	local Overlay_6 = Instance.new("ImageLabel")
	local Artifact = Instance.new("TextLabel")
	local Overlay_7 = Instance.new("ImageLabel")
	local Runes = Instance.new("TextLabel")
	local Overlay_8 = Instance.new("ImageLabel")
	local Silver = Instance.new("TextLabel")
	local Overlay_9 = Instance.new("ImageLabel")
	local FoodNumber = Instance.new("TextLabel")
	local Overlay_10 = Instance.new("ImageLabel")
	local Vamp = Instance.new("TextLabel")
	local Overlay_11 = Instance.new("ImageLabel")
	local Enchant = Instance.new("TextLabel")
	local Overlay_12 = Instance.new("ImageLabel")
	local FoodBar = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local Overlay_13 = Instance.new("ImageLabel")
	local Bell = Instance.new("TextLabel")
	local Overlay_14 = Instance.new("ImageLabel")
	local Edict = Instance.new("TextLabel")
	local Overlay_15 = Instance.new("ImageLabel")

	-- ustawienia
	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	ScreenGui.Enabled = false
	ScreenGui.ResetOnSpawn = false

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = ScreenGui
	MainFrame.AnchorPoint = Vector2.new(1, 0)
	MainFrame.BackgroundColor3 = Color3.fromRGB(248, 248, 248)
	MainFrame.BackgroundTransparency = 1.000
	MainFrame.Position = UDim2.new(0.979218304, 0, 0.55886972, 0)
	MainFrame.Size = UDim2.new(0.118994176, 150, 0.0643642098, 200)
	MainFrame.Image = "rbxassetid://1327087642"
	MainFrame.ImageTransparency = 0.800
	MainFrame.ScaleType = Enum.ScaleType.Slice
	MainFrame.SliceCenter = Rect.new(20, 20, 190, 190)

	ScrollingFrame.Parent = MainFrame
	ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ScrollingFrame.BackgroundTransparency = 1.000
	ScrollingFrame.BorderSizePixel = 0
	ScrollingFrame.Position = UDim2.new(0, 15, 0, 10)
	ScrollingFrame.Size = UDim2.new(1, -30, 1, -20)
	ScrollingFrame.BottomImage = "rbxassetid://3515608177"
	ScrollingFrame.MidImage = "rbxassetid://3515608813"
	ScrollingFrame.ScrollBarThickness = 10
	ScrollingFrame.TopImage = "rbxassetid://3515609176"
	ScrollingFrame.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar

	PlayerName.Name = "PlayerName"
	PlayerName.Parent = ScrollingFrame
	PlayerName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	PlayerName.BackgroundTransparency = 1.000
	PlayerName.BorderSizePixel = 0
	PlayerName.Size = UDim2.new(1, 0, 0.0500000007, 0)
	PlayerName.Font = Enum.Font.SourceSansSemibold
	PlayerName.Text = "Name"
	PlayerName.TextColor3 = Color3.fromRGB(255, 255, 255)
	PlayerName.TextSize = 18.000
	PlayerName.TextStrokeTransparency = 0.000
	PlayerName.TextYAlignment = Enum.TextYAlignment.Top

	Overlay.Name = "Overlay"
	Overlay.Parent = PlayerName
	Overlay.AnchorPoint = Vector2.new(0.5, 0.5)
	Overlay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Overlay.BackgroundTransparency = 1.000
	Overlay.Position = UDim2.new(0.5, 0, 0.5, 0)
	Overlay.Size = UDim2.new(1, 0, 1, 0)
	Overlay.ZIndex = 0
	Overlay.Image = "rbxassetid://2739347995"
	Overlay.ImageColor3 = Color3.fromRGB(245, 197, 130)
	Overlay.ScaleType = Enum.ScaleType.Slice
	Overlay.SliceCenter = Rect.new(5, 5, 5, 5)

	Class.Name = "Klasa"
	Class.Parent = ScrollingFrame
	Class.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Class.BackgroundTransparency = 1.000
	Class.BorderSizePixel = 0
	Class.Position = UDim2.new(0, 0, 0.150000006, 0)
	Class.Size = UDim2.new(1, 0, 0.0500000007, 0)
	Class.Font = Enum.Font.SourceSansSemibold
	Class.Text = "N/A"
	Class.TextColor3 = Color3.fromRGB(255, 255, 255)
	Class.TextSize = 18.000
	Class.TextStrokeTransparency = 0.000
	Class.TextYAlignment = Enum.TextYAlignment.Top

	Overlay_2.Name = "Overlay"
	Overlay_2.Parent = Class
	Overlay_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Overlay_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Overlay_2.BackgroundTransparency = 1.000
	Overlay_2.Position = UDim2.new(0.5, 0, 0.5, 0)
	Overlay_2.Size = UDim2.new(1, 0, 1, 0)
	Overlay_2.ZIndex = 0
	Overlay_2.Image = "rbxassetid://2739347995"
	Overlay_2.ImageColor3 = Color3.fromRGB(245, 197, 130)
	Overlay_2.ScaleType = Enum.ScaleType.Slice
	Overlay_2.SliceCenter = Rect.new(5, 5, 5, 5)

	PlayersHP.Name = "PlayersHP"
	PlayersHP.Parent = ScrollingFrame
	PlayersHP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	PlayersHP.BackgroundTransparency = 1.000
	PlayersHP.BorderSizePixel = 0
	PlayersHP.ClipsDescendants = true
	PlayersHP.Position = UDim2.new(0, 0, 0.0500000007, 0)
	PlayersHP.Size = UDim2.new(1, 0, 0.0500000007, 0)
	PlayersHP.ZIndex = 2
	PlayersHP.Font = Enum.Font.SourceSansSemibold
	PlayersHP.Text = "100"
	PlayersHP.TextColor3 = Color3.fromRGB(255, 255, 255)
	PlayersHP.TextSize = 18.000
	PlayersHP.TextStrokeTransparency = 0.000
	PlayersHP.TextYAlignment = Enum.TextYAlignment.Top

	Overlay_3.Name = "Overlay"
	Overlay_3.Parent = PlayersHP
	Overlay_3.AnchorPoint = Vector2.new(0.5, 0.5)
	Overlay_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Overlay_3.BackgroundTransparency = 1.000
	Overlay_3.ClipsDescendants = true
	Overlay_3.Position = UDim2.new(0.5, 0, 0.5, 0)
	Overlay_3.Size = UDim2.new(1, 0, 1, 0)
	Overlay_3.ZIndex = 0
	Overlay_3.Image = "rbxassetid://2739347995"
	Overlay_3.ImageColor3 = Color3.fromRGB(245, 197, 130)
	Overlay_3.ScaleType = Enum.ScaleType.Slice
	Overlay_3.SliceCenter = Rect.new(5, 5, 5, 5)

	HealthBar.Name = "HealthBar"
	HealthBar.Parent = ScrollingFrame
	HealthBar.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	HealthBar.Position = UDim2.new(0, 0, 0.0500000007, 0)
	HealthBar.Size = UDim2.new(1, 0, 0.0450000018, 0)

	UICorner.CornerRadius = UDim.new(0, 9)
	UICorner.Parent = HealthBar

	Race.Name = "Rasa"
	Race.Parent = ScrollingFrame
	Race.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Race.BackgroundTransparency = 1.000
	Race.BorderSizePixel = 0
	Race.Position = UDim2.new(0, 0, 0.200000003, 0)
	Race.Size = UDim2.new(1, 0, 0.0500000007, 0)
	Race.Font = Enum.Font.SourceSansSemibold
	Race.Text = "N/A"
	Race.TextColor3 = Color3.fromRGB(255, 255, 255)
	Race.TextSize = 18.000
	Race.TextStrokeTransparency = 0.000
	Race.TextYAlignment = Enum.TextYAlignment.Top

	Overlay_4.Name = "Overlay"
	Overlay_4.Parent = Race
	Overlay_4.AnchorPoint = Vector2.new(0.5, 0.5)
	Overlay_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Overlay_4.BackgroundTransparency = 1.000
	Overlay_4.Position = UDim2.new(0.5, 0, 0.5, 0)
	Overlay_4.Size = UDim2.new(1, 0, 1, 0)
	Overlay_4.ZIndex = 0
	Overlay_4.Image = "rbxassetid://2739347995"
	Overlay_4.ImageColor3 = Color3.fromRGB(245, 197, 130)
	Overlay_4.ScaleType = Enum.ScaleType.Slice
	Overlay_4.SliceCenter = Rect.new(5, 5, 5, 5)

	Lives.Name = "Zycia"
	Lives.Parent = ScrollingFrame
	Lives.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Lives.BackgroundTransparency = 1.000
	Lives.BorderSizePixel = 0
	Lives.Position = UDim2.new(0, 0, 0.300000012, 0)
	Lives.Size = UDim2.new(0.5, 0, 0.0500000007, 0)
	Lives.Font = Enum.Font.SourceSansSemibold
	Lives.Text = "N/A"
	Lives.TextColor3 = Color3.fromRGB(255, 255, 255)
	Lives.TextSize = 18.000
	Lives.TextStrokeTransparency = 0.000
	Lives.TextYAlignment = Enum.TextYAlignment.Top

	Overlay_5.Name = "Overlay"
	Overlay_5.Parent = Lives
	Overlay_5.AnchorPoint = Vector2.new(0.5, 0.5)
	Overlay_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Overlay_5.BackgroundTransparency = 1.000
	Overlay_5.Position = UDim2.new(0.5, 0, 0.5, 0)
	Overlay_5.Size = UDim2.new(1, 0, 1, 0)
	Overlay_5.ZIndex = 0
	Overlay_5.Image = "rbxassetid://2739347995"
	Overlay_5.ImageColor3 = Color3.fromRGB(245, 197, 130)
	Overlay_5.ScaleType = Enum.ScaleType.Slice
	Overlay_5.SliceCenter = Rect.new(5, 5, 5, 5)

	Days.Name = "Dni"
	Days.Parent = ScrollingFrame
	Days.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Days.BackgroundTransparency = 1.000
	Days.BorderSizePixel = 0
	Days.Position = UDim2.new(0.5, 0, 0.300000012, 0)
	Days.Size = UDim2.new(0.5, 0, 0.0500000007, 0)
	Days.Font = Enum.Font.SourceSansSemibold
	Days.Text = "N/A"
	Days.TextColor3 = Color3.fromRGB(255, 255, 255)
	Days.TextSize = 18.000
	Days.TextStrokeTransparency = 0.000
	Days.TextYAlignment = Enum.TextYAlignment.Top

	Overlay_6.Name = "Overlay"
	Overlay_6.Parent = Days
	Overlay_6.AnchorPoint = Vector2.new(0.5, 0.5)
	Overlay_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Overlay_6.BackgroundTransparency = 1.000
	Overlay_6.Position = UDim2.new(0.5, 0, 0.5, 0)
	Overlay_6.Size = UDim2.new(1, 0, 1, 0)
	Overlay_6.ZIndex = 0
	Overlay_6.Image = "rbxassetid://2739347995"
	Overlay_6.ImageColor3 = Color3.fromRGB(245, 197, 130)
	Overlay_6.ScaleType = Enum.ScaleType.Slice
	Overlay_6.SliceCenter = Rect.new(5, 5, 5, 5)

	Artifact.Name = "Artefakt"
	Artifact.Parent = ScrollingFrame
	Artifact.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Artifact.BackgroundTransparency = 1.000
	Artifact.BorderSizePixel = 0
	Artifact.Position = UDim2.new(0, 0, 0.25, 0)
	Artifact.Size = UDim2.new(1, 0, 0.0500000007, 0)
	Artifact.Font = Enum.Font.SourceSansSemibold
	Artifact.Text = "N/A"
	Artifact.TextColor3 = Color3.fromRGB(255, 255, 255)
	Artifact.TextSize = 18.000
	Artifact.TextStrokeTransparency = 0.000
	Artifact.TextYAlignment = Enum.TextYAlignment.Top

	Overlay_7.Name = "Overlay"
	Overlay_7.Parent = Artifact
	Overlay_7.AnchorPoint = Vector2.new(0.5, 0.5)
	Overlay_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Overlay_7.BackgroundTransparency = 1.000
	Overlay_7.Position = UDim2.new(0.5, 0, 0.5, 0)
	Overlay_7.Size = UDim2.new(1, 0, 1, 0)
	Overlay_7.ZIndex = 0
	Overlay_7.Image = "rbxassetid://2739347995"
	Overlay_7.ImageColor3 = Color3.fromRGB(245, 197, 130)
	Overlay_7.ScaleType = Enum.ScaleType.Slice
	Overlay_7.SliceCenter = Rect.new(5, 5, 5, 5)

	Runes.Name = "Runy"
	Runes.Parent = ScrollingFrame
	Runes.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Runes.BackgroundTransparency = 1.000
	Runes.BorderSizePixel = 0
	Runes.Position = UDim2.new(0, 0, 0.349999994, 0)
	Runes.Size = UDim2.new(0.5, 0, 0.0500000007, 0)
	Runes.Font = Enum.Font.SourceSansSemibold
	Runes.Text = "N/A"
	Runes.TextColor3 = Color3.fromRGB(255, 255, 255)
	Runes.TextSize = 18.000
	Runes.TextStrokeTransparency = 0.000
	Runes.TextYAlignment = Enum.TextYAlignment.Top

	Overlay_8.Name = "Overlay"
	Overlay_8.Parent = Runes
	Overlay_8.AnchorPoint = Vector2.new(0.5, 0.5)
	Overlay_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Overlay_8.BackgroundTransparency = 1.000
	Overlay_8.Position = UDim2.new(0.5, 0, 0.5, 0)
	Overlay_8.Size = UDim2.new(1, 0, 1, 0)
	Overlay_8.ZIndex = 0
	Overlay_8.Image = "rbxassetid://2739347995"
	Overlay_8.ImageColor3 = Color3.fromRGB(245, 197, 130)
	Overlay_8.ScaleType = Enum.ScaleType.Slice
	Overlay_8.SliceCenter = Rect.new(5, 5, 5, 5)

	Silver.Name = "Silver"
	Silver.Parent = ScrollingFrame
	Silver.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Silver.BackgroundTransparency = 1.000
	Silver.BorderSizePixel = 0
	Silver.Position = UDim2.new(0.5, 0, 0.349999994, 0)
	Silver.Size = UDim2.new(0.5, 0, 0.0500000007, 0)
	Silver.Font = Enum.Font.SourceSansSemibold
	Silver.Text = "N/A"
	Silver.TextColor3 = Color3.fromRGB(255, 255, 255)
	Silver.TextSize = 18.000
	Silver.TextStrokeTransparency = 0.000
	Silver.TextWrapped = true
	Silver.TextYAlignment = Enum.TextYAlignment.Top

	Overlay_9.Name = "Overlay"
	Overlay_9.Parent = Silver
	Overlay_9.AnchorPoint = Vector2.new(0.5, 0.5)
	Overlay_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Overlay_9.BackgroundTransparency = 1.000
	Overlay_9.Position = UDim2.new(0.5, 0, 0.5, 0)
	Overlay_9.Size = UDim2.new(1, 0, 1, 0)
	Overlay_9.ZIndex = 0
	Overlay_9.Image = "rbxassetid://2739347995"
	Overlay_9.ImageColor3 = Color3.fromRGB(245, 197, 130)
	Overlay_9.ScaleType = Enum.ScaleType.Slice
	Overlay_9.SliceCenter = Rect.new(5, 5, 5, 5)

	FoodNumber.Name = "FoodNumber"
	FoodNumber.Parent = ScrollingFrame
	FoodNumber.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	FoodNumber.BackgroundTransparency = 1.000
	FoodNumber.BorderSizePixel = 0
	FoodNumber.ClipsDescendants = true
	FoodNumber.Position = UDim2.new(0, 0, 0.100000001, 0)
	FoodNumber.Size = UDim2.new(1, 0, 0.0500000007, 0)
	FoodNumber.ZIndex = 2
	FoodNumber.Font = Enum.Font.SourceSansSemibold
	FoodNumber.Text = "100"
	FoodNumber.TextColor3 = Color3.fromRGB(255, 255, 255)
	FoodNumber.TextSize = 18.000
	FoodNumber.TextStrokeTransparency = 0.000
	FoodNumber.TextYAlignment = Enum.TextYAlignment.Top

	Overlay_10.Name = "Overlay"
	Overlay_10.Parent = FoodNumber
	Overlay_10.AnchorPoint = Vector2.new(0.5, 0.5)
	Overlay_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Overlay_10.BackgroundTransparency = 1.000
	Overlay_10.ClipsDescendants = true
	Overlay_10.Position = UDim2.new(0.5, 0, 0.5, 0)
	Overlay_10.Size = UDim2.new(1, 0, 1, 0)
	Overlay_10.ZIndex = 0
	Overlay_10.Image = "rbxassetid://2739347995"
	Overlay_10.ImageColor3 = Color3.fromRGB(245, 197, 130)
	Overlay_10.ScaleType = Enum.ScaleType.Slice
	Overlay_10.SliceCenter = Rect.new(5, 5, 5, 5)

	Vamp.Name = "Vamp"
	Vamp.Parent = ScrollingFrame
	Vamp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Vamp.BackgroundTransparency = 1.000
	Vamp.BorderSizePixel = 0
	Vamp.Position = UDim2.new(0, 0, 0.400000006, 0)
	Vamp.Size = UDim2.new(0.5, 0, 0.0500000007, 0)
	Vamp.Font = Enum.Font.SourceSansSemibold
	Vamp.Text = "N/A"
	Vamp.TextColor3 = Color3.fromRGB(255, 255, 255)
	Vamp.TextSize = 18.000
	Vamp.TextStrokeTransparency = 0.000
	Vamp.TextYAlignment = Enum.TextYAlignment.Top

	Overlay_11.Name = "Overlay"
	Overlay_11.Parent = Vamp
	Overlay_11.AnchorPoint = Vector2.new(0.5, 0.5)
	Overlay_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Overlay_11.BackgroundTransparency = 1.000
	Overlay_11.Position = UDim2.new(0.5, 0, 0.5, 0)
	Overlay_11.Size = UDim2.new(1, 0, 1, 0)
	Overlay_11.ZIndex = 0
	Overlay_11.Image = "rbxassetid://2739347995"
	Overlay_11.ImageColor3 = Color3.fromRGB(245, 197, 130)
	Overlay_11.ScaleType = Enum.ScaleType.Slice
	Overlay_11.SliceCenter = Rect.new(5, 5, 5, 5)

	Enchant.Name = "Enchant"
	Enchant.Parent = ScrollingFrame
	Enchant.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Enchant.BackgroundTransparency = 1.000
	Enchant.BorderSizePixel = 0
	Enchant.Position = UDim2.new(0.5, 0, 0.400000006, 0)
	Enchant.Size = UDim2.new(0.5, 0, 0.0500000007, 0)
	Enchant.Font = Enum.Font.SourceSansSemibold
	Enchant.Text = "N/A"
	Enchant.TextColor3 = Color3.fromRGB(255, 255, 255)
	Enchant.TextSize = 18.000
	Enchant.TextStrokeTransparency = 0.000
	Enchant.TextWrapped = true
	Enchant.TextYAlignment = Enum.TextYAlignment.Top

	Overlay_12.Name = "Overlay"
	Overlay_12.Parent = Enchant
	Overlay_12.AnchorPoint = Vector2.new(0.5, 0.5)
	Overlay_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Overlay_12.BackgroundTransparency = 1.000
	Overlay_12.Position = UDim2.new(0.5, 0, 0.5, 0)
	Overlay_12.Size = UDim2.new(1, 0, 1, 0)
	Overlay_12.ZIndex = 0
	Overlay_12.Image = "rbxassetid://2739347995"
	Overlay_12.ImageColor3 = Color3.fromRGB(245, 197, 130)
	Overlay_12.ScaleType = Enum.ScaleType.Slice
	Overlay_12.SliceCenter = Rect.new(5, 5, 5, 5)

	FoodBar.Name = "FoodBar"
	FoodBar.Parent = ScrollingFrame
	FoodBar.BackgroundColor3 = Color3.fromRGB(170, 85, 0)
	FoodBar.Position = UDim2.new(0, 0, 0.100000001, 0)
	FoodBar.Size = UDim2.new(1, 0, 0.0450000018, 0)
	FoodBar.ZIndex = 0

	UICorner_2.CornerRadius = UDim.new(0, 9)
	UICorner_2.Parent = FoodBar

	Overlay_13.Name = "Overlay"
	Overlay_13.Parent = MainFrame
	Overlay_13.AnchorPoint = Vector2.new(0.5, 0.5)
	Overlay_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Overlay_13.BackgroundTransparency = 1.000
	Overlay_13.Position = UDim2.new(0.5, 0, 0.5, 0)
	Overlay_13.Size = UDim2.new(1, 0, 1, 0)
	Overlay_13.ZIndex = 0
	Overlay_13.Image = "rbxassetid://2739347995"
	Overlay_13.ImageColor3 = Color3.fromRGB(245, 197, 130)
	Overlay_13.ScaleType = Enum.ScaleType.Slice
	Overlay_13.SliceCenter = Rect.new(5, 5, 5, 5)

	Bell.Name = "Bell"
	Bell.Parent = ScrollingFrame
	Bell.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Bell.BackgroundTransparency = 1.000
	Bell.BorderSizePixel = 0
	Bell.Position = UDim2.new(0.5, 0, 0.450000006, 0)
	Bell.Size = UDim2.new(0.5, 0, 0.0500000007, 0)
	Bell.Font = Enum.Font.SourceSansSemibold
	Bell.Text = "N/A"
	Bell.TextColor3 = Color3.fromRGB(255, 255, 255)
	Bell.TextSize = 14.000
	Bell.TextStrokeTransparency = 0.000
	Bell.TextWrapped = true
	Bell.TextYAlignment = Enum.TextYAlignment.Top

	Overlay_14.Name = "Overlay"
	Overlay_14.Parent = Bell
	Overlay_14.AnchorPoint = Vector2.new(0.5, 0.5)
	Overlay_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Overlay_14.BackgroundTransparency = 1.000
	Overlay_14.Position = UDim2.new(0.5, 0, 0.5, 0)
	Overlay_14.Size = UDim2.new(1, 0, 1, 0)
	Overlay_14.ZIndex = 0
	Overlay_14.Image = "rbxassetid://2739347995"
	Overlay_14.ImageColor3 = Color3.fromRGB(245, 197, 130)
	Overlay_14.ScaleType = Enum.ScaleType.Slice
	Overlay_14.SliceCenter = Rect.new(5, 5, 5, 5)

	Edict.Name = "Edict"
	Edict.Parent = ScrollingFrame
	Edict.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Edict.BackgroundTransparency = 1.000
	Edict.BorderSizePixel = 0
	Edict.Position = UDim2.new(0, 0, 0.449999994, 0)
	Edict.Size = UDim2.new(0.5, 0, 0.0500000007, 0)
	Edict.Font = Enum.Font.SourceSansSemibold
	Edict.Text = "N/A"
	Edict.TextColor3 = Color3.fromRGB(255, 255, 255)
	Edict.TextSize = 18.000
	Edict.TextStrokeTransparency = 0.000
	Edict.TextYAlignment = Enum.TextYAlignment.Top

	Overlay_15.Name = "Overlay"
	Overlay_15.Parent = Edict
	Overlay_15.AnchorPoint = Vector2.new(0.5, 0.5)
	Overlay_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Overlay_15.BackgroundTransparency = 1.000
	Overlay_15.Position = UDim2.new(0.5, 0, 0.5, 0)
	Overlay_15.Size = UDim2.new(1, 0, 1, 0)
	Overlay_15.ZIndex = 0
	Overlay_15.Image = "rbxassetid://2739347995"
	Overlay_15.ImageColor3 = Color3.fromRGB(245, 197, 130)
	Overlay_15.ScaleType = Enum.ScaleType.Slice
	Overlay_15.SliceCenter = Rect.new(5, 5, 5, 5)
	
	function UpdateHealthbar(plr)
		if CurrentPlayerSelected and CurrentPlayerSelected.Character and CurrentPlayerSelected.Character:FindFirstChild("Humanoid") then
			local plrchar = CurrentPlayerSelected.Character or nil
			local humanoid = plrchar:FindFirstChild("Humanoid")
			
			if CurrentPlayerSelected.Character and CurrentPlayerSelected.Character:FindFirstChild("Humanoid") then
				local healthvalue = humanoid.Health or 0
				local maxhealthvalue = humanoid.MaxHealth or 0
				--local hungervalue = CurrentPlayerSelected.Data.Hunger.Value or 0
				--local livesvalue = CurrentPlayerSelected.Data.Lives.Value or 0
				local health = math.clamp(healthvalue / maxhealthvalue, 0, 1)
				--local food = math.clamp(hungervalue / 100, 0, 1)
				HealthBar.Size = UDim2.fromScale(health, 0.045)
				PlayersHP.Text = tostring(math.round(humanoid.Health))
				--FoodBar.Size = UDim2.fromScale(food, 0.045)
				--FoodNumber.Text = "Hunger : ".. tostring(math.round(hungervalue))
				--Lives.Text = "Lives: ".. tostring(math.round(livesvalue))
			else
				return
			end
		else
			return
		end
	end
	
	local function updatefood()
		if CurrentPlayerSelected and CurrentPlayerSelected:FindFirstChild("Datag") and CurrentPlayerSelected:FindFirstChild("Data"):FindFirstChild("Hunger") then
			local hungervalue = CurrentPlayerSelected:FindFirstChild("Data"):FindFirstChild("Hunger").Value or 0
			local food = math.clamp(hungervalue / 100, 0, 1)
			FoodBar.Size = UDim2.fromScale(food, 0.045)
			FoodNumber.Text = "Hunger : ".. tostring(math.round(hungervalue))
		end
	end
	
	local function updatelives()
		local livesvalue = CurrentPlayerSelected.Data.Lives.Value or 0
		Lives.Text = "Lives: ".. tostring(math.round(livesvalue))
	end
	
	local function charremove()
		PlayersHP.Text = "N/A"
		FoodNumber.Text = "N/A"
		Days.Text = "N/A"
		Artifact.Text = "N/A"
		Silver.Text = "N/A"
		Runes.Text = "N/A"
		Race.Text = "N/A"
		Lives.Text = "N/A"
		Bell.Text = "N/A"
		Edict.Text = "N/A"
		
		if connection1 then
			connection1:Disconnect()
		end
		if connection2 then
			connection2:Disconnect()
		end
		
		if hungerconnection then
			hungerconnection:Disconnect()
		end
		if livesconnection then
			livesconnection:Disconnect()
		end
		if charaddconnection then
			charaddconnection:Disconnect()
		end
		if charremoveconnection then
			charremoveconnection:Disconnect()
		end
	end
	
	local function playerremove(player)
		if player == CurrentPlayerSelected then
			PlayerName.Text = "N/A"
			PlayersHP.Text = "N/A"
			FoodNumber.Text = "N/A"
			Days.Text = "N/A"
			Artifact.Text = "N/A"
			Silver.Text = "N/A"
			Runes.Text = "N/A"
			Race.Text = "N/A"
			Lives.Text = "N/A"
			Class.Text = "N/A"
			Bell.Text = "N/A"
			if connection1 then
				connection1:Disconnect()
			end
			if connection2 then
				connection2:Disconnect()
			end
			
			if hungerconnection then
				hungerconnection:Disconnect()
			end
			if daysconnection then
				daysconnection:Disconnect()
			end
			if livesconnection then
				livesconnection:Disconnect()
			end
			if charaddconnection then
				charaddconnection:Disconnect()
			end
			if charremoveconnection then
				charremoveconnection:Disconnect()
			end
			CurrentPlayerSelected = nil
			if playerremovingconnection then
				playerremovingconnection:Disconnect()
			end
		end
	end
	local function updatespy()
		if CurrentPlayerSelected and CurrentPlayerSelected.Character and CurrentPlayerSelected.Character:FindFirstChild("Humanoid") then
			PlayerName.Text = CurrentPlayerSelected.Name
			local classtext = CurrentPlayerSelected.Data.Class.Value or "N/A"
			Class.Text = tostring(classtext)

			local data = CurrentPlayerSelected:FindFirstChild("Data")

			local plrchar = CurrentPlayerSelected.Character or nil
			local humanoid = plrchar:FindFirstChild("Humanoid") or nil

			local hungervalue = data.Hunger.Value or 0
			local livesvalue = data.Lives.Value or 0
			local healthvalue = humanoid.Health or 0
			local maxhealthvalue = humanoid.MaxHealth or 0
			local daysvalue = data.Days.Value or 0
			local artivalue = data.Artifact.Value or "N/A"
			local silvervalue = data.Silver.Value or 0
			local runesvalue = data.Runes.Value or 0
			local racevalue = data.Race.Value or "N/A"
			local vampvalue = data.IsVamp.Value or "N/A"
			local enchantvalue = data.Enchant.Value or "N/A"
			local bellvalue = data.Bell.Value or "N/A"
			local edictvalue = data.Edict.Value or "N/a"
			
			local food = math.clamp(hungervalue / 100, 0, 1)
			local health = math.clamp(healthvalue / maxhealthvalue, 0, 1)
			HealthBar.Size = UDim2.fromScale(health, 0.045)
			PlayersHP.Text = tostring(math.round(healthvalue))
			FoodBar.Size = UDim2.fromScale(food, 0.045)
			FoodNumber.Text = "Glod: ".. tostring(math.round(hungervalue))
			Days.Text = "Dni: ".. tostring(math.round(daysvalue))
			Artifact.Text = "Artefakt: ".. artivalue
			Silver.Text = "Silver: ".. tostring(math.round(silvervalue))
			Runes.Text = "Runy: ".. tostring(math.round(runesvalue))
			Race.Text = "Rasa: ".. racevalue
			Lives.Text = "Zycia: ".. tostring(math.round(livesvalue))
			Vamp.Text = "Vamp: ".. tostring(vampvalue)
			Enchant.Text = "Enchant: ".. tostring(enchantvalue)
			Bell.Text = "Bell: ".. tostring(bellvalue)
			Edict.Text = "Edict: ".. tostring(edictvalue)
			
			playerremovingconnection = game:GetService("Players").PlayerRemoving:Connect(playerremove)
			charremoveconnection = CurrentPlayerSelected.CharacterRemoving:Connect(charremove)
			connection1 = CurrentPlayerSelected.Character.Humanoid:GetPropertyChangedSignal("Health"):Connect(UpdateHealthbar)
			connection2 = CurrentPlayerSelected.Character.Humanoid:GetPropertyChangedSignal("MaxHealth"):Connect(UpdateHealthbar)
			hungerconnection = CurrentPlayerSelected.Data.Hunger:GetPropertyChangedSignal("Value"):Connect(updatefood)
			daysconnection = CurrentPlayerSelected.Data.Days:GetPropertyChangedSignal("Value"):Connect(UpdateHealthbar)
			livesconnection = CurrentPlayerSelected.Data.Lives:GetPropertyChangedSignal("Value"):Connect(updatelives)
			charaddconnection = CurrentPlayerSelected.CharacterAdded:Connect(UpdateHealthbar)
		else
			return
		end
	end
	------------------------------------------------------------------------------------------------------------------------------------
	local LeaderboardGui = Instance.new("ScreenGui")
	local PlayerLabel = Instance.new("TextLabel")
	local Prestige = Instance.new("TextLabel")
	local MainFrame = Instance.new("ImageLabel")
	local ScrollingFrame = Instance.new("ScrollingFrame")
	local PlayerLabel_2 = Instance.new("TextLabel")
	local Prestige_2 = Instance.new("TextLabel")

	--Properties:

	LeaderboardGui.Name = "Amungus"
	LeaderboardGui.Parent = game.CoreGui
	LeaderboardGui.DisplayOrder = 1
	LeaderboardGui.ResetOnSpawn = false

	PlayerLabel.Name = "PlayerLabel"
	PlayerLabel.Parent = game.StarterGui.LeaderboardGui.LeaderboardClient
	PlayerLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	PlayerLabel.BackgroundTransparency = 1.000
	PlayerLabel.BorderSizePixel = 0
	PlayerLabel.Size = UDim2.new(1, 0, 0, 20)
	PlayerLabel.Visible = false
	PlayerLabel.Font = Enum.Font.SourceSansSemibold
	PlayerLabel.Text = "          Lannis Shallow"
	PlayerLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	PlayerLabel.TextSize = 18.000
	PlayerLabel.TextStrokeTransparency = 0.500
	PlayerLabel.TextXAlignment = Enum.TextXAlignment.Left

	Prestige.Name = "Prestige"
	Prestige.Parent = PlayerLabel
	Prestige.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Prestige.BackgroundTransparency = 1.000
	Prestige.BorderSizePixel = 0
	Prestige.Size = UDim2.new(0, 35, 0, 20)
	Prestige.Visible = false
	Prestige.Font = Enum.Font.SourceSansSemibold
	Prestige.Text = "#???"
	Prestige.TextColor3 = Color3.fromRGB(255, 255, 255)
	Prestige.TextSize = 18.000
	Prestige.TextStrokeTransparency = 0.500
	Prestige.TextTransparency = 0.200
	Prestige.TextXAlignment = Enum.TextXAlignment.Left

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = LeaderboardGui
	MainFrame.AnchorPoint = Vector2.new(1, 0)
	MainFrame.BackgroundColor3 = Color3.fromRGB(248, 248, 248)
	MainFrame.BackgroundTransparency = 1.000
	MainFrame.Position = UDim2.new(1, 0, 0, 0)
	MainFrame.Size = UDim2.new(0.0500000007, 150, 0, 200)
	MainFrame.Image = "rbxassetid://1327087642"
	MainFrame.ImageTransparency = 0.800
	MainFrame.ScaleType = Enum.ScaleType.Slice
	MainFrame.SliceCenter = Rect.new(20, 20, 190, 190)

	ScrollingFrame.Parent = MainFrame
	ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ScrollingFrame.BackgroundTransparency = 1.000
	ScrollingFrame.BorderSizePixel = 0
	ScrollingFrame.Position = UDim2.new(0, 15, 0, 10)
	ScrollingFrame.Size = UDim2.new(1, -30, 1, -20)
	ScrollingFrame.BottomImage = "rbxassetid://3515608177"
	ScrollingFrame.MidImage = "rbxassetid://3515608813"
	ScrollingFrame.ScrollBarThickness = 10
	ScrollingFrame.TopImage = "rbxassetid://3515609176"
	ScrollingFrame.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar

	Prestige_2.Name = "Prestige"
	Prestige_2.Parent = PlayerLabel_2
	Prestige_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Prestige_2.BackgroundTransparency = 1.000
	Prestige_2.BorderSizePixel = 0
	Prestige_2.Size = UDim2.new(0, 35, 0, 20)
	Prestige_2.Visible = false
	Prestige_2.Font = Enum.Font.SourceSansSemibold
	Prestige_2.Text = "#???"
	Prestige_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Prestige_2.TextSize = 18.000
	Prestige_2.TextStrokeTransparency = 0.500
	Prestige_2.TextTransparency = 0.200
	Prestige_2.TextXAlignment = Enum.TextXAlignment.Left
	
	-- skrypty
	local function ZYXB_fake_script() -- LeaderboardGui.LeaderboardClient 


		while true do
			wait() 
			if game.Players.LocalPlayer then
				break 
			end 
		end 
		while true do
			wait() 
			if game.Players.LocalPlayer.Name ~= "" then
				break 
			end 
		end 
		local mainFrame = MainFrame 
		local plr = game.Players.LocalPlayer 
		local plrLabel = PlayerLabel 
		game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false) 
		local plrTableMain = {} 
		local function getFullName(plar)
			return plar.Data:WaitForChild('oName', 9e9).Value  --[[fullName]]
		end 
		local function resizeManager()
			local plrsInGame = {} 

			for _, playr in pairs(game.Players:GetPlayers()) do
				if plrTableMain[playr] then
					local RaceName = playr:WaitForChild("RaceName", 9e9) if RaceName.Value == '' then repeat task.wait() until RaceName.Value ~= '' end

					table.insert(plrsInGame, playr) 
				end 
			end 

			table.sort(plrsInGame, function(P1, P2)
				if not P1 then
					return true
				end
				if not P2 then
					return false
				end

				local Name1 = getFullName(P1)
				local Name2 = getFullName(P2)

				local FirstLastName1 = Name1:sub(1, 4) == 'Lord' and Name1:sub(6) or Name1
				local FirstLastName2 = Name2:sub(1, 4) == 'Lord' and Name2:sub(6) or Name2

				local FirstName, LastName = FirstLastName1:match('(%w+) ?(.+)')
				local FirstName2, LastName2 = FirstLastName2:match('(%w+) ?(.+)')

				local Value1 = LastName if not Value1 then return P1.Name < P2.Name end
				local Value2 = LastName2 if not Value2 then return P1.Name < P2.Name end

				if Value1 ~= '' and Value2 == '' then return true end
				if Value1 == '' and Value2 ~= '' then return false end
				if Value1 < Value2 then return true end
				if Value2 < Value1 then return false end

				local Value3 = FirstName if not Value3 then return P1.Name < P2.Name end
				local Value4 = FirstName2 if not Value4 then return P1.Name < P2.Name end

				if Value3 < Value4 then return true end
				if Value4 < Value3 then return false end

				return P1.Name < P2.Name
			end)

			local reversed = {}

			for i = #plrsInGame, 1, -1 do
				table.insert(reversed, plrsInGame[i])
			end

			for i, playrr in ipairs(reversed) do		
				if plrTableMain[playrr] then
					local playerFrame = plrTableMain[playrr] 
					playerFrame.Position = UDim2.new(0, 0, 0, (i - 1) * 20) 
					playerFrame.Visible = true 
				end 
			end 
			local v13 = #plrsInGame * 20 
			mainFrame.Size = UDim2.new(0.05, 150, 0, math.min(v13 + 20, 340)) 
			ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, v13) 
		end 
		local function createFunc(playyrr)
			if plrTableMain[playyrr] then
				return 
			end 
			local RaceName = playyrr:WaitForChild("RaceName", 9e9)
			local oName = playyrr.Data:WaitForChild("oName", 9e9)

			if playyrr.Data:FindFirstChild("Hidden") then return end

			local Rank = ""
			task.spawn(function()
				Rank = playyrr.Data:WaitForChild("Rank", 9e9)
				if (Rank) then
					Rank = "#"..Rank.Value.." "
				else
					Rank = ""
				end
			end)

			if RaceName.Value == '' then repeat task.wait() until RaceName.Value ~= '' end
			local newLabel = plrLabel:Clone()

			local stringvalue = Instance.new("StringValue", newLabel)
			local stringvalue2 = Instance.new("StringValue", newLabel)
			stringvalue.Name = "Name"
			stringvalue.Value = tostring(playyrr)
			stringvalue2.Name = "FakeName"
			stringvalue2.Value = getFullName(playyrr)


			plrTableMain[playyrr] = newLabel 
			newLabel.Visible = true 
			newLabel.Parent = ScrollingFrame 
			newLabel.Text = getFullName(playyrr) 


			local new = Instance.new("TextButton")
			new.Size = newLabel.Size
			new.AnchorPoint = newLabel.AnchorPoint
			new.Parent = newLabel
			new.SizeConstraint = newLabel.SizeConstraint
			new.BackgroundTransparency = 1
			new.TextTransparency = 1
			new.MouseButton1Click:Connect(function()
				if CurrentPlayerSelected == playyrr then
					ScreenGui.Enabled = false
					CurrentPlayerSelected = nil
					return
				else
					ScreenGui.Enabled = true
				end

				CurrentPlayerSelected = playyrr



				if connection1 then
					connection1:Disconnect()
				end
				if connection2 then
					connection2:Disconnect()
				end

				if hungerconnection then
					hungerconnection:Disconnect()
				end
				if daysconnection then
					daysconnection:Disconnect()
				end
				if livesconnection then
					livesconnection:Disconnect()
				end
				if charaddconnection then
					charaddconnection:Disconnect()
				end
				if charremoveconnection then
					charremoveconnection:Disconnect()
				end
				updatespy()
			end)

			new.MouseButton2Click:Connect(function()
				event.Event:Connect(function()
					if playyrr ~= game.Players.LocalPlayer then
						newLabel.TextColor3 = Color3.new(255, 255, 255)
					end
				end)
				if currentplayerspectating == playyrr then
					workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
					currentplayerspectating = nil
					if playyrr ~= game.Players.LocalPlayer then
						newLabel.TextColor3 = Color3.new(255, 255, 255)
					end
					return
				end
				event:Fire()
				if playyrr ~= game.Players.LocalPlayer then
					newLabel.TextColor3 = Color3.new(1, 0, 0)
				end

				currentplayerspectating = playyrr
				workspace.CurrentCamera.CameraSubject = playyrr.Character
			end)



			task.spawn(function()
				for i = 1, 100 do
					if Rank ~= "" then
						newLabel.Text = Rank..getFullName(playyrr) 
						newLabel.Prestige.Text = Rank
						newLabel.Prestige.Visible = true
						break
					end
					task.wait(0.1)
				end
			end)
			if playyrr.Name == game.Players.LocalPlayer.Name then
				newLabel.TextColor3 = Color3.fromRGB(0, 255, 0) 
			end 

			oName.Changed:Connect(function()
				newLabel.Text = Rank..getFullName(playyrr) 
			end) 

			newLabel.MouseEnter:Connect(function()
				newLabel.Text = Rank..playyrr.Name 
				newLabel.TextTransparency = 0.3 
			end) 
			newLabel.MouseLeave:Connect(function()
				newLabel.Text = Rank..getFullName(playyrr)
				newLabel.TextTransparency = 0 
			end) 
			pcall(function()
				newLabel.Parent = ScrollingFrame 
			end) 
			resizeManager() 	
			return newLabel 
		end 
		game.Players.PlayerAdded:Connect(function(plrJoin)
			plrJoin:WaitForChild("Data", 9e9)
			if plrJoin.Name ~= "ROBLOX" then
				while true do
					task.wait() 
					if plrJoin:FindFirstChild("RaceName") ~= nil and plrJoin:FindFirstChild("RaceName").Value ~= "" then
						break 
					end 			
				end
				local RaceName = plrJoin:WaitForChild("RaceName", 9e9)
				createFunc(plrJoin) 
			end 
		end) 
		local function leaveManager(plor)
			if not plrTableMain[plor] then
				return 
			end 
			local plorLabel = plrTableMain[plor] 
			if plorLabel then
				plorLabel:Destroy() 
			end 
			plrTableMain[plor] = nil 
			resizeManager() 
		end 
		game.Players.PlayerRemoving:Connect(function(plarr)
			if plarr.Name ~= "ROBLOX" then
				while true do
					task.wait() 
					if plarr:FindFirstChild("RaceName") ~= nil and plarr:FindFirstChild("RaceName").Value ~= "" then
						break 
					end 			
				end 
				leaveManager(plarr) 
			end 
		end) 
		for __, plarrrr in pairs(game.Players:GetPlayers()) do
			task.spawn(function()
				plarrrr:WaitForChild("Data", 9e9)
				if plarrrr.Name ~= "ROBLOX" then
					while true do
						task.wait() 
						if plarrrr:FindFirstChild("RaceName") ~= nil and plarrrr:FindFirstChild("RaceName").Value ~= "" then
							break 
						end 			
					end 
					createFunc(plarrrr) 
				end 
			end) 
		end 

	end
	coroutine.wrap(ZYXB_fake_script)()
end

-- service
local UserInputService = game:GetService("UserInputService")
local mouse = game.Players.LocalPlayer:GetMouse()
-- biblioteka
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- variable
local enablechamsevent = Instance.new("BindableEvent")
local enabledesp = false
local enabledchams = false
local Player = game:GetService("Players")
local LocalPlayer = Player.LocalPlayer
local infJump;
local falldmg;
local nostun;
local ingredientpickup;
local trinketpickup;
local autobard;
local noinjuries;
local betterambient;
local walkspeedenabled;
local WalkSpeedValue;
local speedconnection;

-- Gracz
local Window = OrionLib:MakeWindow({Name = "Gamin Worl gaming chair", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "Gracz",
	Icon = "rbxassetid://6961018885",
	PremiumOnly = false
})
local Tab2 = Window:MakeTab({
	Name = "Swiat",
	Icon = "rbxassetid://6961018885",
	PremiumOnly = false
})


Tab:AddButton({
	Name = "Reset",
	Default = false,
	Callback = function()
		game.Players.LocalPlayer.Character:BreakJoints()
	end
})

Tab:AddButton({
	Name = "Wipe",
	Default = false,
	Callback = function()
		game.Players.LocalPlayer.Character.FallDamage.RemoteEvent:FireServer(1000)
	end
})

Tab:AddToggle({
	Name = "NoStun",
	Default = false,
	Callback = function(bool)
		nostun = bool

		if nostun then
			if table.getn(game:GetService("Workspace").AliveData[game.Players.LocalPlayer.Name].Status:GetChildren()) >0 then
				for i,v in pairs(game:GetService("Workspace").AliveData[game.Players.LocalPlayer.Name].Status:GetChildren()) do
					v:Destroy()
				end
			end
		end
	end
})

Tab:AddToggle({
	Name = "NoFall",
	Default = false,
	Callback = function(bool)
		falldmg = bool
	end
})

coroutine.wrap(function()
	local t = {
		"Sprinting",
		"Action",
		"NoJump",
		"HeavyAttack",
		"LightAttack",
		"NoJump",
		"ForwardDash",
		"RecentDash",
		"ClimbCoolDown",
		"NoDash",
		"Casting",
		"IsClimbing"
	}
	repeat task.wait(0.5) until game:GetService("Workspace").AliveData:FindFirstChild(game.Players.LocalPlayer.Name) and game:GetService("Workspace").AliveData[game.Players.LocalPlayer.Name]:FindFirstChild("Status")
	game:GetService("Workspace").AliveData[game.Players.LocalPlayer.Name].Status.ChildAdded:Connect(function(child)
		if nostun == true and table.find(t, child.Name) then
			task.wait()
			child:remove()
		end
	end)
end)()

coroutine.wrap(function()
	local method 
	method = hookmetamethod(game,'__namecall', function(b,...)
		if falldmg == true then
			if not checkcaller() and getnamecallmethod() == 'FireServer' and tostring(b) == 'RemoteEvent' then
				return 
			end
		end
		return method(b, ...)
	end)

	--[[local old
	old = hookfunction(Instance.new("RemoteFunction").InvokeServer, newcclosure(function(instance, ...)
		if falldmg == true then
			if not checkcaller() and instance.Parent.Name == "FallDamage" then
				return 
			end
		end
		return old(instance, ...)
	end))
--]]

end)()

-- Swiat

Tab2:AddToggle({
	Name = "NoKillBricks",
	Default = false,
	Callback = function(onoff)
		onoff = onoff or false
		if onoff == true then
			for i,v in pairs(game.Workspace.Map.KillBricks:GetChildren()) do
				if v:IsA("Part") then
					v.CanTouch = false
				end
			end
		else
			for i,v in pairs(game.Workspace.Map.KillBricks:GetChildren()) do
				if v:IsA("Part") then
					v.CanTouch = true
				end
			end
		end
	end
})

local lightconnection
local brightnessloop

Tab2:AddToggle({
	Name = "FullBright",
	Default = false,
	Callback = function(onoff)
		onoff = onoff or false
		if brightnessloop then
			brightnessloop:Disconnect()
		end

		if onoff == true then
			brightnessloop = game:GetService("RunService").RenderStepped:Connect(function()
				game:GetService("Lighting").GlobalShadows = false
				game:GetService("Lighting").Brightness = 1.5
				game:GetService("Lighting")["AreaBrightness"].Value = 1.25
			end)
		else
			game:GetService("Lighting").GlobalShadows = true
		end
	end
})

Tab2:AddToggle({
	Name = "NoFog",
	Default = false,
	CallBack = function(onoff)
		onoff = onoff or false

		if lightconnection then
			lightconnection:Disconnect()
		end

		if onoff == true then
			fogconnection = game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
				game:GetService("Lighting").FogEnd = 786543
				game:GetService("Lighting")['AreaOutdoor'].Value = Color3.fromRGB(255,255,255)
			end)
			game:GetService("Lighting").FogEnd = 786543
		end
	end
})

local safefolder = Instance.new("Folder")
safefolder.Parent = game.CoreGui

function createesp(plr)
	local connection1
	local connection2

	local destroychamsevent = Instance.new("BindableEvent")

	if plr.Character and plr.Character.PrimaryPart then
		local plrfolder = Instance.new("Folder")

		local BillboardGui = Instance.new("BillboardGui")
		local Name = Instance.new("TextLabel")
		local Health = Instance.new("Frame")
		local HealthBar = Instance.new("Frame")
		local HealthNumber = Instance.new("TextLabel")

		plrfolder.Name = plr.Name
		plrfolder.Parent = safefolder

		BillboardGui.Parent = plrfolder
		BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		BillboardGui.Active = true
		BillboardGui.Adornee = plr.Character.PrimaryPart
		BillboardGui.AlwaysOnTop = true
		BillboardGui.LightInfluence = 1.000
		BillboardGui.Size = UDim2.new(0, 100, 0, 25)
		BillboardGui.StudsOffset = Vector3.new(0, 3.5, 0)

		Name.Name = "Name"
		Name.Parent = BillboardGui
		Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Name.BackgroundTransparency = 1.000
		Name.Position = UDim2.new(-0.5, 0, -0.5, 0)
		Name.Size = UDim2.new(2, 0, 1, 0)
		Name.Font = Enum.Font.Code
		Name.Text = "Name: amongus | class: druid"
		Name.TextColor3 = Color3.fromRGB(255, 255, 255)
		Name.TextScaled = true
		Name.TextSize = 14.000
		Name.TextStrokeTransparency = 0.420
		Name.TextWrapped = true

		local chare = plr.Character
		local root = chare.PrimaryPart

		if chare and root then
			for i, v in pairs(chare:GetChildren()) do
				if v:IsA("Part") and v ~= root then
					local chams = Instance.new("BoxHandleAdornment")
					chams.Adornee = v
					chams.AlwaysOnTop = true
					chams.Parent = plrfolder
					chams.Size = v.Size
					chams.ZIndex = 10
					chams.Transparency = 0.3
					chams.Visible = enabledchams
					if
						plr:FindFirstChild("Data") and plr.Data:FindFirstChild("HouseName") and
						plr.Data:FindFirstChild("HouseName").Value ~= "" and
						game.Players.LocalPlayer:FindFirstChild("Data") and
						plr.Data:FindFirstChild("HouseName").Value == game.Players.LocalPlayer.Data.HouseName.Value
					then
						chams.Color3 = Color3.fromRGB(0, 255, 0)
					else
						chams.Color3 = Color3.fromRGB(255, 0, 0)
					end

					enablechamsevent.Event:Connect(function(bool)
						if bool == true then
							chams.Visible = true
						else
							chams.Visible = false
						end

					end)

					coroutine.wrap(function()
						repeat task.wait(0.2) until game.Players.LocalPlayer:FindFirstChild("Data") and game.Players.LocalPlayer.Data:FindFirstChild("HouseName")
						task.wait(1)
						if plr:FindFirstChild("Data") and plr.Data:FindFirstChild("HouseName") and plr.Data:FindFirstChild("HouseName").Value ~= "" and game.Players.LocalPlayer:FindFirstChild("Data") and plr.Data:FindFirstChild("HouseName").Value == game.Players.LocalPlayer.Data.HouseName.Value then
							chams.Color3 = Color3.fromRGB(0, 255, 0)
						else
							chams.Color3 = Color3.fromRGB(255, 0, 0)
						end
					end)()
					connection1 = plr.CharacterRemoving:Connect(function()
						chams:Destroy()
						if connection1 then connection1:Disconnect() end
					end)

				end
			end
		end


		local Char = plr.Character
		local root = Char.PrimaryPart

		coroutine.wrap(function()
			connection2 = plr.CharacterRemoving:Connect(function()
				destroychamsevent:Fire()
				if BillboardGui then
					BillboardGui:Destroy()
				end
				for i, v in pairs(plrfolder:GetChildren()) do
					v:Destroy()
				end
				if plrfolder then
					plrfolder:Destroy()
				end
				connection2:Disconnect()
			end)
			
			while true do
				task.wait(0.2)
				if BillboardGui and Char and root then
					if Char and Char:FindFirstChild("Humanoid") then
						local healthvalue = Char.Humanoid.Health
						Name.Text = "Name: " .. plr.Data.oName.Value .. " | " .. "Class: " .. plr.Data.Class.Value.. " | ".. "Health: " .. math.round(healthvalue)

						BillboardGui.Enabled = enabledesp
						--local healthvalue = chare.Humanoid.Health
						--local health = math.clamp(healthvalue / maxhealthvalue, 0, 1)
						--HealthBar.Size = UDim2.fromScale(health, 1)
						--HealthNumber.Text = math.round(healthvalue)
					end
				else
					break
				end
			end
		end)()
	end
end

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

for i, v in pairs(Players:GetPlayers()) do
	if v ~= LocalPlayer then
		if v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
			createesp(v)
		end
		v.CharacterAdded:Connect(function(chare)
			v.Character:WaitForChild("HumanoidRootPart")
			v.Character:WaitForChild("Humanoid")
			task.wait(0.5)
			createesp(v)
		end)
	end
end

Players.PlayerAdded:Connect(function(Player)
	Player.CharacterAdded:Connect(function(chare)
		Player.Character:WaitForChild("HumanoidRootPart")
		Player.Character:WaitForChild("Humanoid")
		task.wait(0.5)
		createesp(Player)
	end)
	Player.CharacterRemoving:Connect(function()
		if safefolder:FindFirstChild(Player.Name) then
			safefolder[Player.Name]:Destroy()
		end
	end)
end)

Tab:AddToggle({
	Name = "Esp",
	Default = false,
	Callback = function(bool)
		enabledesp = bool
	end
})
OrionLib:Init()

return
