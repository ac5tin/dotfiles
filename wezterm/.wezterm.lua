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
        },
        -- Split pane --
        {
            key = '%',
            mods = "CTRL|SHIFT",
            action = wezterm.action { SplitHorizontal = { domain = "CurrentPaneDomain" } },
        },
        {
            key = '"',
            mods = "CTRL|SHIFT",
            action = wezterm.action { SplitVertical = { domain = "CurrentPaneDomain" } },
        },
        -- pane navigation
        {
            key = 'j',
            mods = "ALT",
            action = wezterm.action { ActivatePaneDirection = "Down" },
        },
        {
            key = 'k',
            mods = "ALT",
            action = wezterm.action { ActivatePaneDirection = "Up" },
        },
        {
            key = 'h',
            mods = "ALT",
            action = wezterm.action { ActivatePaneDirection = "Left" },
        },
        {
            key = 'l',
            mods = "ALT",
            action = wezterm.action { ActivatePaneDirection = "Right" },
        },
        -- pane resize
        {
            key = "H",
            mods = "ALT|SHIFT",
            action = wezterm.action { AdjustPaneSize = { "Left", 5 } },
        },
        {
            key = "L",
            mods = "ALT|SHIFT",
            action = wezterm.action { AdjustPaneSize = { "Right", 5 } },
        },
        {
            key = "J",
            mods = "ALT|SHIFT",
            action = wezterm.action { AdjustPaneSize = { "Down", 5 } },
        },
        {
            key = "K",
            mods = "ALT|SHIFT",
            action = wezterm.action { AdjustPaneSize = { "Up", 5 } },
        },
        -- Pane close
        {
            key = "&",
            mods = "ALT|SHIFT",
            action = wezterm.action { CloseCurrentPane = { confirm = false } },
        }
    }
}
