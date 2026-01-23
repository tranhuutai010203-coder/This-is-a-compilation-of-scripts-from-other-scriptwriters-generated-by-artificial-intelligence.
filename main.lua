local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Gemini FE | Ghost Mode",
    SubTitle = "Execute & Disappear",
    TabWidth = 160,
    Size = UDim2.fromOffset(450, 320),
    Acrylic = true,
    Theme = "Dark"
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "ghost" })
}

Tabs.Main:AddButton({
    Title = "Kích hoạt FE Invisible (Full)",
    Description = "Người khác sẽ thấy bạn đứng yên tại chỗ cũ",
    Callback = function()
        local Player = game.Players.LocalPlayer
        local Character = Player.Character
        if not Character then return end

        local Humanoid = Character:FindFirstChildOfClass("Humanoid")
        local RootPart = Character:FindFirstChild("HumanoidRootPart")

        -- Thực hiện kỹ thuật Desync
        if RootPart and Humanoid then
            -- Tạo một bản sao vị trí để tránh bị văng
            local Location = RootPart.CFrame
            
            -- Xóa các khớp nối quan trọng để đánh lừa Server
            for _, v in pairs(Character:GetDescendants()) do
                if v:IsA("Motor6D") or v:IsA("Weld") or v:IsA("Snap") then
                    v:Destroy()
                end
            end
            
            -- Làm tàng hình các bộ phận trên máy của bạn
            for _, part in pairs(Character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Transparency = 0.5 -- Để bạn vẫn thấy bóng mờ của mình
                    part.CanCollide = false
                elseif part:IsA("Decal") then
                    part.Transparency = 1
                end
            end

            Fluent:Notify({
                Title = "Thành công",
                Content = "Bạn đã tàng hình FE. Reset để hiện hình.",
                Duration = 5
            })
        end
    end
})

Tabs.Main:AddButton({
    Title = "Tự tử (Reset Character)",
    Callback = function()
        game.Players.LocalPlayer.Character:BreakJoints()
    end
})

-- Thông báo khi load xong
Fluent:Notify({
    Title = "Gemini Hub",
    Content = "Script đã sẵn sàng!",
    Duration = 3
})
