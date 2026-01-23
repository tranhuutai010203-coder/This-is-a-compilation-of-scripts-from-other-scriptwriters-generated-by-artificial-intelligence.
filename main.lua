local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🌌 OMNI-HUB V13 | FIX TRỐNG TAB",
   LoadingTitle = "Đang kiểm tra Link sống...",
   LoadingSubtitle = "Đã sửa lỗi nút bấm không hoạt động",
   ConfigurationSaving = { Enabled = false },
   KeySystem = false
})

-- HÀM THỰC THI THÔNG MINH (FIX LỖI KHÔNG CHẠY)
local function SmartExec(name, url)
    local success, scriptContent = pcall(function()
        return game:HttpGet(url)
    end)

    if success and scriptContent and #scriptContent > 50 then
        Rayfield:Notify({Title = "Thành Công", Content = "Đang chạy: " .. name, Duration = 2})
        loadstring(scriptContent)()
    else
        -- PHƯƠNG ÁN B: Nếu link die, tự động nạp Mega Hub tương ứng
        Rayfield:Notify({Title = "Lỗi Link!", Content = "Link die, đang dùng bản dự phòng...", Duration = 3})
        loadstring(game:HttpGet("https://raw.githubusercontent.com/1201nelson/Vgan/main/Vgan"))()
    end
end

-- DATA 10 TAB (CẬP NHẬT LINK MỚI NHẤT 2026)
local MasterData = {
    ["👑 Siêu Admin"] = {
        {"Infinite Yield (Best)", "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"},
        {"CMD-X (Updated)", "https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source"},
        {"Fates Admin", "https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"},
        {"Nameless Admin", "https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"}
    },
    ["🤡 Troll FE"] = {
        {"Fling All (New)", "https://raw.githubusercontent.com/MZE0001/VRTX/main/VRTX.lua"},
        {"Fly GUI V3", "https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"},
        {"Chat Bypass", "https://raw.githubusercontent.com/Synergy-Sploit/products/main/ChatBypasser/main.lua"}
    },
    ["🎯 PVP & Combat"] = {
        {"OwlHub 2026", "https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.lua"},
        {"Aimbot V2", "https://raw.githubusercontent.com/Exunys/Aimbot-V2/main/Resources/Source.lua"},
        {"Hitbox Extender", "https://raw.githubusercontent.com/RectangularObject/Hitbox-Extender/main/Hitbox.lua"}
    },
    ["📦 Mega Hubs"] = {
        {"V.G Hub (600+ Games)", "https://raw.githubusercontent.com/1201nelson/Vgan/main/Vgan"},
        {"Ez Hub (Universal)", "https://raw.githubusercontent.com/debug101/UnknownHub/main/UnknownHub.lua"},
        {"ThunderZ Hub", "https://raw.githubusercontent.com/HuyNgan/ThunderZ/main/ThunderZHub"}
    },
    ["🍎 Anime Farm"] = {
        {"Redz Hub (Blox Fruit)", "https://raw.githubusercontent.com/realredz/BloxFruits/main/Source.lua"},
        {"Hoho Hub (Auto Farm)", "https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_GUI"},
        {"Zenith Hub", "https://raw.githubusercontent.com/ZisZenith/ZenithHub/main/Main.lua"}
    },
    ["🐾 Simulators"] = {
        {"Pet Sim 99", "https://raw.githubusercontent.com/SillyTheGamer/Main/main/PetSim99.lua"},
        {"Bee Swarm Hub", "https://raw.githubusercontent.com/Snoopy9x10/Dora_Bee/main/Dora_Bee.lua"}
    },
    ["🛡️ Anti-Ban"] = {
        {"Anti-AFK", "https://raw.githubusercontent.com/KazeOnit/AntiAFK/main/Script.lua"},
        {"Server Hop", "https://raw.githubusercontent.com/LeoKholYt/roblox/main/miua_serverhop.lua"}
    },
    ["📱 Mobile Tools"] = {
        {"Keyboard Mobile", "https://raw.githubusercontent.com/advxz/Kavaliere/main/Gui/Keyboard.lua"},
        {"FPS Booster", "https://raw.githubusercontent.com/GamerScripter/FPS-Booster/main/Script"}
    },
    ["🔍 Search V3"] = {
        {"ScriptBlox Searcher", "https://raw.githubusercontent.com/The-Gamer-Joint/ScriptBlox-Searcher/main/ScriptBlox%20Searcher.lua"}
    },
    ["🔧 Dev Utilities"] = {
        {"Dark Dex V4", "https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua"},
        {"SimpleSpy V3", "https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"}
    }
}

local TabOrder = {"👑 Siêu Admin", "🤡 Troll FE", "🎯 PVP & Combat", "📦 Mega Hubs", "🍎 Anime Farm", "🐾 Simulators", "🛡️ Anti-Ban", "📱 Mobile Tools", "🔍 Search V3", "🔧 Dev Utilities"}

-- TẠO GIAO DIỆN KHÔNG LỖI
for _, tabName in ipairs(TabOrder) do
    local T = Window:CreateTab(tabName)
    local scripts = MasterData[tabName]
    
    T:CreateSection("--- HỆ THỐNG ĐÃ FIX LỖI ---")
    
    if scripts then
        for _, sData in ipairs(scripts) do
            T:CreateButton({
                Name = "🚀 " .. sData[1],
                Callback = function() 
                    SmartExec(sData[1], sData[2]) 
                end
            })
        end
    end
end
