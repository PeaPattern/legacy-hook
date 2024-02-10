local Players = game:GetService("Players")
local RStorage = game:GetService("ReplicatedStorage")

local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer.PlayerGui

local Chat = PlayerGui:FindFirstChild("Chat")
local ChatBar = Chat:FindFirstChild("ChatBar", true)
local Remote = RStorage:FindFirstChild("SayMessageRequest", true)

local Connection = Instance.new("RemoteFunction")

for _,v in next, getconnections(ChatBar.FocusLost) do
	v:Disconnect()
end

ChatBar.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		local Message = dumbChatBar.Text
		ChatBar.Text = ""
		Connection:InvokeServer(Message)
	end
end)

return Connection, Remote