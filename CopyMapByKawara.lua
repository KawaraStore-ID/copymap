-- Panel Cheat Roblox Premium

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer

-- Buat GUI Premium
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local BackgroundGradient = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local TitleBar = Instance.new("Frame")
local TitleBarCorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local Credit = Instance.new("TextLabel")
local CloseButton = Instance.new("TextButton")
local CloseCorner = Instance.new("UICorner")
local MinimizeButton = Instance.new("TextButton")
local MinimizeCorner = Instance.new("UICorner")
local ButtonsContainer = Instance.new("Frame")
local ButtonsCorner = Instance.new("UICorner")

-- Tombol-tombol
local WallhackButton = Instance.new("TextButton")
local WallhackCorner = Instance.new("UICorner")
local WallhackStroke = Instance.new("UIStroke")

local SpeedButton = Instance.new("TextButton")
local SpeedCorner = Instance.new("UICorner")
local SpeedStroke = Instance.new("UIStroke")

local NoclipButton = Instance.new("TextButton")
local NoclipCorner = Instance.new("UICorner")
local NoclipStroke = Instance.new("UIStroke")

local FlyButton = Instance.new("TextButton")
local FlyCorner = Instance.new("UICorner")
local FlyStroke = Instance.new("UIStroke")

-- Tombol CopyMap
local CopyMapButton = Instance.new("TextButton")
local CopyMapCorner = Instance.new("UICorner")
local CopyMapStroke = Instance.new("UIStroke")

-- Icons (emoji sebagai placeholder)
local WallhackIcon = Instance.new("TextLabel")
local SpeedIcon = Instance.new("TextLabel")
local NoclipIcon = Instance.new("TextLabel")
local FlyIcon = Instance.new("TextLabel")
local CopyMapIcon = Instance.new("TextLabel")

-- Konfigurasi GUI Premium
ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "PremiumCheatPanel"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Frame utama dengan corner
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.1, 0, 0.1, 0)
MainFrame.Size = UDim2.new(0, 350, 0, 520)
MainFrame.Active = true
MainFrame.Draggable = true

-- Background gradient/galaxy
BackgroundGradient.Name = "BackgroundGradient"
BackgroundGradient.Parent = MainFrame
BackgroundGradient.BackgroundTransparency = 1
BackgroundGradient.Size = UDim2.new(1, 0, 1, 0)
BackgroundGradient.Image = "rbxassetid://8992356873" -- Galaxy background
BackgroundGradient.ImageColor3 = Color3.fromRGB(30, 15, 60)
BackgroundGradient.ScaleType = Enum.ScaleType.Tile
BackgroundGradient.TileSize = UDim2.new(0, 200, 0, 200)

-- Corner untuk frame utama
UICorner.Parent = MainFrame
UICorner.CornerRadius = UDim.new(0, 15)

-- Title Bar
TitleBar.Name = "TitleBar"
TitleBar.Parent = MainFrame
TitleBar.BackgroundColor3 = Color3.fromRGB(10, 10, 20)
TitleBar.BorderSizePixel = 0
TitleBar.Size = UDim2.new(1, 0, 0, 40)

TitleBarCorner.Parent = TitleBar
TitleBarCorner.CornerRadius = UDim.new(0, 15)

Title.Name = "Title"
Title.Parent = TitleBar
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 15, 0, 0)
Title.Size = UDim2.new(0.5, 0, 1, 0)
Title.Font = Enum.Font.GothamBold
Title.Text = "Cheat By Khaliji"
Title.TextColor3 = Color3.fromRGB(0, 255, 255)
Title.TextSize = 16
Title.TextXAlignment = Enum.TextXAlignment.Left

Credit.Name = "Credit"
Credit.Parent = TitleBar
Credit.BackgroundTransparency = 1
Credit.Position = UDim2.new(0.5, 0, 0, 0)
Credit.Size = UDim2.new(0.5, -15, 1, 0)
Credit.Font = Enum.Font.Gotham
Credit.Text = ""
Credit.TextColor3 = Color3.fromRGB(200, 200, 255)
Credit.TextSize = 12
Credit.TextXAlignment = Enum.TextXAlignment.Right

