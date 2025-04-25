local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Lista de usuários permitidos (Whitelist)
local whitelist = {
    ["Player1"] = true,
    ["Player2"] = true,
    ["GendaiMaster"] = true,
}

if not whitelist[player.Name] then
    local ScreenGui = Instance.new("ScreenGui")
    local TextLabel = Instance.new("TextLabel")

    ScreenGui.Parent = game.CoreGui

    TextLabel.Parent = ScreenGui
    TextLabel.Size = UDim2.new(0, 400, 0, 100)
    TextLabel.Position = UDim2.new(0.5, -200, 0.5, -50)
    TextLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
    TextLabel.TextScaled = true
    TextLabel.Font = Enum.Font.GothamBlack
    TextLabel.Text = "Usuário não está em uma lista"
else
    print("✅ Bem-vindo ao GendaiHub, " .. player.Name .. "!")
    -- Aqui você coloca seu conteúdo secreto (scripts, funções, etc)
end
