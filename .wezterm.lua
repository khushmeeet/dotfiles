local wezterm = require 'wezterm';

return {
    keys = {
        {key="w", mods="SUPER|SHIFT", action=wezterm.action{CloseCurrentPane={confirm=true}}},
        {key="-", mods="SUPER|ALT", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
        {key="|", mods="SUPER|ALT|SHIFT", action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}}
    }
}