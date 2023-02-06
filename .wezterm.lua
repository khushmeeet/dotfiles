local wezterm = require 'wezterm';

return {
    color_scheme = 'ayu',
    font = wezterm.font('Berkeley Mono Trial', { weight = 'Bold' }),
    keys = {
        {key="w", mods="SUPER|SHIFT", action=wezterm.action{CloseCurrentPane={confirm=true}}},
        {key="-", mods="SUPER|ALT", action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
        {key="\\", mods="SUPER|ALT", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}}
    }
}
