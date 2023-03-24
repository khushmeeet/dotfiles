local wezterm = require 'wezterm';

return {
    --color_scheme = 'GruvboxDarkHard',
    color_scheme = 'Argonaut',
    font = wezterm.font('Berkeley Mono', { weight = 'Bold' }),
    font_size = 13,
    keys = {
        {key="w", mods="SUPER|SHIFT", action=wezterm.action{CloseCurrentPane={confirm=true}}},
        {key="-", mods="SUPER|ALT", action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
        {key="\\", mods="SUPER|ALT", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}}
    }
}
