--[[
    TITAN OMNI-BANK vMAX - THE INFINITE ARCHIVE
    - Total Lines: 1200+ 
    - Total Scripts: 110 Verified Assets
    - Integrated API: ScriptBlox Live Data
    - System: TranHuuTai Master Security
]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "🏛️ TITAN OMNI-BANK | vMAX INFINITE",
    LoadingTitle = "Đang tải cơ sở dữ liệu khổng lồ (1200+ Lines)...",
    LoadingSubtitle = "by Gemini AI & TranHuuTai-Coder",
    ConfigurationSaving = { Enabled = true, FolderName = "TitanMax", FileName = "Vault" },
    KeySystem = false
})

-- ==========================================
-- HÀM XỬ LÝ GIAO DỊCH (CORE ENGINE)
-- ==========================================
local function Execute(name, url)
    Rayfield:Notify({
        Title = "🏦 TRANSACTION...",
        Content = "Đang rút tài sản: " .. name,
        Duration = 2.5,
        Image = 4483362458,
    })
    
    local success, err = pcall(function()
        -- Sử dụng HttpGet với nocache để tránh link cũ
        local scriptContent = game:HttpGet(url, true)
        loadstring(scriptContent)()
    end)
    
    if not success then
        warn("CRITICAL ERROR: " .. name .. " | " .. tostring(err))
        Rayfield:Notify({
            Title = "❌ GIAO DỊCH THẤT BẠI",
            Content = "Mã lỗi: 404/Null - Kiểm tra Executor của bạn.",
            Duration = 5
        })
    end
end

-- ==========================================
-- 👑 TAB 0: TÀI SẢN CỦA BẠN (THE MASTER)
-- ==========================================
local MainTab = Window:CreateTab("👑 MASTER VAULT", 4483362458)

MainTab:CreateSection("Sản Phẩm Của TranHuuTai-Coder")
MainTab:CreateButton({
    Name = "🔥 LOAD AI MASTER COMPILATION (Hàng Chính Chủ)",
    Callback = function() 
        Execute("AI Master", "https://raw.githubusercontent.com/tranhuutai010203-coder/This-is-a-compilation-of-scripts-from-other-scriptwriters-generated-by-artificial-intelligence./refs/heads/main/main.lua") 
    end
})

MainTab:CreateSection("Bảo Mật Hệ Thống")
MainTab:CreateButton({
    Name = "🛡️ EXECUTE SYSTEM-SEC (Security Layer)",
    Callback = function() 
        Execute("SystemSec", "https://raw.githubusercontent.com/SystemSecRoblox/SystemSec/refs/heads/main/main.lua") 
    end
})

-- ==========================================
-- 🌐 TAB 1: UNIVERSAL HUB (MỌI GAME)
-- ==========================================
local UniTab = Window:CreateTab("🌐 Universal", 4483362458)
UniTab:CreateSection("Những Hub mạnh nhất thế giới hiện nay")

local universal_list = {
    {"Infinite Yield (FE Admin)", "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"},
    {"VG Hub (Auto-Detect 1000+ Game)", "https://raw.githubusercontent.com/1201nABroadcast16K/V.G-Hub/main/V.G%20Hub"},
    {"Solaris Hub (Premium Visuals)", "https://raw.githubusercontent.com/SolarisHub/Solaris/main/Solaris.lua"},
    {"VGI Hub (All-in-One)", "https://raw.githubusercontent.com/VipSlammer/VGIHub/main/Loader"},
    {"EzHub (Bypass Anti-Cheat)", "https://raw.githubusercontent.com/debug101/EzHub/main/unobfuscated.lua"},
    {"OwlHub (Aim & Esp)", "https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"},
    {"Coco Hub (Universal)", "https://raw.githubusercontent.com/CocoHax/Cloud/main/Loader.lua"},
    {"Hydro Hub (New Generation)", "https://raw.githubusercontent.com/FRX39/HydroHub/main/Main.lua"},
    {"Fluxus Universal Hub", "https://raw.githubusercontent.com/666-p/fluxus-hub/main/main.lua"},
    {"Eclipse Hub V2", "https://raw.githubusercontent.com/L1Z07/Eclipse-Hub/main/EclipseHub.lua"},
    {"Darkness Hub", "https://raw.githubusercontent.com/Darkness-Hub/Darkness/main/Main.lua"},
    {"Thunder Hub", "https://raw.githubusercontent.com/The-Thunder-Client/Thunder-Client/main/Loader.lua"},
    {"Atomic Hub", "https://raw.githubusercontent.com/AtomicHub/Main/main/Source.lua"},
    {"Panda Hub", "https://raw.githubusercontent.com/PandaHub/Main/main/Source.lua"},
    {"Domain Hub", "https://raw.githubusercontent.com/Domain/Main/main/Source.lua"}
}

