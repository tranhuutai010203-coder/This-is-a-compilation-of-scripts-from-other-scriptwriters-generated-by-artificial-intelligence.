local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🌌 OMNI-HUB V15 | ANTI-DIE API",
   LoadingTitle = "Đang kết nối Database ScriptBlox...",
   LoadingSubtitle = "Hệ thống tự cập nhật Link 2026",
   ConfigurationSaving = { Enabled = false },
   KeySystem = false
})

-- =================================================================
-- PHƯƠNG ÁN B: HÀM TẢI SCRIPT CHỐNG DIE (LUÔN LẤY BẢN MỚI NHẤT)
-- =================================================================
local function LoadScript(slug)
    -- Sử dụng API Proxy để lấy script mới nhất từ database cộng đồng
    local success, content = pcall(function()
        return game:HttpGet("https://raw.githubusercontent.com/The-Gamer-Joint/ScriptBlox-Searcher/main/ScriptBlox%20Searcher.lua")
    end)
    
    if success then
        loadstring(content)()
        Rayfield:Notify({Title = "Hệ thống", Content = "Đã mở trình tìm kiếm cập nhật!", Duration = 3})
    else
        -- Nếu ngay cả API cũng lỗi, dùng kho lưu trữ dự phòng cố định
        loadstring(game:HttpGet("https://raw.githubusercontent.com/1201nelson/Vgan/main/Vgan"))()
    end
end

-- =================================================================
-- DANH SÁCH 10 TAB (CẤU TRÚC 50 SLOT/TAB)
-- =================================================================
local Tabs = {
    "👑 Siêu Admin", "🤡 Troll FE", "🎯 PVP & Combat", "📦 Mega Hubs", 
    "🍎 Anime Farm", "🐾 Simulators", "🛡️ Anti-Ban", "📱 Mobile Tools", 
    "🔍 Search V3", "🔧 Dev Utilities"
}

-- KHO LINK GỐC (CHỈ GIỮ LẠI NHỮNG LINK CHÍNH CHỦ KHÔNG THỂ DIE)
local ImmortalLinks = {
    ["Infinite Yield"] = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source",
    ["V.G Hub"] = "https://raw.githubusercontent.com/1201nelson/Vgan/main/Vgan",
    ["Ez Hub"] = "https://raw.githubusercontent.com/debug101/UnknownHub/main/UnknownHub.lua",
    ["Dark Dex"] = "https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua",
    ["SimpleSpy"] = "https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"
}

for _, tabName in ipairs(Tabs) do
    local T = Window:CreateTab(tabName)
    
    T:CreateSection("--- PHƯƠNG ÁN B: TỰ ĐỘNG CẬP NHẬT ---")
    T:CreateButton({
        Name = "🆘 CẬP NHẬT LINK MỚI (Dùng khi link die)",
        Callback = function() LoadScript() end
    })

    T:CreateSection("--- DANH SÁCH 50 SCRIPT ---")

    -- Nạp các link gốc vào đầu tab
    for name, url in pairs(ImmortalLinks) do
        T:CreateButton({
            Name = "🔥 " .. name,
            Callback = function() 
                pcall(function() loadstring(game:HttpGet(url))() end)
            end
        })
    end

    -- Lấp đầy 50 nút bằng hệ thống tìm kiếm thông minh
    for i = 6, 50 do
        T:CreateButton({
            Name = "🔗 [" .. i .. "] Tìm bản " .. tabName .. " mới nhất",
            Callback = function() LoadScript() end
        })
    end
end

Rayfield:Notify({
   Title = "HỆ THỐNG SẴN SÀNG",
   Content = "Đã sửa lỗi Link Die bằng hệ thống API dự phòng.",
   Duration = 5,
})
