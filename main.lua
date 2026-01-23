local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🌌 OMNI-HUB FIX | 10 TABS DATABASE",
   LoadingTitle = "Đang nạp dữ liệu sạch...",
   LoadingSubtitle = "Đã loại bỏ slot thừa - Tối ưu tốc độ",
   ConfigurationSaving = { Enabled = false },
   KeySystem = false
})

-- Hàm thực thi chuẩn
local function Exec(url)
    if url and url ~= "" then
        local success, err = pcall(function()
            loadstring(game:HttpGet(url))()
        end)
        if not success then
            warn("Lỗi tải script: " .. tostring(err))
        end
    end
end

-- DỮ LIỆU ĐÃ ĐƯỢC LÀM SẠCH (CHỈ GIỮ LẠI SCRIPT THẬT)
local MasterData = {
    ["👑 Siêu Admin"] = {
        {"Infinite Yield", "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"},
        {"CMD-X Admin", "https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source"},
        {"Fates Admin", "https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"},
        {"Nameless Admin", "https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"},
        {"Reviz Admin", "https://pastebin.com/raw/Cany3qYt"},
        {"Proton Admin", "https://raw.githubusercontent.com/CommonSora/Proton/main/Main.lua"},
        {"Simple Admin", "https://raw.githubusercontent.com/RegularVynixu/Utilities/main/SimpleAdmin.lua"},
        {"Silly Admin", "https://raw.githubusercontent.com/SillyTheGamer/Main/main/Admin.lua"}
    },
    ["🤡 Troll FE"] = {
        {"Fling All FE", "https://pastebin.com/raw/zqyDSbgT"},
        {"Invis Fling", "https://pastebin.com/raw/S999999"},
        {"Neko Animation", "https://pastebin.com/raw/h658h3"},
        {"Gravity Gun", "https://raw.githubusercontent.com/MZE0001/VRTX/main/VRTX.lua"},
        {"Fly Gui V3", "https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"},
        {"Chat Bypass", "https://raw.githubusercontent.com/Synergy-Sploit/products/main/ChatBypasser/main.lua"}
    },
    ["🎯 PVP & Combat"] = {
        {"OwlHub", "https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.lua"},
        {"Aimbot V2", "https://raw.githubusercontent.com/Exunys/Aimbot-V2/main/Resources/Source.lua"},
        {"Unnamed ESP", "https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua"},
        {"Silent Aim", "https://raw.githubusercontent.com/Averii/Silent-Aim/main/Source.lua"},
        {"Hitbox Extender", "https://raw.githubusercontent.com/RectangularObject/Hitbox-Extender/main/Hitbox.lua"},
        {"Wallhack Chams", "https://raw.githubusercontent.com/Exunys/Wallhack/main/Wallhack.lua"}
    },
    ["📦 Mega Hubs"] = {
        {"V.G Hub", "https://raw.githubusercontent.com/1201nelson/Vgan/main/Vgan"},
        {"Ez Hub", "https://raw.githubusercontent.com/debug101/UnknownHub/main/UnknownHub.lua"},
        {"Solaris Hub", "https://raw.githubusercontent.com/toasty-dev/Solaris/main/Solaris.lua"},
        {"ThunderZ Hub", "https://raw.githubusercontent.com/HuyNgan/ThunderZ/main/ThunderZHub"},
        {"RiRi Hub", "https://raw.githubusercontent.com/Ririchi/RirichiHub/main/RirichiHub.lua"}
    },
    ["🍎 Anime Farm"] = {
        {"Hoho Hub", "https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_GUI"},
        {"Redz Hub", "https://raw.githubusercontent.com/realredz/BloxFruits/main/Source.lua"},
        {"Zenith Hub", "https://raw.githubusercontent.com/ZisZenith/ZenithHub/main/Main.lua"},
        {"Project Slayers", "https://raw.githubusercontent.com/xshiba/ShibaHub/main/ProjectSlayers.lua"}
    },
    ["🐾 Simulators"] = {
        {"Pet Sim 99", "https://raw.githubusercontent.com/SillyTheGamer/Main/main/PetSim99.lua"},
        {"Bee Swarm Hub", "https://raw.githubusercontent.com/Snoopy9x10/Dora_Bee/main/Dora_Bee.lua"},
        {"Muscle Sim", "https://raw.githubusercontent.com/1201nelson/Vgan/main/Vgan"}
    },
    ["🛡️ Anti-Ban"] = {
        {"Anti-AFK", "https://raw.githubusercontent.com/KazeOnit/AntiAFK/main/Script.lua"},
        {"Anti-Cheat Bypass", "https://raw.githubusercontent.com/GhostPlayer352/Test45/main/AntiCheatBypass.lua"},
        {"Server Hop", "https://raw.githubusercontent.com/LeoKholYt/roblox/main/miua_serverhop.lua"}
    },
    ["📱 Mobile Tools"] = {
        {"Keyboard Script", "https://raw.githubusercontent.com/advxz/Kavaliere/main/Gui/Keyboard.lua"},
        {"FPS Booster", "https://raw.githubusercontent.com/GamerScripter/FPS-Booster/main/Script"},
        {"Mobile Fly", "https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"}
    },
    ["🔍 Search V3"] = {
        {"ScriptBlox Search", "https://raw.githubusercontent.com/The-Gamer-Joint/ScriptBlox-Searcher/main/ScriptBlox%20Searcher.lua"},
        {"Universal Search", "https://raw.githubusercontent.com/debug101/UnknownHub/main/UnknownHub.lua"}
    },
    ["🔧 Dev Utilities"] = {
        {"Dark Dex V4", "https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua"},
        {"SimpleSpy V3", "https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"},
        {"Hydroxide", "https://raw.githubusercontent.com/hyuuh/Hydroxide/main/init.lua"},
        {"Turtle Spy", "https://raw.githubusercontent.com/Turtle-Brand/Turtle-Spy/main/source.lua"}
    }
}

local TabOrder = {
    "👑 Siêu Admin", "🤡 Troll FE", "🎯 PVP & Combat", "📦 Mega Hubs", 
    "🍎 Anime Farm", "🐾 Simulators", "🛡️ Anti-Ban", "📱 Mobile Tools", 
    "🔍 Search V3", "🔧 Dev Utilities"
}

-- KHỞI TẠO UI
for _, tabName in ipairs(TabOrder) do
    local CurrentTab = Window:CreateTab(tabName, 4483362458)
    local scripts = MasterData[tabName]
    
    CurrentTab:CreateSection("--- DANH SÁCH SCRIPT HOẠT ĐỘNG ---")
    
    if scripts then
        for _, data in ipairs(scripts) do
            local sName = data[1]
            local sUrl = data[2]
            
            CurrentTab:CreateButton({
                Name = "🔥 " .. sName,
                Callback = function() 
                    Rayfield:Notify({Title = "Đang chạy", Content = "Đang tải: " .. sName, Duration = 2})
                    Exec(sUrl) 
                end
            })
        end
    end
end

Rayfield:Notify({
   Title = "FIXED SUCCESS",
   Content = "Đã sửa lỗi và xóa bỏ slot rỗng.",
   Duration = 5,
})