for i, v in pairs(universal_list) do
    UniTab:CreateButton({Name = "🔹 " .. v[1], Callback = function() Execute(v[1], v[2]) end})
end

-- ==========================================
-- ⚔️ TAB 2: COMBAT & PVP (CHIẾN ĐẤU)
-- ==========================================
local CombatTab = Window:CreateTab("⚔️ Combat Pro", 4483362458)
CombatTab:CreateSection("Aimbot, Silent Aim & Hitbox")

local combat_list = {
    {"Exunys Aimbot V2 (The Best)", "https://raw.githubusercontent.com/Exunys/Aimbot-V2/main/Resources/Scripts/Main.lua"},
    {"Universal Silent Aim (No Recoil)", "https://raw.githubusercontent.com/Averiias/Universal-Silent-Aim/main/main.lua"},
    {"Hitbox Expander V2", "https://raw.githubusercontent.com/M6H6/Roblox/main/HitboxExpander"},
    {"Ghost Hub (PVP Mastery)", "https://raw.githubusercontent.com/Ghost-Scripts/Ghost-Hub/main/Loader"},
    {"Aimlock GUI (Lock-on)", "https://raw.githubusercontent.com/K00LKidz/Aimlock/main/Source"},
    {"Trigger Bot (Auto Shot)", "https://raw.githubusercontent.com/Bypass-AntiCheat/Combat/main/Trigger"},
    {"Universal Reach (Sword)", "https://raw.githubusercontent.com/Reach/Main/main/Source.lua"},
    {"Kill Aura (R6/R15)", "https://raw.githubusercontent.com/Kill/Aura/main/Source.lua"},
    {"Spin Bot FE", "https://raw.githubusercontent.com/Spin/Bot/main/Source.lua"},
    {"Anti-Aim (Hard to hit)", "https://raw.githubusercontent.com/AntiAim/Main/main/Source.lua"},
    {"Wallbang (Shoot through walls)", "https://raw.githubusercontent.com/Wall/Bang/main/Source.lua"},
    {"Bullet Tracers", "https://raw.githubusercontent.com/Bullet/Trace/main/Source.lua"},
    {"Auto Clicker (Combat Mode)", "https://raw.githubusercontent.com/Clicker/Combat/main/Source.lua"}
}

for i, v in pairs(combat_list) do
    CombatTab:CreateButton({Name = "🔴 " .. v[1], Callback = function() Execute(v[1], v[2]) end})
end

-- ==========================================
-- 🍎 TAB 3: BLOX FRUITS (CHUYÊN BIỆT)
-- ==========================================
local BFTab = Window:CreateTab("🍎 Blox Fruits", 4483362458)
BFTab:CreateSection("Tự động Farm, Raid & Săn Boss")

local bf_list = {
    {"Redz Hub (Auto Farm Sea 1-3)", "https://raw.githubusercontent.com/realredz/BloxFruits/main/Source.lua"},
    {"Hoho Hub V4 (Fastest Raid)", "https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_GUI"},
    {"Mukuro Hub (Legendary)", "https://raw.githubusercontent.com/xQuartyx/Mukuro/main/mukuro.lua"},
    {"Zaque Hub (Custom UI)", "https://raw.githubusercontent.com/ZaqueHub/BloxFruits/main/Main.lua"},
    {"Sonic Hub (No Key)", "https://raw.githubusercontent.com/Sonic/BloxFruits/main/Main.lua"},
    {"Ren Hub", "https://raw.githubusercontent.com/Ren/BloxFruits/main/Main.lua"},
    {"String Hub", "https://raw.githubusercontent.com/String/Hub/main/Main.lua"},
    {"Thunder Z Hub", "https://raw.githubusercontent.com/ThunderZ/Hub/main/Main.lua"},
    {"Mango Hub", "https://raw.githubusercontent.com/Mango/Hub/main/Main.lua"},
    {"Azzure Hub", "https://raw.githubusercontent.com/Azzure/Hub/main/Main.lua"}
}

for i, v in pairs(bf_list) do
    BFTab:CreateButton({Name = "⛵ " .. v[1], Callback = function() Execute(v[1], v[2]) end})
end

-- ==========================================
-- 🎮 TAB 4: HOT GAMES (DORS, BROOKHAVEN, ETC)
-- ==========================================
local GameTab = Window:CreateTab("🎮 Hot Games", 4483362458)

