local wezterm = require 'wezterm';

return {
   font = wezterm.font_with_fallback({
         {
            family="Iosevka Term SS04",
            harfbuzz_features={"liga=1", "clig=1"},
         },
         "Noto Sans",
   }),
   -- font_antialias = "Subpixel",
   font_size = 15,
    color_scheme = 'Modus-Operandi',
   -- window_background_opacity = 0.86,
   enable_tab_bar = false,
   -- default_cursor_style = "BlinkingBar",
   default_cursor_style = "SteadyBar",
   skip_close_confirmation_for_processes_named = {
      'bash',
      'fish',
      'tmux',
   },
   ssh_backend = "Ssh2",
   disable_default_key_bindings = true,
   keys = {
      {key="v", mods="CMD", action=wezterm.action.PasteFrom("Clipboard")}
   }
}
