
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CustomSettingsGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 500, 0, 350)
mainFrame.Position = UDim2.new(0, 0, 0, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundTransparency = 1
title.Text = "Settings Menu"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextScaled = true
title.Font = Enum.Font.SourceSans
title.Parent = mainFrame

local function createToggle(name, default, position)
    local toggle = Instance.new("TextButton")
    toggle.Size = UDim2.new(1, -20, 0, 30)
    toggle.Position = UDim2.new(0, 10, 0, position)
    toggle.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    toggle.Text = name .. ": " .. tostring(default)
    toggle.TextColor3 = Color3.new(1, 1, 1)
    toggle.Font = Enum.Font.SourceSans
    toggle.TextSize = 18
    toggle.Parent = mainFrame

    local state = default
    toggle.MouseButton1Click:Connect(function()
        state = not state
        toggle.Text = name .. ": " .. tostring(state)
    end)
end

-- Add toggles from key settings
createToggle("KillAura", true, 50)
createToggle("FlyHack", true, 90)
createToggle("SilentAim", true, 130)
createToggle("FullBright", true, 170)
createToggle("AutoReload", true, 210)
