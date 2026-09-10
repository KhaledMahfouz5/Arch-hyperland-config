hl.config({
    input = {
        kb_layout  = "us, ara",
        kb_variant = "",
        kb_model   = "",
        kb_options = "grp:alt_shift_toggle,lv3:ralt_alt",
        kb_rules   = "",

        follow_mouse = 1,

        accel_profile = "flat",
        sensitivity   = 0,

        touchpad = {
            natural_scroll = true,
        },
    },
})

hl.gesture({
    fingers   = 3,
    direction = "horizontal",
    action    = "workspace",
})
