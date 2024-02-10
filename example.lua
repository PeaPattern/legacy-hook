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
    for i = 1, 10 do Players:Chat(RNG(i) .. " es un gran memento") end
    Remote:FireServer(Message, "All")
end
