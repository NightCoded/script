-- FOR NOW YOU CAN USE THE FOLLOWING MATERIALS
-- # Toggle
-- # Dropdown
-- # Button

-- FOR OTHER MATERIALS WILL BE PRESENT IN THE LATEST VERSION

getgenv().B = 10

function Wins()
spawn(function()
while getgenv().A do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4676.19970703125, 0.03741315007209778, 11249.5810546875)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
wait(getgenv().B)
end
end)
end


local Library = loadstring(game:HttpGet('https://pastebin.com/raw/m1EYUxqT'))()

local Main = Library:CreateMain({
Opened = false
})

Main:Toggle({
Text = "Farm Wins",
Callback = function(v)
getgenv().A = v
Wins()
end
})

Main:Dropdown({
Text = "Farm Speed",
List = {"10 sec", "5 sec", "3 sec", "1 sec"},
Callback = function(v)
if v == "10 sec" then
getgenv().B = 10
end
if v == "5 sec" then
getgenv().B = 5
end
if v == "3 sec" then
getgenv().B = 3
end
if v == "1 sec" then
getgenv().B = 1
end
end
})
