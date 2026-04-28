# Copy Map Script - KawaraStudio

Script Roblox untuk **meng-copy seluruh map/game** secara otomatis menggunakan fungsi `saveinstance()`.

---

## ✨ Fitur

- Mengambil nama game secara otomatis dari `game.Name`
- Membersihkan nama file agar aman untuk disimpan
- Menyimpan ke folder `COPY MAP - Nama_Game`
- Decompile script otomatis (`Decompile = true`)
- Include hampir semua service penting (Workspace, ReplicatedStorage, Lighting, dll)
- Menampilkan progress saat saving

---

## 📥 Cara Menggunakan

### Loadstring (Paling Mudah):

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/USERNAME/REPO-NAME/main/copy-map.lua"))()
