local KeySystem = {}

function KeySystem:Create(keyy, calll, call)
	local LunarFeKeysttem = Instance.new("ScreenGui")
	local KeySystem = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Branding = Instance.new("Folder")
	local Title = Instance.new("TextLabel")
	local ImageLabel = Instance.new("ImageLabel")
	local GradientBox = Instance.new("Frame")
	local UIGradient = Instance.new("UIGradient")
	local UICorner_2 = Instance.new("UICorner")
	local Welcome = Instance.new("TextLabel")
	local Welcome1 = Instance.new("TextLabel")
	local Profile = Instance.new("ImageLabel")
	local UICorner_3 = Instance.new("UICorner")
	local UIStroke = Instance.new("UIStroke")
	local Key = Instance.new("Folder")
	local KeyBoxFrame = Instance.new("Frame")
	local UICorner_4 = Instance.new("UICorner")
	local UIStroke_2 = Instance.new("UIStroke")
	local TextBox = Instance.new("TextBox")
	local SubmitKey = Instance.new("TextButton")
	local UICorner_5 = Instance.new("UICorner")
	local UIStroke_3 = Instance.new("UIStroke")
	local UIGradient_2 = Instance.new("UIGradient")
	local done = Instance.new("ImageLabel")
	local GetKey = Instance.new("TextButton")
	local UICorner_6 = Instance.new("UICorner")
	local UIStroke_4 = Instance.new("UIStroke")
	local TextLabel = Instance.new("TextLabel")
	local Hide = Instance.new("TextButton")
	local UICorner_7 = Instance.new("UICorner")
	local UIStroke_5 = Instance.new("UIStroke")
	local VisibleOn = Instance.new("ImageLabel")
	local VisibleOff = Instance.new("ImageLabel")
	local SplashScreen = Instance.new("Frame")
	local UICorner_8 = Instance.new("UICorner")
	local ImageLabel_2 = Instance.new("ImageLabel")
	local TextLabel_2 = Instance.new("TextLabel")
	local TextLabel1 = Instance.new("TextLabel")

	--Properties:

	LunarFeKeysttem.Name = "LunarFeKeysttem"
	LunarFeKeysttem.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	LunarFeKeysttem.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	LunarFeKeysttem.ResetOnSpawn = false

	KeySystem.Name = "KeySystem"
	KeySystem.Parent = LunarFeKeysttem
	KeySystem.AnchorPoint = Vector2.new(0.5, 0.5)
	KeySystem.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	KeySystem.Position = UDim2.new(0.499523997, 0, 0.499720722, 0)
	KeySystem.Size = UDim2.new(0, 314, 0, 310)

	UICorner.CornerRadius = UDim.new(0, 12)
	UICorner.Parent = KeySystem

	Branding.Name = "Branding"
	Branding.Parent = KeySystem

	Title.Name = "Title"
	Title.Parent = Branding
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0, 47, 0, 12)
	Title.Size = UDim2.new(0, 107, 0, 22)
	Title.ZIndex = 2
	Title.Font = Enum.Font.SourceSans
	Title.Text = "Key System"
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextWrapped = true
	Title.TextXAlignment = Enum.TextXAlignment.Left

	ImageLabel.Parent = Branding
	ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BackgroundTransparency = 1.000
	ImageLabel.Position = UDim2.new(0.0904577821, 0, 0.0759613961, 0)
	ImageLabel.Size = UDim2.new(0, 22, 0, 22)
	ImageLabel.Image = "http://www.roblox.com/asset/?id=12169398541"

	GradientBox.Name = "GradientBox"
	GradientBox.Parent = Branding
	GradientBox.AnchorPoint = Vector2.new(0.5, 0.5)
	GradientBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	GradientBox.ClipsDescendants = true
	GradientBox.Position = UDim2.new(0, 157, 0, 156)
	GradientBox.Size = UDim2.new(0, 314, 0, 309)
	GradientBox.ZIndex = 0

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(170, 85, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(25, 25, 25))}
	UIGradient.Offset = Vector2.new(-0.200000003, -0.349999994)
	UIGradient.Rotation = 60
	UIGradient.Parent = GradientBox

	UICorner_2.Parent = GradientBox

	Welcome.Name = "Welcome"
	Welcome.Parent = Branding
	Welcome.AnchorPoint = Vector2.new(0.5, 0.5)
	Welcome.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Welcome.BackgroundTransparency = 1.000
	Welcome.Position = UDim2.new(0.692619205, 0, 0.288848877, 0)
	Welcome.Size = UDim2.new(0, 169, 0, 33)
	Welcome.Font = Enum.Font.SourceSans
	Welcome.Text = "Welcome!"
	Welcome.TextColor3 = Color3.fromRGB(255, 255, 255)
	Welcome.TextScaled = true
	Welcome.TextSize = 14.000
	Welcome.TextWrapped = true
	Welcome.TextXAlignment = Enum.TextXAlignment.Left

	Welcome1.Name = "Welcome1"
	Welcome1.Parent = Branding
	Welcome1.AnchorPoint = Vector2.new(0.5, 0.5)
	Welcome1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Welcome1.BackgroundTransparency = 1.000
	Welcome1.Position = UDim2.new(0.692619205, 0, 0.359588444, 0)
	Welcome1.Size = UDim2.new(0, 169, 0, 21)
	Welcome1.Font = Enum.Font.SourceSans
	Welcome1.Text = "USERNAME"
	Welcome1.TextColor3 = Color3.fromRGB(255, 255, 255)
	Welcome1.TextScaled = true
	Welcome1.TextSize = 14.000
	Welcome1.TextWrapped = true
	Welcome1.TextXAlignment = Enum.TextXAlignment.Left

	Profile.Name = "Profile"
	Profile.Parent = Branding
	Profile.AnchorPoint = Vector2.new(0.5, 0.5)
	Profile.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Profile.BackgroundTransparency = 1.000
	Profile.Position = UDim2.new(0.213253975, 0, 0.333864957, 0)
	Profile.Size = UDim2.new(0, 99, 0, 99)
	Profile.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

	UICorner_3.CornerRadius = UDim.new(1, 0)
	UICorner_3.Parent = Profile

	UIStroke.Parent = KeySystem
	UIStroke.Color = Color3.fromRGB(80, 80, 80)
	UIStroke.Thickness = 2.000
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

	Key.Name = "Key"
	Key.Parent = KeySystem

	KeyBoxFrame.Name = "KeyBoxFrame"
	KeyBoxFrame.Parent = Key
	KeyBoxFrame.Active = true
	KeyBoxFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	KeyBoxFrame.Position = UDim2.new(0, 18, 0, 246)
	KeyBoxFrame.Selectable = true
	KeyBoxFrame.Size = UDim2.new(0, 207, 0, 48)

	UICorner_4.Parent = KeyBoxFrame

	UIStroke_2.Parent = KeyBoxFrame
	UIStroke_2.Color = Color3.fromRGB(170, 0, 0)
	UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

	TextBox.Parent = KeyBoxFrame
	TextBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	TextBox.BackgroundTransparency = 1.000
	TextBox.BorderSizePixel = 0
	TextBox.Position = UDim2.new(0.0861383229, 0, 0.160054326, 0)
	TextBox.Size = UDim2.new(0, 178, 0, 32)
	TextBox.ClearTextOnFocus = false
	TextBox.Font = Enum.Font.SourceSans
	TextBox.Text = ""
	TextBox.PlaceholderText = "key"
	TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.TextScaled = true
	TextBox.TextSize = 14.000
	TextBox.TextWrapped = true
	TextBox.TextXAlignment = Enum.TextXAlignment.Left

	SubmitKey.Name = "SubmitKey"
	SubmitKey.Parent = Key
	SubmitKey.BackgroundColor3 = Color3.fromRGB(106, 106, 106)
	SubmitKey.BackgroundTransparency = 1.000
	SubmitKey.Position = UDim2.new(0, 244, 0, 246)
	SubmitKey.Size = UDim2.new(0, 48, 0, 48)
	SubmitKey.AutoButtonColor = false
	SubmitKey.Font = Enum.Font.SourceSans
	SubmitKey.Text = ""
	SubmitKey.TextColor3 = Color3.fromRGB(0, 0, 0)
	SubmitKey.TextScaled = true
	SubmitKey.TextSize = 14.000
	SubmitKey.TextWrapped = true

	UICorner_5.Parent = SubmitKey

	UIStroke_3.Parent = SubmitKey
	UIStroke_3.Color = Color3.fromRGB(80, 80, 80)
	UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

	UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 85, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(170, 0, 255))}
	UIGradient_2.Rotation = 60
	UIGradient_2.Parent = SubmitKey

	done.Name = "done"
	done.Parent = SubmitKey
	done.Active = true
	done.AnchorPoint = Vector2.new(0.5, 0.5)
	done.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
	done.BackgroundTransparency = 1.000
	done.LayoutOrder = 5
	done.Position = UDim2.new(0.48015514, 0, 0.480326116, 0)
	done.Selectable = true
	done.Size = UDim2.new(0, 23, 0, 23)
	done.Image = "rbxassetid://3926305904"
	done.ImageRectOffset = Vector2.new(644, 204)
	done.ImageRectSize = Vector2.new(36, 36)

	GetKey.Name = "GetKey"
	GetKey.Parent = Key
	GetKey.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	GetKey.Position = UDim2.new(0.268875957, 0, 0.570768714, 0)
	GetKey.Size = UDim2.new(0, 207, 0, 48)
	GetKey.AutoButtonColor = false
	GetKey.Font = Enum.Font.SourceSans
	GetKey.Text = ""
	GetKey.TextColor3 = Color3.fromRGB(0, 0, 0)
	GetKey.TextScaled = true
	GetKey.TextSize = 14.000
	GetKey.TextWrapped = true

	UICorner_6.Parent = GetKey

	UIStroke_4.Parent = GetKey
	UIStroke_4.Color = Color3.fromRGB(80, 80, 80)
	UIStroke_4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

	TextLabel.Parent = GetKey
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0.0837831721, 0, 0.160054326, 0)
	TextLabel.Size = UDim2.new(0, 160, 0, 31)
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.Text = "I don't have a key!"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

	Hide.Name = "Hide"
	Hide.Parent = Key
	Hide.AnchorPoint = Vector2.new(0.5, 0.5)
	Hide.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Hide.Position = UDim2.new(0.133955315, 0, 0.647939205, 0)
	Hide.Size = UDim2.new(0, 48, 0, 48)
	Hide.AutoButtonColor = false
	Hide.Font = Enum.Font.SourceSans
	Hide.Text = ""
	Hide.TextColor3 = Color3.fromRGB(0, 0, 0)
	Hide.TextScaled = true
	Hide.TextSize = 14.000
	Hide.TextWrapped = true

	UICorner_7.Parent = Hide

	UIStroke_5.Parent = Hide
	UIStroke_5.Color = Color3.fromRGB(80, 80, 80)
	UIStroke_5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

	VisibleOn.Name = "VisibleOn"
	VisibleOn.Parent = Hide
	VisibleOn.AnchorPoint = Vector2.new(0.5, 0.5)
	VisibleOn.BackgroundTransparency = 1.000
	VisibleOn.BorderSizePixel = 0
	VisibleOn.Position = UDim2.new(0.49264586, 0, 0.498271823, 0)
	VisibleOn.Size = UDim2.new(0, 23, 0, 23)
	VisibleOn.Image = "http://www.roblox.com/asset/?id=6031763426"

	VisibleOff.Name = "VisibleOff"
	VisibleOff.Parent = Hide
	VisibleOff.AnchorPoint = Vector2.new(0.5, 0.5)
	VisibleOff.BackgroundTransparency = 1.000
	VisibleOff.BorderSizePixel = 0
	VisibleOff.Position = UDim2.new(0.493979573, 0, 0.499755085, 0)
	VisibleOff.Size = UDim2.new(0, 23, 0, 23)
	VisibleOff.Image = "http://www.roblox.com/asset/?id=6031075929"

	SplashScreen.Name = "SplashScreen"
	SplashScreen.Parent = KeySystem
	SplashScreen.AnchorPoint = Vector2.new(0.5, 0.5)
	SplashScreen.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	SplashScreen.Position = UDim2.new(0.500347435, 0, 0.49956432, 0)
	SplashScreen.Size = UDim2.new(0, 313, 0, 309)
	SplashScreen.Visible = false
	SplashScreen.ZIndex = 2

	UICorner_8.CornerRadius = UDim.new(0, 12)
	UICorner_8.Parent = SplashScreen

	ImageLabel_2.Parent = SplashScreen
	ImageLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel_2.BackgroundTransparency = 1.000
	ImageLabel_2.Position = UDim2.new(0.498168766, 0, 0.402444392, 0)
	ImageLabel_2.Size = UDim2.new(0, 118, 0, 118)
	ImageLabel_2.ZIndex = 2
	ImageLabel_2.Image = "http://www.roblox.com/asset/?id=12169398541"

	TextLabel_2.Parent = SplashScreen
	TextLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.BackgroundTransparency = 1.000
	TextLabel_2.Position = UDim2.new(0.400095522, 0, 0.808774114, 0)
	TextLabel_2.Size = UDim2.new(0, 144, 0, 49)
	TextLabel_2.ZIndex = 2
	TextLabel_2.Font = Enum.Font.SourceSansSemibold
	TextLabel_2.Text = "Lunar"
	TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.TextScaled = true
	TextLabel_2.TextSize = 14.000
	TextLabel_2.TextWrapped = true

	TextLabel1.Name = "TextLabel1"
	TextLabel1.Parent = SplashScreen
	TextLabel1.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel1.BackgroundTransparency = 1.000
	TextLabel1.Position = UDim2.new(0.661242008, 0, 0.808774114, 0)
	TextLabel1.Size = UDim2.new(0, 144, 0, 49)
	TextLabel1.ZIndex = 2
	TextLabel1.Font = Enum.Font.SourceSansBold
	TextLabel1.Text = "FE"
	TextLabel1.TextColor3 = Color3.fromRGB(170, 85, 255)
	TextLabel1.TextScaled = true
	TextLabel1.TextSize = 14.000
	TextLabel1.TextWrapped = true

	-- Scripts:

	local function WONCB_fake_script() -- Profile.LocalScript 
		local script = Instance.new('LocalScript', Profile)

		local Players = game:GetService("Players")

		local player = Players.LocalPlayer

		local userId = player.UserId
		local thumbType = Enum.ThumbnailType.HeadShot
		local thumbSize = Enum.ThumbnailSize.Size100x100
		local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)

		local imageLabel = script.Parent
		imageLabel.Image = content

		script.Parent.Parent.Welcome1.Text = player.DisplayName
	end
	coroutine.wrap(WONCB_fake_script)()
	local function RRMACW_fake_script() -- KeyBoxFrame.KeyScriptt 
		local script = Instance.new('LocalScript', KeyBoxFrame)

		local TweenService = game.TweenService
		local TweenInfomation = TweenInfo.new(0.25, Enum.EasingStyle.Linear)
		local btn = script.Parent

		script.Parent.TextBox:GetPropertyChangedSignal("Text"):Connect(function()
			if script.Parent.TextBox.Text == keyy then
				local colorr = Color3.fromRGB(0, 150, 0)
				local ColorTween = TweenService:Create(btn.UIStroke, TweenInfomation, { Color = colorr })
				ColorTween:Play()
			else
				local colorr1 = Color3.fromRGB(180, 0, 0)
				local ColorTween1 = TweenService:Create(btn.UIStroke, TweenInfomation, { Color = colorr1 })
				ColorTween1:Play()
			end
		end)

		local Tween = TweenService:Create(btn, TweenInfomation, { BackgroundColor3 = Color3.fromRGB(35, 35, 35) })
		local Tween1 = TweenService:Create(btn, TweenInfomation, { BackgroundColor3 = Color3.fromRGB(30, 30, 30) })

		btn.MouseEnter:Connect(function()
			Tween:Play()
		end)

		btn.MouseLeave:Connect(function()
			Tween1:Play()
		end)
	end
	coroutine.wrap(RRMACW_fake_script)()
	local function KUGKCB_fake_script() -- SubmitKey.KeyScript 
		local script = Instance.new('LocalScript', SubmitKey)

		local TweenService = game.TweenService
		local TweenInfomation = TweenInfo.new(0.25, Enum.EasingStyle.Linear)
		local TweenInfomation1 = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
		local btn = script.Parent

		local Tween = TweenService:Create(btn, TweenInfomation, { BackgroundTransparency = 0 })
		local Tween1 = TweenService:Create(btn, TweenInfomation, { BackgroundTransparency = 1 })
		local Tween2 = TweenService:Create(btn, TweenInfomation1, { BackgroundTransparency = 1 })
		local Tween3 = TweenService:Create(btn, TweenInfomation1, { BackgroundTransparency = 0 })

		local Tween20 = TweenService:Create(btn.Parent.Parent.SplashScreen, TweenInfomation, { BackgroundTransparency = 0 })
		local Tween30 = TweenService:Create(btn.Parent.Parent.SplashScreen.ImageLabel, TweenInfomation, { ImageTransparency = 0 })
		local Tween40 = TweenService:Create(btn.Parent.Parent.SplashScreen.TextLabel, TweenInfomation, { TextTransparency = 0 })
		local Tween50 = TweenService:Create(btn.Parent.Parent.SplashScreen.TextLabel1, TweenInfomation, { TextTransparency = 0 })

		local Tween2_ = TweenService:Create(btn.Parent.Parent.SplashScreen, TweenInfomation, { BackgroundTransparency = 1 })
		local Tween3_ = TweenService:Create(btn.Parent.Parent.SplashScreen.ImageLabel, TweenInfomation, { ImageTransparency = 1 })
		local Tween4_ = TweenService:Create(btn.Parent.Parent.SplashScreen.TextLabel, TweenInfomation, { TextTransparency = 1 })
		local Tween5_ = TweenService:Create(btn.Parent.Parent.SplashScreen.TextLabel1, TweenInfomation, { TextTransparency = 1 })
		local Tween6_ = TweenService:Create(btn.Parent.Parent.Parent.KeySystem, TweenInfomation, { BackgroundTransparency = 1 })
		local Tween7_ = TweenService:Create(btn.Parent.Parent.Parent.KeySystem.UIStroke, TweenInfomation, { Transparency = 1 })

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

			if btn.Parent.KeyBoxFrame.TextBox.Text == keyy then
				Tween20:Play()
				wait(0.1)
				Tween30:Play()
				Tween40:Play()
				Tween50:Play()
				wait(1)
				for i, v in pairs(btn.Parent.Parent.Branding:GetChildren()) do
					v.Visible = false
				end

				for i, v in pairs(btn.Parent.Parent.Key:GetChildren()) do
					v.Visible = false
				end
				Tween2_:Play()
				Tween3_:Play()
				Tween4_:Play()
				Tween5_:Play()
				Tween6_:Play()
				Tween7_:Play()
				wait(0.3)
				btn.Parent.Parent.Parent.KeySystem.Visible = false
				pcall(call)
			end
		end)
	end
	coroutine.wrap(KUGKCB_fake_script)()
	
	local function ACAEMF_fake_script() -- GetKey.LocalScript 
		local script = Instance.new('LocalScript', GetKey)

		local TweenService = game.TweenService
		local TweenInfomation = TweenInfo.new(0.25, Enum.EasingStyle.Linear)
		local TweenInfomation1 = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
		local btn = script.Parent

		local Tween = TweenService:Create(btn, TweenInfomation, { BackgroundColor3 = Color3.fromRGB(35, 35, 35) })
		local Tween1 = TweenService:Create(btn, TweenInfomation, { BackgroundColor3 = Color3.fromRGB(30, 30, 30) })
		local Tween2 = TweenService:Create(btn, TweenInfomation1, { BackgroundColor3 = Color3.fromRGB(30, 30, 30) })
		local Tween3 = TweenService:Create(btn, TweenInfomation1, { BackgroundColor3 = Color3.fromRGB(35, 35, 35) })

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
			pcall(calll)
		end)
		end
	coroutine.wrap(ACAEMF_fake_script)()
	
	local function EJJBQ_fake_script() -- Hide.LocalScript 
		local script = Instance.new('LocalScript', Hide)

		local TweenService = game.TweenService
		local TweenInfomation = TweenInfo.new(0.25, Enum.EasingStyle.Linear)
		local TweenInfomation1 = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
		local btn = script.Parent
		local textvisible = true

		local Tween = TweenService:Create(btn, TweenInfomation, { BackgroundColor3 = Color3.fromRGB(35, 35, 35) })
		local Tween1 = TweenService:Create(btn, TweenInfomation, { BackgroundColor3 = Color3.fromRGB(30, 30, 30) })
		local Tween2 = TweenService:Create(btn, TweenInfomation1, { BackgroundColor3 = Color3.fromRGB(30, 30, 30) })
		local Tween3 = TweenService:Create(btn, TweenInfomation1, { BackgroundColor3 = Color3.fromRGB(35, 35, 35) })

		local ImageTween1 = TweenService:Create(btn.VisibleOn, TweenInfomation1, { ImageTransparency = 1 })
		local ImageTween2 = TweenService:Create(btn.VisibleOn, TweenInfomation1, { ImageTransparency = 0 })
		local ImageTween3 = TweenService:Create(btn.VisibleOff, TweenInfomation1, { ImageTransparency = 1 })
		local ImageTween4 = TweenService:Create(btn.VisibleOff, TweenInfomation1, { ImageTransparency = 0 })

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

			if textvisible == true then
				textvisible = false
				ImageTween3:Play()
				ImageTween2:Play()
				script.Parent.Parent.KeyBoxFrame.TextBox.Visible = false
			else
				textvisible = true
				ImageTween1:Play()
				ImageTween4:Play()
				script.Parent.Parent.KeyBoxFrame.TextBox.Visible = true
			end
		end)
	end
	coroutine.wrap(EJJBQ_fake_script)()
	local function TWYVQXF_fake_script() -- KeySystem.Drag 
		local script = Instance.new('LocalScript', KeySystem)

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

		frame.InputBegan:Connect(function(input)
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
	coroutine.wrap(TWYVQXF_fake_script)()
	local function ICKB_fake_script() -- SplashScreen.LocalScript 
		local script = Instance.new('LocalScript', SplashScreen)

		local TweenService = game.TweenService
		local TweenInfomation = TweenInfo.new(0.7, Enum.EasingStyle.Quad)
		local btn = script.Parent

		local Tween = TweenService:Create(btn.Parent.Parent.KeySystem, TweenInfomation, { BackgroundTransparency = 0 })
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
		btn.Parent.Parent.KeySystem.BackgroundTransparency = 1
		btn.Parent.UIStroke.Transparency = 1
		btn.Parent.SplashScreen.BackgroundTransparency = 1
		btn.ImageLabel.ImageTransparency = 1
		btn.TextLabel.TextTransparency = 1
		btn.TextLabel1.TextTransparency = 1

		for i, v in pairs(btn.Parent.Branding:GetChildren()) do
			v.Visible = false
		end

		for i, v in pairs(btn.Parent.Key:GetChildren()) do
			v.Visible = false
		end

		wait(1)
		Tween:Play()
		Tween1:Play()
		Tween2:Play()
		wait(.1)
		Tween3:Play()
		Tween4:Play()
		Tween5:Play()
		wait(0.7)
		for i, v in pairs(btn.Parent.Branding:GetChildren()) do
			v.Visible = true
		end

		for i, v in pairs(btn.Parent.Key:GetChildren()) do
			v.Visible = true
		end
		wait(0.5)
		Tween2_:Play()
		Tween3_:Play()
		Tween4_:Play()
		Tween5_:Play()
	end
	coroutine.wrap(ICKB_fake_script)()
end
