-- See https://wiki.hypr.land/Configuring/Environment-variables/
-----------------------------
--- ENVIRONMENT VARIABLES ---
-----------------------------

hl.config({
    env = {
        -- Cursor
        "HYPRCURSOR_THEME,rose-pine-hyprcursor",
        "HYPRCURSOR_SIZE,24",
        "XCURSOR_THEME,rose-pine-hyprcursor",
        "XCURSOR_SIZE,24",

        -- Toolkit Backend Variables
        -- Force all apps to use Wayland where possible
        "GDK_BACKEND,wayland,x11,*",
        "QT_QPA_PLATFORM,wayland;xcb",
        "SDL_VIDEODRIVER,wayland",
        "CLUTTER_BACKEND,wayland",

        -- XDG Specifications
        "XDG_SESSION_TYPE,wayland",
        "XDG_CURRENT_DESKTOP,Hyprland",
        "XDG_SESSION_DESKTOP,Hyprland",

        -- Qt Variables
        "QT_AUTO_SCREEN_SCALE_FACTOR,1",
        -- QT_QPA_PLATFORM already set above
        "QT_WAYLAND_DISABLE_WINDOWDECORATION,1",
        "QT_QPA_PLATFORMTHEME,qt5ct",

        -- NVIDIA Specific
        "GBM_BACKEND,nvidia-drm",
        "__GLX_VENDOR_LIBRARY_NAME,nvidia",
        "LIBVA_DRIVER_NAME,nvidia",

        -- Prevent KDE package installs from breaking Dolphin's "Open With"
        -- https://www.lorenzobettini.it/2024/05/fixing-the-empty-open-with-in-dolphin-in-hyprland/
        "XDG_MENU_PREFIX,arch-",
    },
})
