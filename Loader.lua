if not game:IsLoaded() then
    game.Loaded:Wait()
end

local id, ws, lp, rs, games
id = game.GameId
ws = workspace
lp = game:GetService"Players".LocalPlayer
rs = game:GetService"ReplicatedStorage"
games = {
    [66654135] = "/e062f6ab0fcdb411/cab1ae17efd47c82",
    [9294074907] = "/e062f6ab0fcdb411/48bec3c06f5b6f0a",
    [9588121608] = "/e062f6ab0fcdb411/ca7081f5295b8344",
    [10200395747] = "/e062f6ab0fcdb411/f8d936ff6c7e26e3",
}

local kick = function(msg)
    lp:Kick("hi")
	task.wait()
	local pr = d.RobloxPromptGui.promptOverlay.ErrorPrompt
	pr.TitleFrame.ErrorTitle.Text = "Rigby Hub"
	pr.MessageArea.ErrorFrame.ErrorMessage.Text = msg
end

if ws:FindFirstChild("LoadLobby") and ws:FindFirstChild("ServerVersion") and rs:FindFirstChild("Remotes") and ((rs.Remotes:FindFirstChild("Gameplay") and rs.Remotes.Gameplay:FindFirstChild("GetCurrentPlayerData")) or (rs.Remotes:FindFirstChild("Extras") and rs.Remotes.Extras:FindFirstChild("GetPlayerData"))) then
	id = 66654135
end
if games[id] then
    loadstring(game:HttpGet("https://api.polsec.net/loader" .. games[id]))()
elseif id == 10370802481 then
    kick("The script is broken or patched.\n\nJoin the Discord server for updates: rigbyhub.xyz/discord")
    setclipboard("https://rigbyhub.xyz/discord")
else
    kick("This game is not supported by Rigby Hub.\n\nIf you think this is a mistake, make a bug report in rigbyhub.xyz/discord.")
    setclipboard("https://rigbyhub.xyz/discord")
end
