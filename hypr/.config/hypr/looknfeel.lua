-- ██╗      ██████╗  ██████╗ ██╗  ██╗       ██╗       ███████╗███████╗███████╗██╗     
-- ██║     ██╔═══██╗██╔═══██╗██║ ██╔╝       ██║       ██╔════╝██╔════╝██╔════╝██║     
-- ██║     ██║   ██║██║   ██║█████╔╝     ████████╗    █████╗  █████╗  █████╗  ██║     
-- ██║     ██║   ██║██║   ██║██╔═██╗     ██╔═██╔═╝    ██╔══╝  ██╔══╝  ██╔══╝  ██║     
-- ███████╗╚██████╔╝╚██████╔╝██║  ██╗    ██████║      ██║     ███████╗███████╗███████╗
-- ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝    ╚═════╝      ╚═╝     ╚══════╝╚══════╝╚══════╝

-- Color variables
-- local secondary_commented = "rgba(7daea3aa)"
-- local outline_variant_commented = "rgba(32302fff)"
local secondary        = "rgba(88B381aa) rgba(D3BD97aa) 45deg"
local outline_variant  = "rgba(32302fff)"

hl.config({
    general = {
        gaps_in          = 5,
        gaps_out         = 12,
        border_size      = 2,
        col = {
	    active_border   = { colors = { "rgba(88B381aa)", "rgba(D3BD97aa)" }, angle = 45 },
            inactive_border = outline_variant,
        },
        resize_on_border = true,
        allow_tearing    = false,
    },
})

-- https://wiki.hypr.land/Configuring/Variables/#decoration
hl.config({
    decoration = {
        rounding = 4,
        blur = {
            enabled        = true,
            size           = 2,
            passes         = 3,
            ignore_opacity = true,
            noise          = 0.0117,
            contrast       = 0.8916,
            brightness     = 0.8172,
            xray           = false,
            popups         = true,
        },
    },
})

--------------------
-- LAYER RULES -----
--------------------

-- App launcher (wofi)
hl.layer_rule({ match = { namespace = "wofi" }, blur = true })
hl.layer_rule({ match = { namespace = "wofi" }, ignore_alpha = 0 })
hl.layer_rule({ match = { namespace = "wofi" }, animation = "slide bottom" })

-- Top bar (waybar)
hl.layer_rule({ match = { namespace = "waybar" }, blur = true })
hl.layer_rule({ match = { namespace = "waybar" }, ignore_alpha = 0 })

-- Notification (swaync) — uncomment to enable
-- hl.layerrule({ match = { namespace = "swaync-control-center" },          blur = true })
-- hl.layerrule({ match = { namespace = "swaync-notification-window" },     blur = true })
-- hl.layerrule({ match = { namespace = "swaync-control-center" },          ignore_alpha = 0 })
-- hl.layerrule({ match = { namespace = "swaync-notification-window" },     ignore_alpha = 0 })
-- hl.layerrule({ match = { namespace = "swaync-control-center" },          ignore_alpha = 0.5 })
-- hl.layerrule({ match = { namespace = "swaync-notification-window" },     ignore_alpha = 0.5 })
-- hl.layerrule({ match = { namespace = "swaync-control-center" },          animation = "slide right" })

-- Style Gum confirm to match terminal theme — uncomment to enable
-- hl.config({ env = { "GUM_CONFIRM_PROMPT_FOREGROUND,6"       } })  -- Cyan
-- hl.config({ env = { "GUM_CONFIRM_SELECTED_FOREGROUND,0"     } })  -- Black
-- hl.config({ env = { "GUM_CONFIRM_SELECTED_BACKGROUND,2"     } })  -- Green
-- hl.config({ env = { "GUM_CONFIRM_UNSELECTED_FOREGROUND,0"   } })  -- Black
-- hl.config({ env = { "GUM_CONFIRM_UNSELECTED_BACKGROUND,8"   } })  -- Dark grey

--------------------
-- MISC ------------
--------------------

hl.config({
    misc = {
        disable_hyprland_logo    = false,
        -- force_default_wallpaper = 0,  -- Disables anime mascot wallpapers
        disable_splash_rendering  = true,
        focus_on_activate         = true,
        anr_missed_pings          = 3,
        on_focus_under_fullscreen = 1,
        -- initial_workspace_tracking = 2 is set in hyprland.lua
    },
})
