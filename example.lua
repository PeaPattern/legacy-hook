local Connection, Remote = loadstring(game:HttpGet("https://raw.githubusercontent.com/PeaPattern/legacy-hook/main/main.lua"))()
local Players = game:GetService("Players")

Connection.Event:Connect(function(Message)
    for _ = 1, 5 do
        Players:Chat("filter reset with chat function")
    end
    Remote:FireServer(string.format("[hook]: %s", Message), "All")
end)
