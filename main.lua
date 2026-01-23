local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Gemini FE | Ghost Premium",
    SubTitle = "Tàng hình thực thụ",
    TabWidth = 160,
    Size = UDim2.fromOffset(450, 350),
    Acrylic = true,
    Theme = "Dark"
})

local Tabs = {
    Main = Window:AddTab({ Title = "Tính năng", Icon = "ghost" })
}

local Toggle = Tabs.Main:AddToggle("FEInvis", {Title = "Chế độ Tàng Hình (FE)", Default = false })

-- Biến lưu trạng thái
local InvisibilityEnabled = false
local FakeCharacter = nil

Toggle:OnChanged(function(Value)
    InvisibilityEnabled = Value
    local Player = game.Players.LocalPlayer
    local Character = Player.Character
    
    if InvisibilityEnabled then
        -- Kỹ thuật Tàng hình di chuyển (Desync Ghost)
        if Character and Character:FindFirstChild("HumanoidRootPart") then
            -- Làm mờ nhân vật trên máy mình để biết đang bật
            for _, v in pairs(Character:GetDescendants()) do
                if v:IsA("BasePart") then v.Transparency = 0.7 end
            end
            
            -- Đánh lừa Server: Ngắt kết nối RootPart tạm thời
            Character.HumanoidRootPart.Parent = game.Players -- Giấu nó đi
            
            Fluent:Notify({
                Title = "Đã bật",
                Content = "Người khác không còn thấy bạn di chuyển!",
                Duration = 3
            })
        end
    else
        -- Tắt tàng hình: Trả lại mọi thứ về cũ
        if Character and game.Players:FindFirstChild("HumanoidRootPart") then
            game.Players.HumanoidRootPart.Parent = Character
            
            for _, v in pairs(Character:GetDescendants()) do
                if v:IsA("BasePart") then v.Transparency = 0 end
            end
            
            -- Buộc nhân vật hồi phục khớp nối (đôi khi cần Reset)
            Fluent:Notify({
                Title = "Đã tắt",
                Content = "Bạn đã hiện hình (Nếu bị lỗi hãy Reset)",
                Duration = 3
            })
        end
    end
end)

-- Thêm thanh chỉnh tốc độ chạy khi tàng hình
local Slider = Tabs.Main:AddSlider("Speed", {
    Title = "Tốc độ di chuyển",
    Description = "Dùng để lướt đi khi tàng hình",
    Default = 16,
    Min = 16,
    Max = 150,
    Rounding = 1,
    Callback = function(Value)
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        end
    end
})

Tabs.Main:AddButton({
    Title = "Fix Kẹt / Reset",
    Callback = function()
        game.Players.LocalPlayer.Character:BreakJoints()
    end
})

Fluent:Notify({
    Title = "Gemini Hub",
    Content = "Script đã sẵn sàng!",
    Duration = 3
})
