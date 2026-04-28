-- Script by kawarastudio

-- Ambil nama game secara otomatis
local mapName = game.Name

-- Membersihkan nama agar aman untuk file
local cleanMapName = mapName:gsub("[%s/\\:%*%?\"<>|]", "_")

saveinstance({
    Mode = "Full",
    Decompile = true,
    SaveToFolder = "COPY MAP - " .. cleanMapName,
    FileName = "copy - " .. cleanMapName,
    Include = {
        game.Workspace,
        game.ReplicatedStorage,
        game.ReplicatedFirst,
        game.Lighting,
        game.StarterGui,
        game.StarterPlayer,
        game.SoundService,
        game.Chat,
        game.Teams,
        game.ServerScriptService,
        game.ServerStorage,
    },
    Timeout = 60,
    ShowProgress = true
})