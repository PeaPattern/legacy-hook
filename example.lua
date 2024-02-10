local Connection, Remote = loadstring(game:HttpGet("https://raw.githubusercontent.com/PeaPattern/legacy-hook/main/main.lua"))()
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Chat = game:GetService("Chat")

Connection.OnInvoke = function(Message)
    Chat:FilterStringForBroadcast(math.random(1000000000, 9999999999) .. " filter reset with chat function", LocalPlayer)
    Remote:FireServer(string.format("%s", Message), "All")
end