-- Tombol Close (DIPERBAIKI - lebih rapi)
CloseButton.Name = "CloseButton"
CloseButton.Parent = TitleBar
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(0.85, 5, 0.2, 0)
CloseButton.Size = UDim2.new(0, 25, 0, 25)
CloseButton.Font = Enum.Font.GothamBold
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextSize = 14
CloseButton.ZIndex = 2

CloseCorner.Parent = CloseButton
CloseCorner.CornerRadius = UDim.new(0, 8)

-- Tombol Minimize (DIPERBAIKI - lebih rapi)
MinimizeButton.Name = "MinimizeButton"
MinimizeButton.Parent = TitleBar
MinimizeButton.BackgroundColor3 = Color3.fromRGB(255, 180, 0)
MinimizeButton.BorderSizePixel = 0
MinimizeButton.Position = UDim2.new(0.75, 5, 0.2, 0)
MinimizeButton.Size = UDim2.new(0, 25, 0, 25)
MinimizeButton.Font = Enum.Font.GothamBold
MinimizeButton.Text = "_"
MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeButton.TextSize = 16
MinimizeButton.ZIndex = 2

MinimizeCorner.Parent = MinimizeButton
MinimizeCorner.CornerRadius = UDim.new(0, 8)

-- Container untuk tombol-tombol fitur
ButtonsContainer.Name = "ButtonsContainer"
ButtonsContainer.Parent = MainFrame
ButtonsContainer.BackgroundColor3 = Color3.fromRGB(25, 25, 40)
ButtonsContainer.BackgroundTransparency = 0.3
ButtonsContainer.BorderSizePixel = 0
ButtonsContainer.Position = UDim2.new(0.05, 0, 0.15, 0)
ButtonsContainer.Size = UDim2.new(0.9, 0, 0.8, 0)

ButtonsCorner.Parent = ButtonsContainer
ButtonsCorner.CornerRadius = UDim.new(0, 12)

-- Fungsi untuk membuat tombol premium
local function CreatePremiumButton(name, text, icon, position)
    local button = Instance.new("TextButton")
    local corner = Instance.new("UICorner")
    local stroke = Instance.new("UIStroke")
    local iconLabel = Instance.new("TextLabel")
    
    button.Name = name
    button.Parent = ButtonsContainer
    button.BackgroundColor3 = Color3.fromRGB(40, 40, 60)
    button.BorderSizePixel = 0
    button.Position = position
    button.Size = UDim2.new(0.8, 0, 0, 60)
    button.Font = Enum.Font.GothamBold
    button.Text = ""
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.TextSize = 14
    button.AutoButtonColor = true
    
    corner.Parent = button
    corner.CornerRadius = UDim.new(0, 12)
    
    stroke.Parent = button
    stroke.Color = Color3.fromRGB(0, 255, 255)
    stroke.Thickness = 2
    stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    
    iconLabel.Name = name .. "Icon"
    iconLabel.Parent = button
    iconLabel.BackgroundTransparency = 1
    iconLabel.Position = UDim2.new(0.1, 0, 0.2, 0)
    iconLabel.Size = UDim2.new(0, 40, 0, 40)
    iconLabel.Font = Enum.Font.GothamBold
    iconLabel.Text = icon
    iconLabel.TextColor3 = Color3.fromRGB(0, 255, 255)
    iconLabel.TextSize = 20
    iconLabel.TextXAlignment = Enum.TextXAlignment.Left
    
    local textLabel = Instance.new("TextLabel")
    textLabel.Name = name .. "Text"
    textLabel.Parent = button
    textLabel.BackgroundTransparency = 1
    textLabel.Position = UDim2.new(0.3, 0, 0.2, 0)
    textLabel.Size = UDim2.new(0.6, 0, 0.6, 0)
    textLabel.Font = Enum.Font.GothamBold
    textLabel.Text = text
    textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    textLabel.TextSize = 16
    textLabel.TextXAlignment = Enum.TextXAlignment.Left
    
    local statusLabel = Instance.new("TextLabel")
    statusLabel.Name = name .. "Status"
    statusLabel.Parent = button
    statusLabel.BackgroundTransparency = 1
    statusLabel.Position = UDim2.new(0.3, 0, 0.5, 0)
    statusLabel.Size = UDim2.new(0.6, 0, 0.4, 0)
    statusLabel.Font = Enum.Font.Gotham
    statusLabel.Text = "Status: OFF"
    statusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
    statusLabel.TextSize = 12
    statusLabel.TextXAlignment = Enum.TextXAlignment.Left
    
    return button, statusLabel
