-- im tired bro
local C = game:GetService("CoreGui")

if isfile("Freddy.png") then
 print("File Exists")
else
 print("File Doesnt Exist")
 print("Downloading File")
 local imageresponse = request({
 Url = "https://github.com/Ahma174/Test/raw/refs/heads/main/Files/1000054952.png", 
 Method = "GET"
})

writefile("Freddy.png", imageresponse.Body)
end

if isfile("CameraStatic.mp3") then
 print("File Exists")
else
 print("File Doesnt Exist")
 print("Downloading File")
 local audioresponse = request({
 Url = "https://github.com/Ahma174/Test/raw/refs/heads/main/Files/Five%20Nights%20at%20Freddy's%202%20-%20Camera%20Sound.mp3", 
 Method = "GET"
})

writefile("CameraStatic.mp3", audioresponse.Body)
end

local imageasset = getcustomasset("Freddy.png")
local audioasset = getcustomasset("CameraStatic.mp3")

local gui = Instance.new("ScreenGui")
gui.Parent = C

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 600, 0, 275)
frame.Parent = gui

local u = Instance.new("UIDragDetector")
u.Parent = frame

local image = Instance.new("ImageButton")
image.Size = UDim2.new(0, 550, 0, 275)
image.Image = imageasset
image.Parent = frame

local s = Instance.new("Sound")
s.SoundId = audioasset
s.Parent = gui

image.Activated:Connect(function()
s:Play()
end)