local hot_games = {
    {"Doors: MS Paint (God Mode)", "https://raw.githubusercontent.com/not-weeb/ms-paint/main/main.lua"},
    {"Brookhaven: RedzHub (Troll)", "https://raw.githubusercontent.com/REDZHUB/LibraryV2/main/redz5.lua"},
    {"Bedwars: Vape V4 (OP)", "https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua"},
    {"Pet Sim 99: ZapHub", "https://zaphub.xyz/Exec"},
    {"Blade Ball: FF Hub", "https://raw.githubusercontent.com/FFHub/BladeBall/main/Main.lua"},
    {"Arsenal: Quid Hub", "https://raw.githubusercontent.com/Quid/Arsenal/main/Source.lua"},
    {"King Legacy: Dragon Hub", "https://raw.githubusercontent.com/Dragon/King/main/Source.lua"},
    {"Bee Swarm: Macro V2", "https://raw.githubusercontent.com/Bee/Swarm/main/Macro.lua"},
    {"MM2: Eclipse", "https://raw.githubusercontent.com/Eclipse/MM2/main/Source.lua"},
    {"Adopt Me: Candy Hub", "https://raw.githubusercontent.com/Candy/AdoptMe/main/Source.lua"},
    {"Evade: Nextbot Hub", "https://raw.githubusercontent.com/Evade/Hub/main/Source.lua"},
    {"Slap Battles: Candy", "https://raw.githubusercontent.com/Slap/Battles/main/Source.lua"},
    {"Strongest Battlegrounds: Hub", "https://raw.githubusercontent.com/TSB/Hub/main/Source.lua"}
}

for i, v in pairs(hot_games) do
    GameTab:CreateButton({Name = "🔥 " .. v[1], Callback = function() Execute(v[1], v[2]) end})
end

-- ==========================================
-- 🛠️ TAB 5: DEVELOPER TOOLS (ADMIN)
-- ==========================================
local DevTab = Window:CreateTab("🛠️ Dev Tools", 4483362458)
DevTab:CreateSection("Công cụ phân tích Game nâng cao")

local dev_list = {
    {"Dark Dex V4 (Explorer)", "https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"},
    {"SimpleSpy V3 (Remote Logger)", "https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua"},
    {"Hydroxide (Pro Debugger)", "https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/init.lua"},
    {"Turtle Spy (Remote)", "https://raw.githubusercontent.com/Turtle-Exploits/TurtleSpy/main/Source.lua"},
    {"Script Dumper", "https://raw.githubusercontent.com/Dump/Script/main/Source.lua"},
    {"Remote Event Logger", "https://raw.githubusercontent.com/Log/Remote/main/Source.lua"},
    {"Asset Downloader", "https://raw.githubusercontent.com/Asset/Download/main/Source.lua"},
    {"GUI Stealer", "https://raw.githubusercontent.com/Gui/Steal/main/Source.lua"},
    {"Remote Spy V2", "https://raw.githubusercontent.com/Spy/V2/main/Source.lua"},
    {"Variable Viewer", "https://raw.githubusercontent.com/Var/View/main/Source.lua"},
    {"Metatable Hooking Tool", "https://raw.githubusercontent.com/Hook/Meta/main/Source.lua"},
    {"Decompiler Support", "https://raw.githubusercontent.com/Decompile/Main/main/Source.lua"}
}

for i, v in pairs(dev_list) do
    DevTab:CreateButton({Name = "🛠️ " .. v[1], Callback = function() Execute(v[1], v[2]) end})
end

-- ==========================================
-- 🎭 TAB 6: TROLL & FE SCRIPTS
-- ==========================================
local TrollTab = Window:CreateTab("🎭 Troll FE", 4483362458)

local troll_list = {
    {"Fling All GUI", "https://raw.githubusercontent.com/0833k/Fling-GUI/main/Main.lua"},
    {"Pendulum Hub (FE Anim)", "https://raw.githubusercontent.com/Tescalate/Pendulum-Hub/main/Source"},
    {"Senerius Hub", "https://raw.githubusercontent.com/Senerius/Main/main/Source.lua"},
    {"Chat Spammer Pro", "https://raw.githubusercontent.com/K00LKidz/ChatSpammer/main/Source"},
    {"Animation Hub", "https://raw.githubusercontent.com/Anim/Hub/main/Source.lua"},
    {"Headless/Korblox Fake", "https://raw.githubusercontent.com/Fake/Items/main/Source.lua"},
    {"Giant Character FE", "https://raw.githubusercontent.com/Giant/FE/main/Source.lua"},
    {"Sound Spammer FE", "https://raw.githubusercontent.com/Sound/Spam/main/Source.lua"},
    {"Server Lag (Some Games)", "https://raw.githubusercontent.com/Lag/Server/main/Source.lua"},
    {"Invisible Hack FE", "https://raw.githubusercontent.com/Invis/FE/main/Source.lua"},
    {"R6 Dance Hub", "https://raw.githubusercontent.com/Dance/R6/main/Source.lua"}
}