end

-- Buat tombol-tombol premium
WallhackButton, WallhackStatus = CreatePremiumButton(
    "WallhackButton", 
    "WALLHACK VISION", 
    "👁️", 
    UDim2.new(0.1, 0, 0.03, 0)
)

SpeedButton, SpeedStatus = CreatePremiumButton(
    "SpeedButton", 
    "SUPER SPEED", 
    "⚡", 
    UDim2.new(0.1, 0, 0.18, 0)
)

NoclipButton, NoclipStatus = CreatePremiumButton(
    "NoclipButton", 
    "NO CLIP MODE", 
    "👻", 
    UDim2.new(0.1, 0, 0.33, 0)
)

FlyButton, FlyStatus = CreatePremiumButton(
    "FlyButton", 
    "FLY MODE", 
    "🕊️", 
    UDim2.new(0.1, 0, 0.48, 0)
)

-- Tombol CopyMap
CopyMapButton, CopyMapStatus = CreatePremiumButton(
    "CopyMapButton", 
    "COPY MAP", 
    "📋", 
    UDim2.new(0.1, 0, 0.63, 0)
)

-- Animasi hover
local function SetupButtonHover(button)
    local originalSize = button.Size
    local hoverSize = UDim2.new(originalSize.X.Scale, originalSize.X.Offset, originalSize.Y.Scale, originalSize.Y.Offset + 5)
    
    button.MouseEnter:Connect(function()
        local tween = TweenService:Create(button, TweenInfo.new(0.2), {Size = hoverSize})
        tween:Play()
    end)
    
    button.MouseLeave:Connect(function()
        local tween = TweenService:Create(button, TweenInfo.new(0.2), {Size = originalSize})
        tween:Play()
    end)
end

SetupButtonHover(WallhackButton)
SetupButtonHover(SpeedButton)
SetupButtonHover(NoclipButton)
SetupButtonHover(FlyButton)
SetupButtonHover(CopyMapButton)

-- Variabel state
local WallhackEnabled = false
local SpeedEnabled = false
local NoclipEnabled = false
local FlyEnabled = false
local OriginalWalkSpeed = 16

-- Variabel fly
local Flying = false
local FlySpeed = 50
local BodyVelocity
local BodyGyro

