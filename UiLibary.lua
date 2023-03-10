local LunarFeLib = {}

function LunarFeLib:CreateGui()
	local LunarFe = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local TopBar = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local Logo = Instance.new("ImageLabel")
	local UIStroke = Instance.new("UIStroke")
	local Lunar = Instance.new("TextLabel")
	local Fe = Instance.new("TextLabel")
	local Close = Instance.new("ImageButton")
	local UIStroke_2 = Instance.new("UIStroke")
	local LeftBar = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local UIStroke_3 = Instance.new("UIStroke")
	local ScrollingFrame = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local UIPadding = Instance.new("UIPadding")
	local UIGradient = Instance.new("UIGradient")
	local MainFrame = Instance.new("Frame")
	local UICorner_5 = Instance.new("UICorner")
	local UIStroke_8 = Instance.new("UIStroke")
	local idkk = false

	--Properties:

	LunarFe.Name = "LunarFe"
	LunarFe.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	LunarFe.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Main.Name = "Main"
	Main.Parent = LunarFe
	Main.AnchorPoint = Vector2.new(0.5, 0.5)
	Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Main.Position = UDim2.new(0.499904037, 0, 0.499228209, 0)
	Main.Size = UDim2.new(0, 492, 0, 285)

	UICorner.Parent = Main

	TopBar.Name = "TopBar"
	TopBar.Parent = Main
	TopBar.AnchorPoint = Vector2.new(0.5, 0.5)
	TopBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	TopBar.BackgroundTransparency = 0.250
	TopBar.BorderSizePixel = 0
	TopBar.Position = UDim2.new(0.498480558, 0, 0.0781297088, 0)
	TopBar.Size = UDim2.new(0, 474, 0, 31)

	UICorner_2.Parent = TopBar

	Logo.Name = "Logo"
	Logo.Parent = TopBar
	Logo.AnchorPoint = Vector2.new(0.5, 0.5)
	Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Logo.BackgroundTransparency = 1.000
	Logo.BorderSizePixel = 0
	Logo.Position = UDim2.new(0.0366847031, 0, 0.527058244, 0)
	Logo.Size = UDim2.new(0, 18, 0, 17)
	Logo.ZIndex = 2
	Logo.Image = "http://www.roblox.com/asset/?id=12169398541"

	UIStroke.Parent = TopBar
	UIStroke.Color = Color3.fromRGB(80, 80, 80)
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

	Lunar.Name = "Lunar"
	Lunar.Parent = TopBar
	Lunar.AnchorPoint = Vector2.new(0.5, 0.5)
	Lunar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Lunar.BackgroundTransparency = 1.000
	Lunar.BorderSizePixel = 0
	Lunar.Position = UDim2.new(0.137046337, 0, 0.49674201, 0)
	Lunar.Size = UDim2.new(0, 63, 0, 17)
	Lunar.Font = Enum.Font.SourceSansBold
	Lunar.Text = "Lunar"
	Lunar.TextColor3 = Color3.fromRGB(255, 255, 255)
	Lunar.TextScaled = true
	Lunar.TextSize = 14.000
	Lunar.TextWrapped = true
	Lunar.TextXAlignment = Enum.TextXAlignment.Left

	Fe.Name = "Fe"
	Fe.Parent = TopBar
	Fe.AnchorPoint = Vector2.new(0.5, 0.5)
	Fe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Fe.BackgroundTransparency = 1.000
	Fe.BorderSizePixel = 0
	Fe.Position = UDim2.new(0.209831148, 0, 0.49674198, 0)
	Fe.Size = UDim2.new(0, 48, 0, 17)
	Fe.Font = Enum.Font.SourceSansBold
	Fe.Text = "FE"
	Fe.TextColor3 = Color3.fromRGB(170, 0, 255)
	Fe.TextScaled = true
	Fe.TextSize = 14.000
	Fe.TextWrapped = true
	Fe.TextXAlignment = Enum.TextXAlignment.Left

	Close.Name = "Close"
	Close.Parent = TopBar
	Close.Active = false
	Close.AnchorPoint = Vector2.new(0.5, 0.5)
	Close.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Close.BackgroundTransparency = 1.000
	Close.BorderSizePixel = 0
	Close.Position = UDim2.new(0.959915638, 0, 0.5, 0)
	Close.Selectable = false
	Close.Size = UDim2.new(0, 18, 0, 18)
	Close.AutoButtonColor = false
	Close.Image = "http://www.roblox.com/asset/?id=6031094678"

	UIStroke_2.Parent = Main
	UIStroke_2.Color = Color3.fromRGB(80, 80, 80)
	UIStroke_2.Thickness = 2.000
	UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

	LeftBar.Name = "LeftBar"
	LeftBar.Parent = Main
	LeftBar.AnchorPoint = Vector2.new(0.5, 0.5)
	LeftBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	LeftBar.BackgroundTransparency = 0.250
	LeftBar.BorderSizePixel = 0
	LeftBar.Position = UDim2.new(0.124496832, 0, 0.569357753, 0)
	LeftBar.Size = UDim2.new(0, 106, 0, 231)

	UICorner_3.Parent = LeftBar

	UIStroke_3.Parent = LeftBar
	UIStroke_3.Color = Color3.fromRGB(80, 80, 80)
	UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

	ScrollingFrame.Parent = LeftBar
	ScrollingFrame.Active = true
	ScrollingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ScrollingFrame.BackgroundTransparency = 1.000
	ScrollingFrame.BorderSizePixel = 0
	ScrollingFrame.Position = UDim2.new(0.5, 0, 0.499129117, 0)
	ScrollingFrame.Size = UDim2.new(0, 106, 0, 230)
	ScrollingFrame.ScrollBarThickness = 0

	UIListLayout.Parent = ScrollingFrame
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 9)

	UIPadding.Parent = ScrollingFrame
	UIPadding.PaddingTop = UDim.new(0, 9)

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(170, 85, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(20, 20, 20))}
	UIGradient.Offset = Vector2.new(-0.300000012, -0.300000012)
	UIGradient.Rotation = 60
	UIGradient.Parent = Main

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = Main
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	MainFrame.BackgroundTransparency = 0.250
	MainFrame.BorderSizePixel = 0
	MainFrame.ClipsDescendants = true
	MainFrame.Position = UDim2.new(0.618399262, 0, 0.569357753, 0)
	MainFrame.Size = UDim2.new(0, 356, 0, 231)

	UICorner_5.Parent = MainFrame

	UIStroke_8.Parent = MainFrame
	UIStroke_8.Color = Color3.fromRGB(80, 80, 80)
	UIStroke_8.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

	local function LSQYNN_fake_script() -- Main.Drag 
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

		frame.TopBar.InputBegan:Connect(function(input)
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
	coroutine.wrap(LSQYNN_fake_script)()
	
	local SplashScreen = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local ImageLabel = Instance.new("ImageLabel")
	local TextLabel = Instance.new("TextLabel")
	local TextLabel1 = Instance.new("TextLabel")

	SplashScreen.Name = "SplashScreen"
	SplashScreen.Parent = Main
	SplashScreen.AnchorPoint = Vector2.new(0.5, 0.5)
	SplashScreen.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	SplashScreen.BorderSizePixel = 0
	SplashScreen.Position = UDim2.new(0.499833763, 0, 0.498803616, 0)
	SplashScreen.Size = UDim2.new(0, 492, 0, 285)

	UICorner.Parent = SplashScreen

	ImageLabel.Parent = SplashScreen
	ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BackgroundTransparency = 1.000
	ImageLabel.Position = UDim2.new(0.471746027, 0, 0.427005768, 0)
	ImageLabel.Size = UDim2.new(0, 118, 0, 118)
	ImageLabel.ZIndex = 2
	ImageLabel.Image = "http://www.roblox.com/asset/?id=12169398541"

	TextLabel.Parent = SplashScreen
	TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0.420420766, 0, 0.829826772, 0)
	TextLabel.Size = UDim2.new(0, 144, 0, 49)
	TextLabel.ZIndex = 2
	TextLabel.Font = Enum.Font.SourceSansSemibold
	TextLabel.Text = "Lunar"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true

	TextLabel1.Name = "TextLabel1"
	TextLabel1.Parent = SplashScreen
	TextLabel1.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel1.BackgroundTransparency = 1.000
	TextLabel1.Position = UDim2.new(0.579941154, 0, 0.840353131, 0)
	TextLabel1.Size = UDim2.new(0, 144, 0, 49)
	TextLabel1.ZIndex = 2
	TextLabel1.Font = Enum.Font.SourceSansBold
	TextLabel1.Text = "FE"
	TextLabel1.TextColor3 = Color3.fromRGB(170, 85, 255)
	TextLabel1.TextScaled = true
	TextLabel1.TextSize = 14.000
	TextLabel1.TextWrapped = true

	local function FXFTO_fake_script() -- SplashScreen.LocalScript 
		local script = Instance.new('LocalScript', SplashScreen)

		local TweenService = game.TweenService
		local TweenInfomation = TweenInfo.new(0.7, Enum.EasingStyle.Quad)
		local btn = script.Parent

		local Tween = TweenService:Create(btn.Parent.Parent.Main, TweenInfomation, { BackgroundTransparency = 0 })
		local Tween1 = TweenService:Create(btn.Parent.UIStroke, TweenInfomation, { Transparency = 0 })
		local Tween2 = TweenService:Create(btn.Parent.SplashScreen, TweenInfomation, { BackgroundTransparency = 0 })
		local Tween3 = TweenService:Create(btn.ImageLabel, TweenInfomation, { ImageTransparency = 0 })
		local Tween4 = TweenService:Create(btn.TextLabel, TweenInfomation, { TextTransparency = 0 })
		local Tween5 = TweenService:Create(btn.TextLabel1, TweenInfomation, { TextTransparency = 0 })

		local Tween2_ = TweenService:Create(btn.Parent.SplashScreen, TweenInfomation, { BackgroundTransparency = 1 })
		local Tween3_ = TweenService:Create(btn.ImageLabel, TweenInfomation, { ImageTransparency = 1 })
		local Tween4_ = TweenService:Create(btn.TextLabel, TweenInfomation, { TextTransparency = 1 })
		local Tween5_ = TweenService:Create(btn.TextLabel1, TweenInfomation, { TextTransparency = 1 })

		script.Parent.Visible = true
		btn.Parent.Parent.Main.BackgroundTransparency = 1
		btn.Parent.UIStroke.Transparency = 1
		btn.Parent.SplashScreen.BackgroundTransparency = 1
		btn.ImageLabel.ImageTransparency = 1
		btn.TextLabel.TextTransparency = 1
		btn.TextLabel1.TextTransparency = 1

		btn.Parent.LeftBar.Visible = false
		btn.Parent.TopBar.Visible = false
		btn.Parent.MainFrame.Visible = false

		wait(1)
		Tween:Play()
		Tween1:Play()
		Tween2:Play()
		wait(.1)
		Tween3:Play()
		Tween4:Play()
		Tween5:Play()
		wait(0.7)
		btn.Parent.LeftBar.Visible = true
		btn.Parent.TopBar.Visible = true
		btn.Parent.MainFrame.Visible = true
		wait(1)
		Tween2_:Play()
		Tween3_:Play()
		Tween4_:Play()
		Tween5_:Play()
	end
	coroutine.wrap(FXFTO_fake_script)()


	local Window = {}
	function Window:CreateTab(name, icon)
		local gerjig
		
		for i, v in pairs(MainFrame:GetDescendants()) do
			if v:IsA("ScrollingFrame") and v.Name ~= "foo" then
				gerjig = false
			end
		end
		
		local TabButton = Instance.new("TextButton")
		local UIStroke_4 = Instance.new("UIStroke")
		local UICorner_4 = Instance.new("UICorner")
		local ImageLabel = Instance.new("ImageLabel")
		local TextLabel = Instance.new("TextLabel")
		local foo = Instance.new("ScrollingFrame")
		local UIListLayout_2 = Instance.new("UIListLayout")
		local UIPadding_2 = Instance.new("UIPadding")

		foo.Name = name
		foo.Parent = MainFrame
		foo.Active = true
		foo.AnchorPoint = Vector2.new(0.5, 0.5)
		foo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		foo.BackgroundTransparency = 1.000
		foo.BorderSizePixel = 0
		foo.Position = UDim2.new(0.507050574, 0, 0.499722838, 0)
		foo.Size = UDim2.new(0, 350, 0, 231)
		foo.ScrollBarThickness = 0
		foo.Visible = gerjig

		UIListLayout_2.Parent = foo
		UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_2.Padding = UDim.new(0, 9)

		UIPadding_2.Parent = foo
		UIPadding_2.PaddingTop = UDim.new(0, 9)

		TabButton.Name = name
		TabButton.Parent = ScrollingFrame
		TabButton.AnchorPoint = Vector2.new(0.5, 0.5)
		TabButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		TabButton.BackgroundTransparency = 0.25
		TabButton.BorderSizePixel = 0
		TabButton.Position = UDim2.new(0.5, 0, 0.14705883, 0)
		TabButton.Size = UDim2.new(0, 88, 0, 65)
		TabButton.AutoButtonColor = false
		TabButton.Font = Enum.Font.SourceSansSemibold
		TabButton.Text = ""
		TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		TabButton.TextScaled = true
		TabButton.TextSize = 14.000
		TabButton.TextWrapped = true
		TabButton.TextXAlignment = Enum.TextXAlignment.Left

		UIStroke_4.Parent = TabButton
		UIStroke_4.Color = Color3.fromRGB(80, 80, 80)
		UIStroke_4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

		UICorner_4.Parent = TabButton

		ImageLabel.Parent = TabButton
		ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
		ImageLabel.BackgroundTransparency = 1.000
		ImageLabel.BorderSizePixel = 0
		ImageLabel.Position = UDim2.new(0.496704102, 0, 0.35815385, 0)
		ImageLabel.Size = UDim2.new(0, 33, 0, 32)
		ImageLabel.Image = "http://www.roblox.com/asset/?id="..icon

		TextLabel.Parent = TabButton
		TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.BackgroundTransparency = 1.000
		TextLabel.BorderSizePixel = 0
		TextLabel.Position = UDim2.new(0.499886245, 0, 0.737846494, 0)
		TextLabel.Size = UDim2.new(0, 87, 0, 19)
		TextLabel.Font = Enum.Font.SourceSans
		TextLabel.Text = name
		TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.TextScaled = true
		TextLabel.TextSize = 14.000
		TextLabel.TextWrapped = true

		local function JIQFUU_fake_script()
			local script = Instance.new('LocalScript', TabButton)

			local TweenService = game.TweenService
			local TweenInfomation = TweenInfo.new(0.25, Enum.EasingStyle.Linear)
			local TweenInfomation1 = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
			local btn = script.Parent

			local Tween = TweenService:Create(btn, TweenInfomation, { BackgroundColor3 = Color3.fromRGB(40, 40, 40) })
			local Tween1 = TweenService:Create(btn, TweenInfomation, { BackgroundColor3 = Color3.fromRGB(30, 30, 30) })
			local Tween2 = TweenService:Create(btn, TweenInfomation1, { BackgroundColor3 = Color3.fromRGB(30, 30, 30) })
			local Tween3 = TweenService:Create(btn, TweenInfomation1, { BackgroundColor3 = Color3.fromRGB(40, 40, 40) })

			btn.MouseEnter:Connect(function()
				Tween:Play()
			end)

			btn.MouseLeave:Connect(function()
				Tween1:Play()
			end)

			btn.MouseButton1Down:Connect(function()
				Tween2:Play()
			end)

			btn.MouseButton1Up:Connect(function()
				Tween3:Play()

				for i, v in pairs(btn.Parent.Parent.Parent.MainFrame:GetDescendants()) do
					if v:IsA("ScrollingFrame") and v.Name ~= name then
						v.Visible = false
					end

					if v:IsA("ScrollingFrame") and v.Name == name then
						v.Visible = true
					end
				end
			end)
		end
		coroutine.wrap(JIQFUU_fake_script)()
		local Tab = {}

		function Tab:CreateButton(name, call)
			local TextButton = Instance.new("TextButton")
			local UICorner_6 = Instance.new("UICorner")
			local UIStroke_5 = Instance.new("UIStroke")
			local TextLabel_2 = Instance.new("TextLabel")
			
			

			TextButton.Parent = foo
			TextButton.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			TextButton.BackgroundTransparency = 0
			TextButton.BorderSizePixel = 0
			TextButton.Position = UDim2.new(0.5, 0, 0.0720720738, 0)
			TextButton.Size = UDim2.new(0, 325, 0, 32)
			TextButton.AutoButtonColor = false
			TextButton.Font = Enum.Font.SourceSans
			TextButton.Text = ""
			TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton.TextScaled = true
			TextButton.TextSize = 14.000
			TextButton.TextWrapped = true

			UICorner_6.Parent = TextButton

			UIStroke_5.Parent = TextButton
			UIStroke_5.Color = Color3.fromRGB(80, 80, 80)
			UIStroke_5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

			TextLabel_2.Parent = TextButton
			TextLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
			TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel_2.BackgroundTransparency = 1.000
			TextLabel_2.BorderSizePixel = 0
			TextLabel_2.Position = UDim2.new(0.497519165, 0, 0.483150482, 0)
			TextLabel_2.Size = UDim2.new(0, 300, 0, 23)
			TextLabel_2.Font = Enum.Font.SourceSans
			TextLabel_2.Text = name
			TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel_2.TextScaled = true
			TextLabel_2.TextSize = 14.000
			TextLabel_2.TextWrapped = true
			TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

			local function IFINX_fake_script() -- TextButton.LocalScript 
				local script = Instance.new('LocalScript', TextButton)

				local TweenService = game.TweenService
				local TweenInfomation = TweenInfo.new(0.25, Enum.EasingStyle.Linear)
				local TweenInfomation1 = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
				local btn = script.Parent

				local Tween = TweenService:Create(btn, TweenInfomation, { BackgroundColor3 = Color3.fromRGB(40, 40, 40) })
				local Tween1 = TweenService:Create(btn, TweenInfomation, { BackgroundColor3 = Color3.fromRGB(35, 35, 35) })
				local Tween2 = TweenService:Create(btn, TweenInfomation1, { BackgroundColor3 = Color3.fromRGB(35, 35, 35) })
				local Tween3 = TweenService:Create(btn, TweenInfomation1, { BackgroundColor3 = Color3.fromRGB(40, 40, 40) })

				btn.MouseEnter:Connect(function()
					Tween:Play()
				end)

				btn.MouseLeave:Connect(function()
					Tween1:Play()
				end)

				btn.MouseButton1Down:Connect(function()
					Tween2:Play()
				end)

				btn.MouseButton1Up:Connect(function()
					Tween3:Play()
					pcall(call)
				end)
			end
			coroutine.wrap(IFINX_fake_script)()
		end

		function Tab:CreateToggle(name, call)
			local Toggle = Instance.new("Frame")
			local ToggleOff = Instance.new("ImageLabel")
			local ToggleOn = Instance.new("ImageLabel")
			local UICorner_8 = Instance.new("UICorner")
			local UIStroke_7 = Instance.new("UIStroke")
			local TextLabel_5 = Instance.new("TextLabel")
			local TextButton_2 = Instance.new("TextButton")

			Toggle.Name = name
			Toggle.Parent = foo
			Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
			Toggle.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			Toggle.BorderSizePixel = 0
			Toggle.Position = UDim2.new(0.5, 0, 0.587837815, 0)
			Toggle.Size = UDim2.new(0, 325, 0, 37)

			UICorner_8.Parent = Toggle

			UIStroke_7.Parent = Toggle
			UIStroke_7.Color = Color3.fromRGB(80, 80, 80)
			UIStroke_7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

			ToggleOff.Name = "ToggleOff"
			ToggleOff.Parent = Toggle
			ToggleOff.AnchorPoint = Vector2.new(0.5, 0.5)
			ToggleOff.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleOff.BackgroundTransparency = 1.000
			ToggleOff.BorderSizePixel = 0
			ToggleOff.Position = UDim2.new(0.92350322, 0, 0.515303433, 0)
			ToggleOff.Size = UDim2.new(0, 19, 0, 19)
			ToggleOff.Image = "http://www.roblox.com/asset/?id=6031068433"

			TextLabel_5.Parent = Toggle
			TextLabel_5.AnchorPoint = Vector2.new(0.5, 0.5)
			TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel_5.BackgroundTransparency = 1.000
			TextLabel_5.BorderSizePixel = 0
			TextLabel_5.Position = UDim2.new(0.411153853, 0, 0.478745908, 0)
			TextLabel_5.Size = UDim2.new(0, 232, 0, 22)
			TextLabel_5.Font = Enum.Font.SourceSans
			TextLabel_5.Text = name
			TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel_5.TextScaled = true
			TextLabel_5.TextSize = 14.000
			TextLabel_5.TextWrapped = true
			TextLabel_5.TextXAlignment = Enum.TextXAlignment.Left

			TextButton_2.Parent = Toggle
			TextButton_2.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextButton_2.BackgroundTransparency = 1.000
			TextButton_2.BorderSizePixel = 0
			TextButton_2.Position = UDim2.new(0.499711543, 0, 0.499181569, 0)
			TextButton_2.Size = UDim2.new(0, 325, 0, 44)
			TextButton_2.AutoButtonColor = false
			TextButton_2.Font = Enum.Font.SourceSans
			TextButton_2.Text = ""
			TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton_2.TextScaled = true
			TextButton_2.TextSize = 14.000
			TextButton_2.TextWrapped = true

			ToggleOn.Name = "ToggleOn"
			ToggleOn.Parent = Toggle
			ToggleOn.AnchorPoint = Vector2.new(0.5, 0.5)
			ToggleOn.BackgroundTransparency = 1.000
			ToggleOn.BorderSizePixel = 0
			ToggleOn.Position = UDim2.new(0.924000025, 0, 0.514999986, 0)
			ToggleOn.Size = UDim2.new(0, 19, 0, 19)
			ToggleOn.Image = "http://www.roblox.com/asset/?id=6031068426"
			ToggleOn.ImageTransparency = 1.000

			local function PBGVAF_fake_script() -- Toggle.LocalScript 
				local script = Instance.new('LocalScript', Toggle)

				local TweenService = game.TweenService
				local TweenInfomation = TweenInfo.new(0.25, Enum.EasingStyle.Linear)
				local TweenInfomation1 = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
				local btn = script.Parent
				local btn1 = script.Parent.TextButton
				local togglee = false

				local Tween = TweenService:Create(btn, TweenInfomation, { BackgroundColor3 = Color3.fromRGB(40, 40, 40) })
				local Tween1 = TweenService:Create(btn, TweenInfomation, { BackgroundColor3 = Color3.fromRGB(35, 35, 35) })
				local Tween2 = TweenService:Create(btn, TweenInfomation1, { BackgroundColor3 = Color3.fromRGB(35, 35, 35) })
				local Tween3 = TweenService:Create(btn, TweenInfomation1, { BackgroundColor3 = Color3.fromRGB(40, 40, 40) })

				local imageTween = TweenService:Create(btn.ToggleOff, TweenInfomation, { ImageTransparency = 1 })
				local imageTween1 = TweenService:Create(btn.ToggleOn, TweenInfomation, { ImageTransparency = 1 })
				local imageTween2 = TweenService:Create(btn.ToggleOff, TweenInfomation, { ImageTransparency = 0 })
				local imageTween3 = TweenService:Create(btn.ToggleOn, TweenInfomation, { ImageTransparency = 0 })

				btn1.MouseEnter:Connect(function()
					Tween:Play()
				end)

				btn1.MouseLeave:Connect(function()
					Tween1:Play()
				end)

				btn1.MouseButton1Down:Connect(function()
					Tween2:Play()
				end)

				btn1.MouseButton1Up:Connect(function()
					Tween3:Play()

					if togglee == false then
						togglee = true
						imageTween:Play()
						imageTween3:Play()

						pcall(function()
							call(togglee)
						end)
					else
						togglee = false
						imageTween2:Play()
						imageTween1:Play()
						pcall(function()
							call(togglee)
						end)
					end

				end)
			end
			coroutine.wrap(PBGVAF_fake_script)()
		end

		function Tab:CreateLabel(name)
			local TextLabel_3 = Instance.new("Frame")
			local UICorner_7 = Instance.new("UICorner")
			local UIStroke_6 = Instance.new("UIStroke")
			local TextLabel_4 = Instance.new("TextLabel")

			TextLabel_3.Name = name
			TextLabel_3.Parent = foo
			TextLabel_3.AnchorPoint = Vector2.new(0.5, 0.5)
			TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel_3.BackgroundTransparency = 1.000
			TextLabel_3.BorderSizePixel = 0
			TextLabel_3.Position = UDim2.new(0.5, 0, 0.259009004, 0)
			TextLabel_3.Size = UDim2.new(0, 325, 0, 32)

			UICorner_7.Parent = TextLabel_3

			UIStroke_6.Parent = TextLabel_3
			UIStroke_6.Color = Color3.fromRGB(80, 80, 80)
			UIStroke_6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

			TextLabel_4.Parent = TextLabel_3
			TextLabel_4.AnchorPoint = Vector2.new(0.5, 0.5)
			TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel_4.BackgroundTransparency = 1.000
			TextLabel_4.BorderSizePixel = 0
			TextLabel_4.Position = UDim2.new(0.497519165, 0, 0.483150482, 0)
			TextLabel_4.Size = UDim2.new(0, 300, 0, 23)
			TextLabel_4.Font = Enum.Font.SourceSans
			TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel_4.Text = name
			TextLabel_4.TextScaled = true
			TextLabel_4.TextSize = 14.000
			TextLabel_4.TextWrapped = true
			TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left

			local function YMWT_fake_script() -- TextLabel_3.LocalScript 
				local script = Instance.new('LocalScript', TextLabel_3)

				local TweenService = game.TweenService
				local TweenInfomation = TweenInfo.new(0.25, Enum.EasingStyle.Linear)
				local TweenInfomation1 = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
				local btn = script.Parent

				local Tween = TweenService:Create(btn.UIStroke, TweenInfomation, { Color = Color3.fromRGB(120, 120, 120) })
				local Tween1 = TweenService:Create(btn.UIStroke, TweenInfomation, { Color = Color3.fromRGB(80, 80, 80) })

				btn.MouseEnter:Connect(function()
					Tween:Play()
				end)

				btn.MouseLeave:Connect(function()
					Tween1:Play()
				end)
			end
			coroutine.wrap(YMWT_fake_script)()
		end


		function Tab:CreateCategory(name)
			local Catagorey = Instance.new("TextLabel")

			Catagorey.Name = name
			Catagorey.Parent = foo
			Catagorey.AnchorPoint = Vector2.new(0.5, 0.5)
			Catagorey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Catagorey.BackgroundTransparency = 1.000
			Catagorey.BorderSizePixel = 0
			Catagorey.Position = UDim2.new(0.5, 0, 0.412162155, 0)
			Catagorey.Size = UDim2.new(0, 315, 0, 21)
			Catagorey.Font = Enum.Font.SourceSansSemibold
			Catagorey.Text = name
			Catagorey.TextColor3 = Color3.fromRGB(255, 255, 255)
			Catagorey.TextScaled = true
			Catagorey.TextSize = 14.000
			Catagorey.TextWrapped = true
		end
		return Tab
	end
	return Window
end
