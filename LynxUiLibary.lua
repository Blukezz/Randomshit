local Ovis = {}

function Ovis:CreateWindow(TitleText, AccentColorColor, Keybind)
	local Spectre = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Tabs = Instance.new("Frame")
	local TopBar = Instance.new("Folder")
	local Close = Instance.new("ImageButton")
	local Title = Instance.new("TextLabel")
	local DragFrame = Instance.new("Frame")
	local TabButtons = Instance.new("ScrollingFrame")
	local UICorner_28 = Instance.new("UICorner")
	local UICorner_29 = Instance.new("UICorner")
	local Image = Instance.new("ImageLabel")
	local TabText = Instance.new("TextLabel")
	local UIListLayout_4 = Instance.new("UIListLayout")
	local signal = Instance.new("Frame")
	local AccentColor = Instance.new("Frame")
	local Thing = Instance.new("Frame")
	local UICorner_32 = Instance.new("UICorner")

	--Properties:

	Spectre.Name = "Spectre"
	Spectre.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	Spectre.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Main.Name = "Main"
	Main.Parent = Spectre
	Main.AnchorPoint = Vector2.new(0.5, 0.5)
	Main.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0.499793887, 0, 0.486764699, 0)
	Main.Size = UDim2.new(0, 635, 0, 412)

	UICorner.Parent = Main

	Tabs.Name = "Tabs"
	Tabs.Parent = Main
	Tabs.AnchorPoint = Vector2.new(0.5, 0.5)
	Tabs.BackgroundColor3 = Color3.fromRGB(136, 136, 136)
	Tabs.BackgroundTransparency = 1.000
	Tabs.BorderSizePixel = 0
	Tabs.ClipsDescendants = true
	Tabs.Position = UDim2.new(0, 358, 0, 227)
	Tabs.Size = UDim2.new(0, 548, 0, 369)

	TopBar.Name = "TopBar"
	TopBar.Parent = Main

	Close.Name = "Close"
	Close.Parent = TopBar
	Close.AnchorPoint = Vector2.new(0.5, 0.5)
	Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Close.BackgroundTransparency = 1.000
	Close.BorderSizePixel = 0
	Close.Position = UDim2.new(0.960129976, 0, 0.0466882251, 0)
	Close.Size = UDim2.new(0, 19, 0, 19)
	Close.Image = "http://www.roblox.com/asset/?id=6031094678"
	Close.ImageColor3 = Color3.fromRGB(150, 150, 150)
	

	local GuiOpen = true

	Close.MouseButton1Click:Connect(function()
		if GuiOpen == true then
			Main.Visible = false
			GuiOpen = false
			game:GetService("StarterGui"):SetCore("SendNotification",{
				Title = "Interface Hidden", -- Required
				Text = "Please use "..Keybind.."to reopen.", -- Required
				Icon = "rbxassetid://1234567890" -- Optional
			})
		end
	end)
	
	local UIS = game:GetService("UserInputService")

	UIS.InputBegan:Connect(function(Input, IsTyping)
		if IsTyping then return end
		if Input.KeyCode == Enum.KeyCode[Keybind] then
			if GuiOpen == true then
				Main.Visible = false
				GuiOpen = false
				game:GetService("StarterGui"):SetCore("SendNotification",{
					Title = "Interface Hidden", -- Required
					Text = "Please use "..Keybind.."to reopen.", -- Required
					Icon = "rbxassetid://1234567890" -- Optional
				})
			else
				Main.Visible = true
				GuiOpen = true
			end
		end
	end)
	
	
	Title.Name = TitleText
	Title.Parent = TopBar
	Title.AnchorPoint = Vector2.new(0.5, 0.5)
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0.178616211, 0, 0.0465300865, 0)
	Title.Size = UDim2.new(0, 200, 0, 18)
	Title.Font = Enum.Font.SourceSans
	Title.Text = "Ovis | Example"
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextWrapped = true
	Title.TextXAlignment = Enum.TextXAlignment.Left

	DragFrame.Name = "DragFrame"
	DragFrame.Parent = TopBar
	DragFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	DragFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	DragFrame.BackgroundTransparency = 1.000
	DragFrame.BorderSizePixel = 0
	DragFrame.Position = UDim2.new(0.499665409, 0, 0.0506262369, 0)
	DragFrame.Size = UDim2.new(0, 635, 0, 43)

	TabButtons.Name = "TabButtons"
	TabButtons.Parent = Main
	TabButtons.Active = true
	TabButtons.AnchorPoint = Vector2.new(0.5, 0.5)
	TabButtons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabButtons.BackgroundTransparency = 1.000
	TabButtons.BorderSizePixel = 0
	TabButtons.Position = UDim2.new(0, 42, 0, 226)
	TabButtons.Size = UDim2.new(0, 84, 0, 368)
	TabButtons.ScrollBarThickness = 0

	UIListLayout_4.Parent = TabButtons
	UIListLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_4.Padding = UDim.new(0, 5)

	signal.Name = "signal"
	signal.Parent = TabButtons
	signal.AnchorPoint = Vector2.new(0.5, 0.5)
	signal.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	signal.BorderSizePixel = 0
	signal.Position = UDim2.new(0.0450000018, 0, 0.112000003, 0)
	signal.Size = UDim2.new(0, 100, 0, 100)
	signal.Visible = false

	AccentColor.Name = "AccentColor"
	AccentColor.Parent = Main
	AccentColor.AnchorPoint = Vector2.new(0.5, 0.5)
	AccentColor.BackgroundColor3 = AccentColorColor
	AccentColor.BorderSizePixel = 0
	AccentColor.Position = UDim2.new(0, 28, 0, 46)
	AccentColor.Size = UDim2.new(0, 100, 0, 100)
	AccentColor.Visible = false

	Thing.Name = "Thing"
	Thing.Parent = Main
	Thing.AnchorPoint = Vector2.new(0.5, 0.5)
	Thing.BackgroundColor3 = Color3.fromRGB(136, 136, 136)
	Thing.BackgroundTransparency = 0.950
	Thing.BorderSizePixel = 0
	Thing.Position = UDim2.new(0.565807045, 0, 0.550538838, 0)
	Thing.Size = UDim2.new(0, 550, 0, 369)
	Thing.ZIndex = 0

	UICorner_32.Parent = Thing

	-- Scripts:
	
	coroutine.wrap(VADSD_fake_script)()
	
	local function VQSD_fake_script() -- Main.Drag 
		local script = Instance.new('LocalScript', Main)

		local UIS = game:GetService('UserInputService')
		local frame = script.Parent
		local dragToggle = nil
		local dragSpeed = 0.15
		local dragStart = nil
		local startPos = nil

		local function updateInput(input)
			local delta = input.Position - dragStart
			local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
				startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
		end

		script.Parent.TopBar.DragFrame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
				dragToggle = true
				dragStart = input.Position
				startPos = frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)

		UIS.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				if dragToggle then
					updateInput(input)
				end
			end
		end)
	end
	coroutine.wrap(VQSD_fake_script)()

	local Window = {}
	function Window:CreateHome(HomeTabName, HomeImageID, RankStatus)
		local Home = Instance.new("TextButton")
		local HomeTab = Instance.new("Frame")
		local TabIndicator = Instance.new("Frame")
		local Player = Instance.new("Frame")
		local UICorner_2 = Instance.new("UICorner")
		local UIStroke = Instance.new("UIStroke")
		local Profile = Instance.new("ImageLabel")
		local UICorner_3 = Instance.new("UICorner")
		local DisplayName = Instance.new("TextLabel")
		local Username = Instance.new("TextLabel")
		local TabName = Instance.new("TextLabel")
		local Changelogs = Instance.new("Frame")
		local UICorner_4 = Instance.new("UICorner")
		local UIStroke_2 = Instance.new("UIStroke")
		local ChangelogTitle = Instance.new("TextLabel")
		local Line = Instance.new("Frame")
		local ChangelogList = Instance.new("Frame")
		local UIListLayout = Instance.new("UIListLayout")
		local Discord = Instance.new("Frame")
		local UICorner_5 = Instance.new("UICorner")
		local UIStroke_3 = Instance.new("UIStroke")
		local TextLabel = Instance.new("TextLabel")
		local DiscordButton = Instance.new("TextButton")
		local UICorner_6 = Instance.new("UICorner")
		local UIStroke_4 = Instance.new("UIStroke")
		local Info = Instance.new("Frame")
		local UICorner_7 = Instance.new("UICorner")
		local UIStroke_5 = Instance.new("UIStroke")
		local Frame1 = Instance.new("Frame")
		local UICorner_8 = Instance.new("UICorner")
		local UIStroke_6 = Instance.new("UIStroke")
		local Frame1Title = Instance.new("TextLabel")
		local Frame1Text = Instance.new("TextLabel")
		local Rank = Instance.new("TextLabel")
		local Frame3 = Instance.new("Frame")
		local UICorner_9 = Instance.new("UICorner")
		local UIStroke_7 = Instance.new("UIStroke")
		local Frame3Text = Instance.new("TextLabel")
		local Frame3Title = Instance.new("TextLabel")
		local Frame3Text1 = Instance.new("TextLabel")
		local Frame2 = Instance.new("Frame")
		local UICorner_10 = Instance.new("UICorner")
		local UIStroke_8 = Instance.new("UIStroke")
		local Frame2Title = Instance.new("TextLabel")
		local Frame2Text = Instance.new("TextLabel")
		local Frame2Text1 = Instance.new("TextLabel")
		local Frame4 = Instance.new("Frame")
		local UICorner_11 = Instance.new("UICorner")
		local UIStroke_9 = Instance.new("UIStroke")
		local Frame4Text = Instance.new("TextLabel")
		local Frame4Title = Instance.new("TextLabel")
		
		Home.Name = "Home"
		Home.Parent = TabButtons
		Home.AnchorPoint = Vector2.new(0.5, 0.5)
		Home.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Home.BackgroundTransparency = 0.900
		Home.BorderSizePixel = 0
		Home.Position = UDim2.new(0, 36, 0, 30)
		Home.Size = UDim2.new(0, 62, 0, 62)
		Home.AutoButtonColor = false
		Home.Font = Enum.Font.SourceSans
		Home.Text = ""
		Home.TextColor3 = Color3.fromRGB(0, 0, 0)
		Home.TextScaled = true
		Home.TextSize = 14.000
		Home.TextWrapped = true

		UICorner_28.Parent = Home

		Image.Name = "Image"
		Image.Parent = Home
		Image.AnchorPoint = Vector2.new(0.5, 0.5)
		Image.BackgroundColor3 = Color3.fromRGB(0, 94, 207)
		Image.BackgroundTransparency = 1.000
		Image.BorderSizePixel = 0
		Image.Position = UDim2.new(0, 30, 0, 30)
		Image.Size = UDim2.new(0, 30, 0, 30)
		Image.Image = "http://www.roblox.com/asset/?id="..HomeImageID
		Image.ImageColor3 = Color3.fromRGB(0, 136, 255)

		TabText.Name = "TabText"
		TabText.Parent = Home
		TabText.AnchorPoint = Vector2.new(0.5, 0.5)
		TabText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabText.BackgroundTransparency = 1.000
		TabText.BorderSizePixel = 0
		TabText.Position = UDim2.new(0, 29, 0, 46)
		TabText.Size = UDim2.new(0, 61, 0, 16)
		TabText.Font = Enum.Font.SourceSansSemibold
		TabText.Text = HomeTabName
		TabText.TextColor3 = Color3.fromRGB(255, 255, 255)
		TabText.TextScaled = true
		TabText.TextSize = 14.000
		TabText.TextTransparency = 1.000
		TabText.TextWrapped = true
		
		HomeTab.Name = "HomeTab"
		HomeTab.Parent = Tabs
		HomeTab.AnchorPoint = Vector2.new(0.5, 0.5)
		HomeTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		HomeTab.BackgroundTransparency = 1.000
		HomeTab.BorderSizePixel = 0
		HomeTab.Position = UDim2.new(0, 275, 0, 183)
		HomeTab.Size = UDim2.new(0, 550, 0, 368)
		HomeTab.Visible = true

		Player.Name = "Player"
		Player.Parent = HomeTab
		Player.AnchorPoint = Vector2.new(0.5, 0.5)
		Player.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Player.BackgroundTransparency = 0.950
		Player.BorderSizePixel = 0
		Player.Position = UDim2.new(0, 128, 0, 82)
		Player.Size = UDim2.new(0, 232, 0, 75)

		UICorner_2.Parent = Player

		UIStroke.Parent = Player
		UIStroke.Transparency = 0.900

		Profile.Name = "Profile"
		Profile.Parent = Player
		Profile.AnchorPoint = Vector2.new(0.5, 0.5)
		Profile.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Profile.BackgroundTransparency = 0.950
		Profile.BorderSizePixel = 0
		Profile.Position = UDim2.new(0, 35, 0, 37)
		Profile.Size = UDim2.new(0, 47, 0, 48)
		Profile.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

		UICorner_3.CornerRadius = UDim.new(0, 100)
		UICorner_3.Parent = Profile

		DisplayName.Name = "DisplayName"
		DisplayName.Parent = Player
		DisplayName.AnchorPoint = Vector2.new(0.5, 0.5)
		DisplayName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		DisplayName.BackgroundTransparency = 1.000
		DisplayName.BorderSizePixel = 0
		DisplayName.Position = UDim2.new(0, 147, 0, 27)
		DisplayName.Size = UDim2.new(0, 147, 0, 29)
		DisplayName.Font = Enum.Font.SourceSans
		DisplayName.Text = "DisplayName"
		DisplayName.TextColor3 = Color3.fromRGB(255, 255, 255)
		DisplayName.TextScaled = true
		DisplayName.TextSize = 14.000
		DisplayName.TextWrapped = true
		DisplayName.TextXAlignment = Enum.TextXAlignment.Left

		Username.Name = "Username"
		Username.Parent = Player
		Username.AnchorPoint = Vector2.new(0.5, 0.5)
		Username.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Username.BackgroundTransparency = 1.000
		Username.BorderSizePixel = 0
		Username.Position = UDim2.new(0, 147, 0, 52)
		Username.Size = UDim2.new(0, 147, 0, 20)
		Username.Font = Enum.Font.SourceSans
		Username.Text = "@Username"
		Username.TextColor3 = Color3.fromRGB(188, 188, 188)
		Username.TextScaled = true
		Username.TextSize = 14.000
		Username.TextWrapped = true
		Username.TextXAlignment = Enum.TextXAlignment.Left

		TabName.Name = "TabName"
		TabName.Parent = HomeTab
		TabName.AnchorPoint = Vector2.new(0.5, 0.5)
		TabName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabName.BackgroundTransparency = 1.000
		TabName.BorderSizePixel = 0
		TabName.Position = UDim2.new(0, 112, 0, 21)
		TabName.Size = UDim2.new(0, 200, 0, 28)
		TabName.Font = Enum.Font.SourceSansSemibold
		TabName.Text = "Home"
		TabName.TextColor3 = Color3.fromRGB(255, 255, 255)
		TabName.TextScaled = true
		TabName.TextSize = 14.000
		TabName.TextWrapped = true
		TabName.TextXAlignment = Enum.TextXAlignment.Left

		Changelogs.Name = "Changelogs"
		Changelogs.Parent = HomeTab
		Changelogs.AnchorPoint = Vector2.new(0.5, 0.5)
		Changelogs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Changelogs.BackgroundTransparency = 0.950
		Changelogs.BorderSizePixel = 0
		Changelogs.Position = UDim2.new(0, 128, 0, 243)
		Changelogs.Size = UDim2.new(0, 231, 0, 226)

		UICorner_4.Parent = Changelogs

		UIStroke_2.Parent = Changelogs
		UIStroke_2.Transparency = 0.900

		ChangelogTitle.Name = "ChangelogTitle"
		ChangelogTitle.Parent = Changelogs
		ChangelogTitle.AnchorPoint = Vector2.new(0.5, 0.5)
		ChangelogTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ChangelogTitle.BackgroundTransparency = 1.000
		ChangelogTitle.BorderSizePixel = 0
		ChangelogTitle.Position = UDim2.new(0, 111, 0, 18)
		ChangelogTitle.Size = UDim2.new(0, 200, 0, 23)
		ChangelogTitle.Font = Enum.Font.SourceSansSemibold
		ChangelogTitle.Text = "Changelogs"
		ChangelogTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
		ChangelogTitle.TextScaled = true
		ChangelogTitle.TextSize = 14.000
		ChangelogTitle.TextWrapped = true

		Line.Name = "Line"
		Line.Parent = Changelogs
		Line.AnchorPoint = Vector2.new(0.5, 0.5)
		Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Line.BorderSizePixel = 0
		Line.Position = UDim2.new(0, 112, 0, 35)
		Line.Size = UDim2.new(0, 108, 0, 1)

		ChangelogList.Name = "ChangelogList"
		ChangelogList.Parent = Changelogs
		ChangelogList.AnchorPoint = Vector2.new(0.5, 0.5)
		ChangelogList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ChangelogList.BackgroundTransparency = 1.000
		ChangelogList.BorderSizePixel = 0
		ChangelogList.Position = UDim2.new(0, 116, 0, 129)
		ChangelogList.Size = UDim2.new(0, 209, 0, 177)

		UIListLayout.Parent = ChangelogList
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

		Discord.Name = "Discord"
		Discord.Parent = HomeTab
		Discord.AnchorPoint = Vector2.new(0.5, 0.5)
		Discord.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Discord.BackgroundTransparency = 0.950
		Discord.BorderSizePixel = 0
		Discord.Position = UDim2.new(0, 396, 0, 318)
		Discord.Size = UDim2.new(0, 277, 0, 76)

		UICorner_5.Parent = Discord

		UIStroke_3.Parent = Discord
		UIStroke_3.Transparency = 0.900

		TextLabel.Parent = Discord
		TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.BackgroundTransparency = 1.000
		TextLabel.BorderSizePixel = 0
		TextLabel.Position = UDim2.new(0.406010896, 0, 0.269499332, 0)
		TextLabel.Size = UDim2.new(0, 200, 0, 24)
		TextLabel.Font = Enum.Font.SourceSans
		TextLabel.Text = "Discord"
		TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.TextScaled = true
		TextLabel.TextSize = 14.000
		TextLabel.TextWrapped = true
		TextLabel.TextXAlignment = Enum.TextXAlignment.Left

		DiscordButton.Name = "DiscordButton"
		DiscordButton.Parent = Discord
		DiscordButton.AnchorPoint = Vector2.new(0.5, 0.5)
		DiscordButton.BackgroundColor3 = Color3.fromRGB(0, 136, 255)
		DiscordButton.BorderSizePixel = 0
		DiscordButton.Position = UDim2.new(0, 138, 0, 53)
		DiscordButton.Size = UDim2.new(0, 254, 0, 29)
		DiscordButton.AutoButtonColor = false
		DiscordButton.Font = Enum.Font.SourceSans
		DiscordButton.Text = "Join"
		DiscordButton.TextColor3 = Color3.fromRGB(37, 37, 37)
		DiscordButton.TextSize = 23.000
		DiscordButton.TextWrapped = true

		UICorner_6.CornerRadius = UDim.new(0, 6)
		UICorner_6.Parent = DiscordButton

		UIStroke_4.Parent = DiscordButton
		UIStroke_4.Color = Color3.fromRGB(255, 255, 255)
		UIStroke_4.Thickness = 0.000
		UIStroke_4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

		Info.Name = "Info"
		Info.Parent = HomeTab
		Info.AnchorPoint = Vector2.new(0.5, 0.5)
		Info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Info.BackgroundTransparency = 0.950
		Info.BorderSizePixel = 0
		Info.Position = UDim2.new(0, 396, 0, 157)
		Info.Size = UDim2.new(0, 277, 0, 226)

		UICorner_7.Parent = Info

		UIStroke_5.Parent = Info
		UIStroke_5.Transparency = 0.900

		Frame1.Name = "Frame1"
		Frame1.Parent = Info
		Frame1.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame1.BackgroundColor3 = Color3.fromRGB(0, 136, 255)
		Frame1.BorderSizePixel = 0
		Frame1.Position = UDim2.new(0, 72, 0, 61)
		Frame1.Size = UDim2.new(0, 121, 0, 97)
		
		

		UICorner_8.Parent = Frame1

		UIStroke_6.Parent = Frame1
		UIStroke_6.Transparency = 0.900

		Frame1Title.Name = "Frame1Title"
		Frame1Title.Parent = Frame1
		Frame1Title.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame1Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame1Title.BackgroundTransparency = 1.000
		Frame1Title.BorderSizePixel = 0
		Frame1Title.Position = UDim2.new(0.499545515, 0, 0.186505184, 0)
		Frame1Title.Size = UDim2.new(0, 100, 0, 23)
		Frame1Title.Font = Enum.Font.SourceSans
		Frame1Title.Text = "Membership"
		Frame1Title.TextColor3 = Color3.fromRGB(21, 21, 21)
		Frame1Title.TextScaled = true
		Frame1Title.TextSize = 14.000
		Frame1Title.TextWrapped = true
		Frame1Title.TextXAlignment = Enum.TextXAlignment.Left

		Frame1Text.Name = "Frame1Text"
		Frame1Text.Parent = Frame1
		Frame1Text.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame1Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame1Text.BackgroundTransparency = 1.000
		Frame1Text.BorderSizePixel = 0
		Frame1Text.Position = UDim2.new(0.499545515, 0, 0.395852953, 0)
		Frame1Text.Size = UDim2.new(0, 100, 0, 17)
		Frame1Text.Font = Enum.Font.SourceSans
		Frame1Text.Text = "Current Rank:"
		Frame1Text.TextColor3 = Color3.fromRGB(21, 21, 21)
		Frame1Text.TextScaled = true
		Frame1Text.TextSize = 14.000
		Frame1Text.TextTransparency = 0.100
		Frame1Text.TextWrapped = true
		Frame1Text.TextXAlignment = Enum.TextXAlignment.Left

		Rank.Name = "Rank"
		Rank.Parent = Frame1
		Rank.AnchorPoint = Vector2.new(0.5, 0.5)
		Rank.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Rank.BackgroundTransparency = 1.000
		Rank.BorderSizePixel = 0
		Rank.Position = UDim2.new(0.499545515, 0, 0.701969087, 0)
		Rank.Size = UDim2.new(0, 100, 0, 23)
		Rank.Font = Enum.Font.SourceSans
		Rank.Text = RankStatus
		Rank.TextColor3 = Color3.fromRGB(21, 21, 21)
		Rank.TextScaled = true
		Rank.TextSize = 14.000
		Rank.TextWrapped = true

		Frame3.Name = "Frame3"
		Frame3.Parent = Info
		Frame3.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame3.BackgroundTransparency = 0.950
		Frame3.BorderSizePixel = 0
		Frame3.Position = UDim2.new(0, 72, 0, 165)
		Frame3.Size = UDim2.new(0, 121, 0, 97)

		UICorner_9.Parent = Frame3

		UIStroke_7.Parent = Frame3
		UIStroke_7.Transparency = 0.900

		Frame3Text.Name = "Frame3Text"
		Frame3Text.Parent = Frame3
		Frame3Text.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame3Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame3Text.BackgroundTransparency = 1.000
		Frame3Text.BorderSizePixel = 0
		Frame3Text.Position = UDim2.new(0.499545515, 0, 0.395852953, 0)
		Frame3Text.Size = UDim2.new(0, 100, 0, 17)
		Frame3Text.Font = Enum.Font.SourceSans
		Frame3Text.Text = "Executor: Syn X"
		Frame3Text.TextColor3 = Color3.fromRGB(255, 255, 255)
		Frame3Text.TextScaled = true
		Frame3Text.TextSize = 14.000
		Frame3Text.TextTransparency = 0.100
		Frame3Text.TextWrapped = true
		Frame3Text.TextXAlignment = Enum.TextXAlignment.Left

		Frame3Title.Name = "Frame3Title"
		Frame3Title.Parent = Frame3
		Frame3Title.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame3Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame3Title.BackgroundTransparency = 1.000
		Frame3Title.BorderSizePixel = 0
		Frame3Title.Position = UDim2.new(0.499545753, 0, 0.186505184, 0)
		Frame3Title.Size = UDim2.new(0, 100, 0, 23)
		Frame3Title.Font = Enum.Font.SourceSans
		Frame3Title.Text = "Client"
		Frame3Title.TextColor3 = Color3.fromRGB(255, 255, 255)
		Frame3Title.TextScaled = true
		Frame3Title.TextSize = 14.000
		Frame3Title.TextWrapped = true
		Frame3Title.TextXAlignment = Enum.TextXAlignment.Left

		Frame3Text1.Name = "Frame3Text1"
		Frame3Text1.Parent = Frame3
		Frame3Text1.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame3Text1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame3Text1.BackgroundTransparency = 1.000
		Frame3Text1.BorderSizePixel = 0
		Frame3Text1.Position = UDim2.new(0.499545515, 0, 0.571110666, 0)
		Frame3Text1.Size = UDim2.new(0, 100, 0, 17)
		Frame3Text1.Font = Enum.Font.SourceSans
		Frame3Text1.Text = "FPS: 699"
		Frame3Text1.TextColor3 = Color3.fromRGB(255, 255, 255)
		Frame3Text1.TextScaled = true
		Frame3Text1.TextSize = 14.000
		Frame3Text1.TextTransparency = 0.100
		Frame3Text1.TextWrapped = true
		Frame3Text1.TextXAlignment = Enum.TextXAlignment.Left

		Frame2.Name = "Frame2"
		Frame2.Parent = Info
		Frame2.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame2.BackgroundTransparency = 0.950
		Frame2.BorderSizePixel = 0
		Frame2.Position = UDim2.new(0, 203, 0, 61)
		Frame2.Size = UDim2.new(0, 122, 0, 97)

		UICorner_10.Parent = Frame2

		UIStroke_8.Parent = Frame2
		UIStroke_8.Transparency = 0.900

		Frame2Title.Name = "Frame2Title"
		Frame2Title.Parent = Frame2
		Frame2Title.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame2Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame2Title.BackgroundTransparency = 1.000
		Frame2Title.BorderSizePixel = 0
		Frame2Title.Position = UDim2.new(0.499545753, 0, 0.186505184, 0)
		Frame2Title.Size = UDim2.new(0, 100, 0, 23)
		Frame2Title.Font = Enum.Font.SourceSans
		Frame2Title.Text = "Server"
		Frame2Title.TextColor3 = Color3.fromRGB(255, 255, 255)
		Frame2Title.TextScaled = true
		Frame2Title.TextSize = 14.000
		Frame2Title.TextWrapped = true
		Frame2Title.TextXAlignment = Enum.TextXAlignment.Left

		Frame2Text.Name = "Frame2Text"
		Frame2Text.Parent = Frame2
		Frame2Text.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame2Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame2Text.BackgroundTransparency = 1.000
		Frame2Text.BorderSizePixel = 0
		Frame2Text.Position = UDim2.new(0.499545515, 0, 0.395852953, 0)
		Frame2Text.Size = UDim2.new(0, 100, 0, 17)
		Frame2Text.Font = Enum.Font.SourceSans
		Frame2Text.Text = "Players: 69"
		Frame2Text.TextColor3 = Color3.fromRGB(255, 255, 255)
		Frame2Text.TextScaled = true
		Frame2Text.TextSize = 14.000
		Frame2Text.TextTransparency = 0.100
		Frame2Text.TextWrapped = true
		Frame2Text.TextXAlignment = Enum.TextXAlignment.Left

		Frame2Text1.Name = "Frame2Text1"
		Frame2Text1.Parent = Frame2
		Frame2Text1.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame2Text1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame2Text1.BackgroundTransparency = 1.000
		Frame2Text1.BorderSizePixel = 0
		Frame2Text1.Position = UDim2.new(0.499545515, 0, 0.571110666, 0)
		Frame2Text1.Size = UDim2.new(0, 100, 0, 17)
		Frame2Text1.Font = Enum.Font.SourceSans
		Frame2Text1.Text = "Ping: 69"
		Frame2Text1.TextColor3 = Color3.fromRGB(255, 255, 255)
		Frame2Text1.TextScaled = true
		Frame2Text1.TextSize = 14.000
		Frame2Text1.TextTransparency = 0.100
		Frame2Text1.TextWrapped = true
		Frame2Text1.TextXAlignment = Enum.TextXAlignment.Left

		Frame4.Name = "Frame4"
		Frame4.Parent = Info
		Frame4.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame4.BackgroundTransparency = 0.950
		Frame4.BorderSizePixel = 0
		Frame4.Position = UDim2.new(0, 203, 0, 165)
		Frame4.Size = UDim2.new(0, 122, 0, 97)

		UICorner_11.Parent = Frame4

		UIStroke_9.Parent = Frame4
		UIStroke_9.Transparency = 0.900

		Frame4Text.Name = "Frame4Text"
		Frame4Text.Parent = Frame4
		Frame4Text.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame4Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame4Text.BackgroundTransparency = 1.000
		Frame4Text.BorderSizePixel = 0
		Frame4Text.Position = UDim2.new(0.499545753, 0, 0.694822013, 0)
		Frame4Text.Size = UDim2.new(0, 100, 0, 33)
		Frame4Text.Font = Enum.Font.SourceSans
		Frame4Text.Text = "Syn X, Krnl, Comet, Fluxus.."
		Frame4Text.TextColor3 = Color3.fromRGB(255, 255, 255)
		Frame4Text.TextScaled = true
		Frame4Text.TextSize = 14.000
		Frame4Text.TextTransparency = 0.100
		Frame4Text.TextWrapped = true
		Frame4Text.TextXAlignment = Enum.TextXAlignment.Left

		Frame4Title.Name = "Frame4Title"
		Frame4Title.Parent = Frame4
		Frame4Title.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame4Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame4Title.BackgroundTransparency = 1.000
		Frame4Title.BorderSizePixel = 0
		Frame4Title.Position = UDim2.new(0.499545753, 0, 0.299907237, 0)
		Frame4Title.Size = UDim2.new(0, 100, 0, 45)
		Frame4Title.Font = Enum.Font.SourceSans
		Frame4Title.Text = "Supported Clients"
		Frame4Title.TextColor3 = Color3.fromRGB(255, 255, 255)
		Frame4Title.TextScaled = true
		Frame4Title.TextSize = 14.000
		Frame4Title.TextWrapped = true
		Frame4Title.TextXAlignment = Enum.TextXAlignment.Left
		
		TabIndicator.Name = "TabIndicator"
		TabIndicator.Parent = Home
		TabIndicator.AnchorPoint = Vector2.new(0.5, 0.5)
		TabIndicator.BackgroundColor3 = Color3.fromRGB(0, 136, 255)
		TabIndicator.BorderSizePixel = 0
		TabIndicator.Position = UDim2.new(0, 1, 0, 30)
		TabIndicator.Size = UDim2.new(0, 4, 0, 26)

		UICorner_29.CornerRadius = UDim.new(0, 1000)
		UICorner_29.Parent = TabIndicator
		
		local function ODAHOO_fake_script() -- Home.LocalScript 
			local script = Instance.new('LocalScript', Home)

			local targettab = "Home".."Tab"
			local btn = script.Parent
			local TweenService = game.TweenService
			local TweenInfomation = TweenInfo.new(0.2, Enum.EasingStyle.Linear)
			local TabEnabled = true
			local EEE = false
			local accentcolor = script.Parent.Parent.Parent.AccentColor.BackgroundColor3

			script.Parent.TabIndicator.BackgroundColor3 = accentcolor
			if TabEnabled == true then
				btn.TabText.TextTransparency = 1
				btn.Image.ImageTransparency = 0
				btn.Image.ImageColor3 = accentcolor
				btn.Image.Position = UDim2.new(0.497, 0, 0.489, 0)
				btn.TabIndicator.Size = UDim2.new(0, 4, 0, 26)
				btn.BackgroundTransparency = 0.9
			else
				btn.TabText.TextTransparency = 0.2
				btn.Image.ImageTransparency = 0.2
				btn.Image.ImageColor3 = Color3.fromRGB(255, 255, 255)
				btn.Image.Position = UDim2.new(0.48, 0, 0.376, 0)
				btn.TabIndicator.Size = UDim2.new(0, 4, 0, 0)
				btn.BackgroundTransparency = 1
			end

			function tabb()
				for i, v in pairs(script.Parent.Parent.Parent.Tabs:GetChildren()) do
					if v.Name ~= targettab then
						v.Visible = false
					end
				end
			end

			function tabbb()
				for i, v in pairs(script.Parent.Parent.Parent.Tabs:GetChildren()) do
					if v:IsA("ScrollingFrame") then
						v.Visible = false
					end
				end
			end


			btn.MouseEnter:Connect(function()
				if TabEnabled == false then
					TweenService:Create(btn, TweenInfomation, { BackgroundTransparency = 0.95 }):Play()
				end
			end)

			btn.MouseLeave:Connect(function()
				if TabEnabled == false then
					TweenService:Create(btn, TweenInfomation, { BackgroundTransparency = 1 }):Play()
				end
			end)

			btn.MouseButton1Down:Connect(function()
				if TabEnabled == false then
					btn.Image:TweenPosition(
						btn.Image.Position + UDim2.new(0, 0, 0, -3),
						Enum.EasingDirection.In,
						Enum.EasingStyle.Linear,
						0.1
					)
				end
			end)

			btn.MouseButton1Up:Connect(function()
				if TabEnabled == false then

					EEE = true
					btn.Parent.signal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					wait(0.01)
					btn.Parent.signal.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
					EEE = false

					TweenService:Create(btn.TabText, TweenInfomation, { TextTransparency = 1 }):Play()
					TweenService:Create(btn.Image, TweenInfomation, { ImageTransparency = 0 }):Play()
					TweenService:Create(btn.Image, TweenInfomation, { ImageColor3 = accentcolor }):Play()
					wait(0.05)
					btn.Image:TweenPosition(
						UDim2.new(0.497, 0, 0.489, 0),
						Enum.EasingDirection.Out,
						Enum.EasingStyle.Back,
						0.35
					)
					btn.TabIndicator:TweenSize(
						UDim2.new(0, 4, 0, 26),
						Enum.EasingDirection.Out,
						Enum.EasingStyle.Quad,
						0.25
					)
					TweenService:Create(btn, TweenInfomation, { BackgroundTransparency = 0.9 }):Play()

					tabb()
					tabbb()
					script.Parent.Parent.Parent.Tabs[targettab].Visible = true

					TabEnabled = true	
				end
			end)

			btn.Parent.signal:GetPropertyChangedSignal("BackgroundColor3"):Connect(function(asdf)
				if btn.Parent.signal.BackgroundColor3 == Color3.fromRGB(255, 255, 255) and not EEE then
					TweenService:Create(btn.TabText, TweenInfomation, { TextTransparency = 0.2 }):Play()
					TweenService:Create(btn.Image, TweenInfomation, { ImageTransparency = 0.2 }):Play()
					TweenService:Create(btn.Image, TweenInfomation, { ImageColor3 = Color3.fromRGB(255, 255, 255) }):Play()
					wait(0.05)
					btn.Image:TweenPosition(
						UDim2.new(0.48, 0, 0.376, 0),
						Enum.EasingDirection.Out,
						Enum.EasingStyle.Back,
						0.35
					)
					btn.TabIndicator:TweenSize(
						UDim2.new(0, 4, 0, 0),
						Enum.EasingDirection.Out,
						Enum.EasingStyle.Quad,
						0.25
					)
					TweenService:Create(btn, TweenInfomation, { BackgroundTransparency = 1 }):Play()

					TabEnabled = false
				end
			end)
		end
		coroutine.wrap(ODAHOO_fake_script)()
		
		local function YBYK_fake_script() -- Player.LocalScript 
			local script = Instance.new('LocalScript', Player)

			local Players = game:GetService("Players")
			local TweenService = game.TweenService
			local TweenInfomation = TweenInfo.new(0.2, Enum.EasingStyle.Linear)
			local accentcolor = script.Parent.Parent.Parent.Parent.AccentColor.BackgroundColor3


			local player = Players.LocalPlayer

			local userId = player.UserId
			local thumbType = Enum.ThumbnailType.HeadShot
			local thumbSize = Enum.ThumbnailSize.Size420x420
			local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)

			local imageLabel = script.Parent.Profile
			imageLabel.Image = content

			script.Parent.DisplayName.Text = player.DisplayName


			local pos = script.Parent.Position
			local pos1 = script.Parent.Position + UDim2.new(0, 0, 0, -3)

			script.Parent.MouseEnter:Connect(function()
				TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0.93 }):Play()
				script.Parent:TweenPosition(
					pos1,
					Enum.EasingDirection.Out,
					Enum.EasingStyle.Quad,
					0.1
				)
			end)

			script.Parent.MouseLeave:Connect(function()
				TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0.95 }):Play()
				script.Parent:TweenPosition(
					pos,
					Enum.EasingDirection.Out,
					Enum.EasingStyle.Quad,
					0.1
				)
			end)
		end
		coroutine.wrap(YBYK_fake_script)()
		local function YIKHPNJ_fake_script() -- Changelogs.LocalScript 
			local script = Instance.new('LocalScript', Changelogs)

			local TweenService = game.TweenService
			local TweenInfomation = TweenInfo.new(0.2, Enum.EasingStyle.Linear)
			local pos = script.Parent.Position
			local pos1 = script.Parent.Position + UDim2.new(0, 0, 0, -3)

			script.Parent.MouseEnter:Connect(function()
				TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0.93 }):Play()
				script.Parent:TweenPosition(
					pos1,
					Enum.EasingDirection.Out,
					Enum.EasingStyle.Quad,
					0.1
				)
			end)

			script.Parent.MouseLeave:Connect(function()
				TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0.95 }):Play()
				script.Parent:TweenPosition(
					pos,
					Enum.EasingDirection.Out,
					Enum.EasingStyle.Quad,
					0.1
				)
			end)
		end
		coroutine.wrap(YIKHPNJ_fake_script)()
		local function RLTLSP_fake_script() -- Discord.LocalScript 
			local script = Instance.new('LocalScript', Discord)

			local TweenService = game.TweenService
			local TweenInfomation = TweenInfo.new(0.2, Enum.EasingStyle.Linear)
			local TweenInfomation1 = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
			local accentcolor = script.Parent.Parent.Parent.Parent.AccentColor.BackgroundColor3

			local pos = script.Parent.Position
			local pos1 = script.Parent.Position + UDim2.new(0, 0, 0, -3)

			script.Parent.MouseEnter:Connect(function()
				TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0.93 }):Play()
				script.Parent:TweenPosition(
					pos1,
					Enum.EasingDirection.Out,
					Enum.EasingStyle.Quad,
					0.1
				)
			end)

			script.Parent.MouseLeave:Connect(function()
				TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0.95 }):Play()
				script.Parent:TweenPosition(
					pos,
					Enum.EasingDirection.Out,
					Enum.EasingStyle.Quad,
					0.1
				)
			end)

			script.Parent.DiscordButton.BackgroundColor3 = accentcolor

			script.Parent.DiscordButton.MouseEnter:Connect(function()
				TweenService:Create(script.Parent.DiscordButton, TweenInfomation, { BackgroundTransparency = .2 }):Play()
			end)

			script.Parent.DiscordButton.MouseLeave:Connect(function()
				TweenService:Create(script.Parent.DiscordButton, TweenInfomation, { BackgroundTransparency = 0 }):Play()
			end)

			script.Parent.DiscordButton.MouseButton1Down:Connect(function()
				TweenService:Create(script.Parent.DiscordButton, TweenInfomation1, { BackgroundTransparency = 0 }):Play()
			end)

			script.Parent.DiscordButton.MouseButton1Up:Connect(function()
				TweenService:Create(script.Parent.DiscordButton, TweenInfomation1, { BackgroundTransparency = .2 }):Play()
			end)
		end
		coroutine.wrap(RLTLSP_fake_script)()
		local function QQAIXY_fake_script() -- Info.LocalScript 
			local script = Instance.new('LocalScript', Info)

			local TweenService = game.TweenService
			local TweenInfomation = TweenInfo.new(0.2, Enum.EasingStyle.Linear)
			local pos = script.Parent.Position
			local pos1 = script.Parent.Position + UDim2.new(0, 0, 0, -3)

			script.Parent.MouseEnter:Connect(function()
				TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0.93 }):Play()
				script.Parent:TweenPosition(
					pos1,
					Enum.EasingDirection.Out,
					Enum.EasingStyle.Quad,
					0.1
				)
			end)

			script.Parent.MouseLeave:Connect(function()
				TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0.95 }):Play()
				script.Parent:TweenPosition(
					pos,
					Enum.EasingDirection.Out,
					Enum.EasingStyle.Quad,
					0.1
				)
			end)
		end
		coroutine.wrap(QQAIXY_fake_script)()
		local function GISTDZU_fake_script() -- Frame3.LocalScript 
			local script = Instance.new('LocalScript', Frame3)

			local TweenService = game.TweenService
			local TweenInfomation = TweenInfo.new(0.2, Enum.EasingStyle.Linear)
			local TweenInfomation1 = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
			local accentcolor = script.Parent.Parent.Parent.Parent.Parent.AccentColor.BackgroundColor3

			script.Parent.MouseEnter:Connect(function()
				TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0 }):Play()
				TweenService:Create(script.Parent, TweenInfomation, { BackgroundColor3 = accentcolor }):Play()

				for i, v  in pairs(script.Parent:GetDescendants()) do
					if v:IsA("TextLabel") then
						TweenService:Create(v, TweenInfomation, { TextColor3 = Color3.fromRGB(21, 21, 21) }):Play()
					end
				end
			end)

			script.Parent.MouseLeave:Connect(function()
				TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0.95 }):Play()
				for i, v  in pairs(script.Parent:GetDescendants()) do
					if v:IsA("TextLabel") then
						TweenService:Create(v, TweenInfomation, { TextColor3 = Color3.fromRGB(255, 255, 255) }):Play()
					end
				end
				wait(0.1)
				TweenService:Create(script.Parent, TweenInfomation, { BackgroundColor3 = Color3.fromRGB(255, 255, 255) }):Play()
			end)


			local function getexploit()
				local exploit =
					(syn and not is_sirhurt_closure and not pebc_execute and "Syn X") or
					(secure_load and "Senten") or
					(is_sirhurt_closure and "Sirhurt") or
					(pebc_execute and "Proto") or
					(KRNL_LOADED and "Krnl") or
					(WrapGlobal and "WRD") or
					(isvm and "Proxo") or
					(shadow_env and "Shadow") or
					(jit and "EzExploit") or
					(getscriptenvs and "Calamari") or
					(unit and not syn and "Unit") or
					(OXYGEN_LOADED and "Oxy") or
					(IsElectron and "Electron") or
					("???")

				return exploit
			end

			script.Parent.Frame3Text.Text = "Executor: "..getexploit()



			local RS = game:GetService("RunService")
			local frames = 0

			RS.RenderStepped:Connect(function()
				frames = frames + 1
			end)

			while wait(1) do
				script.Parent.Frame3Text1.Text = "FPS: "..frames
				frames = 0
			end
		end
		coroutine.wrap(GISTDZU_fake_script)()
		local function SFOIWRF_fake_script() -- Frame2.LocalScript 
			local script = Instance.new('LocalScript', Frame2)

			local TweenService = game.TweenService
			local TweenInfomation = TweenInfo.new(0.2, Enum.EasingStyle.Linear)
			local TweenInfomation1 = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
			local accentcolor = script.Parent.Parent.Parent.Parent.Parent.AccentColor.BackgroundColor3
			
			script.Parent.Parent.Frame1.BackgroundColor3 = accentcolor

			script.Parent.MouseEnter:Connect(function()
				TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0 }):Play()
				TweenService:Create(script.Parent, TweenInfomation, { BackgroundColor3 = accentcolor }):Play()

				for i, v  in pairs(script.Parent:GetDescendants()) do
					if v:IsA("TextLabel") then
						TweenService:Create(v, TweenInfomation, { TextColor3 = Color3.fromRGB(21, 21, 21) }):Play()
					end
				end
			end)

			script.Parent.MouseLeave:Connect(function()
				TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0.95 }):Play()
				for i, v  in pairs(script.Parent:GetDescendants()) do
					if v:IsA("TextLabel") then
						TweenService:Create(v, TweenInfomation, { TextColor3 = Color3.fromRGB(255, 255, 255) }):Play()
					end
				end
				wait(0.1)
				TweenService:Create(script.Parent, TweenInfomation, { BackgroundColor3 = Color3.fromRGB(255, 255, 255) }):Play()
			end)

			while true do
				wait(1)
				local PlayerPing = game.Players.LocalPlayer:GetNetworkPing()
				script.Parent.Frame2Text1.Text = "Ping: "..PlayerPing
				script.Parent.Frame2Text.Text = "Players: "..#game.Players:GetPlayers()
			end
		end
		coroutine.wrap(SFOIWRF_fake_script)()
		local function DJULZX_fake_script() -- Frame4.LocalScript 
			local script = Instance.new('LocalScript', Frame4)

			local TweenService = game.TweenService
			local TweenInfomation = TweenInfo.new(0.2, Enum.EasingStyle.Linear)
			local TweenInfomation1 = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
			local accentcolor = script.Parent.Parent.Parent.Parent.Parent.AccentColor.BackgroundColor3

			script.Parent.MouseEnter:Connect(function()
				TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0 }):Play()
				TweenService:Create(script.Parent, TweenInfomation, { BackgroundColor3 = accentcolor }):Play()

				for i, v  in pairs(script.Parent:GetDescendants()) do
					if v:IsA("TextLabel") then
						TweenService:Create(v, TweenInfomation, { TextColor3 = Color3.fromRGB(21, 21, 21) }):Play()
					end
				end
			end)

			script.Parent.MouseLeave:Connect(function()
				TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0.95 }):Play()
				for i, v  in pairs(script.Parent:GetDescendants()) do
					if v:IsA("TextLabel") then
						TweenService:Create(v, TweenInfomation, { TextColor3 = Color3.fromRGB(255, 255, 255) }):Play()
					end
				end
				wait(0.1)
				TweenService:Create(script.Parent, TweenInfomation, { BackgroundColor3 = Color3.fromRGB(255, 255, 255) }):Play()
			end)

		end
		coroutine.wrap(DJULZX_fake_script)()
		
		local HomeLib = {}
		
		function HomeLib:NewChange(ChangeText)
			local ChangelogItem = Instance.new("TextLabel")
			
			ChangelogItem.Name = "ChangelogItem"
			ChangelogItem.Parent = ChangelogList
			ChangelogItem.AnchorPoint = Vector2.new(0.5, 0.5)
			ChangelogItem.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ChangelogItem.BackgroundTransparency = 1.000
			ChangelogItem.BorderSizePixel = 0
			ChangelogItem.Position = UDim2.new(0, 103, 0, 22)
			ChangelogItem.Size = UDim2.new(0, 200, 0, 23)
			ChangelogItem.Font = Enum.Font.SourceSans
			ChangelogItem.Text = ChangeText
			ChangelogItem.TextColor3 = Color3.fromRGB(220, 220, 220)
			ChangelogItem.TextScaled = true
			ChangelogItem.TextSize = 14.000
			ChangelogItem.TextWrapped = true
			ChangelogItem.Visible = true
		end
		
		return HomeLib
	end

	function Window:CreateTab(TabName, TabImage)
		local ScriptsTab = Instance.new("ScrollingFrame")
		local TabName_2 = Instance.new("TextLabel")
		local UIListLayout_2 = Instance.new("UIListLayout")
		local UIPadding = Instance.new("UIPadding")

		local Example = Instance.new("TextButton")
		local UICorner_30 = Instance.new("UICorner")
		local TabIndicator_2 = Instance.new("Frame")
		local UICorner_31 = Instance.new("UICorner")
		local Image_2 = Instance.new("ImageLabel")
		local TabText_2 = Instance.new("TextLabel")

		Example.Name = "Example"
		Example.Parent = TabButtons
		Example.AnchorPoint = Vector2.new(0.5, 0.5)
		Example.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Example.BackgroundTransparency = 1.000
		Example.BorderSizePixel = 0
		Example.Position = UDim2.new(0, 36, 0, 30)
		Example.Size = UDim2.new(0, 62, 0, 62)
		Example.AutoButtonColor = false
		Example.Font = Enum.Font.SourceSans
		Example.Text = ""
		Example.TextColor3 = Color3.fromRGB(0, 0, 0)
		Example.TextScaled = true
		Example.TextSize = 14.000
		Example.TextWrapped = true

		UICorner_30.Parent = Example

		TabIndicator_2.Name = "TabIndicator"
		TabIndicator_2.Parent = Example
		TabIndicator_2.AnchorPoint = Vector2.new(0.5, 0.5)
		TabIndicator_2.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
		TabIndicator_2.BorderSizePixel = 0
		TabIndicator_2.Position = UDim2.new(0, 1, 0, 30)
		TabIndicator_2.Size = UDim2.new(0, 4, 0, 0)

		UICorner_31.CornerRadius = UDim.new(0, 100)
		UICorner_31.Parent = TabIndicator_2

		Image_2.Name = "Image"
		Image_2.Parent = Example
		Image_2.AnchorPoint = Vector2.new(0.5, 0.5)
		Image_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Image_2.BackgroundTransparency = 1.000
		Image_2.BorderSizePixel = 0
		Image_2.Position = UDim2.new(0, 29, 0, 23)
		Image_2.Size = UDim2.new(0, 26, 0, 26)
		Image_2.Image = "rbxassetid://"..TabImage
		Image_2.ImageTransparency = 0.200

		TabText_2.Name = "TabText"
		TabText_2.Parent = Example
		TabText_2.AnchorPoint = Vector2.new(0.5, 0.5)
		TabText_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabText_2.BackgroundTransparency = 1.000
		TabText_2.BorderSizePixel = 0
		TabText_2.Position = UDim2.new(0, 29, 0, 46)
		TabText_2.Size = UDim2.new(0, 61, 0, 16)
		TabText_2.Font = Enum.Font.SourceSansSemibold
		TabText_2.Text = TabName
		TabText_2.TextColor3 = Color3.fromRGB(255, 255, 255)
		TabText_2.TextScaled = true
		TabText_2.TextSize = 14.000
		TabText_2.TextTransparency = 0.210
		TabText_2.TextWrapped = true

		ScriptsTab.Name = "ScriptsTab"
		ScriptsTab.Parent = Tabs
		ScriptsTab.AnchorPoint = Vector2.new(0.5, 0.5)
		ScriptsTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ScriptsTab.BackgroundTransparency = 1.000
		ScriptsTab.BorderSizePixel = 0
		ScriptsTab.ClipsDescendants = false
		ScriptsTab.Position = UDim2.new(0, 275, 0, 240)
		ScriptsTab.Selectable = false
		ScriptsTab.Size = UDim2.new(0, 550, 0, 481)
		ScriptsTab.ScrollBarThickness = 0
		ScriptsTab.Visible = false

		TabName_2.Name = "TabName"
		TabName_2.Parent = ScriptsTab
		TabName_2.AnchorPoint = Vector2.new(0.5, 0.5)
		TabName_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabName_2.BackgroundTransparency = 1.000
		TabName_2.BorderSizePixel = 0
		TabName_2.Position = UDim2.new(0, 275, 0, 14)
		TabName_2.Size = UDim2.new(0, 516, 0, 28)
		TabName_2.Font = Enum.Font.SourceSansSemibold
		TabName_2.Text = TabName
		TabName_2.TextColor3 = Color3.fromRGB(255, 255, 255)
		TabName_2.TextScaled = true
		TabName_2.TextSize = 14.000
		TabName_2.TextWrapped = true
		TabName_2.TextXAlignment = Enum.TextXAlignment.Left

		UIListLayout_2.Parent = ScriptsTab
		UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_2.Padding = UDim.new(0, 7)

		UIPadding.Parent = ScriptsTab
		UIPadding.PaddingTop = UDim.new(0, 10)

		local function MWDZDH_fake_script() -- Example.LocalScript 
			local script = Instance.new('LocalScript', Example)

			local targettab = "Scripts".."Tab"
			local btn = script.Parent
			local TweenService = game.TweenService
			local TweenInfomation = TweenInfo.new(0.2, Enum.EasingStyle.Linear)
			local TabEnabled = false
			local EEE = false
			local accentcolor = script.Parent.Parent.Parent.AccentColor.BackgroundColor3

			script.Parent.TabIndicator.BackgroundColor3 = accentcolor
			if TabEnabled == true then
				btn.TabText.TextTransparency = 1
				btn.Image.ImageTransparency = 0
				btn.Image.ImageColor3 = accentcolor
				btn.Image.Position = UDim2.new(0.497, 0, 0.489, 0)
				btn.TabIndicator.Size = UDim2.new(0, 4, 0, 26)
				btn.BackgroundTransparency = 0.9
			else
				btn.TabText.TextTransparency = 0.2
				btn.Image.ImageTransparency = 0.2
				btn.Image.ImageColor3 = Color3.fromRGB(255, 255, 255)
				btn.Image.Position = UDim2.new(0.48, 0, 0.376, 0)
				btn.TabIndicator.Size = UDim2.new(0, 4, 0, 0)
				btn.BackgroundTransparency = 1
			end

			function tabb()
				for i, v in pairs(script.Parent.Parent.Parent.Tabs:GetChildren()) do
					if v.Name ~= targettab then
						v.Visible = false
					end
				end
			end

			function tabbb()
				for i, v in pairs(script.Parent.Parent.Parent.Tabs:GetChildren()) do
					if v:IsA("ScrollingFrame") then
						v.Visible = false
					end
				end
			end

			btn.MouseEnter:Connect(function()
				if TabEnabled == false then
					TweenService:Create(btn, TweenInfomation, { BackgroundTransparency = 0.95 }):Play()
				end
			end)

			btn.MouseLeave:Connect(function()
				if TabEnabled == false then
					TweenService:Create(btn, TweenInfomation, { BackgroundTransparency = 1 }):Play()
				end
			end)

			btn.MouseButton1Down:Connect(function()
				if TabEnabled == false then
					btn.Image:TweenPosition(
						btn.Image.Position + UDim2.new(0, 0, 0, -3),
						Enum.EasingDirection.In,
						Enum.EasingStyle.Linear,
						0.1
					)
				end
			end)

			btn.MouseButton1Up:Connect(function()
				if TabEnabled == false then

					EEE = true
					btn.Parent.signal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					wait(0.01)
					btn.Parent.signal.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
					EEE = false

					TweenService:Create(btn.TabText, TweenInfomation, { TextTransparency = 1 }):Play()
					TweenService:Create(btn.Image, TweenInfomation, { ImageTransparency = 0 }):Play()
					TweenService:Create(btn.Image, TweenInfomation, { ImageColor3 = accentcolor }):Play()
					wait(0.05)
					btn.Image:TweenPosition(
						UDim2.new(0.497, 0, 0.489, 0),
						Enum.EasingDirection.Out,
						Enum.EasingStyle.Back,
						0.35
					)
					btn.TabIndicator:TweenSize(
						UDim2.new(0, 4, 0, 26),
						Enum.EasingDirection.Out,
						Enum.EasingStyle.Quad,
						0.25
					)
					TweenService:Create(btn, TweenInfomation, { BackgroundTransparency = 0.9 }):Play()

					tabb()
					tabbb()
					script.Parent.Parent.Parent.Tabs[targettab].Visible = true

					TabEnabled = true	
				end
			end)

			btn.Parent.signal:GetPropertyChangedSignal("BackgroundColor3"):Connect(function(asdf)
				if btn.Parent.signal.BackgroundColor3 == Color3.fromRGB(255, 255, 255) and not EEE then
					TweenService:Create(btn.TabText, TweenInfomation, { TextTransparency = 0.2 }):Play()
					TweenService:Create(btn.Image, TweenInfomation, { ImageTransparency = 0.2 }):Play()
					TweenService:Create(btn.Image, TweenInfomation, { ImageColor3 = Color3.fromRGB(255, 255, 255) }):Play()
					wait(0.05)
					btn.Image:TweenPosition(
						UDim2.new(0.48, 0, 0.376, 0),
						Enum.EasingDirection.Out,
						Enum.EasingStyle.Back,
						0.35
					)
					btn.TabIndicator:TweenSize(
						UDim2.new(0, 4, 0, 0),
						Enum.EasingDirection.Out,
						Enum.EasingStyle.Quad,
						0.25
					)
					TweenService:Create(btn, TweenInfomation, { BackgroundTransparency = 1 }):Play()

					TabEnabled = false
				end
			end)
		end
		coroutine.wrap(MWDZDH_fake_script)()

		local Tab = {}

		function Tab:CreateLabel(LabelTextText)
			local Label = Instance.new("Frame")
			local UICorner_12 = Instance.new("UICorner")
			local UIStroke_10 = Instance.new("UIStroke")
			local LabelText = Instance.new("TextLabel")

			Label.Name = "Label"
			Label.Parent = ScriptsTab
			Label.AnchorPoint = Vector2.new(0.5, 0.5)
			Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Label.BackgroundTransparency = 0.950
			Label.BorderSizePixel = 0
			Label.Position = UDim2.new(0, 275, 0, 57)
			Label.Size = UDim2.new(0, 515, 0, 37)

			UICorner_12.Parent = Label

			UIStroke_10.Parent = Label
			UIStroke_10.Transparency = 0.900

			LabelText.Name = "LabelText"
			LabelText.Parent = Label
			LabelText.AnchorPoint = Vector2.new(0.5, 0.5)
			LabelText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			LabelText.BackgroundTransparency = 1.000
			LabelText.BorderSizePixel = 0
			LabelText.Position = UDim2.new(0, 256, 0, 18)
			LabelText.Size = UDim2.new(0, 488, 0, 24)
			LabelText.Font = Enum.Font.SourceSans
			LabelText.Text = LabelTextText
			LabelText.TextColor3 = Color3.fromRGB(255, 255, 255)
			LabelText.TextScaled = true
			LabelText.TextSize = 14.000
			LabelText.TextStrokeTransparency = 0.940
			LabelText.TextWrapped = true
			LabelText.TextXAlignment = Enum.TextXAlignment.Left

			local function WMQUJW_fake_script() -- Label.LocalScript 
				local script = Instance.new('LocalScript', Label)

				local TweenService = game.TweenService
				local TweenInfomation = TweenInfo.new(0.2, Enum.EasingStyle.Linear)

				script.Parent.MouseEnter:Connect(function()
					TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0.93 }):Play()
				end)

				script.Parent.MouseLeave:Connect(function()
					TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0.95 }):Play()
				end)
			end
			coroutine.wrap(WMQUJW_fake_script)()
		end

		function Tab:CreateButton(BtnTitle, BtnDesc, BtnText, call)
			local Button = Instance.new("Frame")
			local UICorner_13 = Instance.new("UICorner")
			local UIStroke_11 = Instance.new("UIStroke")
			local ButtonTitle = Instance.new("TextLabel")
			local ButtonDesc = Instance.new("TextLabel")
			local ButtonButton = Instance.new("TextButton")
			local UICorner_14 = Instance.new("UICorner")
			local UIStroke_12 = Instance.new("UIStroke")

			Button.Name = "Button"
			Button.Parent = ScriptsTab
			Button.AnchorPoint = Vector2.new(0.5, 0.5)
			Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Button.BackgroundTransparency = 0.950
			Button.BorderSizePixel = 0
			Button.Position = UDim2.new(0, 382, 0, 237)
			Button.Size = UDim2.new(0, 515, 0, 59)

			UICorner_13.Parent = Button

			UIStroke_11.Parent = Button
			UIStroke_11.Transparency = 0.900

			ButtonTitle.Name = "ButtonTitle"
			ButtonTitle.Parent = Button
			ButtonTitle.AnchorPoint = Vector2.new(0.5, 0.5)
			ButtonTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ButtonTitle.BackgroundTransparency = 1.000
			ButtonTitle.BorderSizePixel = 0
			ButtonTitle.Position = UDim2.new(0, 196, 0, 20)
			ButtonTitle.Size = UDim2.new(0, 368, 0, 25)
			ButtonTitle.Font = Enum.Font.SourceSans
			ButtonTitle.Text = BtnTitle
			ButtonTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			ButtonTitle.TextScaled = true
			ButtonTitle.TextSize = 14.000
			ButtonTitle.TextWrapped = true
			ButtonTitle.TextXAlignment = Enum.TextXAlignment.Left

			ButtonDesc.Name = "ButtonDesc"
			ButtonDesc.Parent = Button
			ButtonDesc.AnchorPoint = Vector2.new(0.5, 0.5)
			ButtonDesc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ButtonDesc.BackgroundTransparency = 1.000
			ButtonDesc.BorderSizePixel = 0
			ButtonDesc.Position = UDim2.new(0, 196, 0, 41)
			ButtonDesc.Size = UDim2.new(0, 368, 0, 17)
			ButtonDesc.Font = Enum.Font.SourceSans
			ButtonDesc.Text = BtnDesc
			ButtonDesc.TextColor3 = Color3.fromRGB(255, 255, 255)
			ButtonDesc.TextScaled = true
			ButtonDesc.TextSize = 14.000
			ButtonDesc.TextTransparency = 0.320
			ButtonDesc.TextWrapped = true
			ButtonDesc.TextXAlignment = Enum.TextXAlignment.Left

			ButtonButton.Name = "ButtonButton"
			ButtonButton.Parent = Button
			ButtonButton.AnchorPoint = Vector2.new(0.5, 0.5)
			ButtonButton.BackgroundColor3 = Color3.fromRGB(0, 94, 207)
			ButtonButton.BorderSizePixel = 0
			ButtonButton.Position = UDim2.new(0, 456, 0, 29)
			ButtonButton.Size = UDim2.new(0, 82, 0, 29)
			ButtonButton.AutoButtonColor = false
			ButtonButton.Font = Enum.Font.SourceSans
			ButtonButton.TextColor3 = Color3.fromRGB(37, 37, 37)
			ButtonButton.TextSize = 23.000
			ButtonButton.TextWrapped = true
			ButtonButton.Text = BtnText

			UICorner_14.CornerRadius = UDim.new(0, 6)
			UICorner_14.Parent = ButtonButton

			UIStroke_12.Parent = ButtonButton
			UIStroke_12.Color = Color3.fromRGB(255, 255, 255)
			UIStroke_12.Thickness = 0.000
			UIStroke_12.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

			local function MAXUFC_fake_script() -- Button.LocalScript 
				local script = Instance.new('LocalScript', Button)

				local TweenService = game.TweenService
				local TweenInfomation = TweenInfo.new(0.2, Enum.EasingStyle.Linear)
				local TweenInfomation1 = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
				local accentcolor = script.Parent.Parent.Parent.Parent.AccentColor.BackgroundColor3
				local accentbutton = true

				script.Parent.MouseEnter:Connect(function()
					TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0.93 }):Play()
				end)

				script.Parent.MouseLeave:Connect(function()
					TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0.95 }):Play()
				end)

				if accentbutton == true then
					script.Parent.ButtonButton.UIStroke.Thickness = 0
					script.Parent.ButtonButton.BackgroundColor3 = accentcolor
					script.Parent.ButtonButton.BackgroundTransparency = 0
					script.Parent.ButtonButton.TextColor3 = Color3.fromRGB(37, 37, 37)

					script.Parent.ButtonButton.MouseEnter:Connect(function()
						TweenService:Create(script.Parent.ButtonButton, TweenInfomation, { BackgroundTransparency = .2 }):Play()
					end)

					script.Parent.ButtonButton.MouseLeave:Connect(function()
						TweenService:Create(script.Parent.ButtonButton, TweenInfomation, { BackgroundTransparency = 0 }):Play()
					end)

					script.Parent.ButtonButton.MouseButton1Down:Connect(function()
						TweenService:Create(script.Parent.ButtonButton, TweenInfomation1, { BackgroundTransparency = 0 }):Play()
					end)

					script.Parent.ButtonButton.MouseButton1Up:Connect(function()
						TweenService:Create(script.Parent.ButtonButton, TweenInfomation1, { BackgroundTransparency = .2 }):Play()
						pcall(call)
					end)
				else
					script.Parent.ButtonButton.UIStroke.Thickness = 0.7
					script.Parent.ButtonButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					script.Parent.ButtonButton.BackgroundTransparency = 0.95
					script.Parent.ButtonButton.UIStroke.Transparency = 0.85
					script.Parent.ButtonButton.TextColor3 = Color3.fromRGB(255, 255, 255)

					script.Parent.ButtonButton.MouseEnter:Connect(function()
						TweenService:Create(script.Parent.ButtonButton, TweenInfomation, { BackgroundTransparency = 0.93 }):Play()
					end)

					script.Parent.ButtonButton.MouseLeave:Connect(function()
						TweenService:Create(script.Parent.ButtonButton, TweenInfomation, { BackgroundTransparency = 0.95 }):Play()
					end)

					script.Parent.ButtonButton.MouseButton1Down:Connect(function()
						TweenService:Create(script.Parent.ButtonButton, TweenInfomation1, { BackgroundTransparency = 0.95 }):Play()
					end)

					script.Parent.ButtonButton.MouseButton1Up:Connect(function()
						TweenService:Create(script.Parent.ButtonButton, TweenInfomation1, { BackgroundTransparency = 0.93 }):Play()
						pcall(call)
					end)
				end

			end
			coroutine.wrap(MAXUFC_fake_script)()
		end

		function Tab:CreateDropdown(DropdownSettings)
			local Dropdown = Instance.new("Frame")
			local UICorner_15 = Instance.new("UICorner")
			local UIStroke_13 = Instance.new("UIStroke")
			local DropdownTitle = Instance.new("TextLabel")
			local DropdownDesc = Instance.new("TextLabel")
			local DropdownButton = Instance.new("TextButton")
			local UICorner_16 = Instance.new("UICorner")
			local ChevronIcon = Instance.new("ImageLabel")
			local CurrentSelectedOption = Instance.new("TextLabel")
			local Line_2 = Instance.new("Frame")
			local UIStroke_14 = Instance.new("UIStroke")
			local DropdownList = Instance.new("Frame")
			local UICorner_17 = Instance.new("UICorner")
			local UIStroke_15 = Instance.new("UIStroke")
			local UIListLayout_3 = Instance.new("UIListLayout")
			local UIPadding_2 = Instance.new("UIPadding")
			local dropdownsignal = Instance.new("Frame")

			Dropdown.Name = "Dropdown"
			Dropdown.Parent = ScriptsTab
			Dropdown.AnchorPoint = Vector2.new(0.5, 0.5)
			Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Dropdown.BackgroundTransparency = 0.950
			Dropdown.BorderSizePixel = 0
			Dropdown.Position = UDim2.new(0, 262, 0, 252)
			Dropdown.Size = UDim2.new(0, 515, 0, 59)
			Dropdown.ZIndex = 2

			UICorner_15.Parent = Dropdown

			UIStroke_13.Parent = Dropdown
			UIStroke_13.Thickness = 0.000
			UIStroke_13.Transparency = 0.900

			DropdownTitle.Name = "Dropdown Title"
			DropdownTitle.Parent = Dropdown
			DropdownTitle.AnchorPoint = Vector2.new(0.5, 0.5)
			DropdownTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropdownTitle.BackgroundTransparency = 1.000
			DropdownTitle.BorderSizePixel = 0
			DropdownTitle.Position = UDim2.new(0, 187, 0, 20)
			DropdownTitle.Size = UDim2.new(0, 354, 0, 25)
			DropdownTitle.Font = Enum.Font.SourceSans
			DropdownTitle.Text = DropdownSettings.Name
			DropdownTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			DropdownTitle.TextScaled = true
			DropdownTitle.TextSize = 14.000
			DropdownTitle.TextWrapped = true
			DropdownTitle.TextXAlignment = Enum.TextXAlignment.Left

			DropdownDesc.Name = "DropdownDesc"
			DropdownDesc.Parent = Dropdown
			DropdownDesc.AnchorPoint = Vector2.new(0.5, 0.5)
			DropdownDesc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropdownDesc.BackgroundTransparency = 1.000
			DropdownDesc.BorderSizePixel = 0
			DropdownDesc.Position = UDim2.new(0, 187, 0, 41)
			DropdownDesc.Size = UDim2.new(0, 354, 0, 17)
			DropdownDesc.Font = Enum.Font.SourceSans
			DropdownDesc.Text = DropdownSettings.Desc
			DropdownDesc.TextColor3 = Color3.fromRGB(255, 255, 255)
			DropdownDesc.TextScaled = true
			DropdownDesc.TextSize = 14.000
			DropdownDesc.TextTransparency = 0.320
			DropdownDesc.TextWrapped = true
			DropdownDesc.TextXAlignment = Enum.TextXAlignment.Left

			DropdownButton.Name = "DropdownButton"
			DropdownButton.Parent = Dropdown
			DropdownButton.AnchorPoint = Vector2.new(0.5, 0.5)
			DropdownButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropdownButton.BackgroundTransparency = 0.950
			DropdownButton.BorderSizePixel = 0
			DropdownButton.Position = UDim2.new(0.848913074, 0, 0.484881371, 0)
			DropdownButton.Size = UDim2.new(0, 124, 0, 29)
			DropdownButton.AutoButtonColor = false
			DropdownButton.Font = Enum.Font.SourceSans
			DropdownButton.Text = ""
			DropdownButton.TextColor3 = Color3.fromRGB(255, 255, 255)
			DropdownButton.TextScaled = true
			DropdownButton.TextSize = 14.000
			DropdownButton.TextWrapped = true
			DropdownButton.TextXAlignment = Enum.TextXAlignment.Left

			UICorner_16.CornerRadius = UDim.new(0, 6)
			UICorner_16.Parent = DropdownButton

			ChevronIcon.Name = "ChevronIcon"
			ChevronIcon.Parent = DropdownButton
			ChevronIcon.AnchorPoint = Vector2.new(0.5, 0.5)
			ChevronIcon.BackgroundTransparency = 1.000
			ChevronIcon.BorderSizePixel = 0
			ChevronIcon.Position = UDim2.new(0.864996254, 0, 0.521516979, 0)
			ChevronIcon.Size = UDim2.new(0.120420955, 0, 0.543172896, 0)
			ChevronIcon.Image = "rbxassetid://11421095840"

			CurrentSelectedOption.Name = "CurrentSelectedOption"
			CurrentSelectedOption.Parent = DropdownButton
			CurrentSelectedOption.AnchorPoint = Vector2.new(0.5, 0.5)
			CurrentSelectedOption.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			CurrentSelectedOption.BackgroundTransparency = 1.000
			CurrentSelectedOption.BorderSizePixel = 0
			CurrentSelectedOption.Position = UDim2.new(0.362159014, 0, 0.489691406, 0)
			CurrentSelectedOption.Size = UDim2.new(0, 75, 0, 22)
			CurrentSelectedOption.Font = Enum.Font.SourceSans
			CurrentSelectedOption.Text = "Option"
			CurrentSelectedOption.TextColor3 = Color3.fromRGB(255, 255, 255)
			CurrentSelectedOption.TextScaled = true
			CurrentSelectedOption.TextSize = 14.000
			CurrentSelectedOption.TextWrapped = true
			CurrentSelectedOption.TextXAlignment = Enum.TextXAlignment.Left

			Line_2.Name = "Line"
			Line_2.Parent = DropdownButton
			Line_2.AnchorPoint = Vector2.new(0.5, 0.5)
			Line_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Line_2.BackgroundTransparency = 0.800
			Line_2.BorderSizePixel = 0
			Line_2.Position = UDim2.new(0.73360002, 0, 0.509589911, 0)
			Line_2.Size = UDim2.new(0, 1, 0, 28)

			UIStroke_14.Parent = DropdownButton
			UIStroke_14.Thickness = 0.700
			UIStroke_14.Transparency = 0.900
			UIStroke_14.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

			DropdownList.Name = "DropdownList"
			DropdownList.Parent = DropdownButton
			DropdownList.AnchorPoint = Vector2.new(0.5, 0)
			DropdownList.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			DropdownList.BorderSizePixel = 0
			DropdownList.Position = UDim2.new(0.499, 0,1.4, 0)
			DropdownList.Size = UDim2.new(0, 138, 0, 43)
			DropdownList.Visible = false
			DropdownList.AutomaticSize = Enum.AutomaticSize.Y
			DropdownList.ZIndex = 5

			UICorner_17.Parent = DropdownList

			UIStroke_15.Parent = DropdownList
			UIStroke_15.Thickness = 0.700
			UIStroke_15.Transparency = 0.850

			UIListLayout_3.Parent = DropdownList
			UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_3.Padding = UDim.new(0, 1)

			UIPadding_2.Parent = DropdownList
			UIPadding_2.PaddingBottom = UDim.new(0, 7)
			UIPadding_2.PaddingTop = UDim.new(0, 7)

			dropdownsignal.Name = "dropdownsignal"
			dropdownsignal.Parent = DropdownButton
			dropdownsignal.AnchorPoint = Vector2.new(0.5, 0.5)
			dropdownsignal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			dropdownsignal.BorderSizePixel = 0
			dropdownsignal.Position = UDim2.new(0.0450000018, 0, 0.112000003, 0)
			dropdownsignal.Size = UDim2.new(0, 100, 0, 100)
			dropdownsignal.Visible = false

			local function BQCKRPD_fake_script() -- Dropdown.LocalScript 
				local script = Instance.new('LocalScript', Dropdown)

				local TweenService = game.TweenService
				local TweenInfomation = TweenInfo.new(0.2, Enum.EasingStyle.Linear)
				local TweenInfomation1 = TweenInfo.new(0.1, Enum.EasingStyle.Linear)

				script.Parent.MouseEnter:Connect(function()
					TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0.93 }):Play()
				end)

				script.Parent.MouseLeave:Connect(function()
					TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0.95 }):Play()
				end)
			end
			coroutine.wrap(BQCKRPD_fake_script)()

			local function QEAYH_fake_script() -- DropdownButton.LocalScript 
				local script = Instance.new('LocalScript', DropdownButton)

				local TweenService = game.TweenService
				local TweenInfomation = TweenInfo.new(0.2, Enum.EasingStyle.Linear)
				local TweenInfomation1 = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
				local TweenInfomation2 = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
				local dropped = false

				script.Parent.MouseEnter:Connect(function()
					TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0.93 }):Play()
				end)

				script.Parent.MouseLeave:Connect(function()
					TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0.95 }):Play()
				end)

				script.Parent.MouseButton1Down:Connect(function()
					TweenService:Create(script.Parent, TweenInfomation1, { BackgroundTransparency = 0.95 }):Play()
				end)

				script.Parent.MouseButton1Up:Connect(function()
					TweenService:Create(script.Parent, TweenInfomation1, { BackgroundTransparency = 0.93 }):Play()
					if dropped == false then
						TweenService:Create(script.Parent.ChevronIcon, TweenInfomation1, { Rotation = 180 }):Play()
						script.Parent.DropdownList.Visible = true
						dropped = true
					else
						TweenService:Create(script.Parent.ChevronIcon, TweenInfomation1, { Rotation = 0 }):Play()
						script.Parent.DropdownList.Visible = false
						dropped = false
					end
				end)

				script.Parent.dropdownsignal:GetPropertyChangedSignal("BackgroundColor3"):Connect(function()
					if script.Parent.dropdownsignal.BackgroundColor3 == Color3.fromRGB(0, 0, 0) then
						TweenService:Create(script.Parent.ChevronIcon, TweenInfomation1, { Rotation = 0 }):Play()
						script.Parent.DropdownList.Visible = false
						dropped = false
					end
				end)
			end
			coroutine.wrap(QEAYH_fake_script)()

			for _, v in ipairs(DropdownSettings.Objects) do
				local Option = Instance.new("TextButton")
				local UICorner_18 = Instance.new("UICorner")
				local OptionText = Instance.new("TextLabel")
				
				Option.Name = v
				Option.Parent = DropdownList
				Option.Active = false
				Option.AnchorPoint = Vector2.new(0.5, 0.5)
				Option.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Option.BackgroundTransparency = 1.000
				Option.BorderSizePixel = 0
				Option.Position = UDim2.new(0.0450000018, 0, 0.112000003, 0)
				Option.Selectable = true
				Option.Size = UDim2.new(0, 124, 0, 29)
				Option.Visible = true
				Option.AutoButtonColor = false
				Option.Text = ""
				Option.TextColor3 = Color3.fromRGB(255, 255, 255)
				Option.ZIndex = 6

				UICorner_18.Parent = Option

				OptionText.Name = "OptionText"
				OptionText.Parent = Option
				OptionText.AnchorPoint = Vector2.new(0.5, 0.5)
				OptionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				OptionText.BackgroundTransparency = 1.000
				OptionText.BorderSizePixel = 0
				OptionText.Position = UDim2.new(0.485749274, 0, 0.5, 0)
				OptionText.Size = UDim2.new(0, 107, 0, 23)
				OptionText.Font = Enum.Font.SourceSans
				OptionText.Text = v
				OptionText.TextColor3 = Color3.fromRGB(255, 255, 255)
				OptionText.TextScaled = true
				OptionText.TextSize = 14.000
				OptionText.TextWrapped = true
				OptionText.TextXAlignment = Enum.TextXAlignment.Left
				OptionText.ZIndex = 7
				
				local function TUYOT_fake_script() -- Option.LocalScript 
					local script = Instance.new('LocalScript', Option)

					local TweenService = game.TweenService
					local TweenInfomation = TweenInfo.new(0.2, Enum.EasingStyle.Linear)
					local TweenInfomation1 = TweenInfo.new(0.1, Enum.EasingStyle.Linear)

					script.Parent.MouseEnter:Connect(function()
						TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0.95 }):Play()
					end)

					script.Parent.MouseLeave:Connect(function()
						TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 1 }):Play()
					end)

					script.Parent.MouseButton1Down:Connect(function()
						TweenService:Create(script.Parent, TweenInfomation1, { BackgroundTransparency = 0.97 }):Play()
					end)

					script.Parent.MouseButton1Up:Connect(function()
						TweenService:Create(script.Parent, TweenInfomation1, { BackgroundTransparency = 0.95 }):Play()
						
						pcall(function()
							DropdownSettings.Callback(OptionText.Text)
						end)

						if script.Parent.Visible == true then
							script.Parent.Parent.Parent.CurrentSelectedOption.Text = script.Parent.OptionText.Text
							script.Parent.Parent.Parent.dropdownsignal.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
							wait(0.01)
							script.Parent.Parent.Parent.dropdownsignal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

							for i, v in pairs(script.Parent.Parent.Parent.DropdownList:GetDescendants()) do
								if v:IsA("TextButton") and v.Parent == script.Parent.Parent.Parent.DropdownList and v.Visible == false then
									v.Visible = true
								end
							end
							script.Parent.Visible = false
						end
					end)
				end
				coroutine.wrap(TUYOT_fake_script)()
			end
			
			CurrentSelectedOption.Text = DropdownSettings.DefaultSelection
			DropdownList[DropdownSettings.DefaultSelection].Visible = false
		end

		function Tab:CreateToggle(ToggleSettings)
			local Toggle = Instance.new("Frame")
			local UICorner_19 = Instance.new("UICorner")
			local UIStroke_16 = Instance.new("UIStroke")
			local ToggleTitle = Instance.new("TextLabel")
			local ToggleDesc = Instance.new("TextLabel")
			local ToggleButton = Instance.new("TextButton")
			local UICorner_20 = Instance.new("UICorner")
			local UIStroke_17 = Instance.new("UIStroke")
			local Circle = Instance.new("Frame")
			local UICorner_21 = Instance.new("UICorner")
			local ToggleValue = Instance.new("TextLabel")

			Toggle.Name = "Toggle"
			Toggle.Parent = ScriptsTab
			Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
			Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Toggle.BackgroundTransparency = 0.950
			Toggle.BorderSizePixel = 0
			Toggle.Position = UDim2.new(0, 370, 0, 230)
			Toggle.Size = UDim2.new(0, 515, 0, 59)

			UICorner_19.Parent = Toggle

			UIStroke_16.Parent = Toggle
			UIStroke_16.Transparency = 0.900

			ToggleTitle.Name = "ToggleTitle"
			ToggleTitle.Parent = Toggle
			ToggleTitle.AnchorPoint = Vector2.new(0.5, 0.5)
			ToggleTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleTitle.BackgroundTransparency = 1.000
			ToggleTitle.BorderSizePixel = 0
			ToggleTitle.Position = UDim2.new(0, 196, 0, 20)
			ToggleTitle.Size = UDim2.new(0, 368, 0, 25)
			ToggleTitle.Font = Enum.Font.SourceSans
			ToggleTitle.Text = ToggleSettings.Name
			ToggleTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			ToggleTitle.TextScaled = true
			ToggleTitle.TextSize = 14.000
			ToggleTitle.TextWrapped = true
			ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left

			ToggleDesc.Name = "ToggleDesc"
			ToggleDesc.Parent = Toggle
			ToggleDesc.AnchorPoint = Vector2.new(0.5, 0.5)
			ToggleDesc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleDesc.BackgroundTransparency = 1.000
			ToggleDesc.BorderSizePixel = 0
			ToggleDesc.Position = UDim2.new(0, 196, 0, 41)
			ToggleDesc.Size = UDim2.new(0, 368, 0, 17)
			ToggleDesc.Font = Enum.Font.SourceSans
			ToggleDesc.Text = ToggleSettings.Desc
			ToggleDesc.TextColor3 = Color3.fromRGB(255, 255, 255)
			ToggleDesc.TextScaled = true
			ToggleDesc.TextSize = 14.000
			ToggleDesc.TextTransparency = 0.320
			ToggleDesc.TextWrapped = true
			ToggleDesc.TextXAlignment = Enum.TextXAlignment.Left

			ToggleButton.Name = "ToggleButton"
			ToggleButton.Parent = Toggle
			ToggleButton.AnchorPoint = Vector2.new(0.5, 0.5)
			ToggleButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			ToggleButton.BackgroundTransparency = 0.900
			ToggleButton.BorderSizePixel = 0
			ToggleButton.Position = UDim2.new(0, 477, 0, 28)
			ToggleButton.Size = UDim2.new(0, 39, 0, 19)
			ToggleButton.AutoButtonColor = false
			ToggleButton.Font = Enum.Font.SourceSans
			ToggleButton.Text = ""
			ToggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			ToggleButton.TextSize = 14.000

			UICorner_20.CornerRadius = UDim.new(0, 100)
			UICorner_20.Parent = ToggleButton

			UIStroke_17.Parent = ToggleButton
			UIStroke_17.Color = Color3.fromRGB(255, 255, 255)
			UIStroke_17.Thickness = 0.650
			UIStroke_17.Transparency = 0.350
			UIStroke_17.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

			Circle.Name = "Circle"
			Circle.Parent = ToggleButton
			Circle.AnchorPoint = Vector2.new(0.5, 0.5)
			Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Circle.BackgroundTransparency = 0.250
			Circle.BorderSizePixel = 0
			Circle.Position = UDim2.new(0, 11, 0, 10)
			Circle.Size = UDim2.new(0, 11, 0, 11)

			UICorner_21.CornerRadius = UDim.new(0, 1000)
			UICorner_21.Parent = Circle

			ToggleValue.Name = "ToggleValue"
			ToggleValue.Parent = Toggle
			ToggleValue.AnchorPoint = Vector2.new(0.5, 0.5)
			ToggleValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleValue.BackgroundTransparency = 1.000
			ToggleValue.BorderSizePixel = 0
			ToggleValue.Position = UDim2.new(0.845970869, 0, 0.466559649, 0)
			ToggleValue.Size = UDim2.new(0, 29, 0, 22)
			ToggleValue.Font = Enum.Font.SourceSans
			ToggleValue.Text = "Off"
			ToggleValue.TextColor3 = Color3.fromRGB(255, 255, 255)
			ToggleValue.TextScaled = true
			ToggleValue.TextSize = 14.000
			ToggleValue.TextTransparency = 0.320
			ToggleValue.TextWrapped = true

			local function XIZSOHH_fake_script() -- Toggle.LocalScript 
				local script = Instance.new('LocalScript', Toggle)

				local TweenService = game.TweenService
				local TweenInfomation = TweenInfo.new(0.2, Enum.EasingStyle.Linear)
				local TweenInfomation1 = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
				local accentcolor = script.Parent.Parent.Parent.Parent.AccentColor.BackgroundColor3

				script.Parent.MouseEnter:Connect(function()
					TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0.93 }):Play()
				end)

				script.Parent.MouseLeave:Connect(function()
					TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0.95 }):Play()
				end)
			end
			coroutine.wrap(XIZSOHH_fake_script)()
			local function CQUIIMV_fake_script() -- ToggleButton.LocalScript 
				local script = Instance.new('LocalScript', ToggleButton)

				local TweenService = game.TweenService
				local TweenInfomation = TweenInfo.new(0.2, Enum.EasingStyle.Linear)
				local TweenInfomation1 = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
				local accentcolor = script.Parent.Parent.Parent.Parent.Parent.AccentColor.BackgroundColor3
				local defualttogglestatus = ToggleSettings.Default
				local toggled = false

				if defualttogglestatus == false then
					toggled = false
					script.Parent.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
					script.Parent.BackgroundTransparency = 0.95
					script.Parent.Circle.Position = UDim2.new(0, 11, 0, 10)
					script.Parent.Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					script.Parent.Circle.BackgroundTransparency = 0.25
					script.Parent.UIStroke.Thickness = 0.65
				else
					toggled = true
					script.Parent.BackgroundColor3 = accentcolor
					script.Parent.BackgroundTransparency = 0
					script.Parent.Circle.Position = UDim2.new(0, 28, 0, 10)
					script.Parent.Circle.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
					script.Parent.Circle.BackgroundTransparency = 0
					script.Parent.UIStroke.Thickness = 0
				end

				script.Parent.MouseEnter:Connect(function()
					if toggled == false then
						TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0.95 }):Play()
						TweenService:Create(script.Parent, TweenInfomation, { BackgroundColor3 = Color3.fromRGB(200, 200, 200) }):Play()
					else
						TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0.2 }):Play()
					end
					script.Parent.Circle:TweenSize(
						UDim2.new(0, 13, 0, 13),
						Enum.EasingDirection.Out,
						Enum.EasingStyle.Linear,
						0.25
					)
				end)

				script.Parent.MouseLeave:Connect(function()
					if toggled == false then
						TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0.9 }):Play()
						TweenService:Create(script.Parent, TweenInfomation, { BackgroundColor3 = Color3.fromRGB(0, 0, 0) }):Play()
					else
						TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0 }):Play()
					end
					script.Parent.Circle:TweenSize(
						UDim2.new(0, 11, 0, 11),
						Enum.EasingDirection.Out,
						Enum.EasingStyle.Linear,
						0.25
					)
				end)

				script.Parent.MouseButton1Down:Connect(function()
					script.Parent.Circle:TweenSize(
						UDim2.new(0, 16, 0, 13),
						Enum.EasingDirection.Out,
						Enum.EasingStyle.Linear,
						0.13
					)
				end)

				script.Parent.MouseButton1Up:Connect(function()

					if toggled == false then
						script.Parent.Circle:TweenPosition(
							UDim2.new(0, 28, 0, 10),
							Enum.EasingDirection.Out,
							Enum.EasingStyle.Quad,
							0.18
						)
						script.Parent.UIStroke.Thickness = 0
						TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0 }):Play()
						TweenService:Create(script.Parent, TweenInfomation, { BackgroundColor3 = accentcolor }):Play()
						TweenService:Create(script.Parent.Circle, TweenInfomation, { BackgroundColor3 = Color3.fromRGB(15, 15, 15) }):Play()
						TweenService:Create(script.Parent.Circle, TweenInfomation, { BackgroundTransparency = 0 }):Play()

						wait(0.1)

						script.Parent.Circle:TweenSize(
							UDim2.new(0, 14, 0, 14),
							Enum.EasingDirection.Out,
							Enum.EasingStyle.Linear,
							0.17
						)

						script.Parent.Parent.ToggleValue.Text = "On"

						toggled = true
						pcall(function()
							ToggleSettings.Callback(toggled)
						end)
					else
						script.Parent.Circle:TweenPosition(
							UDim2.new(0, 11, 0, 10),
							Enum.EasingDirection.Out,
							Enum.EasingStyle.Quad,
							0.18
						)

						script.Parent.UIStroke.Thickness = 0.65
						TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0.95 }):Play()
						TweenService:Create(script.Parent, TweenInfomation, { BackgroundColor3 = Color3.fromRGB(0, 0, 0) }):Play()
						TweenService:Create(script.Parent.Circle, TweenInfomation, { BackgroundColor3 = Color3.fromRGB(255, 255, 255) }):Play()
						TweenService:Create(script.Parent.Circle, TweenInfomation, { BackgroundTransparency = 0.25 }):Play()

						wait(0.1)

						script.Parent.Circle:TweenSize(
							UDim2.new(0, 14, 0, 14),
							Enum.EasingDirection.Out,
							Enum.EasingStyle.Linear,
							0.17
						)

						script.Parent.Parent.ToggleValue.Text = "Off"

						toggled = false
						pcall(function()
							ToggleSettings.Callback(toggled)
						end)
					end
				end)
			end
			coroutine.wrap(CQUIIMV_fake_script)()
		end
		
		function Tab:CreateSlider(SliderSettings)
			local Slider = Instance.new("Frame")
			local UICorner_22 = Instance.new("UICorner")
			local UIStroke_18 = Instance.new("UIStroke")
			local SliderTitle = Instance.new("TextLabel")
			local SliderDesc = Instance.new("TextLabel")
			local Bar = Instance.new("Frame")
			local UICorner_23 = Instance.new("UICorner")
			local Athing = Instance.new("TextButton")
			local UICorner_24 = Instance.new("UICorner")
			local Athing2 = Instance.new("Frame")
			local UICorner_25 = Instance.new("UICorner")
			local SliderValue = Instance.new("TextLabel")
			
			Slider.Name = "Slider"
			Slider.Parent = ScriptsTab
			Slider.AnchorPoint = Vector2.new(0.5, 0.5)
			Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Slider.BackgroundTransparency = 0.950
			Slider.BorderSizePixel = 0
			Slider.Position = UDim2.new(0, 370, 0, 230)
			Slider.Size = UDim2.new(0, 515, 0, 59)

			UICorner_22.Parent = Slider

			UIStroke_18.Parent = Slider
			UIStroke_18.Transparency = 0.900

			SliderTitle.Name = "SliderTitle"
			SliderTitle.Parent = Slider
			SliderTitle.AnchorPoint = Vector2.new(0.5, 0.5)
			SliderTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SliderTitle.BackgroundTransparency = 1.000
			SliderTitle.BorderSizePixel = 0
			SliderTitle.Position = UDim2.new(0, 144, 0, 20)
			SliderTitle.Size = UDim2.new(0, 264, 0, 25)
			SliderTitle.Font = Enum.Font.SourceSans
			SliderTitle.Text = SliderSettings.Name
			SliderTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			SliderTitle.TextScaled = true
			SliderTitle.TextSize = 14.000
			SliderTitle.TextWrapped = true
			SliderTitle.TextXAlignment = Enum.TextXAlignment.Left

			SliderDesc.Name = "SliderDesc"
			SliderDesc.Parent = Slider
			SliderDesc.AnchorPoint = Vector2.new(0.5, 0.5)
			SliderDesc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SliderDesc.BackgroundTransparency = 1.000
			SliderDesc.BorderSizePixel = 0
			SliderDesc.Position = UDim2.new(0, 144, 0, 41)
			SliderDesc.Size = UDim2.new(0, 264, 0, 17)
			SliderDesc.Font = Enum.Font.SourceSans
			SliderDesc.Text = SliderSettings.Desc
			SliderDesc.TextColor3 = Color3.fromRGB(255, 255, 255)
			SliderDesc.TextScaled = true
			SliderDesc.TextSize = 14.000
			SliderDesc.TextTransparency = 0.320
			SliderDesc.TextWrapped = true
			SliderDesc.TextXAlignment = Enum.TextXAlignment.Left

			Bar.Name = "Bar"
			Bar.Parent = Slider
			Bar.AnchorPoint = Vector2.new(0.5, 0.5)
			Bar.BackgroundColor3 = Color3.fromRGB(0, 94, 207)
			Bar.BorderSizePixel = 0
			Bar.Position = UDim2.new(0.813946962, 0, 0.49335596, 0)
			Bar.Size = UDim2.new(0, 161, 0, 3)

			UICorner_23.CornerRadius = UDim.new(0, 100)
			UICorner_23.Parent = Bar

			Athing.Name = "Athing"
			Athing.Parent = Bar
			Athing.AnchorPoint = Vector2.new(0.5, 0.5)
			Athing.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
			Athing.BorderSizePixel = 0
			Athing.Position = UDim2.new(0.0591994748, 0, 0.389333099, 0)
			Athing.Size = UDim2.new(0, 20, 0, 20)
			Athing.AutoButtonColor = false
			Athing.Font = Enum.Font.SourceSans
			Athing.Text = ""
			Athing.TextColor3 = Color3.fromRGB(0, 0, 0)
			Athing.TextSize = 14.000

			UICorner_24.CornerRadius = UDim.new(0, 100)
			UICorner_24.Parent = Athing

			Athing2.Name = "Athing2"
			Athing2.Parent = Athing
			Athing2.Active = true
			Athing2.AnchorPoint = Vector2.new(0.5, 0.5)
			Athing2.BackgroundColor3 = Color3.fromRGB(0, 94, 207)
			Athing2.BorderSizePixel = 0
			Athing2.Position = UDim2.new(0.494672239, 0, 0.50999999, 0)
			Athing2.Selectable = true
			Athing2.Size = UDim2.new(0, 10, 0, 10)
			Athing2.ZIndex = 0

			UICorner_25.CornerRadius = UDim.new(0, 100)
			UICorner_25.Parent = Athing2

			SliderValue.Name = "SliderValue"
			SliderValue.Parent = Slider
			SliderValue.AnchorPoint = Vector2.new(0.5, 0.5)
			SliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SliderValue.BackgroundTransparency = 1.000
			SliderValue.BorderSizePixel = 0
			SliderValue.Position = UDim2.new(0.609077632, 0, 0.484881371, 0)
			SliderValue.Size = UDim2.new(0, 29, 0, 22)
			SliderValue.Font = Enum.Font.SourceSans
			SliderValue.Text = "0"
			SliderValue.TextColor3 = Color3.fromRGB(255, 255, 255)
			SliderValue.TextScaled = true
			SliderValue.TextSize = 14.000
			SliderValue.TextTransparency = 0.320
			SliderValue.TextWrapped = true
			
			local function YMDB_fake_script() -- Slider.LocalScript 
				local script = Instance.new('LocalScript', Slider)

				local TweenService = game.TweenService
				local TweenInfomation = TweenInfo.new(0.2, Enum.EasingStyle.Linear)
				local TweenInfomation1 = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
				local accentcolor = script.Parent.Parent.Parent.Parent.AccentColor.BackgroundColor3

				script.Parent.Bar.BackgroundColor3 = accentcolor

				script.Parent.MouseEnter:Connect(function()
					TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0.93 }):Play()
				end)

				script.Parent.MouseLeave:Connect(function()
					TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0.95 }):Play()
				end)

				--------

				local Player = game:GetService ("Players") .LocalPlayer
				local UIS = game:GetService ("UserInputService")
				local RunService = game:GetService("RunService")
				local Frame = script.Parent.Bar
				local Button = script.Parent.Bar.Athing
				local db = false
				local step = SliderSettings.SnapAmount/SliderSettings.Range[2]
				local percentage = SliderSettings.DefaultValue
				local range = SliderSettings.Range
				Button.Position = UDim2.new(percentage/range[2],0,Button.Position.Y.Scale,Button.Position.Y.Offset)
				script.Parent.SliderValue.Text = percentage
				local percentage2
				local scaledpercentage

				function snap (number, factor)
					if factor == 0 then
						return number
					else
						return math. floor (number/factor+0.5) *factor
					end
				end

				UIS. InputEnded: Connect (function (input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						db = false
					end
				end)

				Button.MouseButton1Down:Connect(function()
					db = true
				end)

				RunService.RenderStepped:Connect(function()
					if db then
						local MousePos = UIS:GetMouseLocation().X
						local BtnPos = Button.Position
						local FrameSize = Frame.AbsoluteSize.X
						local FramePos = Frame.AbsolutePosition.X
						local pos = snap((MousePos-FramePos)/FrameSize, step)
						percentage = math.clamp (pos, 0,1)
						percentage2 = percentage*range[2]
						scaledpercentage = math.floor(percentage2 * 100) / 100
						script.Parent.SliderValue.Text = scaledpercentage
						
						pcall(function()
							SliderSettings.Callback(scaledpercentage)
						end)

						Button.Position = UDim2.new(percentage,0,BtnPos.Y.Scale,BtnPos.Y.Offset)
					end
				end)
			end
			coroutine.wrap(YMDB_fake_script)()
		end
		
		function Tab:CreateInput(InputName, InputDescc, DefaultValue, call)
			local Input = Instance.new("Frame")
			local UICorner_26 = Instance.new("UICorner")
			local UIStroke_19 = Instance.new("UIStroke")
			local InputTitle = Instance.new("TextLabel")
			local InputDesc = Instance.new("TextLabel")
			local TextBox = Instance.new("TextBox")
			local UICorner_27 = Instance.new("UICorner")
			local UIStroke_20 = Instance.new("UIStroke")
			local UIPadding_3 = Instance.new("UIPadding")
			
			Input.Name = "Input"
			Input.Parent = ScriptsTab
			Input.AnchorPoint = Vector2.new(0.5, 0.5)
			Input.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Input.BackgroundTransparency = 0.950
			Input.BorderSizePixel = 0
			Input.Position = UDim2.new(0, 370, 0, 230)
			Input.Size = UDim2.new(0, 515, 0, 59)

			UICorner_26.Parent = Input

			UIStroke_19.Parent = Input
			UIStroke_19.Transparency = 0.900

			InputTitle.Name = "InputTitle"
			InputTitle.Parent = Input
			InputTitle.AnchorPoint = Vector2.new(0.5, 0.5)
			InputTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			InputTitle.BackgroundTransparency = 1.000
			InputTitle.BorderSizePixel = 0
			InputTitle.Position = UDim2.new(0, 196, 0, 20)
			InputTitle.Size = UDim2.new(0, 368, 0, 25)
			InputTitle.Font = Enum.Font.SourceSans
			InputTitle.Text = InputName
			InputTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			InputTitle.TextScaled = true
			InputTitle.TextSize = 14.000
			InputTitle.TextWrapped = true
			InputTitle.TextXAlignment = Enum.TextXAlignment.Left

			InputDesc.Name = "InputDesc"
			InputDesc.Parent = Input
			InputDesc.AnchorPoint = Vector2.new(0.5, 0.5)
			InputDesc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			InputDesc.BackgroundTransparency = 1.000
			InputDesc.BorderSizePixel = 0
			InputDesc.Position = UDim2.new(0, 196, 0, 41)
			InputDesc.Size = UDim2.new(0, 368, 0, 17)
			InputDesc.Font = Enum.Font.SourceSans
			InputDesc.Text = InputDescc
			InputDesc.TextColor3 = Color3.fromRGB(255, 255, 255)
			InputDesc.TextScaled = true
			InputDesc.TextSize = 14.000
			InputDesc.TextTransparency = 0.320
			InputDesc.TextWrapped = true
			InputDesc.TextXAlignment = Enum.TextXAlignment.Left

			TextBox.Parent = Input
			TextBox.AnchorPoint = Vector2.new(1, 0.5)
			TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextBox.BackgroundTransparency = 0.950
			TextBox.BorderSizePixel = 0
			TextBox.Position = UDim2.new(0, 500, 0, 29)
			TextBox.Size = UDim2.new(0, 10, 0, 29)
			TextBox.Font = Enum.Font.Unknown
			TextBox.PlaceholderText = "Input"
			TextBox.Text = DefaultValue
			TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextBox.TextSize = 11
			TextBox.TextWrapped = true
			TextBox.AutomaticSize = Enum.AutomaticSize.X
			TextBox.TextXAlignment = Enum.TextXAlignment.Right

			UICorner_27.Parent = TextBox

			UIStroke_20.Parent = TextBox
			UIStroke_20.Transparency = 0.900

			UIPadding_3.Parent = TextBox
			UIPadding_3.PaddingLeft = UDim.new(0, 10)
			UIPadding_3.PaddingRight = UDim.new(0, 10)
			
			local function NAXJXP_fake_script() -- Input.LocalScript 
				local script = Instance.new('LocalScript', Input)

				local TweenService = game.TweenService
				local TweenInfomation = TweenInfo.new(0.2, Enum.EasingStyle.Linear)
				local TweenInfomation1 = TweenInfo.new(0.1, Enum.EasingStyle.Linear)

				script.Parent.MouseEnter:Connect(function()
					TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0.93 }):Play()
				end)

				script.Parent.MouseLeave:Connect(function()
					TweenService:Create(script.Parent, TweenInfomation, { BackgroundTransparency = 0.95 }):Play()
				end)

				script.Parent.TextBox.MouseEnter:Connect(function()
					TweenService:Create(script.Parent.TextBox, TweenInfomation, { BackgroundTransparency = 0.93 }):Play()
				end)

				script.Parent.TextBox.MouseLeave:Connect(function()
					TweenService:Create(script.Parent.TextBox, TweenInfomation, { BackgroundTransparency = 0.95 }):Play()
				end)
			end
			coroutine.wrap(NAXJXP_fake_script)()
			
			TextBox:GetPropertyChangedSignal("Text"):Connect(function()
				pcall(function()
					call(TextBox.Text)
				end)
			end)
		end
		
		return Tab
	end
	return Window
end
return Ovis
