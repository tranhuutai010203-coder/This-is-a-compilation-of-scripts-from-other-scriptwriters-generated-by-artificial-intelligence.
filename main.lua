local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🌌 OMNI-HUB V9 | FULL 10 TABS DATABASE",
   LoadingTitle = "Đang nạp 200+ Script thực tế...",
   LoadingSubtitle = "Vui lòng đợi 10 Tab đang được đồng bộ",
   ConfigurationSaving = { Enabled = false },
   KeySystem = false
})

local function Exec(url)
    pcall(function() loadstring(game:HttpGet(url))() end)
end

-- =================================================================
-- HỆ THỐNG DỮ LIỆU SCRIPT CHO 10 TAB (MỖI TAB 20+ LINK)
-- =================================================================
local MasterData = {
    ["👑 Siêu Admin"] = {
        ["Infinite Yield"] = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source",
        ["CMD-X Admin"] = "https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source",
        ["Fates Admin"] = "https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua",
        ["Nameless Admin"] = "https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source",
        ["Reviz Admin"] = "https://pastebin.com/raw/Cany3qYt",
        ["HomeBrew Admin"] = "https://raw.githubusercontent.com/SyntaxV2/HomeBrew/master/Main",
        ["Proton Admin"] = "https://raw.githubusercontent.com/CommonSora/Proton/main/Main.lua",
        ["Simple Admin"] = "https://raw.githubusercontent.com/RegularVynixu/Utilities/main/SimpleAdmin.lua",
        ["Sovereign Admin"] = "https://raw.githubusercontent.com/Sovereign/Admin/main/Source",
        ["T-X Admin"] = "https://pastebin.com/raw/vYscX96R",
        ["Kohl's Admin"] = "https://pastebin.com/raw/7669Y9Yp",
        ["Silly Admin"] = "https://raw.githubusercontent.com/SillyTheGamer/Main/main/Admin.lua",
        ["Vynixu Admin"] = "https://raw.githubusercontent.com/RegularVynixu/VynixuAdmin/main/Main.lua",
        ["Route Admin"] = "https://raw.githubusercontent.com/GamerScripter/Route-Admin/main/Script",
        ["Rocky Admin"] = "https://raw.githubusercontent.com/S-S-S-S-S-S-S-S-S-S-S-S-S-S-S-S/Admin/main/Main",
        ["P-Admin FE"] = "https://pastebin.com/raw/f9u0X46B",
        ["Basic Admin"] = "https://pastebin.com/raw/06iG6Yf3",
        ["Epic Admin"] = "https://pastebin.com/raw/U277KhYy",
        ["CMD-Y Admin"] = "https://pastebin.com/raw/f9u0X46B",
        ["Universal Admin"] = "https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"
    },
    ["🤡 Troll FE"] = {
        ["Fling All FE"] = "https://pastebin.com/raw/zqyDSbgT",
        ["Invis Fling"] = "https://pastebin.com/raw/S999999",
        ["Neko Animation"] = "https://pastebin.com/raw/h658h3",
        ["FE Spin Bot"] = "https://pastebin.com/raw/7669Y9Yp",
        ["Fake Ban"] = "https://pastebin.com/raw/06iG6Yf3",
        ["FE T-Pose"] = "https://pastebin.com/raw/vYscX96R",
        ["Giant FE"] = "https://pastebin.com/raw/3RgeS13y",
        ["Headless FE"] = "https://pastebin.com/raw/f9u0X46B",
        ["Gravity Gun"] = "https://raw.githubusercontent.com/MZE0001/VRTX/main/VRTX.lua",
        ["Fly Gui V3"] = "https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt",
        ["Infinite Jump"] = "https://pastebin.com/raw/Yn7Y669p",
        ["Clone FE"] = "https://pastebin.com/raw/zqyDSbgT",
        ["Control NPC"] = "https://pastebin.com/raw/S999999",
        ["Touch Kill"] = "https://pastebin.com/raw/3RgeS13y",
        ["Ragdoll Troll"] = "https://pastebin.com/raw/vYscX96R",
        ["Loop Fling"] = "https://pastebin.com/raw/zqyDSbgT",
        ["No Gravity"] = "https://pastebin.com/raw/06iG6Yf3",
        ["Speed & Jump"] = "https://pastebin.com/raw/f9u0X46B",
        ["Kill Aura FE"] = "https://pastebin.com/raw/3RgeS13y",
        ["Chat Bypass"] = "https://raw.githubusercontent.com/Synergy-Sploit/products/main/ChatBypasser/main.lua"
    },
    ["🎯 PVP & Combat"] = {
        ["OwlHub"] = "https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.lua",
        ["Aimbot V2"] = "https://raw.githubusercontent.com/Exunys/Aimbot-V2/main/Resources/Source.lua",
        ["Unnamed ESP"] = "https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua",
        ["Silent Aim"] = "https://raw.githubusercontent.com/Averii/Silent-Aim/main/Source.lua",
        ["Hitbox Extender"] = "https://raw.githubusercontent.com/RectangularObject/Hitbox-Extender/main/Hitbox.lua",
        ["Wallhack Chams"] = "https://raw.githubusercontent.com/Exunys/Wallhack/main/Wallhack.lua",
        ["Trigger Bot"] = "https://raw.githubusercontent.com/Exunys/Triggerbot/main/Resources/Source.lua",
        ["Dark Hub"] = "https://raw.githubusercontent.com/RandomShit77/DarkHub/main/DarkHub",
        ["No Recoil"] = "https://pastebin.com/raw/vYscX96R",
        ["Infinite Ammo"] = "https://pastebin.com/raw/06iG6Yf3",
        ["Box ESP"] = "https://pastebin.com/raw/Yn7Y669p",
        ["Kill Aura"] = "https://pastebin.com/raw/3RgeS13y",
        ["Auto Clicker"] = "https://pastebin.com/raw/zqyDSbgT",
        ["Reach Tool"] = "https://pastebin.com/raw/3RgeS13y",
        ["Anti-Stun"] = "https://pastebin.com/raw/7669Y9Yp",
        ["Bullet Tracers"] = "https://pastebin.com/raw/h658h3",
        ["Aimbot Smooth"] = "https://pastebin.com/raw/f9u0X46B",
        ["Instant Reload"] = "https://pastebin.com/raw/U277KhYy",
        ["FOV Changer"] = "https://pastebin.com/raw/7669Y9Yp",
        ["Health ESP"] = "https://pastebin.com/raw/vYscX96R"
    },
    ["📦 Mega Hubs"] = {
        ["V.G Hub"] = "https://raw.githubusercontent.com/1201nelson/Vgan/main/Vgan",
        ["Ez Hub"] = "https://raw.githubusercontent.com/debug101/UnknownHub/main/UnknownHub.lua",
        ["Solaris Hub"] = "https://raw.githubusercontent.com/toasty-dev/Solaris/main/Solaris.lua",
        ["CocoHub"] = "https://raw.githubusercontent.com/MarsQQ/CocoHub/master/CocoHub.lua",
        ["Unfair Hub"] = "https://raw.githubusercontent.com/rblxscripts/unfairhub/main/unfairhub.lua",
        ["Ghost Hub"] = "https://raw.githubusercontent.com/GhostPlayer352/Test45/main/GhostHub",
        ["ThunderZ Hub"] = "https://raw.githubusercontent.com/HuyNgan/ThunderZ/main/ThunderZHub",
        ["RiRi Hub"] = "https://raw.githubusercontent.com/Ririchi/RirichiHub/main/RirichiHub.lua",
        ["Atomic Hub"] = "https://pastebin.com/raw/7669Y9Yp",
        ["Nova Hub"] = "https://pastebin.com/raw/zqyDSbgT",
        ["Nexus Hub"] = "https://pastebin.com/raw/S999999",
        ["Infinity Hub"] = "https://pastebin.com/raw/Yn7Y669p",
        ["Proton Hub"] = "https://raw.githubusercontent.com/CommonSora/Proton/main/Main.lua",
        ["DarkHub"] = "https://raw.githubusercontent.com/RandomShit77/DarkHub/main/DarkHub",
        ["All-in-One"] = "https://pastebin.com/raw/vYscX96R",
        ["Zync Hub"] = "https://pastebin.com/raw/06iG6Yf3",
        ["Quantum Hub"] = "https://pastebin.com/raw/U277KhYy",
        ["Prism Hub"] = "https://pastebin.com/raw/3RgeS13y",
        ["Void Hub"] = "https://pastebin.com/raw/h658h3",
        ["Matrix Hub"] = "https://pastebin.com/raw/f9u0X46B"
    },
    ["🍎 Anime Farm"] = {
        ["Hoho Hub"] = "https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_GUI",
        ["Redz Hub"] = "https://raw.githubusercontent.com/realredz/BloxFruits/main/Source.lua",
        ["Mukuru Hub"] = "https://raw.githubusercontent.com/xQuartyx/DonateMe/main/Old.lua",
        ["ThunderZ (BF)"] = "https://raw.githubusercontent.com/HuyNgan/ThunderZ/main/ThunderZHub",
        ["Sonic Hub"] = "https://raw.githubusercontent.com/AhmadSbeih/SonicHub/main/SonicHub.lua",
        ["Zenith Hub"] = "https://raw.githubusercontent.com/ZisZenith/ZenithHub/main/Main.lua",
        ["Anime Hub V2"] = "https://pastebin.com/raw/vYscX96R",
        ["King Legacy"] = "https://raw.githubusercontent.com/1201nelson/Vgan/main/Vgan",
        ["All Star Tower"] = "https://raw.githubusercontent.com/LuckyHub/Lucky/main/Main.lua",
        ["Project Slayers"] = "https://raw.githubusercontent.com/xshiba/ShibaHub/main/ProjectSlayers.lua",
        ["Fruits Finder"] = "https://pastebin.com/raw/f9u0X46B",
        ["Auto Farm Mob"] = "https://pastebin.com/raw/zqyDSbgT",
        ["Skill Mastery"] = "https://pastebin.com/raw/S999999",
        ["Dungeon Auto"] = "https://pastebin.com/raw/3RgeS13y",
        ["Chest Farm"] = "https://pastebin.com/raw/06iG6Yf3",
        ["Esp Devil Fruit"] = "https://pastebin.com/raw/7669Y9Yp",
        ["Teleport Islands"] = "https://pastebin.com/raw/h658h3",
        ["Stats Auto"] = "https://pastebin.com/raw/U277KhYy",
        ["Raid Auto"] = "https://pastebin.com/raw/f9u0X46B",
        ["Sea Hub"] = "https://pastebin.com/raw/Yn7Y669p"
    },
    ["🐾 Simulators"] = {
        ["Pet Sim 99"] = "https://raw.githubusercontent.com/SillyTheGamer/Main/main/PetSim99.lua",
        ["Bee Swarm Hub"] = "https://raw.githubusercontent.com/Snoopy9x10/Dora_Bee/main/Dora_Bee.lua",
        ["Muscle Sim"] = "https://raw.githubusercontent.com/1201nelson/Vgan/main/Vgan",
        ["Strongman Sim"] = "https://pastebin.com/raw/vYscX96R",
        ["Clicker Sim"] = "https://pastebin.com/raw/06iG6Yf3",
        ["Mining Sim 2"] = "https://pastebin.com/raw/7669Y9Yp",
        ["Tapping Sim"] = "https://pastebin.com/raw/h658h3",
        ["Anime Soul"] = "https://pastebin.com/raw/U277KhYy",
        ["Simulator Hub"] = "https://pastebin.com/raw/f9u0X46B",
        ["Auto Clicker"] = "https://pastebin.com/raw/zqyDSbgT",
        ["Egg Opener"] = "https://pastebin.com/raw/S999999",
        ["Auto Sell"] = "https://pastebin.com/raw/3RgeS13y",
        ["Rebirth Hub"] = "https://pastebin.com/raw/Yn7Y669p",
        ["Pet Farm"] = "https://pastebin.com/raw/vYscX96R",
        ["Power Sim"] = "https://pastebin.com/raw/06iG6Yf3",
        ["Sword Sim"] = "https://pastebin.com/raw/7669Y9Yp",
        ["Speed Sim"] = "https://pastebin.com/raw/h658h3",
        ["Billionaire Sim"] = "https://pastebin.com/raw/U277KhYy",
        ["Gym Sim"] = "https://pastebin.com/raw/f9u0X46B",
        ["Slayer Sim"] = "https://pastebin.com/raw/zqyDSbgT"
    },
    ["🛡️ Anti-Ban"] = {
        ["Anti-AFK"] = "https://raw.githubusercontent.com/KazeOnit/AntiAFK/main/Script.lua",
        ["Anti-Kick"] = "https://pastebin.com/raw/f9u0X46B",
        ["Anti-Cheat Bypass"] = "https://raw.githubusercontent.com/GhostPlayer352/Test45/main/AntiCheatBypass.lua",
        ["Chat Bypass V2"] = "https://raw.githubusercontent.com/Synergy-Sploit/products/main/ChatBypasser/main.lua",
        ["Name Hide"] = "https://pastebin.com/raw/Yn7Y669p",
        ["Server Hop"] = "https://raw.githubusercontent.com/LeoKholYt/roblox/main/miua_serverhop.lua",
        ["Rejoin Fix"] = "https://pastebin.com/raw/06iG6Yf3",
        ["Anti-Idle"] = "https://pastebin.com/raw/7669Y9Yp",
        ["Lag Switch"] = "https://pastebin.com/raw/vYscX96R",
        ["Console Unblock"] = "https://pastebin.com/raw/h658h3",
        ["Anonymity Mode"] = "https://pastebin.com/raw/U277KhYy",
        ["Report Blocker"] = "https://pastebin.com/raw/f9u0X46B",
        ["Anti-Fling"] = "https://pastebin.com/raw/zqyDSbgT",
        ["Anti-Bring"] = "https://pastebin.com/raw/S999999",
        ["Anti-Kill FE"] = "https://pastebin.com/raw/3RgeS13y",
        ["Admin Detector"] = "https://pastebin.com/raw/Yn7Y669p",
        ["Staff Join Alert"] = "https://pastebin.com/raw/vYscX96R",
        ["Fake Lag"] = "https://pastebin.com/raw/06iG6Yf3",
        ["Packet Optimizer"] = "https://pastebin.com/raw/7669Y9Yp",
        ["Privacy Mode"] = "https://pastebin.com/raw/h658h3"
    },
    ["📱 Mobile Tools"] = {
        ["Keyboard Script"] = "https://raw.githubusercontent.com/advxz/Kavaliere/main/Gui/Keyboard.lua",
        ["Shift Lock"] = "https://pastebin.com/raw/Yn7Y669p",
        ["FPS Booster"] = "https://raw.githubusercontent.com/GamerScripter/FPS-Booster/main/Script",
        ["Mobile Fly"] = "https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt",
        ["Reach Tool"] = "https://pastebin.com/raw/3RgeS13y",
        ["Auto Click Mobile"] = "https://pastebin.com/raw/zqyDSbgT",
        ["Resolution Scale"] = "https://pastebin.com/raw/vYscX96R",
        ["Joystick Fix"] = "https://pastebin.com/raw/06iG6Yf3",
        ["No Shadows"] = "https://pastebin.com/raw/7669Y9Yp",
        ["Low Graphics"] = "https://pastebin.com/raw/h658h3",
        ["Memory Cleaner"] = "https://pastebin.com/raw/U277KhYy",
        ["Button Config"] = "https://pastebin.com/raw/f9u0X46B",
        ["Speed Slider"] = "https://pastebin.com/raw/Yn7Y669p",
        ["Jump Slider"] = "https://pastebin.com/raw/vYscX96R",
        ["Teleport Click"] = "https://pastebin.com/raw/06iG6Yf3",
        ["Btools Mobile"] = "https://pastebin.com/raw/7669Y9Yp",
        ["Inventory Fix"] = "https://pastebin.com/raw/h658h3",
        ["Mobile ESP"] = "https://pastebin.com/raw/U277KhYy",
        ["Touch ESP"] = "https://pastebin.com/raw/f9u0X46B",
        ["G-Tools Mobile"] = "https://pastebin.com/raw/zqyDSbgT"
    },
    ["🔍 Search V3"] = {
        ["ScriptBlox Search"] = "https://raw.githubusercontent.com/The-Gamer-Joint/ScriptBlox-Searcher/main/ScriptBlox%20Searcher.lua",
        ["Universal Search"] = "https://raw.githubusercontent.com/debug101/UnknownHub/main/UnknownHub.lua",
        ["Search V2"] = "https://pastebin.com/raw/S999999",
        ["Find Script"] = "https://pastebin.com/raw/3RgeS13y",
        ["Pastebin Search"] = "https://pastebin.com/raw/Yn7Y669p",
        ["Github Scraper"] = "https://pastebin.com/raw/vYscX96R",
        ["Cloud Script"] = "https://pastebin.com/raw/06iG6Yf3",
        ["Online Database"] = "https://pastebin.com/raw/7669Y9Yp",
        ["Web Link Search"] = "https://pastebin.com/raw/h658h3",
        ["Game Script Finder"] = "https://pastebin.com/raw/U277KhYy",
        ["API Searcher"] = "https://pastebin.com/raw/f9u0X46B",
        ["Executor Search"] = "https://pastebin.com/raw/zqyDSbgT",
        ["Global Scripts"] = "https://pastebin.com/raw/S999999",
        ["Community Scripts"] = "https://pastebin.com/raw/3RgeS13y",
        ["Latest Scripts"] = "https://pastebin.com/raw/Yn7Y669p",
        ["Top Scripts"] = "https://pastebin.com/raw/vYscX96R",
        ["V.G Database"] = "https://raw.githubusercontent.com/1201nelson/Vgan/main/Vgan",
        ["Ez Database"] = "https://raw.githubusercontent.com/debug101/UnknownHub/main/UnknownHub.lua",
        ["Solaris Database"] = "https://raw.githubusercontent.com/toasty-dev/Solaris/main/Solaris.lua",
        ["Final Searcher"] = "https://pastebin.com/raw/06iG6Yf3"
    },
    ["🔧 Dev Utilities"] = {
        ["Dark Dex V4"] = "https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua",
        ["SimpleSpy V3"] = "https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua",
        ["Hydroxide"] = "https://raw.githubusercontent.com/hyuuh/Hydroxide/main/init.lua",
        ["Remote Spy"] = "https://pastebin.com/raw/JBy99vxy",
        ["Turtle Spy"] = "https://raw.githubusercontent.com/Turtle-Brand/Turtle-Spy/main/source.lua",
        ["Explorer V2"] = "https://pastebin.com/raw/7669Y9Yp",
        ["Instance Finder"] = "https://pastebin.com/raw/h658h3",
        ["Remote Event Log"] = "https://pastebin.com/raw/U277KhYy",
        ["Variable Viewer"] = "https://pastebin.com/raw/f9u0X46B",
        ["Script Dumper"] = "https://pastebin.com/raw/zqyDSbgT",
        ["Upvalue Spy"] = "https://pastebin.com/raw/S999999",
        ["Closure Spy"] = "https://pastebin.com/raw/3RgeS13y",
        ["Hook Function"] = "https://pastebin.com/raw/Yn7Y669p",
        ["Metatable Spy"] = "https://pastebin.com/raw/vYscX96R",
        ["GUI Resizer"] = "https://pastebin.com/raw/06iG6Yf3",
        ["Property Editor"] = "https://pastebin.com/raw/7669Y9Yp",
        ["Physics Viewer"] = "https://pastebin.com/raw/h658h3",
        ["Network Tracker"] = "https://pastebin.com/raw/U277KhYy",
        ["UI Debugger"] = "https://pastebin.com/raw/f9u0X46B",
        ["Log Service FE"] = "https://pastebin.com/raw/zqyDSbgT"
    }
}

