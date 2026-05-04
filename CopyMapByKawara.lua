local synsaveinstance = loadstring(game:HttpGet("https://raw.githubusercontent.com/luau/UniversalSynSaveInstance/main/saveinstance.luau", true))()

local Options = {
    Name = "Copied_Map_" .. os.date("%Y%m%d_%H%M%S"),  -- Nama file otomatis
    SaveTerrain = true,          -- Simpan terrain (penting!)
    DecompileScripts = true,     -- Decompile script (bisa dibuka di Studio)
    SaveBytecode = true,
    SafeMode = true,             -- Lebih aman
    Timeout = 30
}

print("🚀 Sedang menyalin map... Tunggu beberapa detik!")
synsaveinstance(Options)
print("✅ Map berhasil disimpan! Cek folder Xeno Workspace")
