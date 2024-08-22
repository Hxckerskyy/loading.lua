 local cam = workspace.CurrentCamera
    local x = cam.ViewportSize.X
    local y = cam.ViewportSize.Y
    local newx = math.floor(x * 0.5)
    local newy = math.floor(y * 0.6)

    local changelogx = math.floor(x * 0.6)
    local changelogy = math.floor(y * 0.5)


    local SpashScreen = Instance.new("ScreenGui")
    local Image = Instance.new("ImageLabel")
    local Changelog = Instance.new("TextLabel")
    SpashScreen.Name = "SpashScreen"
    SpashScreen.Parent = game.CoreGui
    SpashScreen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Image.Name = "Image"
    Image.Parent = SpashScreen
    Image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Image.BackgroundTransparency = 1
    Image.Position = UDim2.new(0, newx, 0, newy)
    Image.Size = UDim2.new(0, 350, 0, 350)
    Image.Image = "rbxassetid://75338848173121"
    Image.ImageTransparency = 1
    Image.AnchorPoint = Vector2.new(0.5,0.5)


    Changelog.Name = "Changelog"
    Changelog.Parent = SpashScreen
    Changelog.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Changelog.BackgroundTransparency = 1
    Changelog.Position = UDim2.new(-0.09242, changelogx, 0.1, changelogy)
    Changelog.Size = UDim2.new(10, 20, 0, 20)
    Changelog.Text = "[+] Released Best Free Streamable"
    Changelog.AnchorPoint = Vector2.new(0.5,0.5)
    Changelog.TextScaled = true
    Changelog.TextColor3 = Color3.fromRGB(255, 255, 255)

    local Blur = Instance.new("BlurEffect")
    Blur.Parent = game.Lighting
    Blur.Size = 0
    Blur.Name = "blurfutur"


    local function gui(last, sex, t, s, inorout)
        local TI = TweenInfo.new(t or 1, s or Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
        local Tweening = game:GetService("TweenService"):Create(last, TI, sex)
        Tweening:Play()
    end

    gui(Image, {ImageTransparency = 0},0.3)
    gui(Changelog, {TextTransparency = 0},0.3)
    gui(Blur, {Size = 20},0.3)
    wait(1.75)
    gui(Image, {ImageTransparency = 1},0.3)
    gui(Changelog, {TextTransparency = 1},0.3)
    gui(Blur, {Size = 0},0.3)
    wait(0.3)
    game.Lighting.blurfutur:Destroy()
    game.CoreGui.SpashScreen:Destroy()
