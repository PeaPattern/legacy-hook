local hook, remote = loadstring(game:HttpGet("https://raw.githubusercontent.com/PeaPattern/legacy-hook/main/main.lua"))()
hook.OnServerInvoke = function(empty, msg)
  remote:FireServer("[HOOK] " .. msg, "All")
end
