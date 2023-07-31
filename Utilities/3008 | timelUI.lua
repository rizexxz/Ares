if game.CoreGui:FindFirstChild("ScreenGui") then
    game.CoreGui.ScreenGui:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local label1 = Instance.new("TextLabel")
local label2 = Instance.new("TextLabel")
local utdn = game:GetService("ReplicatedStorage").ServerSettings.TimeSettings.TimeLeft

-- Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.474315, 0, 0.075, 0)
Frame.Size = UDim2.new(0, 96, 0, 28)

label1.Name = "label1"
label1.Parent = Frame
label1.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
label1.BorderColor3 = Color3.fromRGB(0, 0, 0)
label1.BorderSizePixel = 0
label1.Position = UDim2.new(0.0906879604, 0, 0, 0)
label1.Size = UDim2.new(0, 55, 0, 28)
label1.Font = Enum.Font.Nunito
label1.Text = "Time Left:"
label1.TextColor3 = Color3.fromRGB(255, 255, 255)
label1.TextSize = 15.000

label2.Name = "label2"
label2.Parent = Frame
label2.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
label2.BorderColor3 = Color3.fromRGB(0, 0, 0)
label2.BorderSizePixel = 0
label2.Position = UDim2.new(0.68234992, 0, 0, 0)
label2.Size = UDim2.new(0, 30, 0, 28)
label2.Font = Enum.Font.Nunito
label2.TextColor3 = Color3.fromRGB(255, 255, 255)
label2.TextSize = 15.000


local function updateTime()
    label2.Text = tostring(utdn.Value)
end

updateTime()
utdn.Changed:Connect(updateTime)
