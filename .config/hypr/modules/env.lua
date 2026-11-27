-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

-- See https://wiki.hypr.land/configuring/core/environment-variables/

-- Cursor
-- hl.env("XCURSOR_THEME", "MyCursorTheme")
hl.env("XCURSOR_SIZE", "24")
-- hl.env("HYPRCURSOR_THEME", "MyHyprcursorTheme")
hl.env("HYPRCURSOR_SIZE", "24")

-- Qt
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")

-- GTK
-- hl.env("GTK_THEME", "yourVeryPrettyTheme")

-- GUI toolkits’ backend 
hl.env("GDK_BACKEND", "wayland,x11,*")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("SDL_VIDEODRIVER", "wayland")
hl.env("CLUTTER_BACKEND", "wayland")