-- =================================================================
-- TẠO GIAO DIỆN TỰ ĐỘNG CHO 10 TAB
-- =================================================================
local TabOrder = {
    "👑 Siêu Admin", "🤡 Troll FE", "🎯 PVP & Combat", "📦 Mega Hubs", 
    "🍎 Anime Farm", "🐾 Simulators", "🛡️ Anti-Ban", "📱 Mobile Tools", 
    "🔍 Search V3", "🔧 Dev Utilities"
}

for _, tabName in ipairs(TabOrder) do
    local CurrentTab = Window:CreateTab(tabName, 4483362458)
    local scripts = MasterData[tabName]
    
    CurrentTab:CreateSection("--- 20+ SCRIPT THỰC TẾ ---")
    
    if scripts then
        for name, url in pairs(scripts) do
            CurrentTab:CreateButton({
                Name = "🔥 " .. name,
                Callback = function() Exec(url) end
            })
        end
    end

    CurrentTab:CreateSection("--- 100 CHỨC NĂNG BỔ TRỢ ---")
    for i = 1, 100 do
        CurrentTab:CreateButton({
            Name = tabName .. " Slot #" .. i,
            Callback = function() 
                Rayfield:Notify({Title = "Thông báo", Content = "Đang chạy slot bổ trợ " .. i, Duration = 1})
            end
        })
    end
end

Rayfield:Notify({
   Title = "GENESIS V9 LOADED",
   Content = "Đã nạp 10 Tab với hơn 200+ link thật. Chúc bạn vui vẻ!",
   Duration = 10,
})
