local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🌌 OMNI-HUB V14 | ANTI-DIE SYSTEM",
   LoadingTitle = "Đang kiểm tra Database 2026...",
   LoadingSubtitle = "Đã thay thế các link chết bằng Global Hub",
   ConfigurationSaving = { Enabled = false },
   KeySystem = false
})

-- HÀM THỰC THI CHỐNG DIE (SMART LOADER)
local function SafeExec(name, url)
    local success, content = pcall(function()
        return game:HttpGet(url)
    end)
    
    if success and content and #content > 100 then
        loadstring(content)()
        Rayfield:Notify({Title = "Thành Công", Content = "Đã chạy: " .. name, Duration = 2})
    else
        -- PHƯƠNG ÁN B: Nếu link die, tự động chuyển sang Search Engine
        Rayfield:Notify({Title = "Link Die!", Content = "Đang nạp bộ tìm kiếm dự phòng...", Duration = 3})
        loadstring(game:HttpGet("https://raw.githubusercontent.com/The-Gamer-Joint/ScriptBlox-Searcher/main/ScriptBlox%20Searcher.lua"))()
    end
end

-- DATA 10 TAB VỚI LINK MỚI (CHỦ YẾU LÀ CÁC REPO LỚN)
local MasterData = {
    ["👑 Siêu Admin"] = {
        {"Infinite Yield (Global)", "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"},
        {"CMD-X (Official)", "https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source"},
        {"Fates Admin (Fixed)", "https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"}
    },
    ["🤡 Troll FE"] = {
        {"VRTX Troll (New)", "https://raw.githubusercontent.com/MZE0001/VRTX/main/VRTX.lua"},
        {"Fly GUI V3 (Stable)", "https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"},
        {"Energize FE", "https://raw.githubusercontent.com/7Summertime7/Energize/main/Main"}
    },
    ["🎯 PVP & Combat"] = {
        {"OwlHub (2026)", "https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.lua"},
        {"Aimbot V2 (Exunys)", "https://raw.githubusercontent.com/Exunys/Aimbot-V2/main/Resources/Source.lua"},
        {"Hitbox Extender", "https://raw.githubusercontent.com/RectangularObject/Hitbox-Extender/main/Hitbox.lua"}
    },
    ["📦 Mega Hubs"] = {
        {"V.G Hub (Bất tử)", "https://raw.githubusercontent.com/1201nelson/Vgan/main/Vgan"},
        {"Ez Hub (Multi-game)", "https://raw.githubusercontent.com/debug101/UnknownHub/main/UnknownHub.lua"},
        {"ThunderZ (Stable)", "https://raw.githubusercontent.com/HuyNgan/ThunderZ/main/ThunderZHub"}
    },
    ["🍎 Anime Farm"] = {
        {"Redz Hub (Blox Fruits)", "https://raw.githubusercontent.com/realredz/BloxFruits/main/Source.lua"},
        {"Hoho Hub (Latest)", "https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_GUI"},
        {"Alchemy Hub", "https://raw.githubusercontent.com/M1ZZ001/Origins/main/Alchemy"}
    },
    ["🐾 Simulators"] = {
        {"Pet Sim 99 (Silly)", "https://raw.githubusercontent.com/SillyTheGamer/Main/main/PetSim99.lua"},
        {"Bee Swarm (Dora)", "https://raw.githubusercontent.com/Snoopy9x10/Dora_Bee/main/Dora_Bee.lua"}
    },
    ["🛡️ Anti-Ban"] = {
        {"Anti-AFK (Fixed)", "https://raw.githubusercontent.com/KazeOnit/AntiAFK/main/Script.lua"},
        {"Server Hop (Fast)", "https://raw.githubusercontent.com/LeoKholYt/roblox/main/miua_serverhop.lua"}
    },
    ["📱 Mobile Tools"] = {
        {"Keyboard Mobile", "https://raw.githubusercontent.com/advxz/Kavaliere/main/Gui/Keyboard.lua"},
        {"FPS Booster", "https://raw.githubusercontent.com/GamerScripter/FPS-Booster/main/Script"}
    },
    ["🔍 Search V3"] = {
        {"ScriptBlox Searcher", "https://raw.githubusercontent.com/The-Gamer-Joint/ScriptBlox-Searcher/main/ScriptBlox%20Searcher.lua"},
        {"Universal Search", "https://raw.githubusercontent.com/debug101/UnknownHub/main/UnknownHub.lua"}
    },
    ["🔧 Dev Utilities"] = {
        {"Dark Dex V4", "https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua"},
        {"SimpleSpy V3", "https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"}
    }
}

local TabOrder = {"👑 Siêu Admin", "🤡 Troll FE", "🎯 PVP & Combat", "📦 Mega Hubs", "🍎 Anime Farm", "🐾 Simulators", "🛡️ Anti-Ban", "📱 Mobile Tools", "🔍 Search V3", "🔧 Dev Utilities"}

for _, name in ipairs(TabOrder) do
    local T = Window:CreateTab(name)
    local scripts = MasterData[name]
    
    T:CreateSection("--- SCRIPT ĐÃ CẬP NHẬT 2026 ---")
    
    if scripts then
        for _, sData in ipairs(scripts) do
            T:CreateButton({
                Name = "🚀 " .. sData[1],
                Callback = function() SafeExec(sData[1], sData[2]) end
            })
        end
    end
end