-- Fungsi Fly
local function ToggleFly()
    FlyEnabled = not FlyEnabled
    
    if FlyEnabled then
        FlyStatus.Text = "Status: ON"
        FlyStatus.TextColor3 = Color3.fromRGB(100, 255, 100)
        FlyButton.UIStroke.Color = Color3.fromRGB(0, 255, 0)
        
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local HumanoidRootPart = LocalPlayer.Character.HumanoidRootPart
            
            -- Buat BodyVelocity dan BodyGyro
            BodyVelocity = Instance.new("BodyVelocity")
            BodyGyro = Instance.new("BodyGyro")
            
            BodyVelocity.Velocity = Vector3.new(0, 0, 0)
            BodyVelocity.MaxForce = Vector3.new(10000, 10000, 10000)
            BodyVelocity.Parent = HumanoidRootPart
            
            BodyGyro.P = 1000
            BodyGyro.MaxTorque = Vector3.new(100000, 100000, 100000)
            BodyGyro.CFrame = HumanoidRootPart.CFrame
            BodyGyro.Parent = HumanoidRootPart
            
            Flying = true
            
            -- Koneksi input untuk fly
            local FlyConnection
            FlyConnection = RunService.Heartbeat:Connect(function()
                if not Flying or not BodyVelocity or not BodyGyro then
                    FlyConnection:Disconnect()
                    return
                end
                
                local Camera = workspace.CurrentCamera
                BodyGyro.CFrame = Camera.CFrame
                
                local moveDirection = Vector3.new(0, 0, 0)
                
                -- Kontrol WASD
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                    moveDirection = moveDirection + Camera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                    moveDirection = moveDirection - Camera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                    moveDirection = moveDirection - Camera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                    moveDirection = moveDirection + Camera.CFrame.RightVector
                end
                
                -- Normalize dan terapkan kecepatan
                if moveDirection.Magnitude > 0 then
                    moveDirection = moveDirection.Unit * FlySpeed
                end
                
                BodyVelocity.Velocity = moveDirection
            end)
            
            -- Handle karakter baru
            LocalPlayer.CharacterAdded:Connect(function(character)
                wait(1)
                if FlyEnabled and character:FindFirstChild("HumanoidRootPart") then
                    BodyVelocity:Destroy()
                    BodyGyro:Destroy()
                    
                    BodyVelocity = Instance.new("BodyVelocity")
                    BodyGyro = Instance.new("BodyGyro")
                    
                    BodyVelocity.Velocity = Vector3.new(0, 0, 0)
                    BodyVelocity.MaxForce = Vector3.new(10000, 10000, 10000)
                    BodyVelocity.Parent = character.HumanoidRootPart
                    
                    BodyGyro.P = 1000
                    BodyGyro.MaxTorque = Vector3.new(100000, 100000, 100000)
                    BodyGyro.CFrame = character.HumanoidRootPart.CFrame
                    BodyGyro.Parent = character.HumanoidRootPart
                end
            end)
        end
        
    else
        FlyStatus.Text = "Status: OFF"
        FlyStatus.TextColor3 = Color3.fromRGB(255, 100, 100)
        FlyButton.UIStroke.Color = Color3.fromRGB(0, 255, 255)
        
        Flying = false
        
        if BodyVelocity then
            BodyVelocity:Destroy()
            BodyVelocity = nil
        end
        if BodyGyro then
            BodyGyro:Destroy()
            BodyGyro = nil
        end
    end
end

-- DIPERBAIKI: Sistem Wallhack yang tetap aktif meskipun karakter mati
local WallhackHighlights = {} -- Menyimpan referensi highlight

local function CreateOutline(character, isEnemy)
    if character and character:FindFirstChild("Humanoid") and character:FindFirstChild("HumanoidRootPart") then
        -- Hapus highlight lama jika ada
        local oldHighlight = character:FindFirstChild("CheatHighlight")
        if oldHighlight then
            oldHighlight:Destroy()
        end
        
        local highlight = Instance.new("Highlight")
        highlight.Name = "CheatHighlight"
        highlight.Parent = character
        highlight.Adornee = character
        highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        
        if isEnemy then
            highlight.FillColor = Color3.fromRGB(255, 0, 0)
            highlight.OutlineColor = Color3.fromRGB(255, 100, 100)
        else
            highlight.FillColor = Color3.fromRGB(0, 255, 0)
            highlight.OutlineColor = Color3.fromRGB(100, 255, 100)
        end
        
        highlight.FillTransparency = 0.7
        highlight.OutlineTransparency = 0
        
        -- Simpan referensi
        WallhackHighlights[character] = highlight
        
        return highlight
    end
    return nil
end

-- DIPERBAIKI: Fungsi untuk memantau karakter yang respawn
local function MonitorPlayerRespawn(player)
    if not player then return end
    
    player.CharacterAdded:Connect(function(character)
        wait(1) -- Tunggu karakter fully loaded
        if WallhackEnabled then
            local isEnemy = player.Team ~= LocalPlayer.Team
            CreateOutline(character, isEnemy)
        end
    end)
end

local function ToggleWallhack()
    WallhackEnabled = not WallhackEnabled
    
    if WallhackEnabled then
        WallhackStatus.Text = "Status: ON"
        WallhackStatus.TextColor3 = Color3.fromRGB(100, 255, 100)
        WallhackButton.UIStroke.Color = Color3.fromRGB(0, 255, 0)
        
        -- Aktifkan wallhack untuk semua pemain
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= LocalPlayer then
                if player.Character then
                    local isEnemy = player.Team ~= LocalPlayer.Team
                    CreateOutline(player.Character, isEnemy)
                end
                -- Pantau respawn untuk pemain ini
                MonitorPlayerRespawn(player)
            end
        end
        
        -- Pantau pemain baru yang join
        Players.PlayerAdded:Connect(function(player)
            MonitorPlayerRespawn(player)
            wait(1)
            if player.Character and WallhackEnabled then
                local isEnemy = player.Team ~= LocalPlayer.Team
                CreateOutline(player.Character, isEnemy)
            end
        end)
        
    else
        WallhackStatus.Text = "Status: OFF"
        WallhackStatus.TextColor3 = Color3.fromRGB(255, 100, 100)
        WallhackButton.UIStroke.Color = Color3.fromRGB(0, 255, 255)
        
        -- Nonaktifkan semua wallhack
        for _, player in pairs(Players:GetPlayers()) do
            if player.Character then
                local highlight = player.Character:FindFirstChild("CheatHighlight")
                if highlight then
                    highlight:Destroy()
                end
            end
        end
        WallhackHighlights = {}
    end
