local player = game:GetService("Players").LocalPlayer

local field = Instance.new("Tool") -- farm field
field.Name = "ForceFieldTool"
field.Grip = CFrame.new(0, -0.300000012, 0.300000012, 1, 0, 0, 0, 1, 0, 0, 0, 1)
field.RequiresHandle = true
field.Parent = player.Backpack

local Handle = Instance.new("Part")
Handle.Name = "Handle"
Handle.Color = Color3.fromRGB(0, 0, 255)
Handle.Size = Vector3.new(2, 2, 2)
Handle.Transparency = 0.3
Handle.Shape = "Ball"
Handle.TopSurface = "Smooth"
Handle.BottomSurface = "Smooth"
Handle.Parent = field

local function LoseBraincells()
 local force = Instance.new("ForceField")
 force.Name = "StupidObject"
 force.Visible = true
 force.Parent = player.Character
end

field.Activated:Connect(function()
 LoseBraincells()
 task.wait(5)
 player.Character.StupidObject:Destroy()
end)
