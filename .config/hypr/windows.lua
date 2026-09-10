----------------------------
-- CLIPSE
----------------------------
hl.window_rule({ name = "clipse-float",        match = { class = "clipse" }, float = true })
hl.window_rule({ name = "clipse-size",         match = { class = "clipse" }, size = {622, 652} })
hl.window_rule({ name = "clipse-stay-focused", match = { class = "clipse" }, stay_focused = true })
hl.window_rule({ name = "clipse-opacity",      match = { class = "clipse" }, opacity = "0.80" })

----------------------------
-- WAYPAPER
----------------------------
hl.window_rule({ name = "waypaper-float",   match = { class = "waypaper" }, float = true })
hl.window_rule({ name = "waypaper-opacity", match = { class = "waypaper" }, opacity = "0.80" })

----------------------------
-- FILE MANAGER / APPS
----------------------------
hl.window_rule({ name = "thunar-opacity",   match = { class = "^(thunar)$" }, opacity = "0.85 override" })
-- hl.window_rule({ name = "obsidian-opacity", match = { class = "obsidian" }, opacity = "0.85" })
hl.window_rule({ name = "code-opacity",     match = { class = "code" }, opacity = "0.90" })
hl.window_rule({ name = "telegram-opacity", match = { class = "org.telegram.desktop" }, opacity = "0.85" })
-- hl.window_rule({ name = "clion-opacity", match = { class = "jetbrains-clion" }, opacity = "0.85" })

----------------------------
-- LAYER RULES
----------------------------
hl.layer_rule({ name = "wofi-blur",   match = { namespace = "wofi" },   blur = true })
hl.layer_rule({ name = "waybar-blur", match = { namespace = "waybar" }, blur = true })
