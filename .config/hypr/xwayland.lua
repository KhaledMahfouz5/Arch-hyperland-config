hl.config({
    xwayland = {
        force_zero_scaling = true,
    },
})

-- Match scale 1, fixes most Xorg blur
hl.env("GDK_SCALE", "1")
hl.env("QT_SCALE_FACTOR", "1")
hl.env("XCURSOR_SIZE", "24")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "wayland")
hl.env("NUX_OZONE_PLATFORM_HINT", "wayland")