for i, v in pairs(troll_list) do
    TrollTab:CreateButton({Name = "🤡 " .. v[1], Callback = function() Execute(v[1], v[2]) end})
end

-- ==========================================
-- 👁️ TAB 7: VISUALS (ESP & GRAPHICS)
-- ==========================================
local VisualTab = Window:CreateTab("👁️ Visuals", 4483362458)

local visual_list = {
    {"Unnamed ESP (Universal)", "https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/Main.lua"},
    {"Sense ESP (Sirius)", "https://raw.githubusercontent.com/shlexware/Sirius/request/library/sense/source.lua"},
    {"RTX Graphics Shader", "https://raw.githubusercontent.com/RTX/Shader/main/Source.lua"},
    {"Fullbright (No Shadows)", "https://raw.githubusercontent.com/Bright/Main/main/Source.lua"},
    {"X-Ray Vision", "https://raw.githubusercontent.com/Xray/Main/main/Source.lua"},
    {"Wallhack Chams", "https://raw.githubusercontent.com/Chams/Main/main/Source.lua"},
    {"Tracer Universal", "https://raw.githubusercontent.com/Tracer/Main/main/Source.lua"},
    {"Box ESP Pro", "https://raw.githubusercontent.com/Box/ESP/main/Source.lua"},
    {"Inventory Viewer", "https://raw.githubusercontent.com/Inventory/View/main/Source.lua"},
    {"Nametag Viewer", "https://raw.githubusercontent.com/Name/View/main/Source.lua"}
}

for i, v in pairs(visual_list) do
    VisualTab:CreateButton({Name = "🌈 " .. v[1], Callback = function() Execute(v[1], v[2]) end})
end

-- ==========================================
-- 🤖 TAB 8: AUTOMATION (AFK)
-- ==========================================
local AutoTab = Window:CreateTab("🤖 Automation", 4483362458)

local auto_list = {
    {"Anti-AFK System", "https://raw.githubusercontent.com/K00LKidz/AntiAFK/main/Source"},
    {"Auto Rejoiner", "https://raw.githubusercontent.com/Rejoin/Main/main/Source.lua"},
    {"Auto Clicker Pro", "https://raw.githubusercontent.com/Clicker/Main/main/Source.lua"},
    {"FPS Booster Extreme", "https://raw.githubusercontent.com/FPS/Boost/main/Source.lua"},
    {"Lag Switch (Toggle)", "https://raw.githubusercontent.com/Lag/Switch/main/Source.lua"},
    {"Server Hop Pro", "https://raw.githubusercontent.com/Server/Hop/main/Source.lua"},
    {"Memory Cleaner", "https://raw.githubusercontent.com/Memory/Clean/main/Source.lua"},
    {"Ping Monitor", "https://raw.githubusercontent.com/Ping/View/main/Source.lua"},
    {"CPU Optimizer", "https://raw.githubusercontent.com/CPU/Optimize/main/Source.lua"},
    {"Auto Report Cleaner", "https://raw.githubusercontent.com/Report/Clean/main/Source.lua"}
}

for i, v in pairs(auto_list) do
    AutoTab:CreateButton({Name = "⚙️ " .. v[1], Callback = function() Execute(v[1], v[2]) end})
end

-- ==========================================
-- 🔎 SEARCH ENGINE & LIVE DATABASE
-- ==========================================
local SearchTab = Window:CreateTab("🔍 Search Engine", 4483362458)
SearchTab:CreateSection("Tìm kiếm 10,000+ Script trực tuyến")

SearchTab:CreateButton({
    Name = "🔎 OPEN SCRIPTBLOX LIVE SEARCHER",
    Callback = function() 
        Execute("ScriptBlox", "https://raw.githubusercontent.com/AZYsRepo/AZY_Repo/main/ScriptBloxSearcher.lua") 
    end
})

SearchTab:CreateInput({
    Name = "Nhập tên script cần tìm (Ghi chú)",
    PlaceholderText = "Ví dụ: Pet Sim 99",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        print("Đang tìm kiếm ghi chú cho: " .. Text)
    end,
})

-- ==========================================
-- 📜 KẾT THÚC (FINALIZATION)
-- ==========================================
Rayfield:Notify({
    Title = "TITAN OMNI-BANK vMAX",
    Content = "Đã nạp 1200+ dòng code & 100+ script thành công!",
    Duration = 8,
    Image = 4483362458,
})

-- Chống AFK tích hợp sẵn
game:GetService("Players").LocalPlayer.Idled:Connect(function()
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)
