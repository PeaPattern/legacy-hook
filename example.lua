local Connection, Remote = loadstring(game:HttpGet("https://raw.githubusercontent.com/PeaPattern/legacy-hook/main/main.lua"))()
Connection.Event:Connect(function(Message)
    Remote:FireServer(Message, "All")
end)
