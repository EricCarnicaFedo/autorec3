-- Script no servidor
local replicatedStorage = game:GetService("ReplicatedStorage")
local sendChatMessageEvent = Instance.new("RemoteEvent")
sendChatMessageEvent.Name = "SendChatMessage"
sendChatMessageEvent.Parent = replicatedStorage

-- Escutando o evento do cliente
sendChatMessageEvent.OnServerEvent:Connect(function(player, message)
    -- Envia a mensagem no chat
    game:GetService("Chat"):Chat(game.Workspace, message, Enum.ChatColor.Blue)
end)
