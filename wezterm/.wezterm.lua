local wezterm = require 'wezterm';
return {
    font = wezterm.font("JetBrains Mono"),
    font_size = 10.0,
    font_antialias = "Subpixel",
    color_scheme = "Blue Matrix",
    window_background_opacity = 0.8,
    keys = {
        {
            key = "x",
            mods = "CTRL|SHIFT",
            action = "ActivateCopyMode",
        },
        {
            key = "v",
            mods = "CTRL|SHIFT",
            action = wezterm.action({ PasteFrom = "Clipboard" }),
        },
        {
            key = "c",
            mods = "CTRL|SHIFT",
            action = wezterm.action({ CopyTo = "ClipboardAndPrimarySelection" }),
        },
        {
            key = "LeftArrow",
            mods = "CTRL|SHIFT",
            action = wezterm.action.ActivateTabRelative(-1)
        },
        {
            key = "RightArrow",
            mods = "CTRL|SHIFT",
            action = wezterm.action.ActivateTabRelative(1)
        }
    }
}
