local Players = game:GetService("Players")
local RStorage = game:GetService("ReplicatedStorage")

local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer.PlayerGui

local Chat = PlayerGui:FindFirstChild("Chat")
local ChatBar = Chat and Chat:FindFirstChild("ChatBar", true)
local Remote = RStorage:FindFirstChild("SayMessageRequest", true)

local Connection = Instance.new("BindableFunction")

for _,v in next, getconnections(ChatBar.FocusLost) do
	v:Disconnect()
end

ChatBar.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		local Message = ChatBar.Text
		ChatBar.Text = ""
		Connection:Invoke(Message)
	end
end)

return Connection, Remote