end

-- Fungsi Speed
local function ToggleSpeed()
    SpeedEnabled = not SpeedEnabled
    
    if SpeedEnabled then
        SpeedStatus.Text = "Status: ON"
        SpeedStatus.TextColor3 = Color3.fromRGB(100, 255, 100)
        SpeedButton.UIStroke.Color = Color3.fromRGB(0, 255, 0)
        
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
            OriginalWalkSpeed = LocalPlayer.Character.Humanoid.WalkSpeed
            LocalPlayer.Character.Humanoid.WalkSpeed = 45
        end
        
        LocalPlayer.CharacterAdded:Connect(function(character)
            wait(1)
            if SpeedEnabled and character:FindFirstChild("Humanoid") then
                character.Humanoid.WalkSpeed = 45
            end
        end)
        
    else
        SpeedStatus.Text = "Status: OFF"
        SpeedStatus.TextColor3 = Color3.fromRGB(255, 100, 100)
        SpeedButton.UIStroke.Color = Color3.fromRGB(0, 255, 255)
        
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
            LocalPlayer.Character.Humanoid.WalkSpeed = OriginalWalkSpeed
        end
    end
end

-- Fungsi Noclip
local function ToggleNoclip()
    NoclipEnabled = not NoclipEnabled
    
    if NoclipEnabled then
        NoclipStatus.Text = "Status: ON"
        NoclipStatus.TextColor3 = Color3.fromRGB(100, 255, 100)
        NoclipButton.UIStroke.Color = Color3.fromRGB(0, 255, 0)
        
        coroutine.wrap(function()
            while NoclipEnabled and wait(0.1) do
                if LocalPlayer.Character then
                    for _, part in pairs(LocalPlayer.Character:GetDescendants()) do
                        if part:IsA("BasePart") then
                            part.CanCollide = false
                        end
                    end
                end
            end
        end)()
        
    else
        NoclipStatus.Text = "Status: OFF"
        NoclipStatus.TextColor3 = Color3.fromRGB(255, 100, 100)
        NoclipButton.UIStroke.Color = Color3.fromRGB(0, 255, 255)
        
        if LocalPlayer.Character then
            for _, part in pairs(LocalPlayer.Character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = true
                end
            end
        end
    end
end

-- Fungsi CopyMap
local function ToggleCopyMap()
    CopyMapStatus.Text = "Status: COPYING..."
    CopyMapStatus.TextColor3 = Color3.fromRGB(255, 255, 0)
    CopyMapButton.UIStroke.Color = Color3.fromRGB(255, 255, 0)
    
    -- Load dan jalankan CopyMap
    local success, err = pcall(function()
        -- =============================================
        --     COPY MAP BY KAWARASTUDIO
        --     Executor : Xeno / Any Synapse Support
        -- =============================================
        
        local synsaveinstance = loadstring(game:HttpGet("https://raw.githubusercontent.com/luau/UniversalSynSaveInstance/main/saveinstance.luau", true))()
        
        -- Ambil nama game otomatis
        local function getCleanGameName()
            local success, name = pcall(function()
                return game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
            end)
            
            if success and name then
                -- Bersihkan nama agar aman untuk file
                local clean = name:gsub("[%s%c%p]", "_")
                clean = clean:gsub("__+", "_")
                clean = clean:sub(1, 100) -- Batasi panjang nama
                return clean
            else
                return "Unknown_Map"
            end
        end
        
        local GameName = getCleanGameName()
        local Timestamp = os.date("%Y%m%d_%H%M%S")
        
        local Options = {
            Name = "COPYMAP_" .. GameName .. "_" .. Timestamp,
            SaveTerrain = true,
            DecompileScripts = true,
            SaveBytecode = false,           -- Disarankan false agar lebih cepat
            SafeMode = true,
            Timeout = 45,
            
            -- Extra Options (UniversalSynSaveInstance)
            RemoveLocked = true,
            RemoveScripts = false,          -- Ubah jadi true jika tidak mau ikut script
            IncludeServices = true,
        }
        
        print("===========================================")
        print("     COPY MAP BY KAWARASTUDIO")
        print("===========================================")
        print("📌 Game Name : " .. GameName)
        print("📁 File Name : " .. Options.Name .. ".rbxl")
        print("🚀 Sedang menyalin map... Harap tunggu!")
        print("===========================================")
        
        synsaveinstance(Options)
        
        print("✅ Berhasil! Map telah disimpan.")
        print("📂 Cek folder: Xeno Workspace")
        print("===========================================")
    end)
    
    if success then
        CopyMapStatus.Text = "Status: DONE ✓"
        CopyMapStatus.TextColor3 = Color3.fromRGB(100, 255, 100)
        CopyMapButton.UIStroke.Color = Color3.fromRGB(0, 255, 0)
    else
        CopyMapStatus.Text = "Status: FAILED ✗"
        CopyMapStatus.TextColor3 = Color3.fromRGB(255, 0, 0)
        CopyMapButton.UIStroke.Color = Color3.fromRGB(255, 0, 0)
        warn("Failed to CopyMap: " .. tostring(err))
    end
end

-- Fungsi Minimize
local function ToggleMinimize()
    if MainFrame.Size.Y.Offset == 520 then
        -- Minimize
        ButtonsContainer.Visible = false
        local tween = TweenService:Create(MainFrame, TweenInfo.new(0.3), {Size = UDim2.new(0, 350, 0, 40)})
        tween:Play()
    else
        -- Maximize
        local tween = TweenService:Create(MainFrame, TweenInfo.new(0.3), {Size = UDim2.new(0, 350, 0, 520)})
        tween:Play()
        tween.Completed:Connect(function()
            ButtonsContainer.Visible = true
        end)
    end
end

-- Event handlers
WallhackButton.MouseButton1Click:Connect(ToggleWallhack)
SpeedButton.MouseButton1Click:Connect(ToggleSpeed)
NoclipButton.MouseButton1Click:Connect(ToggleNoclip)
FlyButton.MouseButton1Click:Connect(ToggleFly)
CopyMapButton.MouseButton1Click:Connect(ToggleCopyMap)
MinimizeButton.MouseButton1Click:Connect(ToggleMinimize)
CloseButton.MouseButton1Click:Connect(function()
    local tween = TweenService:Create(MainFrame, TweenInfo.new(0.3), {Size = UDim2.new(0, 0, 0, 0)})
    tween:Play()
    tween.Completed:Wait()
    ScreenGui:Destroy()
end)

-- Input keyboard
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    
    if input.KeyCode == Enum.KeyCode.U then
        ToggleWallhack()
    elseif input.KeyCode == Enum.KeyCode.V then
        ToggleSpeed()
    elseif input.KeyCode == Enum.KeyCode.H then
        ToggleNoclip()
    elseif input.KeyCode == Enum.KeyCode.F then
        ToggleFly()
    elseif input.KeyCode == Enum.KeyCode.G then
        ToggleMinimize()
    elseif input.KeyCode == Enum.KeyCode.P then
        ScreenGui:Destroy()
    elseif input.KeyCode == Enum.KeyCode.C then
        ToggleCopyMap()
    end
end)

-- Animasi masuk
MainFrame.Size = UDim2.new(0, 0, 0, 0)
local openTween = TweenService:Create(MainFrame, TweenInfo.new(0.5), {Size = UDim2.new(0, 350, 0, 520)})
openTween:Play()

warn("🎮 Cheat By Khaliji loaded!")
warn("⚡ Controls: U-Wallhack, V-Speed, H-Noclip, F-Fly, G-Minimize, C-CopyMap, P-Close")
warn("🕊️ Fly Controls: WASD to move, Mouse to control direction")
